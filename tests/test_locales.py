from pathlib import Path
import re
import sys

errors = False
files = [p for p in Path('.').glob('core/localization/*.lua')] + \
        [p for p in Path('.').glob('plugins/*/localization/*.lua')]

for locale in files:
    with open(locale) as f:
        for i, line in enumerate(f):
            if match := re.match(r'^L\[[\'"](\w+)[\'"]\]\s+[\'"]', line):
                print(f'Missing assignment (=): {locale}:{i} {match.group(1)!r}')
                errors = True

sys.exit(1 if errors else 0)