from pathlib import Path
import re
import unicodedata

ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / 'data-process' / 'Client_20260804090307.xls'
OUT = ROOT / 'sql' / 'legacy_clients_import.sql'


def clean_text(value):
    if value is None:
        return '-'
    text = str(value).strip()
    if not text:
        return '-'
    text = re.sub(r'\s+', ' ', text)
    text = text.replace('\u00a0', ' ')
    return text.strip()


def normalize_contact(value):
    text = clean_text(value)
    if text == '-':
        return '-'
    text = text.replace(';', '/').replace(',', '/').replace('&', '/').replace('.', '/')
    text = text.replace(' - ', '/').replace('-', '/')
    text = re.sub(r'\s*/\s*', '/', text)
    text = re.sub(r'/+', '/', text)
    text = text.strip('/')
    return text


def looks_like_contact(value):
    text = clean_text(value)
    if text == '-':
        return False
    digits = sum(ch.isdigit() for ch in text)
    letters = sum(ch.isalpha() for ch in text)
    return digits >= 6 and letters <= 5


def normalize_name(value):
    return clean_text(value)


lines = [line.rstrip('\n') for line in SRC.read_text(encoding='utf-8', errors='replace').splitlines() if line.strip()]
if not lines:
    raise SystemExit('Fichier client vide')

rows = []
for line in lines[1:]:
    cols = line.split('\t')
    if len(cols) < 4:
        continue
    nom = cols[1].strip()
    adresse = cols[2].strip()
    contact = cols[3].strip()
    rows.append((nom, adresse, contact))

sql_lines = []
sql_lines.append('-- Import des clients legacy depuis Client_20260804090307.xls')
sql_lines.append('BEGIN;')
sql_lines.append('SET search_path TO public, pg_catalog;')
sql_lines.append('')
sql_lines.append("INSERT INTO tb_typeclient (idtypeclient, designationtypeclient)")
sql_lines.append("SELECT 2, 'A Crédit' WHERE NOT EXISTS (SELECT 1 FROM tb_typeclient WHERE idtypeclient = 2);")
sql_lines.append('')

count = 0
for nom, adresse, contact in rows:
    nom_cli = normalize_name(nom)
    adresse_cli = clean_text(adresse)
    contact_cli = normalize_contact(contact)

    if contact_cli == '-' and looks_like_contact(adresse_cli):
        contact_cli = normalize_contact(adresse_cli)
        adresse_cli = '-'

    sql_lines.append(
        "INSERT INTO tb_client (nomcli, contactcli, adressecli, nifcli, statcli, cifcli, credit, idtypeclient, dateregistre, blocked, deleted) "
        f"VALUES ('{nom_cli.replace("'", "''")}', '{contact_cli.replace("'", "''")}', '{adresse_cli.replace("'", "''")}', '-', '-', '-', 0, 2, CURRENT_TIMESTAMP, 0, 0);"
    )
    count += 1

sql_lines.append('')
sql_lines.append('COMMIT;')
OUT.write_text('\n'.join(sql_lines) + '\n', encoding='utf-8')
print('clients', count)
print('output', OUT)
