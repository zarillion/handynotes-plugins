-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
-- local Class = ns.Class
local L = ns.locale
local Map = ns.Map

-- local Collectible = ns.node.Collectible
local Dragonglyph = ns.node.Dragonglyph
local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
-- local Mount = ns.reward.Mount
local Pet = ns.reward.Pet

-- local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2022, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[] = Rare({
--     id = 193132,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56045}),
--     }
-- }) -- Amethyzar the Glittering

-- map.nodes[] = Rare({
--     id = 187945,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56035}),
--     }
-- }) -- Anhydros the Tidetaker

-- map.nodes[] = Rare({
--     id = 193135,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56041}),
--     }
-- }) -- Azra's Prized Peony

-- map.nodes[] = Rare({
--     id = 190986,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56059}),
--     }
-- }) -- Battlehorn Pyrhus

-- map.nodes[] = Rare({
--     id = 192738,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56038}),
--     }
-- }) -- Brundin the Dragonbane

map.nodes[26847642] = Rare({
    id = 193198,
    quest = nil, -- ? 72127
    rewards = {Achievement({id = 16676, criteria = 56050})}
}) -- Captain Lancer

map.nodes[26245797] = Rare({
    id = 186783,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56056})}
}) -- Cauldronbearer Blakor

-- map.nodes[] = Rare({
--     id = 190991,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56060}),
--     }
-- }) -- Char

-- map.nodes[] = Rare({
--     id = 190985,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56053}),
--     }
-- }) -- Death's Shadow

-- map.nodes[] = Rare({
--     id = 193217,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56039}),
--     }
-- }) -- Drakewing

-- map.nodes[] = Rare({
--     id = 193134,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56049}),
--     }
-- }) -- Enkine the Voracious

-- map.nodes[] = Rare({
--     id = 193154,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56048}),
--     }
-- }) -- Forgotten Gryphon

-- map.nodes[] = Rare({
--     id = 196056,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56033}),
--     }
-- }) -- Gushgut the Beaksinker

-- map.nodes[43007465] = Rare({
--     id = 193263,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56037}),
--     }
-- }) -- Helmet Missingway

-- map.nodes[] = Rare({
--     id = 193266,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56055}),
--     }
-- }) -- Lepidoralia the Resplendent

-- map.nodes[] = Rare({
--     id = 186827,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56046}),
--     }
-- }) -- Magmaton

-- map.nodes[] = Rare({
--     id = 193152,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56047}),
--     }
-- }) -- Massive Magmashell

-- map.nodes[] = Rare({
--     id = 193256,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56034}),
--     }
-- }) -- Nulltheria the Void Gazer

-- map.nodes[] = Rare({
--     id = 193118,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56043}),
--     }
-- }) -- O'nank Shorescour

-- map.nodes[] = Rare({
--     id = 192362,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56051}),
--     }
-- }) -- Possessive Hornswog

-- map.nodes[] = Rare({
--     id = 193232,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56061}),
--     }
-- }) -- Rasnar the War Ender

-- map.nodes[] = Rare({
--     id = 187598,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56057}),
--     }
-- }) -- Rohzor Forgesmash

-- map.nodes[] = Rare({
--     id = 189822,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56054}),
--     }
-- }) -- Shas'ith

-- map.nodes[] = Rare({
--     id = 193181,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56036}),
--     }
-- }) -- Skewersnout

-- map.nodes[] = Rare({
--     id = 193120,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56044}),
--     }
-- }) -- Smogswog the Firebreather

-- map.nodes[] = Rare({
--     id = 193228,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56042}),
--     }
-- }) -- Snappy

-- map.nodes[] = Rare({
--     id = 193148,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56040}),
--     }
-- }) -- Thunderous Matriarch

map.nodes[33525576] = Rare({
    id = 187886,
    quest = nil,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 16676, criteria = 56058})}
}) -- Turboris

-- map.nodes[] = Rare({
--     id = 186859,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56052}),
--     }
-- }) -- Worldcarver A'tir

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16297/treasures-of-the-waking-shores#comments

map.nodes[40454136] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16297, criteria = 54699})}
}) -- Bubble Drifter

map.nodes[69314658] = Treasure({
    quest = 70346,
    rewards = {Achievement({id = 16297, criteria = 54702})}
}) -- Dead Man's Chestplate

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 55403})}
-- }) -- Misty Treasure Chest

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 55448})}
-- }) -- Onyx Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 54698})}
-- }) -- Replica Dragon Goblet

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 54713})}
-- }) -- Ruby Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16297, criteria = 54703})}
-- }) -- Torn Riding Pack

map.nodes[46713121] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16297, criteria = 54701})}
}) -- Yennu's Kite

-------------------------------------------------------------------------------

map.nodes[64926959] = Treasure({
    quest = 67048,
    label = L['hidden_hornswog_hoard'],
    note = L['hidden_hornswog_hoard_note'],
    rewards = {
        Pet({item = 199916, id = 3365}) -- Roseate Hopper
    },
    pois = {POI({66165529, 39638468, 47728360})}
}) -- Hidden Hornswog Hoard

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[57655483] = Dragonglyph({rewards = {Achievement({id = 15991})}}) -- Dragon Glyphs: Crumbling Life Archway
map.nodes[69184623] = Dragonglyph({rewards = {Achievement({id = 16051})}}) -- Dragon Glyphs: Dragonheart Outpost
map.nodes[58097858] = Dragonglyph({rewards = {Achievement({id = 16669})}}) -- Dragon Glyphs: Flashfrost Enclave
map.nodes[74375751] = Dragonglyph({rewards = {Achievement({id = 16668})}}) -- Dragon Glyphs: Life-Binder Observatory Rostrum
map.nodes[52601712] = Dragonglyph({rewards = {Achievement({id = 15990})}}) -- Dragon Glyphs: Life-Binder Observatory Tower
map.nodes[40987191] = Dragonglyph({rewards = {Achievement({id = 15987})}}) -- Dragon Glyphs: Obsidian Bulwark
map.nodes[21915141] = Dragonglyph({rewards = {Achievement({id = 16053})}}) -- Dragon Glyphs: Obsidian Throne
map.nodes[54437422] = Dragonglyph({rewards = {Achievement({id = 15988})}}) -- Dragon Glyphs: Ruby Life Pools
map.nodes[48828664] = Dragonglyph({rewards = {Achievement({id = 16670})}}) -- Dragon Glyphs: Rubyscale Outpost (Ohn'ahran Plains)
map.nodes[73212051] = Dragonglyph({rewards = {Achievement({id = 16052})}}) -- Dragon Glyphs: Scalecracker Peak
map.nodes[75265707] = Dragonglyph({rewards = {Achievement({id = 15985})}}) -- Dragon Glyphs: Skytop Observatory
map.nodes[46395207] = Dragonglyph({rewards = {Achievement({id = 15989})}}) -- Dragon Glyphs: The Overflowing Spring
map.nodes[74943750] = Dragonglyph({rewards = {Achievement({id = 15986})}}) -- Dragon Glyphs: Wingrest Embassy
