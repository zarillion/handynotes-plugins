from pathlib import Path
import json

import requests

from ..git import ReleaseTag
from ..plugin import Plugin

CURSEFORGE_API = "https://wow.curseforge.com/api"


def get_cf_version_id(plugin: Plugin, token: str) -> int:
    wow_version = plugin.wow_version()
    versions = requests.get(f"{CURSEFORGE_API}/game/versions?token={token}").json()
    for version in versions:
        # gameVersionTypeID = 517 (retail), gameVersionTypeID = 67408 (classic)
        if version["gameVersionTypeID"] == 517 and version["name"] == wow_version:
            return version["id"]

    raise ValueError(f"Unknown interface version: {wow_version}")


def upload_to_curseforge(plugin: Plugin, tag: ReleaseTag, zip: Path, token: str):
    print("Uploading to CurseForge ... ")

    metadata = (
        None,
        json.dumps(
            {
                "changelog": plugin.changelog(tag),
                "changelogType": "markdown",
                "displayName": tag.value,
                "gameVersions": [get_cf_version_id(plugin, token)],
                "releaseType": "release",
                "relations": {
                    "projects": [{"slug": "handynotes", "type": "requiredDependency"}]
                },
            }
        ),
    )

    response = requests.post(
        f"{CURSEFORGE_API}/projects/{plugin.curse}/upload-file",
        headers={"X-Api-Token": token},
        files={
            "metadata": metadata,
            "file": open(zip, "rb"),
        },
    )  # resp.json() == {'id': \d+}
    response.raise_for_status()

    # XXX: Is it possible to automatically upload the README.md file here?
