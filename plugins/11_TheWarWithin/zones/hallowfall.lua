-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

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

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: THE MISSING LYNX ------------------------
-------------------------------------------------------------------------------

local MissingLynx = Class('MissingLynx', Collectible, {
    icon = 40625,
    group = ns.groups.MISSING_LYNX,
    note = L['missing_lynx_note']
})

map.nodes[00000000] = MissingLynx({
    location = L['magpie_location'],
    rewards = {Achievement({id = 40625, criteria = 1})}
}) -- Magpie

map.nodes[00000000] = MissingLynx({
    location = L['evan_location'],
    rewards = {Achievement({id = 40625, criteria = 2})}
}) -- Evan

map.nodes[00000000] = MissingLynx({
    location = L['emery_location'],
    rewards = {Achievement({id = 40625, criteria = 3})}
}) -- Emery

map.nodes[00000000] = MissingLynx({
    location = L['jinx_location'],
    rewards = {Achievement({id = 40625, criteria = 4})}
}) -- Jinx

map.nodes[00000000] = MissingLynx({
    location = L['moog_location'],
    rewards = {Achievement({id = 40625, criteria = 5})}
}) -- Moog

map.nodes[00000000] = MissingLynx({
    location = L['iggy_location'],
    rewards = {Achievement({id = 40625, criteria = 6})}
}) -- Iggy

map.nodes[00000000] = MissingLynx({
    location = L['nightclaw_location'],
    rewards = {Achievement({id = 40625, criteria = 7})}
}) -- Nightclaw

map.nodes[00000000] = MissingLynx({
    location = L['purrlock_location'],
    rewards = {Achievement({id = 40625, criteria = 8})}
}) -- Purrlock

map.nodes[00000000] = MissingLynx({
    location = L['shadowpouncer_location'],
    rewards = {Achievement({id = 40625, criteria = 9})}
}) -- Shadowpouncer

map.nodes[00000000] = MissingLynx({
    location = L['miral_murder_mittens_location'],
    rewards = {Achievement({id = 40625, criteria = 10})}
}) -- Miral Murder-Mittens

map.nodes[00000000] = MissingLynx({
    location = L['fuzzy_location'],
    rewards = {Achievement({id = 40625, criteria = 11})}
}) -- Fuzzy

map.nodes[00000000] = MissingLynx({
    location = L['furball_location'],
    rewards = {Achievement({id = 40625, criteria = 12})}
}) -- Furball

map.nodes[00000000] = MissingLynx({
    location = L['dander_location'],
    rewards = {Achievement({id = 40625, criteria = 13})}
}) -- Dander

map.nodes[00000000] = MissingLynx({
    location = L['gobbo_location'],
    rewards = {Achievement({id = 40625, criteria = 14})}
}) -- Gobbo
