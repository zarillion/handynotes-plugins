-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement

local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2255, settings = true})

-------------------------------------------------------------------------------
--------------------------- AZJ-KAHET GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[63352068] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 1})}
}) -- Arathi's End

map.nodes[47932751] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 2})}
}) -- Siegehold

map.nodes[28314536] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 3})}
}) -- Ruptured Lake

map.nodes[44536041] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 4})}
}) -- Eye of Ansurek

-- cot.nodes[12953470] = SkyridingGlyph({
--     rewards = {Achievement({id = 40705, criteria = 5})}
-- }) -- Old Sacrificial Pit

-- cot.nodes[58949040] = SkyridingGlyph({
--     rewards = {Achievement({id = 40705, criteria = 6})}
-- }) -- Deepwalker Pass

map.nodes[65908557] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 7})}
}) -- The Maddening Deep

map.nodes[77518502] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 8})}
}) -- Rak-Ush

map.nodes[58036068] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 9})}
}) -- Silken Ward

map.nodes[69963104] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 10})}
}) -- Trickling Abyss

-- map.nodes[00000000] = SkyridingGlyph({
--     rewards = {Achievement({id = 40705, criteria = 11})}
-- }) -- Untamed Valley

-------------------------------------------------------------------------------
----------------------- ACHIEVEMENT: ITSY BITSY SPIDER ------------------------
-------------------------------------------------------------------------------

local ItsyBitsySpider = Class('ItsyBitsySpider', Collectible, {
    icon = 5793405,
    group = ns.groups.ITSY_BITSY_SPIDER,
    note = L['itsy_bitsy_spider_note']
})

map.nodes[00000000] = ItsyBitsySpider({
    location = L['webster_location'],
    rewards = {Achievement({id = 40624, criteria = 1})}
}) -- Webster

map.nodes[00000000] = ItsyBitsySpider({
    location = L['spindle_location'],
    rewards = {Achievement({id = 40624, criteria = 2})}
}) -- Spindle

map.nodes[00000000] = ItsyBitsySpider({
    location = L['swift_location'],
    rewards = {Achievement({id = 40624, criteria = 3})}
}) -- Swift

map.nodes[00000000] = ItsyBitsySpider({
    location = L['rumurh_location'],
    rewards = {Achievement({id = 40624, criteria = 4})}
}) -- Ru'murh

map.nodes[00000000] = ItsyBitsySpider({
    location = L['thimble_location'],
    rewards = {Achievement({id = 40624, criteria = 5})}
}) -- Thimble

map.nodes[00000000] = ItsyBitsySpider({
    location = L['scampering_weave_rat_location'],
    rewards = {Achievement({id = 40624, criteria = 6})}
}) -- Scampering Weave-Rat

map.nodes[00000000] = ItsyBitsySpider({
    location = L['generals_scouting_shadecaster_location'],
    rewards = {Achievement({id = 40624, criteria = 7})}
}) -- General's Scouting Shadecaster

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

map.nodes[06001400] = LoreObject({ -- review
    rlabel = ReputationGain(250, 2600), -- The Severed Threads
    rewards = {Achievement({id = 40762, criteria = 69385})}
}) -- Forgotten Shadecaster

map.nodes[08001400] = LoreObject({ -- review
    rlabel = ReputationGain(250, 2600), -- The Severed Threads
    rewards = {Achievement({id = 40762, criteria = 69387})}
}) -- Kah'teht

map.nodes[10001400] = LoreObject({ -- review
    rlabel = ReputationGain(250, 2600), -- The Severed Threads
    rewards = {Achievement({id = 40762, criteria = 69388})}
}) -- Mad Nerubian

map.nodes[12001400] = LoreObject({ -- review
    rlabel = ReputationGain(250, 2600), -- The Severed Threads
    rewards = {Achievement({id = 40762, criteria = 69386})}
}) -- Neglected Shadecaster

map.nodes[14001400] = LoreObject({ -- review
    rlabel = ReputationGain(250, 2600), -- The Severed Threads
    rewards = {Achievement({id = 40762, criteria = 69384})}
}) -- Weathered Shadecaster
