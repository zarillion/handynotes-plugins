-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Group = ns.Group

local Class = ns.Class
local Collectible = ns.node.Collectible

-------------------------------------------------------------------------------

ns.expansion = 5

local Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})
ns.node.Squirrel = Squirrel

local Lorewalker = Class('Lorewalker', Collectible,
    {icon = 645218, group = ns.groups.LOREWALKER})
ns.groups.LOREWALKER = Group('lorewalker', 645218)
ns.node.Lorewalker = Lorewalker

ns.groups.KROSHIK = Group('kroshik', 458255)
