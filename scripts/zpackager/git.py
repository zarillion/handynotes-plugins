from pathlib import Path
from subprocess import run
import re


def current_tags() -> set[str]:
    return set(
        run(
            "git tag --points-at HEAD",
            check=True,
            shell=True,
            capture_output=True,
            text=True,
        ).stdout.splitlines()
    )


def changed_files(ref1: str, ref2: str) -> list[Path]:
    paths = run(
        f"git diff --name-only {ref1} {ref2}",
        check=True,
        shell=True,
        capture_output=True,
        text=True,
    ).stdout.splitlines()
    return [Path(p) for p in paths]


class ReleaseTag:
    def __init__(self, value: str):
        self.value = value
        if match := re.fullmatch(r"v(\d+)", value):
            self.version = int(match.group(1))
        else:
            raise ValueError(value)

    def __str__(self) -> str:
        return self.value

    def exists(self) -> bool:
        output = run(
            f"git tag -l {self}",
            check=True,
            shell=True,
            capture_output=True,
            text=True,
        ).stdout.strip()
        return len(output) > 0

    def previous(self) -> "ReleaseTag":
        return ReleaseTag(f"v{self.version - 1}")
