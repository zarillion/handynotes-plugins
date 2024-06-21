-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

-------------------------------------------------------------------------------

ns.expansion = 11

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.SKYRIDING_GLYPH = Group('skyriding_glyph', 4728198, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

-------------------------------------------------------------------------------

ns.groups.BIBLIO_ARCHIVIST = Group('biblio_archivist', 5341597, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40622
})

ns.groups.ITSY_BITSY_SPIDER = Group('itsy_bitsy_spider', 5793405, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40624
})

ns.groups.KHAZ_ALGAR_LORE_HUNTER = Group('khaz_algar_lore_hunter', 4419344, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40762
})

ns.groups.LOST_AND_FOUND = Group('lost_and_found', 4635200, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40618
})

ns.groups.MISSING_LYNX = Group('missing_lynx', 5689905, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40625
})

ns.groups.NOT_SO_QUICK_FIX = Group('not_so_quick_fix', 134067, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40473
})

ns.groups.NOTABLE_MACHINES = Group('notable_machines', 1506451, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40628
})

ns.groups.ROCKED_TO_SLEEP = Group('rocked_to_sleep', 5788303, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40504
})

-------------------------------------------------------------------------------
---------------------------- KHAZ ALGAR LORE HUNTER ---------------------------
-------------------------------------------------------------------------------

local LoreObject = Class('LoreObject', Collectible, {
    icon = 4419344,
    group = ns.groups.KHAZ_ALGAR_LORE_HUNTER
})

ns.node.LoreObject = LoreObject

-------------------------------------------------------------------------------
------------------------------- SKYRIDING GLYPH -------------------------------
-------------------------------------------------------------------------------

local SkyridingGlyph = Class('SkyridingGlyph', Collectible, {
    icon = 4728198,
    label = L['skyriding_glyph'],
    group = ns.groups.SKYRIDING_GLYPH
})

ns.node.SkyridingGlyph = SkyridingGlyph
