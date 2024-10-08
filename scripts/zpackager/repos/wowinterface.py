from pathlib import Path

from requests import HTTPError
import requests

from ..git import ReleaseTag
from ..plugin import Plugin

# curl -H "x-api-token: <token>" https://api.wowinterface.com/addons/list.json
WOWI_API = "https://api.wowinterface.com/addons"


def upload_to_wowinterface(
    plugin: Plugin, tag: ReleaseTag, zip: Path, token: str
) -> bool:
    print("Uploading to WoWInterface ...")

    response = requests.post(
        f"{WOWI_API}/update",
        headers={"x-api-token": token},
        files={
            "id": (None, plugin.wowi),
            "version": (None, tag.value),
            "changelog": (None, plugin.changelog(tag)),
            "compatible": (None, plugin.wow_version()),
            "updatefile": open(zip, "rb"),
        },
    )

    try:
        response.raise_for_status()
    except HTTPError as err:
        print(f"Failed to upload: {err}")
        return False

    return True
