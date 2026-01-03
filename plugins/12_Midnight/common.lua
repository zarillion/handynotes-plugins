-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Reputation = ns.reward.Reputation

-------------------------------------------------------------------------------

ns.expansion = 12

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.DELVE_REWARDS = Group('delve_rewards', 4203076, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    HasEnabledNodes = function() return true end
})

ns.groups.PROFESSION_TREASURES = Group('profession_treasures', 4620676, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

ns.groups.SKYRIDING_GLYPH = Group('skyriding_glyph', 4728198, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

ns.groups.TELESCOPE = Group('telescope', 134442, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62057
})

ns.groups.MIDNIGHT_LORE_HUNTER = Group('midnight_lore_hunter', 4549135, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62104
})

ns.groups.GLOWING_MOTH = Group('glowing_moth', 1003597, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.COLLECTIBLE,
    achievement = 61052
})

-------------------------------------------------------------------------------

-- ns.groups.SAFARI = Group('safari', 4048818, {
--     defaults = ns.GROUP_HIDDEN,
--     type = ns.group_types.ACHIEVEMENT,
--     achievement = 40194
-- })

-------------------------------------------------------------------------------
------------------------------- SKYRIDING GLYPH -------------------------------
-------------------------------------------------------------------------------

local SkyridingGlyph = Class('SkyridingGlyph', Collectible, {
    icon = 4728198,
    label = L['skyriding_glyph'],
    group = ns.groups.SKYRIDING_GLYPH
})

ns.node.SkyridingGlyph = SkyridingGlyph

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

local Telescope = Class('Telescope', Collectible, {
    icon = 1723999,
    label = L['midnight_telescope'], -- Midnight Highest Peak Telescope
    group = ns.groups.TELESCOPE,
    getters = {
        rewards = function(self)
            return {
                Achievement({id = self.achievement, criteria = self.criteria}),
                Reputation({id = self.repfaction, gain = 100})
            }
        end
    },
    IsCompleted = function(self)
        return C_QuestLog.IsQuestFlaggedCompleted(self.quest[1])
    end
})

ns.node.Telescope = Telescope

-------------------------------------------------------------------------------
----------------------------- MIDNIGHT LORE HUNTER ----------------------------
-------------------------------------------------------------------------------

local LoreObject = Class('LoreObject', Collectible, {
    icon = 4549135,
    group = ns.groups.MIDNIGHT_LORE_HUNTER
})

ns.node.LoreObject = LoreObject

-------------------------------------------------------------------------------
------------------------------- MIDNIGHT SAFARI -------------------------------
-------------------------------------------------------------------------------

-- local Safari = Class('Safari', Collectible,
--     {icon = 'paw_g', group = ns.groups.SAFARI}) -- Midnight Safari

-- ns.node.Safari = Safari

-- map.nodes[0000] = Safari({
--     id = 222071,
--     rewards = {Achievement({id = nil, criteria = nil}), Pet({id = nil})}
--     -- pois = {POI({0000})}
-- }) -- Critter Name
