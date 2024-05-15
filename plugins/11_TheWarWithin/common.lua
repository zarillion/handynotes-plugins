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

ns.groups.FLIGHT_GLYPH = Group('flight_glyph', 4728198, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

-------------------------------------------------------------------------------

ns.groups.MERELDAR_MENANCE = Group('mereldar_menance', 135232, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40151
})

ns.groups.SIGN = Group('sign', 135946, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 16423
})

-------------------------------------------------------------------------------
-------------------------------- FLIGHT GLYPHS --------------------------------
-------------------------------------------------------------------------------

local FlightGlyph = Class('FlightGlyph', Collectible, {
    icon = 4728198,
    label = L['flight_glyph'],
    group = ns.groups.FLIGHT_GLYPH
})

ns.node.FlightGlyph = FlightGlyph
