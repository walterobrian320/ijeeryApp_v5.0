import csv
import re
from collections import defaultdict
from pathlib import Path

root = Path('data-process')

def norm(s):
    return re.sub(r'\s+', ' ', s.strip().upper())


def is_zero_value(value):
    try:
        return float(value) == 0.0
    except Exception:
        return str(value).strip() in ('0', '0.0', '0.00')


def read_sql_text(path):
    return path.read_text(encoding='utf-8') if path.exists() else ''

csv_path = root / 'data-tavaratra' / 'articles_perils.csv'
articles = []
with open(csv_path, encoding='utf-8', newline='') as f:
    reader = csv.reader(f, delimiter='\t')
    for row in reader:
        if not row or len(row) < 4:
            continue
        code = row[1].strip()
        name = row[2].strip()
        unit = row[3].strip()
        articles.append({'code': code, 'name': name, 'unit': unit, 'row': row})

article_sql_files = [
    root / 'legacy query' / 'legacy_articles_import.sql',
    root / 'legacy query' / 'legacy_articles_import_mahambolo.sql',
]
article_by_code = {}
unit_by_article_unit = defaultdict(list)
code_article = {}
for sql_file in article_sql_files:
    content = read_sql_text(sql_file)
    for m in re.finditer(
        r"INSERT INTO tb_article \(idarticle, designation, idca, alert, alertdepot, deleted, idmag\) VALUES \((\d+), '((?:[^']|'')*)', (\d+), ([^,]+), ([^,]+), ([^,]+), ([^\)]+)\)",
        content,
    ):
        aid = int(m.group(1))
        name = m.group(2).replace("''", "'").strip()
        article_by_code[aid] = {'name': name, 'idarticle': aid}
    for m in re.finditer(
        r"INSERT INTO tb_unite \(idunite, idarticle, designationunite, niveau, qtunite, poids, codearticle, deleted\) VALUES \((\d+), (\d+), '([^']+)', ([^,]+), ([^,]+), ([^,]+), '([^']+)', ([^\)]+)\)",
        content,
    ):
        uid = int(m.group(1))
        aid = int(m.group(2))
        unit = m.group(3).strip()
        codearticle = m.group(7).strip()
        unit_by_article_unit[(aid, norm(unit))].append(
            {
                'idunite': uid,
                'idarticle': aid,
                'unit': unit,
                'codearticle': codearticle,
            }
        )
        code_article[codearticle] = {
            'idarticle': aid,
            'idunite': uid,
            'unit': unit,
            'codearticle': codearticle,
        }

stock_sql_files = [
    root / 'legacy query' / 'legacy_stock_import.sql',
    root / 'legacy query' / 'legacy_stock_import_mahambolo.sql',
    root / 'legacy query' / 'legacy_stock_import_mahambolo_correction.sql',
    root / 'legacy query' / 'legacy_stock_import_mahambolo_correction_with_inventaire.sql',
]
stock_entries = defaultdict(list)
inventaire_entries = defaultdict(list)
log_entries = defaultdict(list)
for sql_file in stock_sql_files:
    text = read_sql_text(sql_file)
    for m in re.finditer(
        r"INSERT INTO tb_stock \(idmag, qtstock, qtalert, deleted, codearticle\) VALUES \(([^,]+), ([^,]+), ([^,]+), ([^,]+), '([^']+)'\)",
        text,
    ):
        stock_entries[m.group(5)].append(
        {
            'idmag': m.group(1),
            'qtstock': m.group(2),
            'qtalert': m.group(3),
            'deleted': m.group(4),
                'source': sql_file.name,
                'type': 'insert',
        }
    )
    for m in re.finditer(
        r"INSERT INTO tb_inventaire \(qtinventaire, observation, date, iduser, idmag, codearticle\) VALUES \(([^,]+), '([^']*)', ([^,]+), ([^,]+), ([^,]+), '([^']+)'\)",
        text,
    ):
        inventaire_entries[m.group(6)].append(
            {
                'qtinventaire': m.group(1),
                'idmag': m.group(5),
                'source': sql_file.name,
            }
        )
    for m in re.finditer(
        r"INSERT INTO tb_log_stock \(idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle\) VALUES \(([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), '([^']*)', '([^']+)'\)",
        text,
    ):
        log_entries[m.group(7)].append(
            {
                'idmag': m.group(1),
                'ancien_stock': m.group(2),
                'nouveau_stock': m.group(3),
                'type_action': m.group(6),
                'source': sql_file.name,
            }
        )
for m in re.finditer(
    r"INSERT INTO tb_inventaire \(qtinventaire, observation, date, iduser, idmag, codearticle\) VALUES \(([^,]+), '([^']*)', ([^,]+), ([^,]+), ([^,]+), '([^']+)'\)",
    text,
):
    inventaire_entries[m.group(6)].append(
        {'qtinventaire': m.group(1), 'idmag': m.group(5)}
    )
for m in re.finditer(
    r"INSERT INTO tb_log_stock \(idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle\) VALUES \(([^,]+), ([^,]+), ([^,]+), ([^,]+), ([^,]+), '([^']*)', '([^']+)'\)",
    text,
):
    log_entries[m.group(7)].append(
        {
            'idmag': m.group(1),
            'ancien_stock': m.group(2),
            'nouveau_stock': m.group(3),
            'type_action': m.group(6),
        }
    )

price_sql_files = [
    root / 'legacy query' / 'legacy_prices_import.sql',
    root / 'legacy query' / 'legacy_prices_import_mahambolo.sql',
]
price_entries = defaultdict(list)
for sql_file in price_sql_files:
    txt = read_sql_text(sql_file)
    for m in re.finditer(
        r"INSERT INTO tb_prix \(idarticle, idunite, prix, dateregistre, iduser, deleted\) VALUES \((\d+), (\d+), ([^,]+), (TO_TIMESTAMP\('[^']+','[^']+'\)|CURRENT_TIMESTAMP), (\d+), (\d+)\)",
        txt,
    ):
        price_entries[(int(m.group(1)), int(m.group(2)))].append(
            {'prix': m.group(3), 'dateregistre': m.group(4), 'iduser': int(m.group(5)), 'deleted': int(m.group(6))}
        )

matches = []
for art in articles:
    art_name = norm(art['name'])
    art_unit = norm(art['unit'])
    found = []
    for (aid, unitkey), units in unit_by_article_unit.items():
        if unitkey != art_unit:
            continue
        for unit_rec in units:
            rec_name = norm(article_by_code[aid]['name'])
            if art_name == rec_name or art_name in rec_name or rec_name in art_name:
                found.append(unit_rec)
    if not found:
        if art['code'] in code_article:
            found.append(code_article[art['code']])
    if found:
        for unit_rec in found:
            codeart = unit_rec['codearticle']
            stock = stock_entries.get(codeart, [])
            inv = inventaire_entries.get(codeart, [])
            logs = log_entries.get(codeart, [])
            prices = price_entries.get((unit_rec['idarticle'], unit_rec['idunite']), [])
            matches.append(
                {
                    'csv_code': art['code'],
                    'csv_name': art['name'],
                    'csv_unit': art['unit'],
                    'idarticle': unit_rec['idarticle'],
                    'idunite': unit_rec['idunite'],
                    'codearticle': codeart,
                    'stock': stock,
                    'inventaire': inv,
                    'log': logs,
                    'prices': prices,
                    'zero_stock': all(is_zero_value(s['qtstock']) for s in stock) if stock else False,
                }
            )

zero_stock_matches = [m for m in matches if m['zero_stock']]
print('Matched CSV entries:', len(matches))
print('Zero-stock matches:', len(zero_stock_matches))
for m in zero_stock_matches[:100]:
    print('---')
    print('CSV:', m['csv_code'], m['csv_name'], m['csv_unit'])
    print('idarticle:', m['idarticle'], 'idunite:', m['idunite'], 'codearticle:', m['codearticle'])
    print(' stock count:', len(m['stock']), 'inventory count:', len(m['inventaire']), 'log count:', len(m['log']), 'price count:', len(m['prices']))
    if m['stock']:
        for s in m['stock']:
            print('   STOCK', s)
    if m['inventaire']:
        for s in m['inventaire']:
            print('   INV', s)
    if m['log']:
        for s in m['log']:
            print('   LOG', s)
    if m['prices']:
        for s in m['prices']:
            print('   PRIX', s)

with open('tools/match_zero_stock.csv', 'w', encoding='utf-8', newline='') as f:
    import csv
    writer = csv.writer(f)
    writer.writerow(['csv_code', 'csv_name', 'csv_unit', 'idarticle', 'idunite', 'codearticle', 'stock_qtys', 'inventory_qtys', 'log_count', 'price_count'])
    for m in zero_stock_matches:
        writer.writerow([
            m['csv_code'],
            m['csv_name'],
            m['csv_unit'],
            m['idarticle'],
            m['idunite'],
            m['codearticle'],
            '|'.join(s['qtstock'] for s in m['stock']),
            '|'.join(s['qtinventaire'] for s in m['inventaire']),
            len(m['log']),
            len(m['prices']),
        ])

with open('tools/match_zero_stock_detailed.csv', 'w', encoding='utf-8', newline='') as f:
    import csv
    writer = csv.writer(f)
    writer.writerow([
        'csv_code',
        'csv_name',
        'csv_unit',
        'idarticle',
        'idunite',
        'codearticle',
        'stock_count',
        'stock_details',
        'inventaire_count',
        'inventaire_details',
        'log_count',
        'log_details',
        'price_count',
        'price_details',
        'zero_stock',
    ])
    for m in zero_stock_matches:
        stock_details = []
        for s in m['stock']:
            stock_details.append(
                f"source={s.get('source','')},type={s.get('type','')},idmag={s.get('idmag','')},qtstock={s.get('qtstock','')},qtalert={s.get('qtalert','')},deleted={s.get('deleted','')}"
            )
        inventaire_details = []
        for s in m['inventaire']:
            inventaire_details.append(
                f"source={s.get('source','')},idmag={s.get('idmag','')},qtinventaire={s.get('qtinventaire','')}"
            )
        log_details = []
        for s in m['log']:
            log_details.append(
                f"source={s.get('source','')},idmag={s.get('idmag','')},ancien_stock={s.get('ancien_stock','')},nouveau_stock={s.get('nouveau_stock','')},type_action={s.get('type_action','')}"
            )
        price_details = []
        for s in m['prices']:
            price_details.append(
                f"source={s.get('source','')},idarticle={m['idarticle']},idunite={m['idunite']},prix={s.get('prix','')},deleted={s.get('deleted','')}"
            )
        writer.writerow([
            m['csv_code'],
            m['csv_name'],
            m['csv_unit'],
            m['idarticle'],
            m['idunite'],
            m['codearticle'],
            len(m['stock']),
            '; '.join(stock_details),
            len(m['inventaire']),
            '; '.join(inventaire_details),
            len(m['log']),
            '; '.join(log_details),
            len(m['prices']),
            '; '.join(price_details),
            'TRUE' if m['zero_stock'] else 'FALSE',
        ])

with open('tools/match_zero_stock_cascade.csv', 'w', encoding='utf-8', newline='') as f:
    writer = csv.writer(f)
    writer.writerow([
        'csv_code',
        'csv_name',
        'csv_unit',
        'idarticle',
        'idunite',
        'codearticle',
        'stock_delete_clauses',
        'inventaire_delete_clauses',
        'log_delete_clauses',
        'price_delete_clauses',
        'zero_stock',
    ])
    for m in zero_stock_matches:
        stock_clauses = []
        for s in m['stock']:
            stock_clauses.append(
                f"DELETE FROM tb_stock WHERE idmag={s.get('idmag','')} AND codearticle='{m['codearticle']}'"
            )
        inventaire_clauses = []
        for s in m['inventaire']:
            inventaire_clauses.append(
                f"DELETE FROM tb_inventaire WHERE idmag={s.get('idmag','')} AND codearticle='{m['codearticle']}' AND qtinventaire={s.get('qtinventaire','')}"
            )
        log_clauses = []
        for s in m['log']:
            log_clauses.append(
                f"DELETE FROM tb_log_stock WHERE idmag={s.get('idmag','')} AND codearticle='{m['codearticle']}' AND ancien_stock={s.get('ancien_stock','')} AND nouveau_stock={s.get('nouveau_stock','')} AND type_action='{s.get('type_action','')}'"
            )
        price_clauses = []
        for s in m['prices']:
            price_clauses.append(
                f"DELETE FROM tb_prix WHERE idarticle={m['idarticle']} AND idunite={m['idunite']} AND prix={s.get('prix','')}"
            )
        writer.writerow([
            m['csv_code'],
            m['csv_name'],
            m['csv_unit'],
            m['idarticle'],
            m['idunite'],
            m['codearticle'],
            '; '.join(stock_clauses),
            '; '.join(inventaire_clauses),
            '; '.join(log_clauses),
            '; '.join(price_clauses),
            'TRUE' if m['zero_stock'] else 'FALSE',
        ])
