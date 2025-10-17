# Professions System

The professions system provides utilities for checking player profession skills and integrating profession-based requirements into nodes and rewards.

## Overview

The `ns.professions` table contains definitions for all World of Warcraft professions, including their IDs, icons, and variant IDs for different expansions.

## Available Professions

### Primary Professions

```lua
ns.professions.ALCHEMY
ns.professions.BLACKSMITHING
ns.professions.ENCHANTING
ns.professions.ENGINEERING
ns.professions.HERBALISM
ns.professions.INSCRIPTION
ns.professions.JEWELCRAFTING
ns.professions.LEATHERWORKING
ns.professions.MINING
ns.professions.SKINNING
ns.professions.TAILORING
```

### Secondary Professions

```lua
ns.professions.ARCHAEOLOGY
ns.professions.COOKING
ns.professions.FIRST_AID
ns.professions.FISHING
```

## Profession Structure

Each profession object contains:

```lua
{
    name = 'Profession Name',
    icon = 123456, -- Texture ID
    skillID = 123, -- Primary skill ID
    variantID = {1, 2, 3} -- Expansion variant IDs (optional)
}
```

### Example: Alchemy

```lua
ns.professions.ALCHEMY = {
    name = 'Alchemy',
    icon = 4620669,
    skillID = 171,
    variantID = {2485, 2484, 2483, 2482, 2481, 2480, 2479, 2478, 2750, 2823, 2871}
}
```

## Profession Methods

Each profession object includes utility methods:

### HasProfession()

Check if the player has learned this profession:

```lua
if ns.professions.ALCHEMY:HasProfession() then
    print('Player is an Alchemist')
end
```

### GetSkillLevel()

Get the player's current skill level in this profession:

```lua
local level, maxLevel = ns.professions.BLACKSMITHING:GetSkillLevel()
print('Blacksmithing: ' .. level .. '/' .. maxLevel)
```

### GetIcon()

Get the profession's icon texture ID:

```lua
local icon = ns.professions.COOKING:GetIcon()
-- Use in UI elements or tooltips
```

## Usage in Requirements

Professions are commonly used in requirement systems:

```lua
-- Require specific profession for vendor access
local kejPetVendor = ns.node.Vendor({
    id = 218106,
    label = 'Kej Pet Vendor',
    requires = ns.requirement.Reputation(2601, 4), -- Friendly with The Severed Threads
    note = L['kej_pet_vendor_note'],
    rewards = {
        ns.reward.Pet({item = 224550, id = 4533}), -- Ascended Shredwing
        ns.reward.Pet({item = 224551, id = 4534})  -- Deepridger
    }
})

-- Profession treasure requiring specific profession
local alchemyTreasure = ns.node.ProfessionTreasures.Alchemy({
    quest = 83846,
    id = 226271,
    parent = map.id
}) -- Nerubian Mixing Salts
```

## Usage in Groups

Groups can be configured to only display for players with specific professions:

```lua
-- Real example from the framework
ns.groups.ELUSIVE_CREATURE = ns.Group('elusive_creature', 644271, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    IsEnabled = function(self)
        -- Only display group for skinning players
        if not ns.professions.SKINNING:HasProfession() then return false end
        return ns.Group.IsEnabled(self)
    end
})
```

## Usage in Rewards

Profession-related rewards can reference profession data:

```lua
local recipe = ns.reward.Recipe({
    item = 12345,
    profession = ns.professions.COOKING,
    note = 'Teaches Spiced Wolf Meat'
})
```

## Dynamic Profession Checking

For dynamic content that adapts to player professions:

```lua
local node = ns.node.NPC({
    label = 'Multi-Profession Trainer',
    note = function()
        local lines = {}

        if ns.professions.ALCHEMY:HasProfession() then
            table.insert(lines, 'Can teach Alchemy recipes')
        end

        if ns.professions.HERBALISM:HasProfession() then
            table.insert(lines, 'Can teach herb locations')
        end

        if #lines == 0 then
            return 'Learn Alchemy or Herbalism to train here'
        end

        return table.concat(lines, '\n')
    end
})
```

## Profession Icons in UI

Use profession icons in tooltips and rewards:

```lua
local function ProfessionIcon(profession)
    return '|T' .. profession.icon .. ':16:16:0:0|t '
end

local node = ns.node.Treasure({
    label = 'Herb Cache',
    note = ProfessionIcon(ns.professions.HERBALISM) .. 'Contains rare herbs',
    requires = ns.requirement.Profession(ns.professions.HERBALISM)
})
```

## Expansion Variants

Some professions have different skill IDs for different expansions. The `variantID` array contains these:

```lua
-- Check if player has any variant of Engineering
local hasEngineering = false
for _, variantID in ipairs(ns.professions.ENGINEERING.variantID) do
    if ns.PlayerHasProfession(variantID) then
        hasEngineering = true
        break
    end
end
```

## Utility Functions

### ns.PlayerHasProfession(skillID)

Low-level function to check if player has a specific skill ID:

```lua
if ns.PlayerHasProfession(171) then -- Alchemy skill ID
    print('Player has Alchemy')
end
```

### Real Plugin Examples

Complete examples from actual HandyNotes plugins:

### Profession Treasures (from Azj-Kahet)

```lua
-- Alchemy treasures
cot.nodes[45321322] = ns.node.ProfessionTreasures.Alchemy({
    quest = 83846,
    id = 226271,
    parent = map.id
}) -- Nerubian Mixing Salts

map.nodes[42835735] = ns.node.ProfessionTreasures.Alchemy({
    quest = 83847,
    id = 226272
}) -- Dark Apothecary's Vial

-- Blacksmithing treasures
cot.nodes[46522291] = ns.node.ProfessionTreasures.Blacksmithing({
    quest = 83854,
    id = 226282,
    parent = map.id
}) -- Nerubian Smith's Kit

-- Mining treasures
cot.nodes[46812169] = ns.node.ProfessionTreasures.Mining({
    quest = 83912,
    id = 226338,
    parent = map.id
}) -- Heavy Spider Crusher

cotl.nodes[47954059] = ns.node.ProfessionTreasures.Mining({
    quest = 83913,
    id = 226339,
    parent = {map.id, cot.id}
}) -- Nerubian Mining Cart

-- Skinning treasures
cotl.nodes[44484947] = ns.node.ProfessionTreasures.Skinning({
    quest = 83920,
    id = 226346,
    parent = {map.id, cot.id}
}) -- Nerubian's Slicking Iron

map.nodes[56545524] = ns.node.ProfessionTreasures.Skinning({
    quest = 83921,
    id = 226347
}) -- Carapace Shiner
```
