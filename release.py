from argparse import ArgumentParser, RawDescriptionHelpFormatter
from os import path
from subprocess import run
from textwrap import dedent
from zipfile import ZipFile, ZIP_DEFLATED
import os
import re
import shutil
import sys

DESCRIPTION = """
Create a HandyNotes plugin .zip file suitable for release.

Examples:

    python release.py 09_Shadowlands-v1.alpha1
    python release.py 09_Shadowlands-v1.alpha2
    python release.py 09_Shadowlands-v1.beta1
    python release.py 09_Shadowlands-v1
"""

PROJECTS = {
    '06_WarlordsOfDraenor': None,
    '08_BattleForAzeroth': None,
    '09_Shadowlands': 363739
}

eprint = lambda *args: print(*args, file=sys.stderr)

def copy(src, dst):
    print(f'Copying {src} => {dst}')
    if not path.exists(path.dirname(dst)):
        os.mkdir(path.dirname(dst))
    worker = shutil.copytree if path.isdir(src) else shutil.copy2
    worker(src, dst)

def zip_write(zf, src, dst):
    print(f'Archiving: {src} => {dst}')
    zf.write(src, dst)
    if path.isdir(src):
        for item in sorted(os.listdir(src)):
            zip_write(zf, path.join(src, item), path.join(dst, item))

def current_tag():
    return run('git describe --tags HEAD', check=True, shell=True,
        capture_output=True, text=True).stdout.strip()

def release_tag(tag):
    if not re.fullmatch(r'\d\d_[a-zA-Z]+-v\d+(\.(alpha|beta)\d+)?', tag):
        raise ValueError(tag)
    return tag

def main():
    parser = ArgumentParser(description=DESCRIPTION, formatter_class=RawDescriptionHelpFormatter)
    parser.add_argument('tag', type=release_tag, help='The plugin tag name release')
    args = parser.parse_args()

    if args.tag != current_tag():
        eprint(f'Tag not present on HEAD: {args.tag}')
        sys.exit(1)

    plugin, version = args.tag.split('-')

    plugin_dir = path.join('plugins', plugin)
    if not path.exists(plugin_dir):
        eprint(f'Plugin does not exist: {plugin_dir}')
        sys.exit(1)

    plugin_name = f'HandyNotes_{plugin[3:]}'
    target_dir = path.join('release', plugin_name)
    target_zip = f'{target_dir}-{version}.zip'

    shutil.rmtree(target_dir, ignore_errors=True)
    os.makedirs(target_dir, exist_ok=True)

    copy('core', path.join(target_dir, 'core'))
    copy(path.join('icons', 'circle.tga'), path.join(target_dir, 'icons', 'circle.tga'))
    copy(path.join('icons', 'icons.blp'), path.join(target_dir, 'icons', 'icons.blp'))
    copy(path.join('icons', 'icons_white.blp'), path.join(target_dir, 'icons', 'icons_white.blp'))
    copy(path.join('icons', 'line.tga'), path.join(target_dir, 'icons', 'line.tga'))
    copy('libs', path.join(target_dir, 'libs'))
    copy('embeds.xml', path.join(target_dir, 'embeds.xml'))

    with open('templates.xml') as f1, open(path.join(target_dir, 'templates.xml'), 'w') as f2:
        f2.write(f1.read().format(addon=plugin_name))

    for item in os.listdir(plugin_dir):
        if item in ['images', 'CHANGELOG.md', 'README.md']: continue
        copy(path.join(plugin_dir, item), path.join(target_dir, item))

    with ZipFile(target_zip, 'w', ZIP_DEFLATED) as zf:
        zip_write(zf, target_dir, path.basename(target_dir))

    # Add changelog files to release/ dir
    orig_changelog = path.join(plugin_dir, 'CHANGELOG.md')
    part_changelog = path.join('release', 'CHANGELOG.partial.md')
    full_changelog = path.join('release', 'CHANGELOG.full.md')
    copy(orig_changelog, full_changelog)
    with open(orig_changelog) as f, open(part_changelog, 'w') as c:
        # Blindly take the most recent changelog section
        if match := re.match(r'^# v\d+\s+(.+?)# v\d+', f.read(), re.M|re.S):
            c.write(match.group(1).strip() + '\n')
        else:
            c.write('No changelog entries for this release.' + '\n')

    # Write PROJECT_ID file
    with open(path.join('release', 'PROJECT_ID'), 'w') as f:
        f.write(str(PROJECTS[plugin]))

    print(dedent(f"""
        Created: {path.abspath(target_zip)}
        Created: {path.abspath(part_changelog)}
        Created: {path.abspath(full_changelog)}
    """))

if __name__ == '__main__':
    main()