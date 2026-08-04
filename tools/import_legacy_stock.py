from pathlib import Path
import re
import unicodedata
from collections import OrderedDict

ROOT = Path(__file__).resolve().parents[1]
STOCK_FILE = ROOT / 'data-process' / 'Stock_20260804090245.xls'
ARTICLES_SQL = ROOT / 'sql' / 'legacy_articles_import.sql'
OUTPUT_SQL = ROOT / 'sql' / 'legacy_stock_import.sql'


def norm(value: str) -> str:
    value = str(value or '').strip()
    value = re.sub(r'\s+', ' ', value)
    value = unicodedata.normalize('NFKD', value)
    value = ''.join(ch for ch in value if not unicodedata.combining(ch))
    value = value.replace('°', ' ').replace('®', ' ')
    return value.lower()


def parse_decimal(value: str):
    if value is None:
        return 0.0
    text = str(value or '').strip()
    if not text:
        return 0.0
    text = text.replace(' ', '').replace('\u00a0', '')
    text = text.replace('.', '').replace(',', '.')
    if text in {'', '-', '--'}:
        return 0.0
    try:
        return float(text)
    except ValueError:
        return 0.0


article_sql = ARTICLES_SQL.read_text(encoding='utf-8', errors='replace')

article_ids = {}
for match in re.finditer(
    r"INSERT INTO tb_article\s*\(idarticle, designation, idca, alert, alertdepot, deleted, idmag\)\s*VALUES\s*\((\d+),\s*'((?:''|[^'])*)'",
    article_sql,
    re.IGNORECASE,
):
    article_id = int(match.group(1))
    designation = match.group(2).replace("''", "'")
    article_ids[norm(designation)] = article_id

unit_data = {}
for match in re.finditer(
    r"INSERT INTO tb_unite\s*\(idunite, idarticle, designationunite, niveau, qtunite, poids, codearticle, deleted\)\s*VALUES\s*\((\d+),\s*(\d+),\s*'((?:''|[^'])*)',\s*(-?\d+(?:\.\d+)?),\s*(-?\d+(?:\.\d+)?),\s*(-?\d+(?:\.\d+)?),\s*'((?:''|[^'])*)',\s*(\d+)\)",
    article_sql,
    re.IGNORECASE,
):
    unit_id = int(match.group(1))
    article_id = int(match.group(2))
    designation = match.group(3).replace("''", "'")
    codearticle = match.group(7).replace("''", "'")
    unit_data[(article_id, norm(designation))] = {
        'idunite': unit_id,
        'codearticle': codearticle,
    }

# Read stock file as tab-delimited text (legacy .xls export)
lines = [line.rstrip('\n') for line in STOCK_FILE.read_text(encoding='utf-8', errors='replace').splitlines() if line.strip()]
if not lines:
    raise SystemExit('Fichier de stock vide')

# Skip header row
rows = []
for line in lines[1:]:
    cols = line.split('\t')
    if len(cols) < 8:
        continue
    designation = cols[2].strip()
    unite = cols[3].strip()
    depot_a = cols[5].strip()
    depot_ant = cols[6].strip()
    depot_c = cols[7].strip()
    rows.append((designation, unite, depot_a, depot_ant, depot_c))

# Keep only first occurrence per designation (to honor the rule "première unité / première ligne")
selected = []
seen_designations = set()
for designation, unite, depot_a, depot_ant, depot_c in rows:
    key = norm(designation)
    if key in seen_designations:
        continue
    seen_designations.add(key)
    selected.append((designation, unite, depot_a, depot_ant, depot_c))

lines_sql = []
lines_sql.append('-- Script d’insertion des stocks initiaux depuis Stock_20260804090245.xls')
lines_sql.append('BEGIN;')
lines_sql.append('SET search_path TO public, pg_catalog;')
lines_sql.append('')
lines_sql.append("-- Création des magasins de départ si absents")
lines_sql.append("INSERT INTO tb_magasin (idmag, designationmag, adressemag, livraison, deleted, livraison_auto_client)")
lines_sql.append("SELECT 1, 'Depot vente A', '', 0, 0, 0 WHERE NOT EXISTS (SELECT 1 FROM tb_magasin WHERE idmag = 1);")
lines_sql.append("INSERT INTO tb_magasin (idmag, designationmag, adressemag, livraison, deleted, livraison_auto_client)")
lines_sql.append("SELECT 2, 'Depot Antanankoro', '', 0, 0, 0 WHERE NOT EXISTS (SELECT 1 FROM tb_magasin WHERE idmag = 2);")
lines_sql.append("INSERT INTO tb_magasin (idmag, designationmag, adressemag, livraison, deleted, livraison_auto_client)")
lines_sql.append("SELECT 3, 'Depot Stock C', '', 0, 0, 0 WHERE NOT EXISTS (SELECT 1 FROM tb_magasin WHERE idmag = 3);")
lines_sql.append('')

processed = 0
skipped = 0
inserted_inventaire = 0
inserted_stock = 0
inserted_log = 0

for designation, unite, depot_a, depot_ant, depot_c in selected:
    article_id = article_ids.get(norm(designation))
    if article_id is None:
        skipped += 1
        continue

    unit_info = unit_data.get((article_id, norm(unite)))
    if unit_info is None:
        skipped += 1
        continue

    codearticle = unit_info['codearticle']
    processed += 1
    observation = "Inventaire - report ancien version Ijeery"
    now = "CURRENT_TIMESTAMP"

    for mag_id, qty_txt in [(1, depot_a), (2, depot_ant), (3, depot_c)]:
        qty = parse_decimal(qty_txt)
        if qty is None:
            continue

        lines_sql.append(
            f"INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle) "
            f"VALUES ({qty:.15g}, '{observation}', {now}, 1, {mag_id}, '{codearticle}');"
        )
        inserted_inventaire += 1

        lines_sql.append(
            f"INSERT INTO tb_stock (idmag, qtstock, qtalert, deleted, codearticle) "
            f"VALUES ({mag_id}, {qty:.15g}, 0, 0, '{codearticle}');"
        )
        inserted_stock += 1

        lines_sql.append(
            f"INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle) "
            f"VALUES ({mag_id}, 0, {qty:.15g}, {now}, 1, 'Entrée en stock par inventaire de départ', '{codearticle}');"
        )
        inserted_log += 1

lines_sql.append('')
lines_sql.append('-- Fin du script')
lines_sql.append('COMMIT;')

OUTPUT_SQL.write_text('\n'.join(lines_sql) + '\n', encoding='utf-8')
print('processed', processed)
print('skipped', skipped)
print('inserted_inventaire', inserted_inventaire)
print('inserted_stock', inserted_stock)
print('inserted_log', inserted_log)
print('output', OUTPUT_SQL)
