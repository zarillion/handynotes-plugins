-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
-- local L = ns.locale
local Map = ns.Map

local Dragonglyph = ns.node.Dragonglyph
-- local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2022, settings = true})

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
