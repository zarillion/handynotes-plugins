# Core Framework

The HandyNotes plugins core framework provides the foundational systems for creating interactive map addons for World of Warcraft.

## Architecture Overview

The framework is built around several key components that work together:

```
Core Framework
├── Class System (object-oriented design)
├── Map System (zone management)
├── Node System (map markers)
├── Group System (organization)
├── Requirement System (prerequisites)
├── Reward System (loot and rewards)
├── Icon System (visual markers)
├── Color System (theming)
├── Utilities (helpers)
└── API Compatibility (version support)
```

## Namespace Organization

All framework functionality is organized under the `ns` namespace:

```lua
local ADDON_NAME, ns = ...

-- Core classes
ns.Class()          -- Class system
ns.Map()            -- Map definitions
ns.Group()          -- Node organization

-- Node types
ns.node.Node()      -- Base node
ns.node.NPC()       -- NPCs
ns.node.Treasure()  -- Treasures
ns.node.Rare()      -- Rare mobs

-- Requirements
ns.requirement.Quest()
ns.requirement.Achievement()
ns.requirement.Item()

-- Rewards
ns.reward.Item()
ns.reward.Currency()
ns.reward.Achievement()

-- Utilities
ns.color            -- Color functions
ns.icons            -- Icon definitions
ns.professions      -- Profession data
ns.api              -- API compatibility
```

## Core Addon Integration

The framework integrates with the HandyNotes addon:

```lua
-- Addon setup
local Addon = LibStub('AceAddon-3.0'):NewAddon(ADDON_NAME, 'AceBucket-3.0',
    'AceConsole-3.0', 'AceEvent-3.0', 'AceTimer-3.0')
local HandyNotes = LibStub('AceAddon-3.0'):GetAddon('HandyNotes', true)

ns.addon = Addon
ns.locale = L
ns.maps = {}

-- Register with HandyNotes
HandyNotes:RegisterPluginDB(ADDON_NAME, ns.addon.db, ns.config)
```


## Plugin Structure

A typical HandyNotes plugin using this framework follows this structure:

```
Plugin/
├── core/                 # Core framework (shared)
├── Plugin.toc            # Addon metadata
├── plugin.xml            # File loading order
├── common.lua            # Plugin-specific utilities
├── localization/         # Translation files
│   ├── enUS.lua
│   ├── deDE.lua
│   └── ...
└── zones/                # Map data files
    ├── stormwind.lua
    ├── orgrimmar.lua
    └── ...
```

## Initialization Flow

1. **Core Loading** - Framework classes and utilities load first
2. **Localization** - Language files register translations
3. **Common Code** - Plugin-specific utilities and constants
4. **Map Data** - Zone files create maps and populate nodes
5. **Registration** - Plugin registers with HandyNotes
6. **Event Setup** - Dynamic update handlers activate

## Options Integration

Automatic options panel generation:

```lua
-- Map settings
local map = ns.Map({
    id = 84,
    settings = true  -- Creates options panel
})

-- Group controls appear automatically
map.groups.TREASURES = ns.Group('treasures', 'chest_yw')
map.groups.RARES = ns.Group('rares', 'skull_w')
```

## Performance Optimization

The framework includes several optimization features:

### Map Auto-Registration
```lua
-- Maps auto-register when created
local map = Map({id = 2248, settings = true})
-- This automatically sets: ns.maps[2248] = map

-- Access maps directly
local isle_of_dorn = ns.maps[2248]

-- Or with fallback for cross-plugin references
local zul = ns.maps[862] or Map({id = 862, settings = false})
```

### Caching
```lua
-- Link resolution is cached
local nameResolver = {cache = {}, prepared = {}}

-- Spell/item data is cached after first lookup
```

### Conditional Loading
```lua
-- Only load if patch requirements met
local map = ns.Map({
    id = 123,
    patch = 110000  -- Only load in 11.0+
})
```

## Development Workflow

### 1. Create Map File
```lua
-- zones/stormwind.lua
local map = ns.Map({id = 84, settings = true})

-- Define groups
map.groups.VENDORS = ns.Group('vendors', 'peg_yw')
```

### 2. Add Nodes
```lua
-- Add individual markers
map.nodes[61234567] = ns.node.Vendor({
    label = 'Equipment Vendor',
    group = map.groups.VENDORS
})
```

### 3. Test and Iterate
```lua
-- Use development utilities
ns.dev.ShowCoordinates = true  -- Show coords in tooltips
ns.dev.DebugMode = true        -- Enable debug output
```

### 4. Localize Content
```lua
-- Add translations
L['vendor_equipment'] = 'Equipment Vendor'
L['vendor_equipment_note'] = 'Sells armor and weapons'
```

## Best Practices

### Code Organization
- Keep map data in separate files per zone
- Use consistent naming conventions
- Group related nodes together
- Document complex logic

### Performance
- Use conditional requirements sparingly
- Cache expensive calculations
- Prefer static data over dynamic when possible
- Test with large node counts

### User Experience
- Provide clear node labels and descriptions
- Use appropriate icons for node types
- Group related content logically
- Respect user preferences and filters

### Localization
- Externalize all user-visible strings
- Use link placeholders for dynamic content
- Test with different languages
- Consider text length variations

## Error Handling

The framework includes error handling for common issues:

```lua
-- Safe map access
local map = ns.maps[mapID]
if not map then return end

-- Safe node creation
local node = pcall(ns.node.Treasure, {
    label = 'Treasure',
    quest = invalidQuestID  -- Won't crash
})

-- Safe API calls
local spellName = ns.api.GetSpellInfo(spellID)
if spellName then
    -- Use spell data
end
```

## Debugging Tools

Development utilities for debugging:

```lua
-- Enable debug mode
ns.debug = true

-- Show additional tooltip info
ns.dev.showCoordinates = true
ns.dev.showNodeInfo = true

-- Validate node data
ns.dev.ValidateNodes(mapID)
```
