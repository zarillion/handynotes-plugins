from pathlib import Path

from requests import HTTPError
import requests

from ..git import ReleaseTag

GITHUB_API = "https://api.github.com/repos/zarillion/handynotes-plugins"
GITHUB_UAPI = "https://uploads.github.com/repos/zarillion/handynotes-plugins"


def upload_as_github_release(tag: ReleaseTag, zips: set[Path], token: str) -> bool:
    print("Uploading as GitHub release ...")
    auth = ("zarillion", token)

    resp = requests.post(
        f"{GITHUB_API}/releases",
        auth=auth,
        headers={"Accept": "application/vnd.github.v3+json"},
        json={
            "tag_name": tag.value,
            "name": tag.value,
            "body": f"Combined release {tag.value}!",
            "prerelease": False,
        },
    )
    resp.raise_for_status()
    release_id = resp.json()["id"]

    for zip in zips:
        with open(zip, "rb") as f:
            response = requests.post(
                f"{GITHUB_UAPI}/releases/{release_id}/assets",
                auth=auth,
                headers={
                    "Accept": "application/vnd.github.v3+json",
                    "Content-Type": "application/zip",
                },
                data=f,
                params={"name": zip.name},
            )

            try:
                response.raise_for_status()
            except HTTPError as err:
                print(f"Failed to upload: {err}")
                return False

    return True
