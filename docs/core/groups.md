# Group Class <!-- omit from toc -->

- [Basic Group Creation](#basic-group-creation)
- [Group Properties](#group-properties)
- [Real Plugin Examples](#real-plugin-examples)
  - [Profession-Based Group](#profession-based-group)
  - [Standard Content Groups](#standard-content-groups)
  - [Class-Specific Group](#class-specific-group)
- [Advanced Group Features](#advanced-group-features)
  - [Dynamic Status Updates](#dynamic-status-updates)
  - [Conditional Visibility](#conditional-visibility)

Groups organize and control the visibility of nodes on the map. They appear in the options menu and allow users to toggle different types of content.

## Basic Group Creation

```lua
ns.Group(name, icon, attrs)
```

### Parameters <!-- omit from toc -->

- `name` (string) (*required*) - Internal identifier for the group
- `icon` (string/int) (*required*) - Icon displayed in the options menu
- `attrs` (table) - Additional properties and behaviors

## Group Properties

### Core Properties <!-- omit from toc -->

- `label` (string) - Display name in the options menu (defaults to localized name)
- `desc` (string) - Description shown in tooltips
- `type` (string) - Group category (expansion, profession, etc.)
- `order` (int) - Sort order in the options menu
- `defaults` (string) - Default visibility state (`ns.GROUP_HIDDEN`, `ns.GROUP_SHOWN`)

### Behavior Functions <!-- omit from toc -->

- `IsEnabled(self)` - Function to determine if group should be shown
- `GetStatus(self)` - Function to get group completion status

## Real Plugin Examples

### Profession-Based Group

```lua
-- From Azj-Kahet plugin - Skinning profession group
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

### Standard Content Groups

```lua
-- Basic treasure group
ns.groups.TREASURE = ns.Group('treasure', 'chest_gy', {
    defaults = ns.GROUP_SHOWN,
    type = ns.group_types.CONTENT
})

-- Vendor group for NPCs
ns.groups.VENDOR = ns.Group('vendor', 'peg_bk', {
    defaults = ns.GROUP_SHOWN,
    type = ns.group_types.CONTENT,
    label = L['vendors'],
    desc = L['vendor_desc']
})

-- Rare spawns group
ns.groups.RARE = ns.Group('rare', 'skull_b', {
    defaults = ns.GROUP_SHOWN,
    type = ns.group_types.CONTENT,
    order = 10
})
```
