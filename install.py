from argparse import ArgumentParser, RawDescriptionHelpFormatter
from os import path
from shlex import quote
from subprocess import run
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
    if path.islink(dst): return
    print(f'Installing {src} => {dst}')
    if 'WSL_DISTRO_NAME' in os.environ:
        # os.symlink() does not create links that work from the Windows side.
        # Use mklink to create a windows-compatible symlink from inside WSL.
        #   1 - Use the parent dir of "dst" as CWD to avoid this warning:
        #       UNC paths are not supported.  Defaulting to Windows directory.
        #   2 - Ensure the src is outside of WSL or Battle.net client will bug
        src = path.realpath(src)
        if not src.startswith('/mnt/'):
            raise RuntimeError('Project files must not live inside WSL!')

        cwd = path.dirname(dst)
        dir = '/D' if path.isdir(src) else ''
        src = quote(re.sub(r'/mnt/([a-z])/', r'\1:\\\\', src).replace('/', '\\'))
        dst = path.basename(dst)
        run(f'cmd.exe /c mklink {dir} {dst} {src}', cwd=cwd, check=True, shell=True)
    else:
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
        for item in ('core', 'libs', 'embeds.xml'):
            install(item, path.join(target_dir, item))

        # install templates.xml file
        with open('templates.xml') as f1, open(path.join(target_dir, 'templates.xml'), 'w') as f2:
            print(f"Writing templates.xml => {path.join(target_dir, 'templates.xml')}")
            f2.write(f1.read().format(addon=plugin_name))

if __name__ == '__main__':
    main()
