import csv
import re
import unicodedata
from collections import defaultdict

SOURCE = r'd:\Projets 2026\ijeeryApp_v5.0\data-process\data-mahambolo\Stock_20260807173615.csv'
TARGET = r'd:\Projets 2026\ijeeryApp_v5.0\data-process\data-mahambolo\stocks_20260813_100531.csv'


def normalize_text(s):
    s = unicodedata.normalize('NFKD', str(s or ''))
    s = ''.join(ch for ch in s if not unicodedata.combining(ch))
    s = s.lower().replace('&', 'and')
    s = re.sub(r'[^a-z0-9]+', '', s)
    return s


def normalize_code(s):
    s = str(s or '').strip()
    s = ''.join(ch for ch in s if ch.isdigit())
    return s.lstrip('0')


def code_family(code):
    c = normalize_code(code)
    return c[:-2] if len(c) > 2 else c


def load_csv(path, code_key, name_key, unit_key):
    rows = []
    with open(path, 'r', encoding='utf-8-sig', newline='') as f:
        reader = csv.DictReader(f, delimiter=';')
        for row in reader:
            code = (row.get(code_key) or '').strip()
            if not code:
                continue
            n = {
                'code': code,
                'code_norm': normalize_code(code),
                'name': (row.get(name_key) or '').strip(),
                'name_norm': normalize_text(row.get(name_key)),
                'unit': (row.get(unit_key) or '').strip(),
                'unit_norm': normalize_text(row.get(unit_key)),
            }
            n['family'] = code_family(code)
            rows.append(n)
    return rows

src = load_csv(SOURCE, 'CODE', 'DESIGNATION', 'UNITE')
tgt = load_csv(TARGET, 'Code', 'Désignation', 'Unité')

src_codes = {r['code_norm'] for r in src}
tgt_codes = {r['code_norm'] for r in tgt}
missing_exact = sorted(src_codes - tgt_codes)
print('MISSING_EXACT', len(missing_exact))
print('MISSING_EXACT_SAMPLE')
for c in missing_exact[:40]:
    r = next(x for x in src if x['code_norm'] == c)
    print(f"{c} | {r['name']} | {r['unit']} | family={r['family']}")

# same code family but shifted code structure in target
src_by_family = defaultdict(list)
for r in src:
    src_by_family[r['family']].append(r)

tgt_by_family = defaultdict(list)
for r in tgt:
    tgt_by_family[r['family']].append(r)

print('\nFAMILIES_MISSING_IN_TARGET', len(set(src_by_family) - set(tgt_by_family)))
print('SAMPLE')
for fam, items in sorted((k, v) for k, v in src_by_family.items() if k not in tgt_by_family)[:20]:
    print(fam, [(i['code_norm'], i['name'], i['unit']) for i in items[:5]])

# same article name but different unit / blank record in target
print('\nSAME_NAME_WITH_DIFFERENT_UNIT')
examples = []
for r in src:
    matches = [t for t in tgt if t['name_norm'] == r['name_norm']]
    if matches and not any(t['unit_norm'] == r['unit_norm'] for t in matches):
        examples.append((r['code_norm'], r['name'], r['unit'], matches[0]['code_norm'], matches[0]['name'], matches[0]['unit']))
        if len(examples) >= 40:
            break
for e in examples:
    print(e)

# identify rows with exact code in target but different normalized name or unit
print('\nEXACT_CODE_PRESENT_BUT_DIFFERENT')
count = 0
for r in src:
    matches = [t for t in tgt if t['code_norm'] == r['code_norm']]
    if matches:
        t = matches[0]
        if t['name_norm'] != r['name_norm'] or t['unit_norm'] != r['unit_norm']:
            count += 1
            print((r['code_norm'], r['name'], r['unit'], t['code_norm'], t['name'], t['unit']))
            if count >= 40:
                break
print('TOTAL', count)

print('\nTARGET_BLANK_NAME_COUNT', sum(1 for r in tgt if not r['name'].strip()))
print('TARGET_BLANK_NAME_SAMPLE', [(r['code_norm'], r['code'], r['unit']) for r in tgt if not r['name'].strip()][:20])
