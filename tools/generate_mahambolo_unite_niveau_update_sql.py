import csv
import re
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CSV = ROOT / 'data-process' / 'data-mahambolo' / 'ARTICLE_20260807155130.csv'
SQL = ROOT / 'sql' / 'legacy_articles_import_mahambolo.sql'
OUTPUT = ROOT / 'sql' / 'legacy_articles_import_mahambolo_fix_niveau.sql'


def normalize_text(value: str | None) -> str:
    text = str(value or '').strip()
    text = re.sub(r'\s+', ' ', text)
    text = unicodedata.normalize('NFKD', text)
    text = ''.join(ch for ch in text if not unicodedata.combining(ch))
    return text.upper()


def canonical_unit(value: str | None) -> str:
    text = normalize_text(value)
    if text == '':
        return 'UNITE'
    return text


def read_csv_groups() -> dict[str, list[dict[str, str]]]:
    groups: dict[str, list[dict[str, str]]] = {}
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
            groups.setdefault(designation, []).append({
                'unit': unit,
                'qty': row['QUANTITE'],
                'row': row,
            })
    return groups


def read_sql_groups() -> dict[str, list[dict[str, str]]]:
    article_map: dict[str, str] = {}
    groups: dict[str, list[dict[str, str]]] = {}
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
                art_des = parts[1].strip()
                if art_des.startswith("'") and art_des.endswith("'"):
                    art_des = art_des[1:-1]
                article_map[art_id] = normalize_text(art_des)
                groups.setdefault(article_map[art_id], [])
            elif line.startswith('INSERT INTO tb_unite'):
                vals = re.search(r"VALUES \((.*)\);", line)
                if not vals:
                    continue
                parts = re.split(r"\s*,\s*(?=(?:[^']*'[^']*')*[^']*$)", vals.group(1))
                if len(parts) < 8:
                    continue
                idunite = parts[0].strip()
                idarticle = parts[2].strip()
                unit_val = parts[3].strip()
                if unit_val.startswith("'") and unit_val.endswith("'"):
                    unit_val = unit_val[1:-1]
                niveau = int(parts[4].strip())
                groups.setdefault(article_map.get(idarticle, ''), []).append({
                    'idunite': idunite,
                    'codearticle': parts[1].strip().strip("'"),
                    'unit': canonical_unit(unit_val),
                    'designationunite': unit_val,
                    'niveau': niveau,
                })
    return groups


def build_updates(csv_groups: dict[str, list[dict[str, str]]], sql_groups: dict[str, list[dict[str, str]]]) -> list[str]:
    updates: list[str] = []
    total_changed = 0

    for designation, csv_units in csv_groups.items():
        sql_units = sql_groups.get(designation)
        if not sql_units:
            continue
        if len(csv_units) != len(sql_units):
            continue
        csv_seq = [u['unit'] for u in csv_units]
        sql_seq = [u['unit'] for u in sql_units]
        if csv_seq == sql_seq:
            continue

        # Accept same multiset of canonical units.
        if sorted(csv_seq) != sorted(sql_seq):
            continue

        unit_to_sql_rows: dict[str, list[dict[str, str]]] = {}
        for row in sql_units:
            unit_to_sql_rows.setdefault(row['unit'], []).append(row)

        new_order = []
        for unit in csv_seq:
            candidates = unit_to_sql_rows.get(unit)
            if not candidates:
                candidates = unit_to_sql_rows.get(unit) or []
            if not candidates:
                candidates = [r for r in sql_units if r['unit'] == unit]
            if not candidates:
                continue
            new_order.append(candidates.pop(0))

        if len(new_order) != len(sql_units):
            continue

        updates.append(f'-- Article: {designation}')
        for new_niveau, row in enumerate(new_order):
            if new_niveau != row['niveau']:
                updates.append(
                    f"UPDATE tb_unite SET niveau = {new_niveau} WHERE idunite = {row['idunite']};"
                )
                total_changed += 1
        if len(updates) > 0 and not updates[-1].startswith('--'):
            updates.append('')

    if total_changed == 0:
        return []

    return ['BEGIN;'] + updates + ['COMMIT;']


def main() -> None:
    csv_groups = read_csv_groups()
    sql_groups = read_sql_groups()
    updates = build_updates(csv_groups, sql_groups)
    if not updates:
        print('No niveau updates needed.')
        return
    OUTPUT.write_text('\n'.join(updates) + '\n', encoding='utf-8')
    print(f'Wrote {OUTPUT}')


if __name__ == '__main__':
    main()
