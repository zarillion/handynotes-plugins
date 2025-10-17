# Icon System

The icon system provides a comprehensive set of custom icons for map nodes, along with utility functions for icon management and display.

## Icon Structure

Each icon entry contains both the main icon texture and an optional glow texture:

```lua
ns.icons.chest_yw = {
    'Interface\\Addons\\HandyNotes\\core\\artwork\\icons\\chest_yellow.blp',  -- Main icon
    'Interface\\Addons\\HandyNotes\\core\\artwork\\glows\\chest.blp'         -- Glow texture
}
```

## Functions

### ns.GetIconPath(name)

Returns the file path to the main icon texture:

```lua
local path = ns.GetIconPath('chest_yw')
-- Returns: 'Interface\\Addons\\HandyNotes\\core\\artwork\\icons\\chest_yellow.blp'
```

### ns.GetGlowPath(name)

Returns the file path to the glow texture:

```lua
local glowPath = ns.GetGlowPath('chest_yw')
-- Returns: 'Interface\\Addons\\HandyNotes\\core\\artwork\\glows\\chest.blp'
```

### ns.GetIconLink(name, size, offsetX, offsetY)

Creates a texture link for inline text display (see [Wowpedia](https://wowpedia.fandom.com/wiki/UI_escape_sequences#Textures)):

```lua
-- Basic usage
local link = ns.GetIconLink('chest_yw')
-- Returns: '|TInterface\\Addons\\...\\chest_yellow.blp:0:0|t'

-- With custom size and offset
local link = ns.GetIconLink('chest_yw', 16, 2, 4)
-- Returns: '|TInterface\\Addons\\...\\chest_yellow.blp:16:16:2:4|t'
```

## Usage in Nodes

Icons can be specified by name or texture ID:

```lua
-- From Azj-Kahet plugin - Using framework treasure icon
map.nodes[62601430] = ns.node.Treasure({
    quest = 82718,
    note = L['concealed_contraband_note'],
    icon = 'chest_gy'  -- Framework gray chest icon
})

-- From Azj-Kahet plugin - Using game texture ID for vendor
cot.nodes[58463084] = ns.node.NPC({
    id = 220867,
    icon = 4254892,  -- Game texture for vendor NPCs
    group = ns.groups.VENDOR
}) -- Memory Cache Merchant

-- From profession treasures - Using profession icons
cot.nodes[45321322] = ns.node.ProfessionTreasures.Alchemy({
    quest = 83846,
    id = 226271,
    icon = 'crystal_o'  -- Orange crystal for alchemy
}) -- Nerubian Mixing Salts

-- Rare with default skull icon (framework handles automatically)
map.nodes[61411274] = ns.node.Rare({
    id = 221327,
    quest = 81705,
    -- icon defaults to 'skull_b', changes to 'skull_w' when completed
    note = L['tka_fleshripper_note']
}) -- Tka'ktath Fleshripper
```

## Usage in Tooltips

Icons can be embedded in tooltip text:

```lua
-- From project plugins - Embedding icons in notes
local node = ns.node.Treasure({
    quest = 82721,
    label = '{item:224783}',  -- Item icon via game link
    note = ns.GetIconLink('chest_gy', 16) .. ' ' .. L['memory_cache_note'],
    icon = 'chest_gy'
}) -- Trapped Memory Cache

-- From Kej Pet Vendor - Using profession icons in notes
map.nodes[59235348] = ns.node.KejPetVendor({
    id = 218187,
    note = ns.GetIconLink('paw_y', 14) .. ' ' .. L['kej_pet_vendor_note'],
    group = ns.groups.VENDOR
}) -- Kej Pet Vendor
```

## Default Icons

The framework provides a default icon system:

```lua
local DEFAULT_ICON = 454046  -- Default texture ID
local DEFAULT_GLOW = 'Interface\\Addons\\...\\square_icon.blp'

-- Fallback when icon not found
function GetNodeIcon(iconName)
    return ns.icons[iconName] or DEFAULT_ICON
end
```

# Icons <!-- omit from toc -->

- [Chests](#chests)
- [Crystals](#crystals)
- [Flight Points](#flight-points)
- [Horseshoes](#horseshoes)
- [Pet Battle Paws](#pet-battle-paws)
- [Pegs](#pegs)
- [Portals](#portals)
- [Quests](#quests)
- [Skulls](#skulls)
- [Miscellaneous Icons](#miscellaneous-icons)


## Chests

| Name              | Icon                                                       | name in code     |
|-------------------|------------------------------------------------------------|------------------|
| Chest Black       | ![chest_bk](../assets/png/icons/chest_black.png)           | `'chest_bk'`     |
| Chest Blue        | ![chest_bl](../assets/png/icons/chest_blue.png)            | `'chest_bl'`     |
| Chest Brown       | ![chest_bn](../assets/png/icons/chest_brown.png)           | `'chest_bn'`     |
| Chest Green       | ![chest_gn](../assets/png/icons/chest_green.png)           | `'chest_gn'`     |
| Chest Gray        | ![chest_gy](../assets/png/icons/chest_gray.png)            | `'chest_gy'`     |
| Chest Lime        | ![chest_lm](../assets/png/icons/chest_lime.png)            | `'chest_lm'`     |
| Chest Navy        | ![chest_nv](../assets/png/icons/chest_navy.png)            | `'chest_nv'`     |
| Chest Pink        | ![chest_pk](../assets/png/icons/chest_pink.png)            | `'chest_pk'`     |
| Chest Purple      | ![chest_pp](../assets/png/icons/chest_purple.png)          | `'chest_pp'`     |
| Chest Red         | ![chest_rd](../assets/png/icons/chest_red.png)             | `'chest_rd'`     |
| Chest Teal        | ![chest_tl](../assets/png/icons/chest_teal.png)            | `'chest_tl'`     |
| Chest Yellow      | ![chest_yw](../assets/png/icons/chest_yellow.png)          | `'chest_yw'`     |
| Star Chest Blue   | ![star_chest_b](../assets/png/icons/star_chest_blue.png)   | `'star_chest_b'` |
| Star Chest Gray   | ![star_chest_g](../assets/png/icons/star_chest_gray.png)   | `'star_chest_g'` |
| Star Chest Pink   | ![star_chest_p](../assets/png/icons/star_chest_pink.png)   | `'star_chest_p'` |
| Star Chest Yellow | ![star_chest_y](../assets/png/icons/star_chest_yellow.png) | `'star_chest_y'` |

## Crystals

| Name           | Icon                                                 | name in code  |
|----------------|------------------------------------------------------|---------------|
| Crystal Blue   | ![crystal_b](../assets/png/icons/crystal_blue.png)   | `'crystal_b'` |
| Crystal Orange | ![crystal_o](../assets/png/icons/crystal_orange.png) | `'crystal_o'` |
| Crystal Purple | ![crystal_p](../assets/png/icons/crystal_purple.png) | `'crystal_p'` |

## Flight Points

| Name                | Icon                                                           | name in code       |
|---------------------|----------------------------------------------------------------|--------------------|
| Flight Point Gray   | ![flight_point_g](../assets/png/icons/flight_point_gray.png)   | `'flight_point_g'` |
| Flight Point Yellow | ![flight_point_y](../assets/png/icons/flight_point_yellow.png) | `'flight_point_y'` |

## Horseshoes

| Name             | Icon                                                     | name in code    |
|------------------|----------------------------------------------------------|-----------------|
| Horseshoe Black  | ![horseshoe_b](../assets/png/icons/horseshoe_black.png)  | `'horseshoe_b'` |
| Horseshoe Gray   | ![horseshoe_g](../assets/png/icons/horseshoe_gray.png)   | `'horseshoe_g'` |
| Horseshoe Orange | ![horseshoe_o](../assets/png/icons/horseshoe_orange.png) | `'horseshoe_o'` |

## Pet Battle Paws

| Name       | Icon                                         | name in code |
|------------|----------------------------------------------|--------------|
| Paw Green  | ![paw_g](../assets/png/icons/paw_green.png)  | `'paw_g'`    |
| Paw Yellow | ![paw_y](../assets/png/icons/paw_yellow.png) | `'paw_y'`.   |

## Pegs

| Name       | Icon                                          | name in code |
|------------|-----------------------------------------------|--------------|
| Peg Blue   | ![peg_bl](../assets/png/icons/peg_blue.png)   | `'peg_bl'`   |
| Peg Black  | ![peg_bk](../assets/png/icons/peg_black.png)  | `'peg_bk'`   |
| Peg Green  | ![peg_gn](../assets/png/icons/peg_green.png)  | `'peg_gn'`   |
| Peg Red    | ![peg_rd](../assets/png/icons/peg_red.png)    | `'peg_rd'`   |
| Peg Yellow | ![peg_yw](../assets/png/icons/peg_yellow.png) | `'peg_yw'`   |

## Portals

| Name          | Icon                                                | name in code  |
|---------------|-----------------------------------------------------|---------------|
| Portal Blue   | ![portal_bl](../assets/png/icons/portal_blue.png)   | `'portal_bl'` |
| Portal Gray   | ![portal_gy](../assets/png/icons/portal_gray.png)   | `'portal_gy'` |
| Portal Green  | ![portal_gn](../assets/png/icons/portal_green.png)  | `'portal_gn'` |
| Portal Purple | ![portal_pp](../assets/png/icons/portal_purple.png) | `'portal_pp'` |
| Portal Red    | ![portal_rd](../assets/png/icons/portal_red.png)    | `'portal_rd'` |

## Quests

| Name                   | Icon                                                        | name in code    |
|------------------------|-------------------------------------------------------------|-----------------|
| Quest available Blue   | ![quest_ab](../assets/png/icons/quest_available_blue.png)   | `'quest_ab'`    |
| Quest available Green  | ![quest_ag](../assets/png/icons/quest_available_green.png)  | `'quest_ag'`    |
| Quest available Orange | ![quest_ao](../assets/png/icons/quest_available_orange.png) | `'quest_ao'`    |
| Quest available Yellow | ![quest_ay](../assets/png/icons/quest_available_yellow.png) | `'quest_ay'`    |
| world_quest            | ![world_quest](../assets/png/icons/world_quest.png)         | `'world_quest'` |

## Skulls

| Name             | Icon                                                      | name in code     |
|------------------|-----------------------------------------------------------|------------------|
| Skull Blue       | ![skull_b](../assets/png/icons/skull_blue.png)            | `'skull_b'`      |
| Skull White      | ![skull_w](../assets/png/icons/skull_white.png)           | `'skull_w'`      |
| Star Skull Blue  | ![star_skull_b](../assets/png/icons/star_skull_blue.png)  | `'star_skull_b'` |
| Star Skull White | ![star_skull_w](../assets/png/icons/star_skull_white.png) | `'star_skull_w'` |

## Miscellaneous Icons

| Name              | Icon                                                        | name in code        |
|-------------------|-------------------------------------------------------------|---------------------|
| Alliance          | ![alliance](../assets/png/icons/alliance.png)               | `'alliance'`        |
| Horde             | ![horde](../assets/png/icons/horde.png)                     | `'horde'`           |
| Achievement       | ![achievement](../assets/png/icons/achievement.png)         | `'achievement'`     |
| Door Down         | ![door_down](../assets/png/icons/door_down.png)             | `'door_down'`       |
| Envelope          | ![envelope](../assets/png/icons/envelope.png)               | `'envelope'`        |
| Left Mouse Button | ![left_mouse](../assets/png/icons/left_mouse.png)           | `'left_mouse'`      |
| Scroll            | ![scroll](../assets/png/icons/scroll.png)                   | `'scroll'`          |
| War Mode Flags    | ![war_mode_flags](../assets/png/icons/war_mode_flags.png)   | `'war_mode_flags'`  |
| War Mode Swords   | ![war_mode_swords](../assets/png/icons/war_mode_swords.png) | `'war_mode_swords'` |
| Checkmark Blue    | ![check_bl](../assets/png/icons/check_blue.png)             | `'check_bl'`        |
| Checkmark Green   | ![check_gn](../assets/png/icons/check_green.png)            | `'check_gn'`        |
| Checkmark Gray    | ![check_gy](../assets/png/icons/check_gray.png)             | `'check_gy'`        |
| Checkmark Yellow  | ![check_yw](../assets/png/icons/check_yellow.png)           | `'check_yw'`        |
