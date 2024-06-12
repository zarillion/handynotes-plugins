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
------------------------ ACHIEVEMENT: BIBLIO ARCHIVIST ------------------------
-------------------------------------------------------------------------------

local BiblioBook = Class('BiblioBook', Collectible, {
    icon = 5341597,
    group = ns.groups.BIBLIO_ARCHIVIST,
    note = L['biblio_archivist_note']
})

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_01_location'],
    rewards = {Achievement({id = 40622, criteria = 1})}
}) -- The Big Book of Arathi Idioms

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_02_location'],
    rewards = {Achievement({id = 40622, criteria = 2})}
}) -- 500 Dishes Using Cave Fish and Mushrooms

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_03_location'],
    rewards = {Achievement({id = 40622, criteria = 3})}
}) -- Care and Feeding of the Imperial Lynx

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_04_location'],
    rewards = {Achievement({id = 40622, criteria = 4})}
}) -- Light's Gambit Playbook

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_05_location'],
    rewards = {Achievement({id = 40622, criteria = 5})}
}) -- From the Depths They Come

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_06_location'],
    rewards = {Achievement({id = 40622, criteria = 6})}
}) -- Palawltar's Codex of Dimensional Structure

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_07_location'],
    rewards = {Achievement({id = 40622, criteria = 7})}
}) -- Shadow Curfew Guidelines

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_08_location'],
    rewards = {Achievement({id = 40622, criteria = 8})}
}) -- Shadow Curfew Journal

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_09_location'],
    rewards = {Achievement({id = 40622, criteria = 9})}
}) -- The Song of Renilash

map.nodes[00000000] = BiblioBook({
    location = L['biblio_book_10_location'],
    rewards = {Achievement({id = 40622, criteria = 10})}
}) -- Beledar - The Emperor's Vision

-------------------------------------------------------------------------------
------------------------- ACHIEVEMENT: LOST AND FOUND -------------------------
-------------------------------------------------------------------------------

local Momento = Class('Momento', Collectible, {
    icon = 4635200,
    group = ns.groups.LOST_AND_FOUND,
    note = L['lost_and_found_note']
})

map.nodes[00000000] = Momento({
    location = L['broken_bracelet_location'],
    rewards = {Achievement({id = 40618, criteria = 1})}
}) -- Broken Bracelet

map.nodes[00000000] = Momento({
    location = L['stuffed_lynx_toy_location'],
    rewards = {Achievement({id = 40618, criteria = 2})}
}) -- Stuffed Lynx Toy

map.nodes[00000000] = Momento({
    location = L['tarnished_compass_location'],
    rewards = {Achievement({id = 40618, criteria = 3})}
}) -- Tarnished Compass

map.nodes[00000000] = Momento({
    location = L['sturdy_locket_location'],
    rewards = {Achievement({id = 40618, criteria = 4})}
}) -- Sturdy Locket

map.nodes[00000000] = Momento({
    location = L['wooden_figure_location'],
    rewards = {Achievement({id = 40618, criteria = 5})}
}) -- Wooden Figure

map.nodes[00000000] = Momento({
    location = L['calcified_journal_location'],
    rewards = {Achievement({id = 40618, criteria = 6})}
}) -- Calcified Journal

map.nodes[00000000] = Momento({
    location = L['ivory_tinderbox_location'],
    rewards = {Achievement({id = 40618, criteria = 7})}
}) -- Ivory Tinderbox

map.nodes[00000000] = Momento({
    location = L['dented_spear_location'],
    rewards = {Achievement({id = 40618, criteria = 8})}
}) -- Dented Spear

map.nodes[00000000] = Momento({
    location = L['filigreed_cleric_location'],
    rewards = {Achievement({id = 40618, criteria = 9})}
}) -- Filigreed Cleric

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: THE MISSING LYNX ------------------------
-------------------------------------------------------------------------------

local MissingLynx = Class('MissingLynx', Collectible, {
    icon = 5689905,
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
