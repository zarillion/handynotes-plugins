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
The base class for all nodes.

``` lua
ns.node.Node({
    label = 'Example Node',
    icon = 'peg_yw',
    note = 'This is a Note on the Example Node.'
})
```

### Default Properties
`ns.node.Node` has the following properties by default:

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
`ns.node.Node` supports the following _optional_ properties that affect a node's tootlip:

* `sublabel` (string)
  * Additional text shown directly under the label.
* `rlabel` (string)
  * Additional label shown in the top right corner of the tooltip.
* `questCount` (boolean)
  * Display completed quest count as `rlabel`.
* `location` (string)
  * Additional text that provides more detail about the location of a node.
* `note` (string)
  * Additional text that provides more detail about the node.
* `requires` ([Requirement](requirements.hmtl) / [Requirement](requirements.hmtl)[ ])
  * List of requirements that need to be met for the node.
* `rewards` ([Reward](rewards.html)[ ])
  * List of rewards that are offered by the node.

### Optional Visibility Properties
`ns.node.Node` supports the following _optional_ properties that affect a node's visibility:

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
`ns.node.Node` supports the following _optional_ properties that affect a node's interaction:
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
``` lua
map.nodes[58085381] = ns.node.Collectible({
    id = 204693,
    icon = 'peg_bl',
    scale = 1.3
    note = L['ponzo_note'],
    rewards = {
        DC.SetNote(DC.WindingSlitherdrake.HairyBrow, '55x'),
        DC.SetNote(DC.WindingSlitherdrake.ClusterChinHorn, '55x'),
        DC.SetNote(DC.WindingSlitherdrake.CurledNose, '55x'),
        Pet({item = 205120, id = 3537, note = '85x'}), -- Thimblerig
        Mount({item = 205209, id = 1736, note = '170x'}) -- Boulder Hauler
    }
}) -- Ponzo <Barterer Extraordinaire>
```

### Optional Properties
`ns.node.Collectible` supports the following properties:

* `id` (int)
  * The `npcID` for the NPC who offers the collectible. This will be used for the `label` property.
* `item` (int)
  * The `itemID` for the colectible. This will be used for the `label` property.

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

### Default Properties
`ns.node.Intro` has the following properties set by default:

* `scale` (float) (*default: 3*)
  * The default scale value for this node.
* `icon` ([string](icons.html) / int) (*default: 'quest_ay'*)
  * The default icon for this node.
* `group` ([group](groups.html)) (*default: ns.groups.QUEST*)
  * The default group for this node.
* `minimap` (boolean) (*default: false*)
  * The Intro node will not be displayed on the minimap by default.

### Optional Properties
`ns.node.Intro` supports the following properties:

* `quest` (int)
  * The `questID` of the Intro Quest. This will be used for the `label` property.

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

### Required Properties
`ns.node.Item` requires the following properties:

* `id` (int)
  * The `itemID` for the item. This will be used for the `label` property.

---

## NPC
``` lua
map.nodes[37164467] = ns.node.NPC({
    id = 183962,
    icon = 4254892,
    requires = {
        ns.requirement.GarrisonTalent(1902),
        ns.requirement.Quest(65219)
    },
    note = L['olea_manu'],
    rewards = {
        Item({item = 187804, note = '25'}), -- Recipe: Empty Kettle of Stone Soup
        Item({item = 187824, note = '25'}), -- Formula: Magically Regulated Automa Core
        Item({item = 188793, quest = 65282, note = '150'}), -- Improved Cypher Analysis Tool
        Item({item = 189986, quest = 65514, covenant = NIGHTFAE, note = '500'}), -- Armadillo Soul
        Item({item = 189980, quest = 65510, covenant = NIGHTFAE, note = '1000'}), -- Brutosaur Soul
        Toy({item = 190333, note = '100'}), -- Jiro Circle of Song
        Pet({item = 191039, id = 3247, note = '500'}), -- Pocopoc Traveler
        Item({item = 187781, note = '700'}) -- Olea Cache
    }
}) -- Olea Manu
```

### Required Properties
`ns.node.NPC` requires the following properties:

* `id` (int)
  * The `npcID` for the NPC. This will be used for the `label` property.

---

## PetBattle
``` lua
map.nodes[13095369] = ns.node.PetBattle({
    id = 200689,
    rewards = {Achievement({id = 17541, criteria = 58574})} -- Global Swarming
}) -- Wildfire
```

### Default Properties
`ns.node.PetBattle` has the following properties set by default:

* `scale` (float) (*default: 1.2*)
  * The default scale value for this node.
* `icon` ([string](icons.html) / int) (*default: 'paw_y'*)
  * The default icon for this node.
* `group` ([group](groups.html)) (*default: ns.groups.PETBATTLE*)
  * The default group for this node.

### Required Properties
`ns.node.PetBattle` requires the following properties:

* `id` (int)
  * The `npcID` for the NPC who offers the pet battle. This will be used for the `label` property.

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

### Default Properties
`ns.node.Quest` has the following properties set by default:

* `icon` ([string](icons.html) / int) (*default: 'quest_ay'*)
  * The default icon for this node.

### Optional Properties
`ns.node.Quest` supports the following properties:

* `id` (int)
  * The `questID` of the Quest. This will be used for the `label` property.
* `daily` (boolean)
  * This is used for the `icon` property, when it is `true` the icon will set it to `'quest_ab'`.


---

## Rare
``` lua
map.nodes[43947530] = ns.node.Rare({
    id = 183516,
    quest = 65580,
    vignette = 4933,
    note = L['the_engulfer_note'],
    rlabel = ns.status.LightBlue('+10 ' .. L['rep']),
    rewards = {
        Achievement({id = 15391, criteria = 53050}), -- Adventurer of Zereth Mortis
        Transmog({item = 189913, slot = L['cloth']}), -- Engulfer's Tightening Cinch
        Transmog({item = 189921, slot = L['leather']}), -- Devourer's Insatiable Grips
        Transmog({item = 190006, slot = L['1h_sword']}) -- Anima-Siphoning Sword
    }
}) -- The Engulfer
```

### Default Properties
`ns.node.Rare` has the following properties set by default:

* `scale` (float) (*default: 1.2*)
  * The default scale value for this node.
* `icon` ([string](icons.html) / int) (*default: 'skull_b'*)
  * The default icon for this node.
  * The icon will automatically update to `'skull_w'` when all rewards have been collected.
* `group` ([group](groups.html)) (*default: ns.groups.RARE*)
  * The default group for this node.

### Required Properties
`ns.node.Rare` requires the following properties:

* `id` (int)
  * The `npcID` for the rare. This will be used for the `label` property.

### Recommended Properties
It is highly recommended that you add the `quest` property to rares and use the hidden `questID` used by Blizzard to track if a rare has been killed for the day.

* `quest` (int)
  * The `questID` used to track the daily kill.

---

## Treasure
``` lua
map.nodes[65804182] = ns.node.Treasure({
    quest = 70600,
    note = L['golden_dragon_goblet_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(70409, '{item:198854}') -- Archeologist Artifact Notes
    },
    rewards = {
        Achievement({id = 16297, criteria = 54698}), -- Treasures of The Waking Shores
        Toy({item = 202019}) -- Golden Dragon Goblet
    },
    pois = {POI({77992943})}
}) -- Golden Dragon Goblet
```

### Default Properties
`ns.node.Treasure` has the following properties set by default:

* `scale` (float) (*default: 1.3*)
  * The default scale value for this node.
* `icon` ([string](icons.html) / int) (*default: 'chest_gy'*)
  * The default icon for this node.
* `group` ([group](groups.html)) (*default: ns.groups.TREASURE*)
  * The default group for this node.

### Recommended Properties
It is highly recommended that you add the `quest` property to rares and use the hidden `questID` used by Blizzard to track if a treasure has been collected.

* `quest` (int)
  * The `questID` used to track a the collected treasure.

Please note that by default the label for `ns.node.Treasure` comes from the criteria for the first listed [achievement](rewards.html#achievement) in `rewards`.
