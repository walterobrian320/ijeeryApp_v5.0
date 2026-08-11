from pathlib import Path
import re
from collections import defaultdict

base_path = Path('sql/base_vide_0308.sql')
other_path = Path('sql/TMP/structure_ambanja_1313.sql')

pat = re.compile(r'^-- Name: (?P<name>[^;]+); Type: (?P<type>[^;]+);', re.MULTILINE)

base_text = base_path.read_text(encoding='utf-8', errors='ignore')
other_text = other_path.read_text(encoding='utf-8', errors='ignore')

base_objs = [(m.group('type').strip(), m.group('name').strip()) for m in pat.finditer(base_text)]
other_objs = [(m.group('type').strip(), m.group('name').strip()) for m in pat.finditer(other_text)]

base_by_type = defaultdict(set)
other_by_type = defaultdict(set)
for typ, name in base_objs:
    base_by_type[typ].add(name)
for typ, name in other_objs:
    other_by_type[typ].add(name)

all_types = sorted(set(base_by_type) | set(other_by_type))
print('TYPE COUNTS')
for typ in all_types:
    base_count = len(base_by_type[typ])
    other_count = len(other_by_type[typ])
    diff_count = len(base_by_type[typ] ^ other_by_type[typ])
    print(f'{typ}: base={base_count}, other={other_count}, diff={diff_count}')

only_base = []
only_other = []
for typ in all_types:
    for name in sorted(base_by_type[typ] - other_by_type[typ]):
        only_base.append((typ, name))
    for name in sorted(other_by_type[typ] - base_by_type[typ]):
        only_other.append((typ, name))

print(f'\nONLY IN base_vide_0308.sql: {len(only_base)}')
for typ, name in only_base[:200]:
    print(f'{typ}: {name}')

print(f'\nONLY IN structure_ambanja_1313.sql: {len(only_other)}')
for typ, name in only_other[:200]:
    print(f'{typ}: {name}')
