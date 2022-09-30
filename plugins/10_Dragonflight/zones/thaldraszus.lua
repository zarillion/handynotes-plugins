-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
-- local L = ns.locale
local Map = ns.Map

local Dragonglyph = ns.node.Dragonglyph
-- local Rare = ns.node.Rare
-- local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2025, settings = true})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16301/treasures-of-thaldraszus#comments

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16301, criteria = 54815})}
-- }) -- Acorn Harvester

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16301, criteria = 54812})}
-- }) -- Amber Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16301, criteria = 54810})}
-- }) -- Cracked Hourglass

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16301, criteria = 54813})}
-- }) -- Elegant Canvas Brush

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16301, criteria = 54811})}
-- }) -- Sandy Wooden Duck

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16301, criteria = 54814})}
-- }) -- Surveyor's Magnifying Glass

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[62414050] = Dragonglyph({rewards = {Achievement({id = 16104})}}) -- Dragon Glyphs: Algeth'ar Academy
map.nodes[49944032] = Dragonglyph({rewards = {Achievement({id = 16102})}}) -- Dragon Glyphs: Algeth'era
map.nodes[37639338] = Dragonglyph({rewards = {Achievement({id = 16673})}}) -- Dragon Glyphs: Fallen Course (Azure Span)
map.nodes[52676742] = Dragonglyph({rewards = {Achievement({id = 16666})}}) -- Dragon Glyphs: Gelikyr Overlook
map.nodes[55737225] = Dragonglyph({rewards = {Achievement({id = 16667})}}) -- Dragon Glyphs: Passage of Time
map.nodes[35608551] = Dragonglyph({rewards = {Achievement({id = 16100})}}) -- Dragon Glyphs: South Hold Gate
map.nodes[46107410] = Dragonglyph({rewards = {Achievement({id = 16099})}}) -- Dragon Glyphs: Stormshroud Peak
map.nodes[66108230] = Dragonglyph({rewards = {Achievement({id = 16098})}}) -- Dragon Glyphs: Temporal Conflux
map.nodes[72906921] = Dragonglyph({rewards = {Achievement({id = 16107})}}) -- Dragon Glyphs: Thaldrazsus Apex
map.nodes[61615661] = Dragonglyph({rewards = {Achievement({id = 16103})}}) -- Dragon Glyphs: Tyrhold
map.nodes[41285813] = Dragonglyph({
    parent = 2112,
    rewards = {Achievement({id = 16101})}
}) -- Dragon Glyphs: Valdrakken
map.nodes[72125131] = Dragonglyph({rewards = {Achievement({id = 16106})}}) -- Dragon Glyphs: Vault of the Incarnates
map.nodes[67121181] = Dragonglyph({rewards = {Achievement({id = 16105})}}) -- Dragon Glyphs: Veiled Ossuary
