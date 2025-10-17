# Map System

The Map system provides the foundation for organizing and displaying nodes within specific World of Warcraft zones and areas.

## Map Class

```lua
ns.Map(attrs)
```

The base class for all map definitions, providing node management, grouping, and display control.

### Properties

- `id` (integer) - The WoW MapID for this map (required)
- `intro` (Node) - An intro node to display when the map is phased
- `patch` (integer) - Minimum patch version required (default: 100000 for Classic)
- `phased` (boolean) - Whether the map is available in current phase (default: true)
- `settings` (boolean) - Create a settings panel for this map (default: false)

### Basic Usage

```lua
-- Create a new map for Stormwind City
local map = ns.Map({
    id = 84, -- Stormwind City MapID
    settings = true, -- Enable settings panel
    patch = 110000 -- Requires patch 11.0.0+
})
```

### Adding Nodes

Nodes are added to the map using coordinate keys:

```lua
-- Add nodes using coordinate notation (XXYY format)
map.nodes[61234567] = ns.node.NPC({
    label = 'Important Vendor',
    icon = 'peg_yw'
})

-- Coordinates: X=61.23, Y=45.67
map.nodes[61234567] = ns.node.Treasure({
    label = 'Hidden Chest',
    icon = 'chest_yw',
    quest = 12345
})
```

### Coordinate System

Coordinates use te 8-digit format from HandyNotes:

```lua
-- Examples:
-- 61234567 = X: 61.23, Y: 45.67
-- 50007500 = X: 50.00, Y: 75.00
-- 25759842 = X: 25.75, Y: 98.42
```

## Map Methods

### AddNode(coord, node)

Programmatically add a node to the map:

```lua
map:AddNode(61234567, ns.node.Rare({
    label = 'Rare Elite',
    icon = 'skull_w'
}))
```

### RemoveNode(coord)

Remove a node from the map:

```lua
map:RemoveNode(61234567)
```

### GetNodes()

Get all nodes for the current map:

```lua
local nodes = map:GetNodes()
for coord, node in pairs(nodes) do
    print(coord, node.label)
end
```

## Phasing and Availability

Maps support phasing to show different content based on quest progress or other conditions:

```lua
local map = ns.Map({
    id = 123,
    phased = function()
        -- Only show if player completed specific quest
        return C_QuestLog.IsQuestFlaggedCompleted(54321)
    end,
    intro = ns.node.Intro({
        label = 'Phase Not Available',
        note = 'Complete quest "Example Quest" to access this content.'
    })
})
```

## Group Integration

Maps work with the Group system to organize and control node visibility:

```lua
-- Define groups for this map
map.groups.TREASURES = ns.Group('treasures', 'chest_yw')
map.groups.RARES = ns.Group('rares', 'skull_w')

-- Assign nodes to groups
map.nodes[61234567] = ns.node.Treasure({
    label = 'Treasure Chest',
    group = map.groups.TREASURES
})

map.nodes[71234567] = ns.node.Rare({
    label = 'Rare Monster',
    group = map.groups.RARES
})
```

## Focus Groups

Focus groups allow related nodes to be highlighted together:

```lua
-- Create nodes with same focus group
map.nodes[61234567] = ns.node.NPC({
    label = 'Quest Giver',
    fgroup = 'story_chain'
})

map.nodes[71234567] = ns.node.Treasure({
    label = 'Quest Reward',
    fgroup = 'story_chain'
})

-- When hovering one node, all nodes in 'story_chain' will be highlighted
```

## Settings Panel

When `settings = true`, the map will generate an options panel in the HandyNotes settings:

```lua
local map = ns.Map({
    id = 84,
    settings = true -- Creates "Stormwind City" section in settings
})
```

## Map Registration

Maps are automatically registered with the namespace when created:

```lua
-- Create map
local stormwind = ns.Map({id = 84})

-- Map is available in namespace
print(ns.maps[84]) -- References the stormwind map
```

## Example: Complete Map Definition

```lua
local map = ns.Map({
    id = 84, -- Stormwind City
    settings = true,
    patch = 110000
})

-- Define groups
map.groups.VENDORS = ns.Group('vendors', 'peg_yw')
map.groups.TRAINERS = ns.Group('trainers', 'peg_rd')

-- Add vendor nodes
map.nodes[61234567] = ns.node.Vendor({
    label = 'Armor Vendor',
    group = map.groups.VENDORS,
    rewards = {
        ns.reward.Item(12345),
        ns.reward.Item(12346)
    }
})

-- Add trainer nodes
map.nodes[71234567] = ns.node.NPC({
    label = 'Weapon Master',
    group = map.groups.TRAINERS,
    note = 'Teaches weapon skills'
})
```
