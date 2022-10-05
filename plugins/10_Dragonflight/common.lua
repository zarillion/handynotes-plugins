-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible
local Node = ns.node.Node

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog

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
ns.groups.FLAG = Group('flag', 1723999, {defaults = ns.GROUP_HIDDEN})
ns.groups.KITE = Group('kite', 133837, {defaults = ns.GROUP_HIDDEN})

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
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

local Flag = Class('Flag', Collectible, {
    icon = 1723999,
    label = L['dragonscale_expedition_flag'], -- Dragonscale Expedition Flag
    rlabel = ns.status.LightBlue('+150 ' .. select(1, GetFactionInfoByID(2507))), -- Dragonscale Expedition
    group = ns.groups.FLAG,
    requires = ns.requirement.GarrisonTalent(2164), -- Cartographer Flag
    rewards = {
        Achievement({
            id = 15890,
            criteria = {id = 1, qty = true, suffix = L['flags_placed']}
        })
    }
})

ns.node.Flag = Flag

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

local Disturbeddirt = Class('disturbed_dirt', Node, {
    icon = 1060570,
    label = L['disturbed_dirt'],
    group = ns.groups.DISTURBED_DIRT,
    requires = {
        ns.requirement.Quest(70813), -- Digging Up Treasure
        ns.requirement.Item(191294) -- Small Expedition Shovel
    },
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
    requires = ns.requirement.Quest(70822), -- Lost Expedition Scouts
    rewards = {
        Transmog({item = 201387, slot = L['cosmetic']}), -- Dragon Knight's Halberd
        Transmog({item = 201390, slot = L['cosmetic']}), -- Dracthyr's Devastating Waraxe
        Transmog({item = 201392, slot = L['cosmetic']}), -- Dragon Noble's Cutlass
        Transmog({item = 201395, slot = L['cosmetic']}), -- Dragon Wingcrest Scimitar
        Transmog({item = 201396, slot = L['cosmetic']}), -- Dracthyr Claw Extensions
        Item({item = 190454}), Item({item = 192055}), Currency({id = 2003})
    }
})

ns.node.Scoutpack = Scoutpack
