import csv
import re
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CSV = ROOT / 'data-process' / 'data-mahambolo' / 'ARTICLE_20260807155130.csv'
SQL = ROOT / 'sql' / 'legacy_articles_import_mahambolo.sql'
OUTPUT_UNIT_FIX = ROOT / 'sql' / 'legacy_articles_import_mahambolo_fix_niveau.sql'
OUTPUT_PRICE_FIX = ROOT / 'sql' / 'legacy_articles_import_mahambolo_fix_prix.sql'


def normalize_text(value: str | None) -> str:
    text = str(value or '').strip()
    text = re.sub(r'\s+', ' ', text)
    text = unicodedata.normalize('NFKD', text)
    text = ''.join(ch for ch in text if not unicodedata.combining(ch))
    return text.upper()


def parse_number(value: str | None) -> float:
    if value is None:
        return 0.0
    text = normalize_text(value).replace(',', '.')
    match = re.search(r'[-+]?[0-9]+(?:\.[0-9]+)?', text)
    if not match:
        return 0.0
    try:
        return float(match.group(0))
    except ValueError:
        return 0.0


def canonical_unit(value: str | None) -> str:
    cleaned = normalize_text(value)
    return cleaned if cleaned else 'UNITE'


def read_csv_groups() -> dict[str, list[dict[str, object]]]:
    groups: dict[str, list[dict[str, object]]] = {}
    with CSV.open(newline='', encoding='utf-8-sig') as handle:
        reader = csv.DictReader(handle, fieldnames=['CODE', 'DESIGNATION', 'UNITE', 'QUANTITE', 'POIDS', 'CATEGORIE'], delimiter=';')
        for row in reader:
            if row['CODE'] is None:
                continue
            if row['CODE'].strip().upper() == 'CODE':
                continue
            designation = normalize_text(row['DESIGNATION'])
            if not designation:
                continue
            unit = canonical_unit(row['UNITE'])
            qty = parse_number(row['QUANTITE'])
            groups.setdefault(designation, []).append({
                'unit': unit,
                'qty': qty,
                'row': row,
            })
    return groups


def read_sql_groups() -> tuple[dict[str, str], dict[str, list[dict[str, object]]]]:
    article_map: dict[str, str] = {}
    groups: dict[str, list[dict[str, object]]] = {}
    with SQL.open('r', encoding='utf-8') as handle:
        for line in handle:
            line = line.strip()
            if not line:
                continue
            if line.startswith('INSERT INTO tb_article'):
                vals = re.search(r"VALUES \((.*)\);", line)
                if not vals:
                    continue
                parts = re.split(r"\s*,\s*(?=(?:[^']*'[^']*')*[^']*$)", vals.group(1))
                if len(parts) < 2:
                    continue
                art_id = parts[0].strip()
                art_desc = parts[1].strip()
                if art_desc.startswith("'") and art_desc.endswith("'"):
                    art_desc = art_desc[1:-1]
                normalized = normalize_text(art_desc)
                article_map[art_id] = normalized
                groups.setdefault(normalized, [])
            elif line.startswith('INSERT INTO tb_unite'):
                vals = re.search(r"VALUES \((.*)\);", line)
                if not vals:
                    continue
                parts = re.split(r"\s*,\s*(?=(?:[^']*'[^']*')*[^']*$)", vals.group(1))
                if len(parts) < 8:
                    continue
                idunite = int(parts[0].strip())
                codearticle = parts[1].strip().strip("'")
                idarticle = int(parts[2].strip())
                designation = parts[3].strip()
                if designation.startswith("'") and designation.endswith("'"):
                    designation = designation[1:-1]
                niveau = int(parts[4].strip())
                qt = float(parts[5].strip())
                poids = None if parts[6].strip().upper() == 'NULL' else float(parts[6].strip())
                art = article_map.get(str(idarticle), '')
                if not art:
                    continue
                groups.setdefault(art, []).append({
                    'idunite': idunite,
                    'codearticle': codearticle,
                    'idarticle': idarticle,
                    'designationunite': normalize_text(designation),
                    'niveau': niveau,
                    'qtunite': qt,
                    'poids': poids,
                })
    for rows in groups.values():
        rows.sort(key=lambda x: x['niveau'])
    return article_map, groups


def build_unit_updates(csv_groups: dict[str, list[dict[str, object]]], sql_groups: dict[str, list[dict[str, object]]]) -> list[str]:
    updates: list[str] = ['BEGIN;']
    changed = 0

    for designation, csv_units in sorted(csv_groups.items()):
        sql_units = sql_groups.get(designation)
        if not sql_units or len(sql_units) != len(csv_units):
            continue
        expected = [u['unit'] for u in csv_units]
        actual = [u['designationunite'] for u in sql_units]
        if expected == actual:
            continue
        if sorted(expected) != sorted(actual):
            continue

        updates.append(f"-- Article: {designation}")
        for sql_row, csv_row in zip(sql_units, csv_units):
            target_unit = csv_row['unit']
            target_qty = csv_row['qty']
            if sql_row['designationunite'] != target_unit or abs(sql_row['qtunite'] - target_qty) > 1e-9:
                updates.append(
                    f"UPDATE tb_unite SET designationunite = '{target_unit.replace("'", "''")}', qtunite = {target_qty:.2f} WHERE idunite = {sql_row['idunite']};"
                )
                changed += 1
        updates.append('')

    if changed == 0:
        return []
    updates.append('COMMIT;')
    return updates


def build_price_updates(csv_groups: dict[str, list[dict[str, object]]], sql_groups: dict[str, list[dict[str, object]]]) -> list[str]:
    updates: list[str] = ['BEGIN;']
    changed = 0

    for designation, csv_units in sorted(csv_groups.items()):
        sql_units = sql_groups.get(designation)
        if not sql_units or len(sql_units) != len(csv_units):
            continue
        expected = [u['unit'] for u in csv_units]
        actual = [u['designationunite'] for u in sql_units]
        if expected == actual:
            continue
        if sorted(expected) != sorted(actual):
            continue

        # determine mapping from old idunite to new idunite
        remaining = sql_units.copy()
        target_rows: list[dict[str, object]] = []
        for csv_row in csv_units:
            for idx, row in enumerate(remaining):
                if row['designationunite'] == csv_row['unit']:
                    target_rows.append(row)
                    del remaining[idx]
                    break
        if len(target_rows) != len(sql_units):
            continue

        mapping = []
        for current_row, target_row in zip(sql_units, target_rows):
            if current_row['idunite'] != target_row['idunite']:
                mapping.append((target_row['idunite'], current_row['idunite']))

        if not mapping:
            continue

        updates.append(f"-- Article: {designation}")
        values = ', '.join(f"({old},{new})" for old, new in mapping)
        updates.append(
            'WITH mapping(old_id, new_id) AS (VALUES ' + values + ')'
            ' UPDATE tb_prix '
            'SET idunite = mapping.new_id '
            'FROM mapping '
            'WHERE tb_prix.idunite = mapping.old_id;'
        )
        updates.append('')
        changed += 1

    if changed == 0:
        return []
    updates.append('COMMIT;')
    return updates


def main() -> None:
    csv_groups = read_csv_groups()
    _, sql_groups = read_sql_groups()
    unit_updates = build_unit_updates(csv_groups, sql_groups)
    price_updates = build_price_updates(csv_groups, sql_groups)

    if unit_updates:
        OUTPUT_UNIT_FIX.write_text('\n'.join(unit_updates) + '\n', encoding='utf-8')
        print(f'Wrote {OUTPUT_UNIT_FIX}')
    else:
        print('No unit updates generated.')

    if price_updates:
        OUTPUT_PRICE_FIX.write_text('\n'.join(price_updates) + '\n', encoding='utf-8')
        print(f'Wrote {OUTPUT_PRICE_FIX}')
    else:
        print('No price updates generated.')


if __name__ == '__main__':
    main()
