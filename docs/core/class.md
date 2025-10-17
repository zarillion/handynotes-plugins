# Class System

The HandyNotes plugins framework includes a custom object-oriented class system that provides inheritance, getters/setters, and instance management.

## Creating Classes

```lua
ns.Class(name, parent, attrs)
```

### Parameters

- `name` (string) - The name of the class (required)
- `parent` (Class) - Parent class for inheritance (optional)
- `attrs` (table) - Initial class attributes and methods (optional)

### Basic Usage

```lua
-- Create a basic node class
local Treasure = ns.Class('Treasure', ns.node.Node, {
    icon = 'chest_yw',
    group = ns.groups.TREASURES
})

function Treasure:Initialize(attrs)
    ns.node.Node.Initialize(self, attrs)
end

function Treasure:IsCompleted()
    return self.quest and C_QuestLog.IsQuestFlaggedCompleted(self.quest)
end

-- Create an instance
local chest = Treasure({
    label = 'Hidden Cache',
    quest = 82520
})
```

### Inheritance

```lua
-- Create a specialized reward class
local BloodVial = ns.Class('BloodVial', ns.reward.Item, {
    item = 225952  -- Vial of Draconic Blood
})

function BloodVial:Initialize(attrs)
    ns.reward.Item.Initialize(self, attrs)
end

function BloodVial:GetStatus()
    local collected = select(11, C_MountJournal.GetMountInfoByID(2222))
    return collected and ns.status.Green(L['known']) or ns.status.Red(L['missing'])
end

-- Create an instance and use it
local rare = ns.node.Rare({
    id = 216046,
    rewards = {BloodVial()}
})
```

### Getters and Setters

Classes support custom getter and setter functions:

```lua
-- Example from the framework's Rare class
local Rare = ns.Class('Rare', ns.node.NPC, {
    scale = 1.2,
    group = ns.groups.RARE,

    getters = {
        icon = function(self)
            if self:IsCollected() then
                return 'skull_w'  -- White skull when collected
            elseif not self:IsCollected(ns.reward.Reputation) then
                return 'skull_p'  -- Purple skull when missing rep rewards
            else
                return 'skull_b'  -- Blue skull by default
            end
        end,

        label = function(self)
            local label = ns.node.NPC.getters.label(self)
            if ns:GetOpt('show_npc_id') then
                label = label .. ' (' .. ns.color.White(self.id) .. ')'
            end
            return label
        end
    }
})

-- Usage example - icon changes based on collection status
local rare = Rare({
    id = 216031,
    quest = 81695
})
-- rare.icon will dynamically return different icons based on completion state
```

## Utility Functions

### ns.IsClass(obj)

Checks if an object is a class created with `ns.Class`.

```lua
local Rare = ns.Class('Rare', ns.node.NPC)
print(ns.IsClass(Rare)) -- true
print(ns.IsClass({})) -- false
print(ns.IsClass(ns.node.Treasure)) -- true
```

### ns.IsInstance(instance, class)

Checks if an object is an instance of a specific class or its parent classes.

```lua
local treasure = ns.node.Treasure({
    label = 'Hidden Cache',
    quest = 82520
})

print(ns.IsInstance(treasure, ns.node.Treasure)) -- true
print(ns.IsInstance(treasure, ns.node.Node)) -- true (inheritance)
print(ns.IsInstance(treasure, ns.node.Rare)) -- false
```

### ns.Clone(instance, newattrs)

Creates a clone of an instance with optional attribute overrides.

```lua
local original = ns.node.Rare({
    id = 216031,
    quest = 81695
})

local clone = ns.Clone(original, {
    id = 216032,
    quest = 81696
})

print(clone.id) -- 216032
print(clone.quest) -- 81696
```

## Framework Usage

The class system is used extensively throughout the framework:

- **Node Classes** - All map nodes inherit from `ns.node.Node`
- **Requirement Classes** - All requirements inherit from `ns.requirement.Requirement`
- **Reward Classes** - All rewards inherit from `ns.reward.Reward`
- **Group Classes** - Map organization uses `ns.Group`
- **Map Classes** - Zone definitions use `ns.Map`

### Example: Framework Class Hierarchy

```
Node (base class)
├── Collectible
├── NPC
│   ├── Rare
│   ├── PetBattle
│   └── Vendor
├── Item
├── Quest
├── SkyridingRace
└── Treasure
```

### Real Plugin Examples

```lua
-- Custom collectible for achievement progress
local Bookworm = ns.Class('bookworm', ns.node.Collectible, {
    icon = 1506458,
    group = ns.groups.ACHIEVEMENT,
    requires = ns.requirement.Spell(456122) -- Polymorphic Translation: Nerubian
})

-- Specialized vendor with custom reputation requirements
local KejPetVendor = ns.Class('KejPetVendor', ns.node.Vendor, {
    id = 218106,
    note = L['kej_pet_vendor_note'],
    requires = ns.requirement.Reputation(2601, 4) -- Friendly with The Severed Threads
})

-- Custom reward class with mount collection status
local BloodVial = ns.Class('BloodVial', ns.reward.Item, {
    item = 225952
})

function BloodVial:GetStatus()
    local collected = select(11, C_MountJournal.GetMountInfoByID(2222))
    return collected and ns.status.Green(L['known']) or ns.status.Red(L['missing'])
end
```

Each class adds specific functionality while inheriting common behavior from its parent classes.
