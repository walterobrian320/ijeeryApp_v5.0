from pathlib import Path
import csv
import re
import unicodedata

ROOT = Path(__file__).resolve().parents[1]
CLIENTS_CSV = ROOT / 'data-process' / 'tb_client.csv'
SRC = ROOT / 'data-process' / 'Client_20260804211340_update.xls'
OUT = ROOT / 'sql' / 'legacy_client_credit_import.sql'


def normalize_text(value: object) -> str:
    value = str(value or '').strip()
    value = re.sub(r'\s+', ' ', value)
    value = unicodedata.normalize('NFKD', value)
    value = ''.join(ch for ch in value if not unicodedata.combining(ch))
    return value.lower()


def parse_amount(value: object) -> float:
    text = str(value or '').strip()
    if not text:
        return 0.0
    text = text.replace('Ar', '').replace('AR', '').strip()
    text = text.replace(' ', '')
    if ',' in text:
        whole, dec = text.rsplit(',', 1)
        text = whole.replace('.', '') + '.' + dec
    else:
        text = text.replace('.', '')
    try:
        return float(text)
    except ValueError:
        return 0.0


# Read mapping from the imported client table export
client_map = {}
with CLIENTS_CSV.open('r', encoding='utf-8', newline='') as handle:
    reader = csv.DictReader(handle)
    for row in reader:
        name = row.get('nomcli', '')
        idclient = row.get('idclient', '').strip()
        if idclient:
            client_map[normalize_text(name)] = int(idclient)

# Read the legacy client credit export
lines = [line.rstrip('\n') for line in SRC.read_text(encoding='utf-8', errors='replace').splitlines() if line.strip()]
if not lines:
    raise SystemExit('Fichier client vide')

rows = []
for line in lines[1:]:
    cols = line.split('\t')
    if len(cols) < 5:
        continue
    nom = cols[1].strip()
    credit = cols[4].strip()
    rows.append((nom, credit))

sql_lines = []
sql_lines.append('-- Import des crédits clients legacy depuis Client_20260804211340_update.xls')
sql_lines.append('BEGIN;')
sql_lines.append('SET search_path TO public, pg_catalog;')
sql_lines.append('')

inserted = 0
skipped = 0
for nom, credit_text in rows:
    key = normalize_text(nom)
    idclient = client_map.get(key)
    if idclient is None:
        skipped += 1
        continue

    montant = parse_amount(credit_text)
    sql_lines.append(
        "INSERT INTO tb_autrecreance (idclient, dateregistre, numfact, montant, dateecheance) "
        f"VALUES ({idclient}, CURRENT_TIMESTAMP, 'Report Ancien Version Ijeery', {montant}, NULL);"
    )
    inserted += 1

sql_lines.append('')
sql_lines.append('COMMIT;')
OUT.write_text('\n'.join(sql_lines) + '\n', encoding='utf-8')
print('inserted', inserted)
print('skipped', skipped)
print('output', OUT)
