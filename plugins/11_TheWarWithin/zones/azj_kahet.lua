-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement

local ReputationGain = ns.tooltip.ReputationGain

-------------------------------------------------------------------------------

local map = Map({id = 2255, settings = true})
local cot = Map({id = 2213, settings = true}) -- City of Threads
local cotl = Map({id = 2216, settings = true}) -- City of Threads - Lower

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[06001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69651})}
-- }) -- Abyssal Devourer

-- map.nodes[08001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69654})}
-- }) -- Ahg'zagall

-- map.nodes[10001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69661})}
-- }) -- Cha'tak

-- map.nodes[12001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69657})}
-- }) -- Chitin Hulk

-- map.nodes[14001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69669})}
-- }) -- Deepcrawler Tx'kesh

-- map.nodes[16001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69664})}
-- }) -- Enduring Gutterface

-- map.nodes[18001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69655})}
-- }) -- Grik'ik

-- map.nodes[20001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69667})}
-- }) -- Harvester Qixt

-- map.nodes[22001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69665})}
-- }) -- Jix'ak the Crazed

-- map.nodes[24001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 696670})}
-- }) -- Kaheti Bladeguard

-- map.nodes[06001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69659})}
-- }) -- Kaheti Silk Hauler

-- map.nodes[08001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69663})}
-- }) -- Maddened Siegebomber

-- map.nodes[10001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69662})}
-- }) -- Monstrous Lasharoth

-- map.nodes[12001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69653})}
-- }) -- Rhak'ik & Khak'ik

-- map.nodes[14001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69666})}
-- }) -- The Oozekhan

-- map.nodes[16001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69660})}
-- }) -- The XT-Minecrusher 8700

-- map.nodes[18001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69668})}
-- }) -- Umbraclaw Matra

-- map.nodes[20001800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {Achievement({id = 40840, criteria = 69656})}
-- }) -- Vilewing

cotl.nodes[67525826] = Rare({
    id = 216039,
    quest = 81701, -- 84070
    parent = cot.id, -- ?
    -- ReputationGain(50, 2601), -- The Weaver
    -- ReputationGain(50, 2605), -- The General
    -- ReputationGain(50, 2607), -- The Vizier
    rewards = {Achievement({id = 40840, criteria = 69658})}
}) -- Xishorr

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[06002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 1})} -- duplicated criteria id 69615
}) -- Corrupted Memory

map.nodes[08002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69646})}
}) -- Disturbed Soil

map.nodes[10002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69650})}
}) -- Missing Scout's Pack

map.nodes[12002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 2})} -- duplicated criteria id 69615
}) -- Memory Cache

cot.nodes[31642077] = Treasure({
    -- ReputationGain(50, 2601), -- The Weaver
    -- ReputationGain(50, 2605), -- The General
    -- ReputationGain(50, 2607), -- The Vizier
    quest = 82720,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69648})}
}) -- Nerubian Offerings

map.nodes[16002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69645})}
}) -- Nest Egg

map.nodes[18002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69649})}
}) -- Niffen Stash

map.nodes[20002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69647})}
}) -- Silk-spun Supplies

map.nodes[22002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69644})}
}) -- Trapped Trove

map.nodes[24002000] = Treasure({ -- review
    quest = nil,
    parent = map.id,
    rewards = {Achievement({id = 40828, criteria = 69643})}
}) -- Weaving Supplies

-------------------------------------------------------------------------------
--------------------------- AZJ-KAHET GLYPH HUNTER ----------------------------
-------------------------------------------------------------------------------

map.nodes[63352068] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69265})}
}) -- Arathi's End

map.nodes[47932751] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69266})}
}) -- Siegehold

map.nodes[28314536] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69267})}
}) -- Ruptured Lake

map.nodes[44536041] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69268})}
}) -- Eye of Ansurek

-- cot.nodes[12953470] = SkyridingGlyph({
--     rewards = {Achievement({id = 40705, criteria = 69269})}
-- }) -- Old Sacrificial Pit

-- cot.nodes[58949040] = SkyridingGlyph({
--     rewards = {Achievement({id = 40705, criteria = 69270})}
-- }) -- Deepwalker Pass

map.nodes[65908557] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69271})}
}) -- The Maddening Deep

map.nodes[77518502] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69272})}
}) -- Rak-Ush

map.nodes[58036068] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69273})}
}) -- Silken Ward

map.nodes[69963104] = SkyridingGlyph({
    rewards = {Achievement({id = 40705, criteria = 69274})}
}) -- Trickling Abyss

-- map.nodes[00000000] = SkyridingGlyph({
--     rewards = {Achievement({id = 40705, criteria = 69275})}
-- }) -- Untamed Valley

-------------------------------------------------------------------------------
----------------------- ACHIEVEMENT: ITSY BITSY SPIDER ------------------------
-------------------------------------------------------------------------------

local ItsyBitsySpider = Class('ItsyBitsySpider', Collectible, {
    icon = 5793405,
    group = ns.groups.ITSY_BITSY_SPIDER,
    note = L['itsy_bitsy_spider_note']
})

map.nodes[06001200] = ItsyBitsySpider({
    location = L['webster_location'],
    rewards = {Achievement({id = 40624, criteria = 68972})}
}) -- Webster

map.nodes[08001200] = ItsyBitsySpider({
    location = L['spindle_location'],
    rewards = {Achievement({id = 40624, criteria = 68973})}
}) -- Spindle

map.nodes[10001200] = ItsyBitsySpider({
    location = L['swift_location'],
    rewards = {Achievement({id = 40624, criteria = 68974})}
}) -- Swift

map.nodes[12001200] = ItsyBitsySpider({
    location = L['rumurh_location'],
    rewards = {Achievement({id = 40624, criteria = 68976})}
}) -- Ru'murh

map.nodes[14001200] = ItsyBitsySpider({
    location = L['thimble_location'],
    rewards = {Achievement({id = 40624, criteria = 68977})}
}) -- Thimble

map.nodes[16001200] = ItsyBitsySpider({
    location = L['scampering_weave_rat_location'],
    rewards = {Achievement({id = 40624, criteria = 68978})}
}) -- Scampering Weave-Rat

map.nodes[18001200] = ItsyBitsySpider({
    location = L['generals_scouting_shadecaster_location'],
    rewards = {Achievement({id = 40624, criteria = 68979})}
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
