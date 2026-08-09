import csv
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CSV = ROOT / 'data-process' / 'data-mahambolo' / 'ARTICLE_20260807155130.csv'
SQL = ROOT / 'sql' / 'legacy_articles_import_mahambolo.sql'


def clean(s):
    return re.sub(r'\s+', ' ', (s or '').strip()).upper()


def parse_number(s):
    if s is None:
        return None
    m = re.search(r'\s*([0-9]+(?:\.[0-9]+)?)', s)
    return float(m.group(1)) if m else None


def read_csv():
    groups = {}
    with CSV.open(newline='', encoding='utf-8-sig') as f:
        reader = csv.DictReader(f, fieldnames=['CODE', 'DESIGNATION', 'UNITE', 'QUANTITE', 'POIDS', 'CATEGORIE'], delimiter=';')
        for row in reader:
            if row['CODE'] is None:
                continue
            if row['CODE'].strip().upper() == 'CODE':
                continue
            des = clean(row['DESIGNATION'])
            if not des:
                continue
            groups.setdefault(des, []).append({
                'code': row['CODE'].strip(),
                'designation': row['DESIGNATION'],
                'unit': clean(row['UNITE']),
                'qty': parse_number(row['QUANTITE']),
                'poids': parse_number(row['POIDS']),
                'categorie': clean(row['CATEGORIE']),
                'row': row,
            })
    return groups


def read_sql():
    article_map = {}
    groups = {}
    with SQL.open('r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            if line.startswith('INSERT INTO tb_article'):
                vals = re.search(r"VALUES \((.*)\);", line)
                if vals:
                    parts = re.split(r"\s*,\s*(?=(?:[^']*'[^']*')*[^']*$)", vals.group(1))
                    art_id = parts[0].strip()
                    art_des = parts[1].strip()
                    if art_des.startswith("'") and art_des.endswith("'"):
                        art_des = art_des[1:-1]
                    article_map[art_id] = clean(art_des)
                    groups.setdefault(clean(art_des), [])
            elif line.startswith('INSERT INTO tb_unite'):
                vals = re.search(r"VALUES \((.*)\);", line)
                if not vals:
                    continue
                parts = re.split(r"\s*,\s*(?=(?:[^']*'[^']*')*[^']*$)", vals.group(1))
                if len(parts) < 8:
                    continue
                idunite = parts[0].strip()
                codearticle = parts[1].strip().strip("'")
                idarticle = parts[2].strip()
                unit = parts[3].strip()
                if unit.startswith("'") and unit.endswith("'"):
                    unit = unit[1:-1]
                niveau = int(parts[4])
                qt = float(parts[5])
                poids = None if parts[6].strip().upper() == 'NULL' else float(parts[6])
                art_des = article_map.get(idarticle)
                if not art_des:
                    continue
                groups.setdefault(art_des, []).append({
                    'idunite': idunite,
                    'codearticle': codearticle,
                    'idarticle': idarticle,
                    'unit': clean(unit),
                    'niveau': niveau,
                    'qt': qt,
                    'poids': poids,
                })
    return groups


def main():
    csv_groups = read_csv()
    sql_groups = read_sql()
    mismatches = []
    for des, csv_units in csv_groups.items():
        sql_units = sql_groups.get(des)
        if not sql_units:
            continue
        if len(csv_units) != len(sql_units):
            mismatches.append((des, 'len', len(csv_units), len(sql_units), csv_units, sql_units))
            continue
        csv_names = [u['unit'] for u in csv_units]
        sql_names = [u['unit'] for u in sql_units]
        if csv_names != sql_names:
            mismatches.append((des, 'order', csv_names, sql_names, csv_units, sql_units))
    print('TOTAL MISMATCHES', len(mismatches))
    for des, kind, a, b, csv_units, sql_units in mismatches:
        if des in {
            'BISCUIT MARIA MAMMA MIA',
            'BONBON BIG TIME RICH',
            'CAHIER DESSIN PREMIER PLUS',
            'CAHIER TRIUMPH 200P GRAND FORMAT EN PIECES',
            'PROBO(KATSAKA NOTOTONA)',
            'SAVON SOLAR 250GX48',
            'VARY MAKALIOKA VAOVAO 60KG',
        }:
            print('---', des)
            print('kind', kind)
            print('csv_names', a)
            print('sql_names', b)
            print('csv rows')
            for u in csv_units:
                print(' ', u)
            print('sql rows')
            for u in sql_units:
                print(' ', u)
            print()

if __name__ == '__main__':
    main()
