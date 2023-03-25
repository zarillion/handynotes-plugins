# Node Classes

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
This is the base class for all nodes.

**Example:**
``` lua
ns.node.Node({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Example Node.'
})
```

### Default Properites
All Node classes have the following properties by default:

* `label` (string) (*default: 'UNKNOWN'*)
  * The title shown in the tooltip when hovering this node.
* `minimap` (boolean) (*default: true*)
  * Should the node be displayed on the minimap.
* `alpha` (float) (*default: 1.0*)
  * The alpha value for this node.
* `scale` (float) (*default: 1.0*)
  * The scale value for this node.
* `icon` ([string](icons.html) / int) (*default: 'default'*)
  * The icon for this node.
* `group` ([group](groups.html)) (*default: ns.groups.MISC*)
  * The group that contains and controls this node.

### Optional Tooltip Properties
All Node classes support the following _optional_ properties that affect a node's tootlip:

* `sublabel` (string)
  * Additional text shown directly under the label.
* `rlabel` (string)
  * Additional label shown in the top right corner of the tooltip.
* `questCount` (boolean)
  * Display completed quest count as `rlabel`.
* `location` (string)
  * Additonal text that provides more detail about the location of a node.
* `note` (string)
  * Additional text that provides more detail about the node.
* `requires` ([Requirement](requirements.hmtl) / [Requirement](requirements.hmtl)[ ])
  * List of requirements that need to be met for the node.
* `rewards` ([Reward](rewards.html)[ ])
  * List of rewards that are offered by the node.

### Optional Visibility Properties
All Node classes support the following _optional_ properties that affect a node's visibility:

* `class` (string)
  * Only display this node if the character is this class.
    * `'DEATHKNIGHT'`
    * `'DEMONHUNTER'`
    * `'DRUID'`
    * `'EVOKER'`
    * `'HUNTER'`
    * `'MAGE'`
    * `'MONK'`
    * `'PALADIN'`
    * `'PRIEST'`
    * `'ROGUE'`
    * `'SHAMAN'`
    * `'WARLOCK'`
    * `'WARRIOR'`
* `faction` (string)
  * Only display this node if the character is this faction.
    * `'Alliance'`
    * `'Horde'`
* `quest` (int / int[ ])
  * Hide this node when *all* `questID` in `quest` have been completed.
* `questAny` (boolean)(*default: all*)
  * Hide this node when *any* `questID` in `quest` have been completed.
* `questDeps` (int / int[ ])
  * Show this node if all `questID` in `questDeps` have been completed.

### Optional Interaction Properties
All Node class support the following _optional_ properties that affect a node's interaction:
* `fgroup` (string)
  * A category of nodes that should be focused together when hovered or clicked.
* `parent` (int)
    * Additional `mapID` to display this node on.
* `parent` ([ ])
    * The `parent` property also supports some basic [Node](#node) properties.
    * `id` (int)(*required*)
      * Additional `mapID` to display this node on.
    * `note` (string)
      * Additional text shown under the [Requirement](requirements.html) text.
    * `pois` ([POI](points.html)[ ])
      * POIs that should be shown on the parent map when hovering over or clicking a node.
* `pois` ([POI](points.html)[ ])
  * POIs that should be shown on the map when hovering over or clicking a node.

---

## Collectible
**Example:**
``` lua
ns.node.Collectible({
    label = 'Collectible',
    note = 'This is a Note on Collectible Node.'
})
```
* todo

---

## Intro
**Example:**
``` lua
ns.node.Intro({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Intro Node.'
})
```
* todo

---

## Item
**Example:**
``` lua
ns.node.Item({
    item = item_id,
    note = 'This is a Note on the Item Node.'
})
```
* todo

---

## NPC
**Example:**
``` lua
ns.node.NPC({
    id = npc_id,
    icon = 'peg_yw',
    note = 'This is a Note on the NPC Node.'
})
```
* todo

---

## PetBattle
**Example:**
``` lua
ns.node.PetBattle({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the PetBattle Node.'
})
```
* todo

---

## Quest
**Example:**
``` lua
ns.node.Quest({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Quest Node.'
})
```
* todo

---

## Rare
**Example:**
``` lua
ns.node.Rare({
    id = npc_id,
    quest = quest_id, -- optional but recommended
    note = 'This is a Note on the Rare Node.'
})
```
* todo

---

## Treasure
**Example:**
``` lua
ns.node.Treasure({
    label = 'Treasure Node',
    quest = quest_id, -- optional but recommended
    note = 'This is a Note on the Treasure Node.'
})
```
* todo
