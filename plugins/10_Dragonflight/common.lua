-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible
local Node = ns.node.Node

local Currency = ns.reward.Currency
local Item = ns.reward.Item

-------------------------------------------------------------------------------

ns.expansion = 10

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.DRAGON_GLYPH = Group('dragon_glyph', 4728198)
ns.groups.DISTURBED_DIRT = Group('disturbed_dirt', 1060570,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SCOUT_PACK =
    Group('scout_pack', 4562583, {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

local Dragonglyph = Class('Dragonglyph', Collectible, {
    icon = 4728198,
    label = L['dragon_glyph'],
    group = ns.groups.DRAGON_GLYPH
})

ns.node.Dragonglyph = Dragonglyph

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

local Disturbeddirt = Class('disturbed_dirt', Node, {
    icon = 1060570,
    label = L['disturbed_dirt'],
    group = ns.groups.DISTURBED_DIRT,
    requires = ns.requirement.Item(191294), -- Small Expedition Shovel
    rewards = {
        Item({item = 190454}), Item({item = 192055}), Currency({id = 2003})
    }
})

ns.node.Disturbeddirt = Disturbeddirt

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

local Scoutpack = Class('Scoutpack', Node, {
    icon = 4562583,
    label = L['scout_pack'],
    group = ns.groups.SCOUT_PACK,
    requires = ns.requirement.Quest(70822),
    rewards = {
        Item({item = 190454}), Item({item = 192055}), Currency({id = 2003})
    }
})

ns.node.Scoutpack = Scoutpack
