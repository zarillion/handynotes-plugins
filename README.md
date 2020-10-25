
# HandyNotes Plugins

Join our Discord server to discuss features and translations: https://discord.gg/EXCcmYW

![](https://github.com/zarillion/handynotes-plugins/workflows/Automated%20Build/badge.svg)
[![](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dzarillion%26type%3Dpatrons&style=plastic)](https://www.patreon.com/bePatron?u=44499780)

* [HandyNotes: Mechagon & Nazjatar](https://www.curseforge.com/wow/addons/handynotes-mechagon-nazjatar)
* [HandyNotes: Visions of N'Zoth](https://www.curseforge.com/wow/addons/handynotes-visions-of-nzoth)
* [HandyNotes: Shadowlands](https://www.curseforge.com/wow/addons/handynotes-shadowlands)

## Development Setup

This repository hosts *all* of our HandyNotes plugins. Since they all share the same core code and features, it made sense to keep them in a single repository instead of individual ones. This means the repository cannot be cloned directly into your addons directory; the files won't be in the places WoW expects.

> We recommend using [WSL 2](https://docs.microsoft.com/en-us/windows/wsl/about) to work on the project. It makes it *much* easier to install the Python and Lua language dependencies needed to install, lint and test the project. See this [wiki page](https://github.com/zarillion/handynotes-plugins/wiki/Installing-with-WSL) for more information

The `install.py` script can be used to install your clone of this repository into your `Interface/AddOns` directory. It will create symbolic links to directories and files in the source tree for each plugin. After installation, a `/reload` is all that is needed after editing a file to see the changes reflected in game.

```
~/handynotes-plugins$ python install.py --help
usage: install.py [-h] [-c] [-u] Path\To\Interface\AddOns

Install all HandyNotes plugins defined in this project for development.

NOTE: Must be run as administrator on Windows to allow symlink creation.

positional arguments:
  Path\To\Interface\AddOns

optional arguments:
  -h, --help            show this help message and exit
  -c, --clean           clean targets before install
  -u, --uninstall       uninstall and exit
```

The `-c/--clean` argument will delete the corresponding HandyNotes plugin directories before installing the symlinks (useful if our file/folder structure changes). The `-u/--uninstall` argument will remove the plugin directories and then exit.

## Development Options

Once installed, development-only options can be enabled in each *individual* plugin by manually setting a value in the corresponding database file for that plugin. For example, to enable the development features and options for **HandyNotes: Shadowlands**:

1. Start the game with the plugin installed, tweak *any* option and then exit. This will create the `HandyNotes_Shadowlands.lua` database file.
1. Open the file: `WTF/Account/<ACCOUNT>/SavedVariables/HandyNotes_Shadowlands.lua`.
1. Add the following option:

    ```lua
    {
        ["profiles"] = {
            ["Default"] = {
                ["development"] = true,
            },
        },
    }
    ```

1. Start the game again and you should see additional development options at the bottom of the Shadowlands plugin settings panel.

The follow development options are available:

Option | Description
------ | -----------
Debug Map IDs | Print map IDs to the chat window when the World Map changes.
Debug Quest IDs | Print quest IDs to the chat window as their completed state changes. Scans all quest IDs up to `100000` for changes every 1s.
Force Nodes | Force displays all nodes, ignoring the quest and completion status of each node.

## Quick Force Nodes

When updating or creating nodes you often want to quickly force their display to make sure they are in the right place and render their tooltips correctly. Going into the settings UI and toggling the "Force Nodes" option on and off can get tedious, so a shortcut is available.

With the World Map open, hold `LCTRL+LALT` to force display all nodes on the current map. This will also hide your character pin and any group member pins in case you are standing directly on the node you want to inspect.

## Helpful Addons and Macros

The [idTip](https://www.curseforge.com/wow/addons/idtip) addon is extremely useful when working on these plugins. It displays the corresponding IDs in the tooltip for items, spells, NPCs, achievement criteria, currencies and more.

In addition, the following macro is useful for getting your current map ID and coordinates in the format the plugin expects: `XXXXYYYY`.

```lua
/script local m = C_Map.GetBestMapForUnit("player"); local p = C_Map.GetPlayerMapPosition(m, "player"); print(m..': '..format("%04d",floor(p.x*10000))..tostring(format("%04d",p.y*10000)))
```

## Quest ID History

Sometimes you `/reload` before remembering to grab a quest ID out of the chat window. This can be frustrating and problematic if you do not have an easy way to reproduce what triggered the quest completion.

When "Debug Quest IDs" is enabled, all quest ID state changes are recorded in a DB variable for that plugin. This can be accessed after a reload with:

```
/dump HandyNotes_ShadowlandsDB.quest_id_history[1]
Dump: value=HandyNotes_ShadowlandsDB.quest_id_history[1]
[1]={
  [1]="Quest",
  [2]=55428,
  [3]="changed:",
  [4]="false",
  [5]="=>",
  [6]="true"
}
/dump HandyNotes_ShadowlandsDB.quest_id_history[2]
Dump: value=HandyNotes_ShadowlandsDB.quest_id_history[2]
[1]={
  [1]="Quest",
  [2]=62542,
  [3]="changed:",
  [4]="false",
  [5]="=>",
  [6]="true"
}
```

The most recent 1,000 quest state changes are stored, with the most recent changes being inserted at the front of the table.