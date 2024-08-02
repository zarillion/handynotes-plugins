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
    quest = 82823, -- 79490,
    vignette = 6011,
    note = L['night_elven_spear_note'],
    rewards = {Transmog({item = 213012, slot = L['polearm']})}
}) -- Night Elven Spear

map.nodes[31311613] = Treasure({
    label = L['kaldorei_dagger_label'],
    quest = 82826, -- 79496,
    vignette = 6018,
    note = L['kaldorei_bow_carver_note'],
    rewards = {Transmog({item = 213008, slot = L['dagger']})}
}) -- Kaldorei Bow Carver

map.nodes[29042885] = Treasure({
    label = L['kaldorei_moon_bow_label'],
    quest = 82831, -- 79520,
    vignette = 6020,
    note = L['night_elven_bow_note'],
    rewards = {Transmog({item = 213160, slot = L['bow']})}
}) -- Night Elven Bow

map.nodes[47905688] = Treasure({
    label = L['kaldorei_shield_label'],
    quest = 82829, -- 79499,
    vignette = 6012,
    note = L['night_elven_shield_note'],
    rewards = {Transmog({item = 213011, slot = L['shield']})}
}) -- Night Elven Shield

map.nodes[51910589] = Treasure({
    label = L['kaldorei_spyglass_label'],
    quest = 82830, -- 79500,
    vignette = 6019,
    note = L['kaldorei_sentinels_spyglass_note'],
    rewards = {Transmog({item = 213013, slot = L['offhand']})}
}) -- Kaldorei Sentinel's Spyglass

map.nodes[55306436] = Treasure({
    label = L['kaldorei_bag_label'],
    quest = 82821, -- 79472,
    vignette = 6010,
    note = L['blue_kaldorei_pouch_note'],
    rewards = {Transmog({item = 213010, slot = L['offhand']})}
}) -- Blue Kaldorei Pouch

map.nodes[48287641] = Treasure({
    label = L['kaldorei_bag_label'],
    quest = 82824, -- 79493,
    vignette = 6013,
    note = L['violet_kaldorei_pouch_note'],
    rewards = {Transmog({item = 213009, slot = L['offhand']})}
}) -- Violet Kaldorei Pouch

map.nodes[49137030] = Treasure({
    label = L['kaldorei_horn_label'],
    quest = 82827, -- 79497,
    vignette = 6017,
    note = L['night_elven_signal_note'],
    rewards = {Transmog({item = 213007, slot = L['offhand']})}
}) -- Night Elven Signal

map.nodes[58465190] = Treasure({
    label = L['kaldorei_horn_label'],
    quest = 82828, -- 79498,
    vignette = 6014,
    note = L['night_elven_horn_note'],
    rewards = {Transmog({item = 213006, slot = L['offhand']})}
}) -- Night Elven Horn

map.nodes[54697720] = Treasure({
    label = L['kaldorei_bedroll_label'],
    quest = 82822, -- 79473,
    vignette = 6016,
    note = L['blue_kaldorei_bedroll_note'],
    rewards = {Transmog({item = 213003, slot = L['cloak']})}
}) -- Blue Kaldorei Bedroll

map.nodes[52541771] = Treasure({
    label = L['kaldorei_backpack_label'],
    quest = 82825, -- 79494,
    vignette = 6015,
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
            slot = L['tabard'],
            count = 250,
            faction = 'Alliance'
        }), -- Darnassian Tabard
        Transmog({
            item = 210418,
            slot = L['cloak'],
            count = 250,
            faction = 'Alliance'
        }), -- Darnassian Cloak
        Transmog({item = 210415, count = 250, faction = 'Alliance'}) -- Darnassian Moonsilver Spaulders
    }
}) -- Moon Priestess Lasara
