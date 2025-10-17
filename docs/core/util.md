# Utilities

The utilities module provides various helper functions for common operations like link resolution, calendar events, item checking, and localization support.

## Link Resolution

The framework supports automatic resolution of game links (items, spells, achievements, etc.) in text strings.

### Supported Link Types

- `{item:12345}` - Item links
- `{spell:136}` - Spell links
- `{achievement:123}` - Achievement links
- `{quest:456}` - Quest links
- `{currency:789}` - Currency links
- `{faction:47}` - Faction links

### PrepareLinks(text)

Prepares text containing link placeholders for later resolution:

```lua
local text = 'Requires {item:12345} and {spell:136}'
ns.PrepareLinks(text)
-- Links are cached for efficient resolution
```

### RenderLinks(text, nameOnly)

Renders prepared links into their final display format:

```lua
local text = 'Complete {achievement:123} to unlock'
local rendered = ns.RenderLinks(text)
-- Returns: "Complete [Achievement Name] to unlock"

-- Name-only rendering (no color/formatting)
local nameOnly = ns.RenderLinks(text, true)
-- Returns: "Complete Achievement Name to unlock"
```

### Usage in Node Definitions

```lua
local node = ns.node.NPC({
    label = 'Quest Giver',
    note = 'Rewards {item:12345} and teaches {spell:136}'
})
-- Links are automatically resolved when tooltip is displayed
```

## Calendar Events

Functions for checking active World of Warcraft calendar events:

### IsCalendarEventActive(eventID)

Check if a specific calendar event is currently active:

```lua
if ns.IsCalendarEventActive(423) then -- Hallow's End
    print('Halloween event is active!')
end
```

### Usage with Requirements

```lua
local node = ns.node.NPC({
    label = 'Holiday Vendor',
    requires = ns.requirement.Event(423), -- Hallow's End
    note = 'Only available during Hallow\'s End'
})
```

## Item and Inventory Functions

### PlayerHasItem(itemID, count)

Check if the player has a specific item with optional quantity:

```lua
-- Check if player has the item
if ns.PlayerHasItem(12345) then
    print('Player has item 12345')
end

-- Check for specific quantity
if ns.PlayerHasItem(12345, 5) then
    print('Player has at least 5 of item 12345')
end
```

### Usage in Dynamic Content

```lua
local node = ns.node.NPC({
    label = 'Item Exchange',
    note = function()
        if ns.PlayerHasItem(12345) then
            return 'You can exchange your item here'
        else
            return 'Bring {item:12345} to make an exchange'
        end
    end
})
```

## Database Utilities

### GetDatabaseTable(...)

Safely navigate nested table structures:

```lua
-- Navigate to nested data safely
local data = ns.GetDatabaseTable('maps', mapID, 'nodes', coord, 'rewards')
if data then
    -- Process reward data
end
```

This prevents errors when intermediate tables don't exist.

## Localization Support

### Locale Functions

The framework provides comprehensive localization support:

```lua
-- Get localized string
local text = L['some_key']

-- Prepare links in localized text
ns.PrepareLinks(L['tooltip_text'])
```

### RegisterLocale(locale, data)

Register localization data for a specific locale:

```lua
ns.RegisterLocale('enUS', {
    ['node_rare'] = 'Rare Enemy',
    ['node_treasure'] = 'Treasure Chest',
    ['requires_quest'] = 'Requires quest: %s'
})

ns.RegisterLocale('deDE', {
    ['node_rare'] = 'Seltener Gegner',
    ['node_treasure'] = 'Schatztruhe',
    ['requires_quest'] = 'Benötigt Quest: %s'
})
```

## Utility Functions

### AsTable(value)

Converts a value to a table format, handling both single values and arrays:

```lua
-- Single value becomes table
local t1 = ns.AsTable(123)     -- {123}
local t2 = ns.AsTable({1,2,3}) -- {1,2,3} (unchanged)
local t3 = ns.AsTable(nil)     -- {} (empty table)
```

### Usage Example

```lua
-- Normalize quest IDs to table format
function Node:Initialize(attrs)
    self.quest = ns.AsTable(self.quest)
    -- Now self.quest is always a table, whether input was single ID or array
end
```

### Split(str, delimiter)

Split a string by delimiter:

```lua
local parts = ns.Split('one,two,three', ',')
-- Returns: {'one', 'two', 'three'}
```

### Trim(str)

Remove leading and trailing whitespace:

```lua
local clean = ns.Trim('  hello world  ')
-- Returns: 'hello world'
```

## Performance Considerations

1. **Link Preparation** - Call `PrepareLinks()` once during initialization, not repeatedly
2. **Calendar Events** - Event status is cached and updated periodically
3. **Item Checks** - Use sparingly in frequently-called functions as they query the game client
4. **Database Navigation** - `GetDatabaseTable()` is safe but adds overhead for deep nesting

## Integration with Other Systems

The utilities module is used throughout the framework:

- **Nodes** - Link resolution in tooltips and notes
- **Requirements** - Item and profession checking
- **Rewards** - Link rendering for reward text
- **Groups** - Calendar event filtering
- **Localization** - Multi-language support
