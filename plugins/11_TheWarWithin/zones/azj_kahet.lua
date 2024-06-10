-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement

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
