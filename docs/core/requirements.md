# Requirements <!-- omit from toc -->

`ns.requirement`

- [Requirement (Base Class)](#requirement-base-class)
- [Achievement](#achievement)
- [Currency](#currency)
- [GarrisonTalent](#garrisontalent)
- [GarrisonTalentRank](#garrisontalentrank)
- [Item](#item)
- [Profession](#profession)
- [Quest](#quest)
- [Reputation](#reputation)
- [Spell](#spell)
- [Toy](#toy)
- [WarMode](#warmode)

## Requirement (Base Class)

Base Class for all Requirements

```lua
Requirement({text = 'Requirement Text'})
```

### Default Properites <!-- omit from toc -->

- `text`  (string) (*default: 'UNKNOWN'*)
  - The text that is shown in the tooltip for the Requirement.

## Achievement

```lua
-- From project plugins - Requires specific achievement completion
ns.requirement.Achievement(40840) -- Adventurer of Azj-Kahet

-- Used in actual treasure nodes
map.nodes[65804182] = ns.node.Treasure({
    quest = 82720,
    requires = ns.requirement.Achievement(40840), -- Must complete zone achievement
    rewards = {Item({item = 224582})} -- Nerubian Currency
})
```

- `id`  (int) (*required*)
  - ID of the required Achievement.
- Requires the player to have completed a specific achievement before the node is accessible

---

## Currency

```lua
Currency(id, count)
```

- `id`  (int) (*required*)
  - ID of the required Currency.
- `count`  (int) (*required*)
  - Amount of the required Currency points.
- Requires the player to have a specific amount of a currency before the node is accessible

---

## GarrisonTalent

```lua
GarrisonTalent(id, text)
```

- `id`  (int) (*required*)
  - ID of the required Garrison Talent. ([WoWDB](https://www.wowdb.com/garrison/talents))
- `text`  (string)
  - Custom text to display for the requirement.
- Requires the player to have unlocked a specific garrison talent (WoD content)

---

## GarrisonTalentRank

```lua
GarrisonTalentRank(id, rank)
```

- `id`  (int) (*required*)
  - ID of the required Garrison Talent. ([WoWDB](https://www.wowdb.com/garrison/talents))
- `rank`  (int)
  - Talent rank required.
- Requires the player to have a specific garrison talent at a minimum rank level

---

## Item

```lua
-- From Azj-Kahet plugin - Requires specific key item
ns.requirement.Item(224783) -- Web-Entangled Key

-- Used in actual treasure node
cot.nodes[67013019] = ns.node.Treasure({
    quest = 82721,
    label = '{item:224783}',
    requires = ns.requirement.Item(224783), -- Web-Entangled Key needed
    rewards = {
        Item({item = 224584}), -- Memory Fragments
        Transmog({item = 223921}) -- Nerubian Skitterer's Cord
    }
}) -- Trapped Memory Cache

-- With quality for crafting materials
ns.requirement.Item(191784, 1, 5) -- Dragon Isles Blacksmithing Knowledge (Quality 5)
```

- `id`  (int) (*required*)
  - ID of the required Item.
- `count`  (int)
  - Amount of the required Item.
- `quality`  (int) 1-5
  - Adds the Quality Icon for the Dragonflight Material.
    ![Crafting Quality](https://bnetcmsus-a.akamaihd.net/cms/content_entry_media/PATPGXI8XCOK1657150576099.png){height=150}
- Requires the player to have a specific item in their inventory before the node is accessible

---

## Profession

```lua
Profession(skillID, variantID, level)
```

- `skillID` (int) (*required*)
  - ID of the required profession skill.
- `variantID` (int)
  - Variant or specialization ID within the profession.
- `level` (int)
  - Minimum skill level required.
- Requires the player to have a specific profession skill at a minimum level

---

## Quest

```lua
-- From project plugins - Requires specific quest completion
ns.requirement.Quest(83287) -- A Spider's-Eye View

-- Used in profession treasure nodes
map.nodes[42835735] = ns.node.ProfessionTreasures.Alchemy({
    quest = 83847,
    id = 226272,
    requires = ns.requirement.Quest(83287), -- Must complete story quest first
    rewards = {Item({item = 224572})} -- Dark Apothecary's Vial
}) -- Alchemy Knowledge Treasure

-- Daily quest requirement
ns.requirement.Quest(57134, L['weekly_treasure'], true) -- Weekly treasure quest
```

- `id` (int) (*required*)
  - ID of the required Quest.
- `text` (string)
  - Custom text to display for the requirement.
- `daily` (boolean)
  - Whether this is a daily/weekly repeatable quest.
- Requires the player to have completed a specific quest before the node is accessible

---

## Reputation

```lua
-- From Undermine plugin - Renown reputation requirement
ns.requirement.Reputation(2653, 6, true) -- The Cartels of Undermine (Renown 6)

-- From Dragonflight plugins - Traditional reputation levels
ns.requirement.Reputation(2507, 21, true) -- Dragonscale Expedition (Renown 21)
ns.requirement.Reputation(1272, 33600, false, true) -- Classic rep with point value

-- Used in actual treasure nodes
map.nodes[12345678] = ns.node.Treasure({
    quest = 90488,
    requires = ns.requirement.Reputation(2653, 6, true), -- Must be Renown 6
    rewards = {Transmog({item = 235835, type = L['cloak']})}
}) -- Braided Wire Wrap treasure
```

- `id` (int) (*required*)
  - ID of the reputation faction.
- `level` (int) (*required*)
  - Required reputation level or renown rank.
- `isRenown` (boolean)
  - Whether this uses the renown system (true) or traditional reputation (false).
- Requires the player to have reached a specific reputation level with a faction

---

## Spell

```lua
-- From Siren Isle plugin - Requires buff/spell effect
ns.requirement.Spell(1216785) -- Glittering Vault Shard

-- From Karesh plugin - Phase Diving ability
ns.requirement.Spell(1214374) -- Phase Diving

-- From Ratt's Revenge plugin - Special goggles effect
ns.requirement.Spell(463749) -- Starry-Eyed Goggles

-- Used in treasure nodes requiring active spell effects
map.nodes[26502340] = ns.node.Treasure({
    quest = 86732,
    requires = ns.requirement.Spell(1216785), -- Must have Glittering Vault Shard buff
    rewards = {Transmog({item = 233834, slot = L['dagger']})}
}) -- Stone Carver's Scramseax
```

- `id` (int) (*required*)
  - ID of the required spell or buff effect.
- Requires the player to have a specific spell effect or buff active before the node is accessible

---

## Toy

```lua
-- From Ratt's Revenge plugin - Torch of Pyrreth toy requirement
ns.requirement.Toy(208092) -- Torch of Pyrreth

-- From Secrets of Azeroth - Various special toys
ns.requirement.Toy(206696) -- Tricked-Out Thinking Cap
ns.requirement.Toy(207730) -- Idol of Ohnahra

-- From Dragonflight plugins - Wyrmhole Generator
ns.requirement.Toy(198156) -- Wyrmhole Generator

-- Commonly used as constants
local TORCH = ns.requirement.Toy(208092) -- Torch of Pyrreth

-- Used in nodes requiring specific toys
map.nodes[12345678] = ns.node.Treasure({
    requires = ns.requirement.Toy(209944), -- Special toy needed
    rewards = {Item({item = 123456})}
})
```

- `id` (int) (*required*)
  - ID of the required toy item.
- Requires the player to have collected and learned a specific toy before the node is accessible

---

## WarMode

```lua
-- From Dragonflight plugin - War Supply Chest
ns.requirement.WarMode

-- Used in PvP content nodes
map.nodes[12345678] = ns.node.Treasure({
    label = '{npc:135238}',
    rlabel = ns.GetIconLink('war_mode_swords', 16),
    quest = {72376, 72377},
    requires = ns.requirement.WarMode, -- Must have War Mode enabled
    rewards = {
        Currency({id = 1602}) -- Conquest Points
    }
}) -- War Supply Chest
```

- No parameters required
- Adds a line to the tooltip that checks if War Mode is activated
- Commonly used for PvP content that requires War Mode to be enabled
