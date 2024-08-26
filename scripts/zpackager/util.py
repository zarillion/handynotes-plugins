from .git import changed_files, ReleaseTag
from .plugin import Plugin


def filtered_plugins(plugins: list[Plugin], tag: ReleaseTag) -> list[Plugin]:
    """
    Filter the list of plugins to those that we should release for this tag.
    A plugin should be released if:

        1. Any of the core files have changed
        2. Any of its plugin-specific files have changed
    """
    previous = tag.previous()

    if not previous.exists():
        # If previous tag is not found to compare against, assume all enabled plugins
        # need to be released. This shouldn't really happen other than the first time
        # we use this new release system. We should always be using consecutive tags.
        return [p for p in plugins if p.enabled]

    for path in changed_files(previous.value, tag.value):
        # If a file common to all plugins was changed, release all enabled plugins
        if path.parts[0] in ("core", "libs", "embeds.xml", "templates.xml"):
            return [p for p in plugins if p.enabled]

        if path.parts[0] == "plugins":
            for plugin in plugins:
                if path.parts[1] == plugin.dir:
                    plugin.dirty = True
                    break

    return [p for p in plugins if p.enabled and p.dirty]
