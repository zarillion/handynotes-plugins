from argparse import ArgumentParser, RawDescriptionHelpFormatter
from os import path
from textwrap import dedent
from zipfile import ZipFile, ZIP_DEFLATED
import os
import shutil
import sys

DESCRIPTION = """
Create a HandyNotes plugin .zip file suitable for release.

Examples:

    python release.py 09_Shadowlands v1.alpha1
    python release.py 09_Shadowlands v1.alpha2
    python release.py 09_Shadowlands v1.beta1
    python release.py 09_Shadowlands v1
"""

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

def main():
    parser = ArgumentParser(description=DESCRIPTION, formatter_class=RawDescriptionHelpFormatter)
    parser.add_argument('plugin', help='Name of the plugin to release')
    parser.add_argument('version', help="Version to use for the release")
    args = parser.parse_args()

    plugin_dir = path.join('plugins', args.plugin)
    if not path.exists(plugin_dir):
        eprint(f'Plugin does not exist: {plugin_dir}')
        sys.exit(1)

    target_dir = path.join('release', f'HandyNotes_{args.plugin[3:]}')
    target_zip = f'{target_dir}.{args.version}.zip'

    shutil.rmtree(target_dir, ignore_errors=True)
    os.makedirs(target_dir, exist_ok=True)

    copy('core', f'{target_dir}/core')
    copy('icons/circle.tga', f'{target_dir}/icons/circle.tga')
    copy('icons/icons.blp', f'{target_dir}/icons/icons.blp')
    copy('icons/line.tga', f'{target_dir}/icons/line.tga')
    copy('embeds.xml', f'{target_dir}/embeds.xml')
    copy('pins.xml', f'{target_dir}/pins.xml')

    for item in os.listdir(plugin_dir):
        if item in ['images', 'CHANGELOG.md', 'README.md']: continue
        copy(f'{plugin_dir}/{item}', f'{target_dir}/{item}')

    with ZipFile(target_zip, 'w', ZIP_DEFLATED) as zf:
        zip_write(zf, target_dir, path.basename(target_dir))

    print(dedent(f"""
        Created: {path.abspath(target_zip)}
    """))

if __name__ == '__main__':
    main()