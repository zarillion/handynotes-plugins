from argparse import ArgumentParser, RawDescriptionHelpFormatter
from pathlib import Path
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


def install(src: Path, dst: Path):
    if dst.is_symlink():
        return
    print(f"Installing {src} => {dst}")
    if "WSL_DISTRO_NAME" in os.environ:
        # os.symlink() does not create links that work from the Windows side.
        # Use mklink to create a windows-compatible symlink from inside WSL.
        #   1 - Use the parent dir of "dst" as CWD to avoid this warning:
        #       UNC paths are not supported.  Defaulting to Windows directory.
        #   2 - Ensure the src is outside of WSL or Battle.net client will bug
        src = src.resolve()
        if src.parts[1] != "mnt":
            raise RuntimeError("Project files must not live inside WSL!")

        cmd = "cmd.exe /c mklink {dir} {dst} {src}".format(
            dir="/D" if src.is_dir() else "",
            src=quote(
                re.sub(r"/mnt/([a-z])/", r"\1:\\\\", str(src)).replace("/", "\\")
            ),
            dst=dst.name,
        )

        run(cmd, cwd=dst.parent, check=True, shell=True)
    else:
        os.symlink(src.resolve(), dst)


def main():
    parser = ArgumentParser(
        description=DESCRIPTION,
        formatter_class=RawDescriptionHelpFormatter,
    )
    parser.add_argument(
        "target",
        type=Path,
        metavar=str(Path("Path", "To", "Interface", "AddOns")),
    )
    parser.add_argument(
        "-c",
        "--clean",
        action="store_true",
        help="clean targets before install",
    )
    parser.add_argument(
        "-u",
        "--uninstall",
        action="store_true",
        help="uninstall and exit",
    )
    parser.add_argument(
        "-e",
        "--expansion",
        type=int,
        default=0,
        help="install single expansion"
    )
    args = parser.parse_args()

    target: Path = args.target
    clean: bool = args.clean
    uninstall: bool = args.uninstall
    expansion: int = args.expansion

    if not target.exists():
        print(f"Path does not exist: {target}", file=sys.stderr)
        return 1

    target = target.resolve()
    if target.name.lower() != "addons":
        print(f'Path is not a WoW addons directory: "{target}"', file=sys.stderr)
        return 1

    for plugin in sorted(Path("plugins").iterdir()):
        plugin_name = f"HandyNotes_{plugin.name[3:]}"
        target_dir = target.joinpath(plugin_name)

        # skip expansion if this is not the one we want
        if expansion not in (0, int(plugin.name[:2])):
            continue

        # remove previous installs
        if clean or uninstall:
            if target_dir.exists():
                print(f"Deleting {target_dir}")
                shutil.rmtree(target_dir)
            if uninstall:
                continue

        # install plugin-specific files
        os.makedirs(target_dir, exist_ok=True)
        for item in plugin.iterdir():
            install(item, target_dir.joinpath(item.name))

        # add dummy .git directory so the plugins show up as "Working Copy" in the curse client
        os.makedirs(target_dir.joinpath(".git"), exist_ok=True)

        # link core + library dirs
        for item in ("core", "libs", "embeds.xml"):
            install(Path(item), target_dir.joinpath(item))

        # install templates.xml file
        with (
            open("templates.xml") as f1,
            open(target_dir.joinpath("templates.xml"), "w") as f2,
        ):
            print(f"Writing templates.xml => {target_dir.joinpath('templates.xml')}")
            f2.write(f1.read().format(addon=plugin_name))


if __name__ == "__main__":
    sys.exit(main())
