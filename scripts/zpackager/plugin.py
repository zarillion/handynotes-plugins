from pathlib import Path
import re

from pydantic import BaseModel

from .git import ReleaseTag


class Plugin(BaseModel):
    dir: str
    name: str
    curse: int | None
    wowi: int | None
    enabled: bool

    dirty: bool = False

    @property
    def path(self):
        return Path("plugins", self.dir)

    def changelog(self, tag: ReleaseTag) -> str:
        """
        Return the appropriate changelog entries for this release tag. Entries must
        already exist in the source tree when the tag is created!! If no section for
        this tag is found, a default message is used.
        """
        changelog = Path(self.path, "CHANGELOG.md")
        if changelog.exists():
            with open(Path(self.path, "CHANGELOG.md")) as f:
                if match := re.match(rf"^# {tag}\s+(.+?)# v\d+", f.read(), re.M | re.S):
                    return match.group(1).strip() + "\n"

        return "No changelog entries for this release.\n"

    def wow_version(self) -> str:
        """
        Get the WoW version this plugin targets in semantic form (MAJOR.MINOR.BUGFIX).
        Converts the interface version from the TOC file. Example: 100205 => 10.2.5
        """
        with open(Path(self.path, f"{self.name}.toc")) as f:
            inum = re.search(r"## Interface: (\d+)", f.read(), re.M).group(1)
            inum = f"0{inum}" if len(inum) == 5 else inum
        return ".".join(
            map(str, map(int, [inum[i : i + 2] for i in range(0, len(inum), 2)]))
        )
