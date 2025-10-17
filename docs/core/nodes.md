# Node Classes <!-- omit from toc -->

- [Node](#node)
- [Collectible](#collectible)
- [Intro](#intro)
- [Item](#item)
- [NPC](#npc)
- [PetBattle](#petbattle)
- [Quest](#quest)
- [Rare](#rare)
- [Treasure](#treasure)

---

## Node

The base class for all nodes.

``` lua
ns.node.Node({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Example Node.'
})
```

### Default Properites <!-- omit from toc -->

`ns.node.Node` has the following properties by default:

- `label` (string) (*default: 'UNKNOWN'*)
  - The title shown in the tooltip when hovering this node.
- `minimap` (boolean) (*default: true*)
  - Should the node be displayed on the minimap.
- `alpha` (float) (*default: 1.0*)
  - The alpha value for this node.
- `scale` (float) (*default: 1.0*)
  - The scale value for this node.
- `icon` ([string](icons.html) / int) (*default: 'default'*)
  - The icon for this node.
- `group` ([group](groups.html)) (*default: ns.groups.MISC*)
  - The group that contains and controls this node.

### Optional Tooltip Properties <!-- omit from toc -->

`ns.node.Node` supports the following *optional* properties that affect a node's tootlip:

- `sublabel` (string)
  - Additional text shown directly under the label.
- `rlabel` (string)
  - Additional label shown in the top right corner of the tooltip.
- `questCount` (boolean)
  - Display completed quest count as `rlabel`.
- `location` (string)
  - Additonal text that provides more detail about the location of a node.
- `note` (string)
  - Additional text that provides more detail about the node.
- `requires` ([Requirement](requirements.html) / [Requirement](requirements.html))
  - List of requirements that need to be met for the node.
- `rewards` ([Reward](rewards.html))
  - List of rewards that are offered by the node.

### Optional Visibility Properties <!-- omit from toc -->

`ns.node.Node` supports the following *optional* properties that affect a node's visibility:

- `class` (string)
  - Only display this node if the character is this class.
    - `'DEATHKNIGHT'`
    - `'DEMONHUNTER'`
    - `'DRUID'`
    - `'EVOKER'`
    - `'HUNTER'`
    - `'MAGE'`
    - `'MONK'`
    - `'PALADIN'`
    - `'PRIEST'`
    - `'ROGUE'`
    - `'SHAMAN'`
    - `'WARLOCK'`
    - `'WARRIOR'`
- `faction` (string)
  - Only display this node if the character is this faction.
    - `'Alliance'`
    - `'Horde'`
- `quest` (int / int[ ])
  - Hide this node when *all* `questID` in `quest` have been completed.
- `questAny` (boolean)(*default: all*)
  - Hide this node when *any* `questID` in `quest` have been completed.
- `questDeps` (int / int[ ])
  - Show this node if all `questID` in `questDeps` have been completed.

### Optional Interaction Properties <!-- omit from toc -->

`ns.node.Node` supports the following *optional* properties that affect a node's interaction:

- `fgroup` (string)
  - A category of nodes that should be focused together when hovered or clicked.
- `parent` (int)
  - Additional `mapID` to display this node on.
- `parent` ([ ])
  - The `parent` property also supports some basic [Node](#node) properties.
  - `id` (int)(*required*)
    - Additional `mapID` to display this node on.
  - `note` (string)
    - Additional text shown under the [Requirement](requirements.html) text.
  - `pois` ([POI](points.html))
    - POIs that should be shown on the parent map when hovering over or clicking a node.
- `pois` ([POI](points.html))
  - POIs that should be shown on the map when hovering over or clicking a node.

---

## Collectible

``` lua
-- From Azj-Kahet plugin - Kej Pet Vendor
map.nodes[59235348] = ns.node.KejPetVendor({
    id = 218187,
    note = L['kej_pet_vendor_note'],
    group = ns.groups.VENDOR,
    rewards = {
        Pet({item = 221546, id = 4486}), -- Colossal Warsquid
        Pet({item = 221547, id = 4487}), -- Kej'ra Wool Krolusk
        Pet({item = 221548, id = 4485}), -- Invasive Kej'ra Drone
        Pet({item = 221549, id = 4484}) -- Ominous K'arthok Broodling
    }
}) -- Kej

-- From The War Within - Collectible with custom behavior
cot.nodes[63892774] = ns.node.Collectible({
    id = 218649,
    note = L['collector_kah_note'],
    group = ns.groups.VENDOR,
    rewards = {
        Item({item = 224051}), -- Artisan's Consortium Market Board
        Item({item = 224052}), -- Artisan's Consortium Supply Cache
        Item({item = 224053}) -- Artisan's Consortium Ledger
    }
}) -- Collector Kah-Nah
```

### Optional Properties <!-- omit from toc -->

`ns.node.Collectible` supports the following properties:

- `id` (int)
  - The `npcID` for the NPC who offers the collectible. This will be used for the `label` property.
- `item` (int)
  - The `itemID` for the colectible. This will be used for the `label` property.

Please note that the label for `ns.node.Collectible` can also come from the criteria for the first listed [achievement](rewards.html#achievement) in `rewards`.

---

## Intro

``` lua
local MawIntro = Class('MawIntro', ns.node.Intro, {
    quest = 62907, -- Eye of the Jailor activation
    label = L['return_to_the_maw'],
    note = L['maw_intro_note']
})

map.intro = MawIntro({
    rewards = {
        Quest({
            id = {
                62882, -- Setting the Ground Rules
                60287 -- Rule 1: Have an Escape Plan
            }
        })
    }
})

map.nodes[80306280] = map.intro
```

### Default Properites <!-- omit from toc -->

`ns.node.Intro` has the following properties set by default:

- `scale` (float) (*default: 3*)
  - The default scale value for this node.
- `icon` ([string](icons.html) / int) (*default: 'quest_ay'*)
  - The default icon for this node.
- `group` ([group](groups.html)) (*default: ns.groups.QUEST*)
  - The default group for this node.
- `minimap` (boolean) (*default: false*)
  - The Intro node will not be displayed on the minimap by default.

### Optional Properties <!-- omit from toc -->

`ns.node.Intro` supports the following properties:

- `quest` (int)
  - The `questID` of the Intro Quest. This will be used for the `label` property.

---

## Item

``` lua
map.nodes[78175317] = ns.node.Item({
    id = 189418,
    quest = 65327,
    sublabel = '{spell:366368}',
    icon = 132599,
    group = ns.groups.PROTOFORM_SCHEMATICS
    note = L['schematic_ambystan_darter_note']
}) -- Ambystan Darter
```

### Required Properties <!-- omit from toc -->

`ns.node.Item` requires the following properties:

- `id` (int)
  - The `itemID` for the item. This will be used for the `label` property.

---

## NPC

``` lua
-- From Azj-Kahet plugin - Vendor NPC
cot.nodes[58463084] = ns.node.NPC({
    id = 220867,
    note = L['memory_cache_merchant_note'],
    group = ns.groups.VENDOR,
    rewards = {
        Item({item = 223924}), -- Web-Woven Hood
        Item({item = 223925}), -- Silken Binding Wrap
        Item({item = 223926}), -- Chitin Studded Boots
        Item({item = 223927}) -- Reinforced Web Grips
    }
}) -- Memory Cache Merchant

-- From The War Within - NPC with faction requirement
map.nodes[41057311] = ns.node.NPC({
    id = 207471,
    faction = 'Alliance',
    note = L['alliance_vendor_note'],
    group = ns.groups.VENDOR,
    rewards = {
        Item({item = 212345}), -- Alliance Banner
        Mount({item = 212346, id = 2174}) -- Alliance War Horse
    }
}) -- Alliance Quartermaster
```

### Required Properties <!-- omit from toc -->

`ns.node.NPC` requires the following properties:

- `id` (int)
  - The `npcID` for the NPC. This will be used for the `label` property.

---

## PetBattle

``` lua
map.nodes[13095369] = ns.node.PetBattle({
    id = 200689,
    rewards = {Achievement({id = 17541, criteria = 58574})} -- Global Swarming
}) -- Wildfire
```

### Default Properites <!-- omit from toc -->

`ns.node.PetBattle` has the following properties set by default:

- `scale` (float) (*default: 1.2*)
  - The default scale value for this node.
- `icon` ([string](icons.html) / int) (*default: 'paw_y'*)
  - The default icon for this node.
- `group` ([group](groups.html)) (*default: ns.groups.PETBATTLE*)
  - The default group for this node.

### Required Properties <!-- omit from toc -->

`ns.node.PetBattle` requires the following properties:

- `id` (int)
  - The `npcID` for the NPC who offers the pet battle. This will be used for the `label` property.

---

## Quest

``` lua
map.nodes[53486145] = Quest({
    quest = 55743,
    questDeps = 56117,
    daily = true,
    minimap = false,
    scale = 1.8,
    rewards = {
        Achievement({id = 13708, criteria = {45772, 45775, 45776, 45777, 45778}}), -- Most Minis Wins
        Item({item = 169848, weekly = 57134}) -- Azeroth Mini Pack: Bondo's Yard
    }
})
```

### Default Properites <!-- omit from toc -->

`ns.node.Quest` has the following properties set by default:

- `icon` ([string](icons.html) / int) (*default: 'quest_ay'*)
  - The default icon for this node.

### Optional Properties <!-- omit from toc -->

`ns.node.Quest` supports the following properties:

- `id` (int)
  - The `questID` of the Quest. This will be used for the `label` property.
- `daily` (boolean)
  - This is used for the `icon` property, when it is `true` the icon will set it to `'quest_ab'`.

---

## Rare

``` lua
-- From Azj-Kahet plugin - Rare with multiple rewards
map.nodes[61411274] = ns.node.Rare({
    id = 221327,
    quest = 81705,
    note = L['tka_fleshripper_note'],
    rewards = {
        Achievement({id = 40840, criteria = 69392}), -- Adventurer of Azj-Kahet
        Item({item = 223006}), -- Nerubian Slayer's Cleaver
        Item({item = 223920}) -- Chitin-Wrapped Bindings
    }
}) -- Tka'ktath Fleshripper

-- From The War Within - Rare with vignette tracking
cot.nodes[71632032] = ns.node.Rare({
    id = 220159,
    quest = 81634,
    vignette = 6142,
    note = L['webspeaker_grik_note'],
    rewards = {
        Achievement({id = 40840, criteria = 69389}), -- Adventurer of Azj-Kahet
        Item({item = 223005}), -- Nerubian Ritualist's Dagger
        Item({item = 223916}) -- Silk-Lined Cowl
    }
}) -- Webspeaker Grik'ik
```

### Default Properites <!-- omit from toc -->

`ns.node.Rare` has the following properties set by default:

- `scale` (float) (*default: 1.2*)
  - The default scale value for this node.
- `icon` ([string](icons.html) / int) (*default: 'skull_b'*)
  - The default icon for this node.
  - The icon will automatically update to `'skull_w'` when all rewards have been collected.
- `group` ([group](groups.html)) (*default: ns.groups.RARE*)
  - The default group for this node.

### Required Properties <!-- omit from toc -->

`ns.node.Rare` requires the following properties:

- `id` (int)
  - The `npcID` for the rare. This will be used for the `label` property.

### Recommended Properties <!-- omit from toc -->

It is highly recommended that you add the `quest` property to rares and use the hidden `questID` used by Blizzard to track if a rare has been killed for the day.

- `quest` (int)
  - The `questID` used to track the daily kill.

---

## Treasure

``` lua
-- From Azj-Kahet plugin - Standard treasure
map.nodes[62601430] = ns.node.Treasure({
    quest = 82718,
    note = L['concealed_contraband_note'],
    rewards = {
        Achievement({id = 40625, criteria = 68993}), -- Azj-Kahet Treasures
        Item({item = 224581}) -- Nerubian Doubloons
    }
}) -- Concealed Contraband

-- From The War Within - Treasure with requirements
cot.nodes[67013019] = ns.node.Treasure({
    quest = 82721,
    label = '{item:224783}',
    note = L['memory_cache_note'],
    requires = ns.requirement.Item(224783), -- Web-Entangled Key
    rewards = {
        Achievement({id = 40625, criteria = 68994}), -- Azj-Kahet Treasures
        Item({item = 224584}), -- Memory Fragments
        Transmog({item = 223921}) -- Nerubian Skitterer's Cord
    },
    pois = {POI({67303040})} -- Key location
}) -- Trapped Memory Cache
```

### Default Properites <!-- omit from toc -->

`ns.node.Treasure` has the following properties set by default:

- `scale` (float) (*default: 1.3*)
  - The default scale value for this node.
- `icon` ([string](icons.html) / int) (*default: 'chest_gy'*)
  - The default icon for this node.
- `group` ([group](groups.html)) (*default: ns.groups.TREASURE*)
  - The default group for this node.

### Recommended Properties <!-- omit from toc -->

It is highly recommended that you add the `quest` property to rares and use the hidden `questID` used by Blizzard to track if a treasure has been collected.

- `quest` (int)
  - The `questID` used to track a the collected treasure.

Please note that by default the label for `ns.node.Treasure` comes from the criteria for the first listed [achievement](rewards.html#achievement) in `rewards`.
