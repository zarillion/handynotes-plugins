from pathlib import Path
import json

from requests import HTTPError
import requests

from ..git import ReleaseTag
from ..plugin import Plugin

WAGO_API = "https://addons.wago.io/api"

# https://docs.wago.io/#sending-the-upload-request
# https://addons.wago.io/api/data/game (version must be in this list)


def upload_to_wago(plugin: Plugin, tag: ReleaseTag, zip: Path, token: str) -> bool:
    print("Uploading to Wago.io ... ")

    metadata = (
        None,
        json.dumps(
            {
                "label": tag.value,
                "stability": "stable",
                "changelog": plugin.changelog(tag),
                "supported_retail_patch": plugin.wow_version(),
            }
        ),
    )

    response = requests.post(
        f"{WAGO_API}/projects/{plugin.wago}/version",
        headers={
            "Authorization": f"Bearer {token}",
            "Accept": "application/json",
        },
        files={
            "metadata": metadata,
            "file": open(zip, "rb"),
        },
    )

    try:
        response.raise_for_status()
    except HTTPError as err:
        print(f"Failed to upload: {err}")
        return False

    return True
