# Node Classes

## Node

This is the base class for all displayed nodes.
Examples usually have the minimal required properties set.

**Example:**
``` lua
ns.node.Node({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Example Node.'
})
```
### Properties
All Node classes can have following Properties by default:

* `label` (string) (*required*)
  * The Title that is shown in the Tooltip when hovering a node.
* `icon` ([name](icons.hmtl) / int) (*required*)
  * The icon texture to display.
* `sublabel` (string)
  * Oneline string to display under label.
* `rlabel` (string)
  * Label in the top right corner of the tooltip.
* `group` ([Group](groups.hmtl))
  * Options group for this node (display, scale, alpha).
* `fgroup ` (string)
  * A category of nodes that should be focused together when hovered or clicked.
* `alpha` (float) (*default: 1.0*)
  * The default alpha value for this type.
* `scale` (float) (*default: 1.0*)
  * The default scale value for this type.
* `minimap` (boolean)
  * Should the node be displayed on the minimap?
* `parent` (int / int[ ] / Node[ ])
  * Map IDs to display the node on.
  * The `parent` property on nodes also supports some basic [Node](nodes.hmtl) properties:
    * `id` (int)(*required*)
      * Parent Map ID
    * `note` (string)
      * The Note thats displayed on the parent Node.
    * `pois` ([POI](pois.html))
      * POIs shown on the parent map.
* `quest` (int / int[ ])
  * Quest IDs that cause this node to disappear.
* `questAny` (boolean)
  * Hide node if *any* quests are true (default *all*)
* `questCount` (boolean)
  * Display completed quest count as rlabel.
* `questDeps` (int / int[ ])
  * Quest IDs that must be true to appear.
* `requires` (str / [Requirement](requirements.hmtl)[ ])
  * Requirements to interact or unlock
* `rewards` ([Reward](rewards.html)[ ])
  * Array of rewards for this node
* `faction` (string)
  * This can only be `'Alliance'` or `'Horde'`. Setting the faction will only display the node if the player character is from that faction.

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
    quest = quest_id, -- optional but reccomended
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
    quest = quest_id, -- optional but reccomended
    note = 'This is a Note on the Treasure Node.'
})
```
* todo
