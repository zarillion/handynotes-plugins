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
-- local Pet = ns.reward.Pet

-- local Path = ns.poi.Path

-------------------------------------------------------------------------------
local map = Map({id = 2022, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------
-- map.nodes[] = Rare({
--     id = 193132,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = 56054 }),
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
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Battlehorn Pyrhus
-- map.nodes[] = Rare({
--     id = 192738,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Brundin the Dragonbane
-- map.nodes[] = Rare({
--     id = 193198,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Captain Lancer
map.nodes[26245797] = Rare({
    id = 186783,
    quest = nil,
    rewards = {Achievement({id = 16676, criteria = 56056})}
}) -- Cauldronbearer Blakor

-- map.nodes[] = Rare({
--     id = 190991,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Char
-- map.nodes[] = Rare({
--     id = 190985,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Death's Shadow
-- map.nodes[] = Rare({
--     id = 193217,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Drakewing
-- map.nodes[] = Rare({
--     id = 193134,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Enkine the Voracious
-- map.nodes[] = Rare({
--     id = 193154,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Forgotten Gryphon
-- map.nodes[] = Rare({
--     id = 196056,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Gushgut the Beaksinker
-- map.nodes[43007465] = Rare({
--     id = 193263,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Helmet Missingway
-- map.nodes[] = Rare({
--     id = 193266,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Lepidoralia the Resplendent
-- map.nodes[] = Rare({
--     id = 186827,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Magmaton
-- map.nodes[] = Rare({
--     id = 193152,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Massive Magmashell
-- map.nodes[] = Rare({
--     id = 193256,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Nulltheria the Void Gazer
-- map.nodes[] = Rare({
--     id = 193118,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- O'nank Shorescour
-- map.nodes[] = Rare({
--     id = 192362,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--     }
-- }) -- Possessive Hornswog
-- map.nodes[] = Rare({
--     id = 193232,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--     }
-- }) -- Rasnar the War Ender
-- map.nodes[] = Rare({
--     id = 187598,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--     }
-- }) -- Rohzor Forgesmash
-- map.nodes[] = Rare({
--     id = 189822,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--     }
-- }) -- Shas'ith
-- map.nodes[] = Rare({
--     id = 193181,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Skewersnout
-- map.nodes[] = Rare({
--     id = 193120,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Smogswog the Firebreather
-- map.nodes[] = Rare({
--     id = 193228,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Snappy
-- map.nodes[] = Rare({
--     id = 193148,
--     quest = ,
--     rewards = {
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
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
--         Achievement({id = 16676, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
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
