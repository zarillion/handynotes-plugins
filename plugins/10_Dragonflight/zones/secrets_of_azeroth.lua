-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item

-------------------------------------------------------------------------------

local val = ns.maps[2112] -- Valdrakken
local tas = ns.maps[2024] -- The Azure Span
local bor = ns.maps[114] or Map({id = 114, settings = true}) -- Borean Tundra

-------------------------------------------------------------------------------

local SecretsOfAzeroth = Class('SecretsOfAzeroth', ns.node.Node, {
    icon = 'peg_gn',
    scale = 2.0,
    group = ns.groups.SECRETS_OF_AZEROTH
})

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: DAY ONE -------------------------
-------------------------------------------------------------------------------

L['soa_day_1_note_1'] =
    'Speak with {npc:206864} to pick up {quest:77203} then talk to her again to receive a {item:208054} containing {item:208055} and {item:208056}.\n\n{note:Next Location: {location:Valdrakken Treasury Hoard} (bank) here in {location:Valdrakken}.}'
L['soa_day_1_note_2'] =
    'Place the {item:208056} on the pile of gold.\n\n{note:Next Location: {location:The Roasted Ram} here in {location:Valdrakken}.}'
L['soa_day_1_note_3'] =
    'Once you have completed {quest:77203} you will recieve {item:207105}.\n\n{note:Next Location: {location:Iskaara} in {location:The Azure Span}.}'
L['soa_day_1_note_4'] =
    'Speak with {npc:186448} at {location:The Filled Bowl} in {location:Iskaara} to receive {item:207580}.\n\n{note:Next Location: {location:Riplash Strand:} in {location:Borean Tundra} in {location:Northrend}.}'
L['soa_day_1_note_5'] =
    'Place the {item:207580} on the altar to complete this clue! Be sure to stick around and kill {npc:} to receive {item:207594}.'

val.nodes[47314824] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_day_1_note_1'],
    quest = 77204, -- hidden
    rlabel = ns.color.Gray('(1/5)'),
    rewards = {
        Item({item = 208055}), -- A Clue: The Golden Chalice
        Item({item = 208056}) -- Golden Chalice
    }
}) -- Preservationist Kathos

val.nodes[58895410] = SecretsOfAzeroth({
    label = '{item:208056}',
    note = L['soa_day_1_note_2'],
    quest = 77204, -- hidden
    rlabel = ns.color.Gray('2/5'),
    rewards = {
        Item({item = 208056}) -- Golden Chalice
    }
}) -- Golden Chalice

val.nodes[47314825] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_day_1_note_3'],
    quest = 77203, -- hidden
    rlabel = ns.color.Gray('(3/5)'),
    rewards = {
        Achievement({id = 18646, criteria = 1}), -- Whodunnit?
        Item({item = 207105}) -- Tuskarr Ceremonial Spear
    }
}) -- Preservationist Kathos

tas.nodes[12404933] = SecretsOfAzeroth({
    label = '{npc:186448}',
    note = L['soa_day_1_note_4'],
    quest = 76987, -- hidden
    rlabel = ns.color.Gray('(4/5)'),
    rewards = {
        Item({item = 207580}) -- Shomko's Unyielding Spear
    }
}) -- Elder Poa

bor.nodes[33605843] = SecretsOfAzeroth({
    label = '{item:207580}',
    note = L['soa_day_1_note_5'],
    quest = 76987, -- hidden
    rlabel = ns.color.Gray('(5/5)'),
    rewards = {
        Achievement({id = 18642}), -- The Inquisitive
        Achievement({id = 18646, criteria = 2}) -- Whodunnit?
    }
}) -- Shomko's Unyielding Spear
