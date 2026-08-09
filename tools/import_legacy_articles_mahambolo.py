from __future__ import annotations

import csv
import re
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'data-process' / 'data-mahambolo' / 'ARTICLE_20260807155130.csv'
OUTPUT = ROOT / 'sql' / 'legacy_articles_import_mahambolo.sql'


def normalize_text(value: str | None) -> str:
    text = str(value or '').strip()
    text = re.sub(r'\s+', ' ', text)
    text = unicodedata.normalize('NFKD', text)
    text = ''.join(ch for ch in text if not unicodedata.combining(ch))
    return text


def parse_number(value: str | None) -> float:
    if value is None:
        return 0.0
    text = normalize_text(value).replace(',', '.').strip()
    match = re.search(r'[-+]?[0-9]+(?:\.[0-9]+)?', text)
    if not match:
        return 0.0
    try:
        return float(match.group(0))
    except ValueError:
        return 0.0


def build_sql(rows: list[dict[str, str]]) -> str:
    category_ids: dict[str, int] = {}
    next_category_id = 1
    article_groups: dict[str, list[dict[str, str]]] = {}
    article_keys: dict[str, str] = {}

    for row in rows:
        designation = normalize_text(row.get('DESIGNATION', ''))
        if not designation:
            continue
        key = designation.lower()
        article_groups.setdefault(key, []).append(row)
        article_keys[key] = designation

    for key, group in article_groups.items():
        category = normalize_text(group[0].get('CATEGORIE', 'DIVERS')) or 'DIVERS'
        if category not in category_ids:
            category_ids[category] = next_category_id
            next_category_id += 1

    lines: list[str] = []
    lines.append('-- Migration des articles legacy Mahambolo vers la nouvelle structure')
    lines.append('BEGIN;')
    lines.append('')
    lines.append('SET search_path TO public, pg_catalog;')
    lines.append('')

    for category_name, category_id in category_ids.items():
        lines.append(
            f"INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES ({category_id}, '{category_name.replace("'", "''")}', 0);"
        )
    lines.append('')

    article_id = 1
    unit_id = 1
    for key, group in sorted(article_groups.items(), key=lambda item: item[0]):
        designation = article_keys[key]
        category = normalize_text(group[0].get('CATEGORIE', 'DIVERS')) or 'DIVERS'
        category_id = category_ids[category]
        lines.append(
            f"INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) "
            f"VALUES ({article_id}, '{designation.replace("'", "''")}', {category_id}, 0, 0, 0, 1);"
        )

        units = []
        for row in group:
            unit_name = normalize_text(row.get('UNITE', 'UNITE'))
            qt = parse_number(row.get('QUANTITE', '0'))
            poids = parse_number(row.get('POIDS', '0'))
            units.append({'name': unit_name or 'UNITE', 'qt': qt, 'poids': poids})

        # Preserve the original CSV unit order instead of sorting by quantity.
        for niveau, unit in enumerate(units):
            codearticle = f"{category_id:03d}{article_id:05d}{niveau:02d}"
            lines.append(
                f"INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) "
                f"VALUES ({unit_id}, '{codearticle}', {article_id}, '{unit['name'].replace("'", "''")}', {niveau}, {unit['qt']:.2f}, {unit['poids']:.2f}, 0);"
            )
            unit_id += 1
        lines.append('')
        article_id += 1

    lines.append("SELECT setval(pg_get_serial_sequence('tb_categoriearticle','idca'), COALESCE((SELECT MAX(idca) FROM tb_categoriearticle), 0), true);")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_article','idarticle'), COALESCE((SELECT MAX(idarticle) FROM tb_article), 0), true);")
    lines.append("SELECT setval(pg_get_serial_sequence('tb_unite','idunite'), COALESCE((SELECT MAX(idunite) FROM tb_unite), 0), true);")
    lines.append('')
    lines.append('COMMIT;')
    return '\n'.join(lines) + '\n'


def main() -> None:
    if not SOURCE.exists():
        raise FileNotFoundError(f'Legacy article source not found: {SOURCE}')

    with SOURCE.open('r', encoding='utf-8', newline='') as handle:
        reader = csv.reader(handle, delimiter=';')
        rows = [row for row in reader if any(cell.strip() for cell in row)]

    if not rows:
        raise ValueError('No rows found in legacy article file')

    header = [normalize_text(cell) for cell in rows[0]]
    data_rows = []
    for row in rows[1:]:
        if not any(cell.strip() for cell in row):
            continue
        row_data = {header[i]: row[i].strip() if i < len(row) else '' for i in range(min(len(header), 6))}
        data_rows.append(row_data)

    sql = build_sql(data_rows)
    OUTPUT.write_text(sql, encoding='utf-8')
    print(f'Parsed {len(data_rows)} legacy rows')
    print(f'Wrote {OUTPUT}')


if __name__ == '__main__':
    main()
