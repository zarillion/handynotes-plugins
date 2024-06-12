-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 2215, settings = true})

-------------------------------------------------------------------------------
--------------------------- HALLOWFALL GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------

map.nodes[62855170] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 1})}
}) -- The Fangs

map.nodes[57363255] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 2})}
}) -- Sina's Yearning

map.nodes[63686555] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 3})}
}) -- Sanguine Grasps

map.nodes[69954421] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 4})}
}) -- Dunelle's Kindness

map.nodes[62750719] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 5})}
}) -- Bleak Sand

map.nodes[43345277] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 6})}
}) -- Mereldar

map.nodes[35343419] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 7})}
}) -- Priory of the Sacred Flame

map.nodes[30715148] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 8})}
}) -- Fortune's Fall

map.nodes[45741243] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 9})}
}) -- Velhan's Claim

map.nodes[57616460] = SkyridingGlyph({
    rewards = {Achievement({id = 40704, criteria = 10})}
}) -- Tenir's Ascent
