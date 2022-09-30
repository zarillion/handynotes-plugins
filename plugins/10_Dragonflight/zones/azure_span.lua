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

local map = Map({id = 2024, settings = true})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16300/treasures-of-the-azure-span#comments

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16300, criteria = 54804})}
-- }) -- Forgotten Jewel Box

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16300, criteria = 54805})}
-- }) -- Gnoll Fiend Flail

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16300, criteria = 54807})}
-- }) -- Lost Compass

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16300, criteria = 54809})}
-- }) -- Pepper Hammer

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16300, criteria = 54808})}
-- }) -- Rubber Fish

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16300, criteria = 54806})}
-- }) -- Sapphire Gem Cluster

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[39306312] = Dragonglyph({rewards = {Achievement({id = 16065})}}) -- Dragon Glyphs: Azure Archive
map.nodes[10403589] = Dragonglyph({rewards = {Achievement({id = 16068})}}) -- Dragon Glyphs: Brackenhide Hollow
map.nodes[45832573] = Dragonglyph({rewards = {Achievement({id = 16064})}}) -- Dragon Glyphs: Cobalt Assembly
map.nodes[26743167] = Dragonglyph({rewards = {Achievement({id = 16069})}}) -- Dragon Glyphs: Creektooth Den
map.nodes[56811612] = Dragonglyph({rewards = {Achievement({id = 16673})}}) -- Dragon Glyphs: Fallen Course
map.nodes[36582796] = Dragonglyph({rewards = {Achievement({id = 16672})}}) -- Dragon Glyphs: Forkriver Crossing (Ohn'ahran Plains)
map.nodes[60587025] = Dragonglyph({rewards = {Achievement({id = 16070})}}) -- Dragon Glyphs: Imbu
map.nodes[67642913] = Dragonglyph({rewards = {Achievement({id = 16072})}}) -- Dragon Glyphs: Kalthraz Fortress
map.nodes[70584626] = Dragonglyph({rewards = {Achievement({id = 16067})}}) -- Dragon Glyphs: Lost Ruins
map.nodes[68646026] = Dragonglyph({rewards = {Achievement({id = 16066})}}) -- Dragon Glyphs: Ruins of Karnthar
map.nodes[72623978] = Dragonglyph({rewards = {Achievement({id = 16073})}}) -- Dragon Glyphs: Vakthros Range
map.nodes[52954909] = Dragonglyph({rewards = {Achievement({id = 16071})}}) -- Dragon Glyphs: Zelthrak Outpost
