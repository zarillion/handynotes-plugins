from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED
import os
import shutil

from .git import ReleaseTag
from .plugin import Plugin


def copy(src: Path, dst: Path):
    print(f"Copying {src} => {dst}")
    os.makedirs(dst.parent, exist_ok=True)

    if src.is_dir():
        shutil.copytree(src, dst)
    else:
        shutil.copy2(src, dst)


def zip_write(zf: ZipFile, src: Path, dst: Path):
    zf.write(src, dst)
    if src.is_dir():
        for item in sorted(src.iterdir()):
            zip_write(zf, item, Path(dst, item.name))


def create_release_zip(plugin: Plugin, tag: ReleaseTag) -> Path:
    target_dir = Path("release", plugin.name)
    target_zip = Path("release", f"{plugin.name}-{tag}.zip")

    shutil.rmtree(target_dir, ignore_errors=True)
    os.makedirs(target_dir, exist_ok=True)

    copy(Path("core"), Path(target_dir, "core"))
    copy(Path("libs"), Path(target_dir, "libs"))
    copy(Path("embeds.xml"), Path(target_dir, "embeds.xml"))

    with (
        open("templates.xml") as f1,
        open(Path(target_dir, "templates.xml"), "w") as f2,
    ):
        f2.write(f1.read().format(addon=plugin.name))

    for item in plugin.path.iterdir():
        if item.name in ("images", "CHANGELOG.md", "README.md"):
            continue
        copy(item, Path(target_dir, item.name))

    # Replace "Version: 0" with the correct number
    with open(Path(target_dir, f"{plugin.name}.toc")) as f:
        toc = f.read()
    toc = toc.replace("## Version: 0", f"## Version: {tag.version}")
    with open(Path(target_dir, f"{plugin.name}.toc"), "w") as f:
        f.write(toc)

    with ZipFile(target_zip, "w", ZIP_DEFLATED) as zf:
        print(f"Archiving: {target_dir} => {target_zip}")
        zip_write(zf, target_dir, Path(plugin.name))

    print(f"Created: {target_zip.absolute()}")
    return target_zip
