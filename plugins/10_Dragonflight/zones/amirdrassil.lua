-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------

local map = Map({id = 2239, settings = true})

-------------------------------------------------------------------------------
----------------------------- KALDOREI COSMETICS ------------------------------
-------------------------------------------------------------------------------

map.nodes[53475574] = Treasure({
    label = L['kaldorei_spear_label'],
    quest = 79490,
    note = L['night_elven_spear_note'],
    rewards = {Transmog({item = 213012, slot = L['polearm']})}
}) -- Night Elven Spear

map.nodes[31311613] = Treasure({
    label = L['kaldorei_dagger_label'],
    quest = 79496,
    note = L['kaldorei_bow_carver_note'],
    rewards = {Transmog({item = 213008, slot = L['dagger']})}
}) -- Kaldorei Bow Carver

map.nodes[29042885] = Treasure({
    label = L['kaldorei_moon_bow_label'],
    quest = 79520,
    note = L['night_elven_bow_note'],
    rewards = {Transmog({item = 213160, slot = L['bow']})}
}) -- Night Elven Bow

map.nodes[47905688] = Treasure({
    label = L['kaldorei_shield_label'],
    quest = 79499,
    note = L['night_elven_shield_note'],
    rewards = {Transmog({item = 213011, slot = L['shield']})}
}) -- Night Elven Shield

map.nodes[51910589] = Treasure({
    label = L['kaldorei_spyglass_label'],
    quest = 76500,
    note = L['kaldorei_sentinels_spyglass_note'],
    rewards = {Transmog({item = 213013, slot = L['offhand']})}
}) -- Kaldorei Sentinel's Spyglass

map.nodes[55306436] = Treasure({
    label = L['kaldorei_bag_label'],
    quest = 79472,
    note = L['blue_kaldorei_pouch_note'],
    rewards = {Transmog({item = 213010, slot = L['offhand']})}
}) -- Blue Kaldorei Pouch

map.nodes[48287641] = Treasure({
    label = L['kaldorei_bag_label'],
    quest = 79493,
    note = L['violet_kaldorei_pouch_note'],
    rewards = {Transmog({item = 213009, slot = L['offhand']})}
}) -- Violet Kaldorei Pouch

map.nodes[49137030] = Treasure({
    label = L['kaldorei_horn_label'],
    quest = 79497,
    note = L['night_elven_signal_note'],
    rewards = {Transmog({item = 213007, slot = L['offhand']})}
}) -- Night Elven Signal

map.nodes[58465190] = Treasure({
    label = L['kaldorei_horn_label'],
    quest = 79498,
    note = L['night_elven_horn_note'],
    rewards = {Transmog({item = 213006, slot = L['offhand']})}
}) -- Night Elven Horn

map.nodes[54697720] = Treasure({
    label = L['kaldorei_bedroll_label'],
    quest = 79473,
    note = L['blue_kaldorei_bedroll_note'],
    rewards = {Transmog({item = 213003, slot = L['cloak']})}
}) -- Blue Kaldorei Bedroll

map.nodes[52541771] = Treasure({
    label = L['kaldorei_backpack_label'],
    quest = 79494,
    note = L['blue_kaldorei_backpack_note'],
    rewards = {Transmog({item = 213005, slot = L['cloak']})}
}) -- Blue Kaldorei Backpack

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[46507063] = Vendor({
    id = 216286,
    note = L['moon_priestess_lasara_note'],
    rewards = {
        Transmog({
            item = 210424,
            slot = L['cosmetic'],
            count = 250,
            faction = 'Alliance'
        }), -- Darnassian Tabard
        Transmog({item = 210418, slot = L['cosmetic'], count = 250}), -- Darnassian Cloak
        Transmog({item = 210415, slot = L['cosmetic'], count = 250}) -- Darnassian Moonsilver Spaulders
    }
}) -- Moon Priestess Lasara
