from pathlib import Path
import sys

import click
import yaml

from zpackager.git import current_tags, ReleaseTag
from zpackager.plugin import Plugin
from zpackager.repos.curseforge import upload_to_curseforge
from zpackager.repos.wago import upload_to_wago
from zpackager.repos.wowinterface import upload_to_wowinterface
from zpackager.repos.github import upload_as_github_release
from zpackager.util import filtered_plugins
from zpackager.zip import create_release_zip

HERE = Path(__file__).absolute().parent


@click.command("release.py")
@click.argument("tag", type=ReleaseTag)
@click.option(
    "--curse-token",
    envvar="CURSE_TOKEN",
    required=True,
    help="CurseForge API token",
)
@click.option(
    "--wago-token",
    envvar="WAGO_TOKEN",
    required=True,
    help="Wago.io API token",
)
@click.option(
    "--wowi-token",
    envvar="WOWI_TOKEN",
    required=True,
    help="WoWInterface API token",
)
@click.option(
    "--github-token",
    envvar="GITHUB_TOKEN",
    required=True,
    help="GitHub API token",
)
def main(
    tag: ReleaseTag,
    curse_token: str,
    wago_token: str,
    wowi_token: str,
    github_token: str,
):
    """
    Release TAG as a new set of plugin versions based on the files that have changed
    since the last tagged release. HEAD must already point to the provided tag.

    Example:

        python release.py v60
    """

    if tag.value not in current_tags():
        print(f"Tag not present on HEAD: {tag}", file=sys.stderr)
        return 1

    with open(Path(HERE, "plugins.yml")) as f:
        plugins = [Plugin(**p) for p in yaml.safe_load(f.read())["plugins"]]

    released = set()
    success: list[bool] = []

    for plugin in filtered_plugins(plugins, tag):
        zip = create_release_zip(plugin, tag)

        if plugin.curse:
            success.append(upload_to_curseforge(plugin, tag, zip, curse_token))
        if plugin.wago:
            success.append(upload_to_wago(plugin, tag, zip, wago_token))
        if plugin.wowi:
            success.append(upload_to_wowinterface(plugin, tag, zip, wowi_token))

        print(f"Released: {plugin.name}-{tag}")
        released.add(zip)

    success.append(upload_as_github_release(tag, released, github_token))
    return 0 if all(success) else 1


if __name__ == "__main__":
    sys.exit(main())
