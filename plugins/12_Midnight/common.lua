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

------------------------------ EVERSONG WOODS ---------------------------------

ns.groups.RUNESTONE_RUSH = Group('runestone_rush', 134423, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 61961
})

ns.groups.EVER_PAINTING = Group('ever_painting', 7549082, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62185
})

--------------------------------- HARANDAR ------------------------------------
---
ns.groups.GLOWING_MOTH = Group('glowing_moth', 1003597, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.COLLECTIBLE,
    achievement = 61052
})

ns.groups.MORE_THAN_JUST_THIER_ROOTS = Group('more_than_just_thier_roots',
    236160, {
        defaults = ns.GROUP_HIDDEN,
        type = ns.group_types.ACHIEVEMENT,
        achievement = 62188
})

--------------------------------- ZUL'AMAN ------------------------------------

ns.groups.FROG_PRINCESS = Group('frog_princess', 2399262, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62201
})

ns.groups.SONG_SEEKER = Group('song_seeker', 6119037, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 61455
})

ns.groups.SPIRITPAW_MARATHON = Group('spiritpaw_marathon', 4891426, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62202
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
------------------------------- RUNESTONE RUSH --------------------------------
-------------------------------------------------------------------------------

local RuneStone = Class('RuneStone', Collectible,
    {icon = 134423, group = ns.groups.RUNESTONE_RUSH})

function RuneStone:Initialize(criteria)
    ns.node.Collectible.Initialize(self)
    self.rewards = {Achievement({id = 61961, criteria = criteria})}
end

ns.node.RuneStoneRush = RuneStone

-------------------------------------------------------------------------------
-------------------------------- EVER PAINTING --------------------------------
-------------------------------------------------------------------------------

local Painting = Class('Painting', Collectible,
    {icon = 7549082, group = ns.groups.EVER_PAINTING})

function Painting:Initialize(criteria, location)
    ns.node.Collectible.Initialize(self)
    self.location = location or nil
    self.rewards = {Achievement({id = 62185, criteria = criteria})}
end

ns.node.EverPainting = Painting

-------------------------------------------------------------------------------
------------------------- MORE THAN JUST THIER ROOTS --------------------------
-------------------------------------------------------------------------------

local MoreThanJustThierRoots = Class('MoreThanJustThierRoots', Collectible, {
    icon = 236160,
    group = ns.groups.MORE_THAN_JUST_THIER_ROOTS
})

ns.node.MoreThanJustThierRoots = MoreThanJustThierRoots

-------------------------------------------------------------------------------
-------------------------------- FROG PRINCESS --------------------------------
-------------------------------------------------------------------------------

local FrogPrincess = Class('frog_princess', Collectible,
    {icon = 2399262, group = ns.groups.FROG_PRINCESS})

function FrogPrincess:Initialize(criteria, location)
    ns.node.Collectible.Initialize(self)
    self.parent = location or nil
    self.rewards = {Achievement({id = 62201, criteria = criteria})}
end

ns.node.FrogPrincess = FrogPrincess

-------------------------------------------------------------------------------
-------------------------------- SONG SEEKER ----------------------------------
-------------------------------------------------------------------------------

local Songseeker = Class('Songseeker', Collectible,
    {icon = 6119037, group = ns.groups.SONG_SEEKER})

ns.node.Songseeker = Songseeker
-------------------------------------------------------------------------------
------------------------- MORE THAN JUST THIER ROOTS --------------------------
-------------------------------------------------------------------------------

local SpiritpawMarathon = Class('SpiritpawMarathon', ns.node.Collectible, {
    icon = 4891426,
    group = ns.groups.SPIRITPAW_MARATHON
})

ns.node.SpiritpawMarathon = SpiritpawMarathon

-------------------------------------------------------------------------------
------------------------------- DUST 'EM OFF ----------------------------------
-------------------------------------------------------------------------------

local Moth = Class('Moth', ns.node.Collectible, {
    label = L['glowing_moth'],
    icon = 1003597,
    group = ns.groups.GLOWING_MOTH,
    rewards = {
        Achievement({id = 61052, criteria = {id = 1, qty = true}}),
        ns.reward.Currency({id = 3385}) -- Luminous Dust
    }
})

function Moth.getters:requires()
    return ns.requirement.Reputation(2704, self.renown, true)
end

ns.node.Moth = Moth

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
