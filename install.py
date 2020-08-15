from argparse import ArgumentParser, RawDescriptionHelpFormatter
from os import path
import os
import re
import shutil
import sys

DESCRIPTION = """
Install all HandyNotes plugins defined in this project for development.

NOTE: Must be run as administrator on Windows to allow symlink creation.
"""

eprint = lambda *args: print(*args, file=sys.stderr)

def install(src, dst):
    if not path.islink(dst):
        print(f'Installing {src} => {dst}')
        os.symlink(path.abspath(src), dst)

def main():
    parser = ArgumentParser(description=DESCRIPTION, formatter_class=RawDescriptionHelpFormatter)
    parser.add_argument('target', metavar=path.join('Path', 'To', 'Interface', 'AddOns'))
    parser.add_argument('-c', '--clean', action='store_true', help='clean targets before install')
    parser.add_argument('-u', '--uninstall', action='store_true', help='uninstall and exit')
    args = parser.parse_args()

    if not path.exists(args.target):
        eprint(f'Path does not exist: "{args.target}"')
        sys.exit(1)

    target = path.abspath(path.realpath(args.target)).rstrip('/\\')
    if not re.search(r'Interface[/\\]Addons$', target, re.I):
        eprint(f'Path is not a WoW addons directory: "{args.target}"')
        sys.exit(1)

    for dir in sorted(os.listdir('plugins')):
        plugin_dir = path.join('plugins', dir)
        plugin_name = 'HandyNotes_' + dir[3:]
        target_dir = path.join(target, plugin_name)

        # remove previous installs
        if args.clean or args.uninstall:
            if path.exists(target_dir):
                print(f'Deleting {target_dir}')
                shutil.rmtree(target_dir)
            if args.uninstall: continue

        # install plugin-specific files
        os.makedirs(target_dir, exist_ok=True)
        for item in os.listdir(plugin_dir):
            install(path.join(plugin_dir, item), path.join(target_dir, item))

        # link core + library dirs
        for item in ('core', 'icons', 'libs', 'embeds.xml'):
            install(item, path.join(target_dir, item))

        # install templated pins.xml file
        with open('pins.xml') as f1, open(path.join(target_dir, 'pins.xml'), 'w') as f2:
            f2.write(f1.read().format(addon=plugin_name))

if __name__ == '__main__':
    main()