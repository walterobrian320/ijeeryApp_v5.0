from pathlib import Path
import re

base_path = Path('sql/base_vide_0308.sql')
output_path = Path('update_structure_ambanja_1313.sql')

missing = [
    ('TABLE', 'logistique_voyage'),
    ('TABLE', 'logistique_voyage_detail'),
    ('INDEX', 'idx_voyage_detail_article'),
    ('INDEX', 'idx_voyage_detail_voyage'),
    ('INDEX', 'idx_voyage_numero'),
    ('INDEX', 'idx_voyage_statut'),
    ('INDEX', 'idx_voyage_vehicule'),
    ('DEFAULT', 'logistique_voyage id'),
    ('DEFAULT', 'logistique_voyage_detail id'),
    ('SEQUENCE', 'logistique_voyage_id_seq'),
    ('SEQUENCE', 'logistique_voyage_detail_id_seq'),
    ('SEQUENCE OWNED BY', 'logistique_voyage_id_seq'),
    ('SEQUENCE OWNED BY', 'logistique_voyage_detail_id_seq'),
    ('FK CONSTRAINT', 'logistique_voyage logistique_voyage_vehicule_id_fkey'),
    ('FK CONSTRAINT', 'logistique_voyage_detail logistique_voyage_detail_idfrs_fkey'),
    ('FK CONSTRAINT', 'logistique_voyage_detail logistique_voyage_detail_voyage_id_fkey'),
    ('CONSTRAINT', 'logistique_voyage logistique_voyage_numero_voyage_key'),
    ('CONSTRAINT', 'logistique_voyage logistique_voyage_pkey'),
    ('CONSTRAINT', 'logistique_voyage_detail logistique_voyage_detail_pkey'),
]

text = base_path.read_text(encoding='utf-8', errors='ignore')
marker_re = re.compile(r'(-- Name: (?P<name>[^;]+); Type: (?P<type>[^;]+);.*?)(?=\n-- Name: |\Z)', re.S)

selected_blocks = []
seen = set()
for m in marker_re.finditer(text):
    typ = m.group('type').strip()
    name = m.group('name').strip()
    key = (typ, name)
    if key in missing and key not in seen:
        selected_blocks.append(m.group(1).rstrip())
        seen.add(key)
        if len(seen) == len(missing):
            break

if len(seen) != len(missing):
    missing_keys = [k for k in missing if k not in seen]
    raise SystemExit(f'Missing objects not found in base file: {missing_keys}')

with output_path.open('w', encoding='utf-8') as f:
    f.write('-- Generated update script for structure_ambanja_1313.sql\n')
    f.write('-- Add the following blocks from sql/base_vide_0308.sql\n\n')
    f.write('\n\n'.join(selected_blocks))
    f.write('\n')

print(f'Wrote update script to: {output_path}')
