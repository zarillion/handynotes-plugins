-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Toy = ns.reward.Toy

-------------------------------------------------------------------------------

local ohn = ns.maps[2023] or Map({id = 2023, settings = true}) -- Ohn'ahran Plains
local tas = ns.maps[2024] or Map({id = 2024, settings = true}) -- The Azure Span
local tha = ns.maps[2025] or Map({id = 2025, settings = true}) -- Thaldraszus
local tws = ns.maps[2022] or Map({id = 2022, settings = true}) -- The Waking Shores
local val = ns.maps[2112] or Map({id = 2112, settings = true}) -- Valdrakken

local sto = ns.maps[84] or Map({id = 84, settings = true}) -- Stormwind
local org = ns.maps[85] or Map({id = 85, settings = true}) -- Orgimmar
local dur = ns.maps[1] or Map({id = 1, settings = true}) -- Durotar

-------------------------------------------------------------------------------

local Coin = Class('Coin', Node, {
    label = L['rumble_coin_bag'],
    icon = 5149946,
    group = ns.groups.WARCRAFT_RUMBLE,
    rewards = {
        Item({item = 202162}) -- Rumble Coin
    }
}) -- Coin

local Foil = Class('Foil', Node, {
    label = L['rumble_foil_bag'],
    icon = 5149946,
    group = ns.groups.WARCRAFT_RUMBLE,
    rewards = {
        Item({item = 202395}) -- Rumble Foil
    }
}) -- Foil

local Both = Class('Both', Node, {
    label = L['rumble_both_bags'],
    icon = 5149946,
    group = ns.groups.WARCRAFT_RUMBLE,
    rewards = {
        Item({item = 202162}), -- Rumble Coin
        Item({item = 202395}) -- Rumble Foil
    }
})

local Machine = Class('Machine', ns.node.Collectible, {
    label = L['warcraft_rumble_machine'],
    icon = 5149946,
    group = ns.groups.WARCRAFT_RUMBLE,
    rewards = {
        Achievement({
            id = 17361,
            criteria = {
                57988, -- Gain Gold Maiev Toy
                57989, -- Gain Gold Sneed Toy
                57990, -- Gain Gold Huntress Toy
                57991, -- Gain Gold Tauren Toy
                57992, -- Gain Gold Ghoul Toy
                57993, -- Gain Gold Murloc Toy
                57994 -- Gain Gold Whelp Egg Toy
            }
        }), -- Rumble Minis, All the Looks!
        Toy({item = 201931}), -- Warcraft Rumble Toy: Maiev
        Toy({item = 202261}), -- Warcraft Rumble Toy: Sneed
        Toy({item = 202851}), -- Warcraft Rumble Toy: Night Elf Huntress
        Toy({item = 202856}), -- Warcraft Rumble Toy: Stonehoof Tauren
        Toy({item = 202859}), -- Warcraft Rumble Toy: Undead Ghoul
        Toy({item = 202862}), -- Warcraft Rumble Toy: Murloc
        Toy({item = 202865}) -- Warcraft Rumble Toy: Whelp Egg
    }
}) -- Warcraft Rumble Machine

---------------------------------- STORMWIND ----------------------------------

sto.nodes[31203740] = Coin({
    location = L['wr_sto_coin_01'],
    quest = 74844,
    parent = {37, 13}
})
sto.nodes[38704610] = Foil({
    location = L['wr_sto_foil_01'],
    quest = 74286,
    parent = {37, 13}
})
sto.nodes[75108600] = Foil({
    location = L['wr_sto_foil_02'],
    quest = 73952,
    parent = {37, 13}
})
sto.nodes[28424122] = Machine({parent = {37, 13}})

----------------------------------- ORGIMMAR ----------------------------------

dur.nodes[56001200] = Foil({
    location = L['wr_dur_foil_01'],
    quest = 74287,
    parent = {1, 12}
})
org.nodes[54067520] = Foil({
    location = L['wr_org_foil_01'],
    quest = 74848,
    parent = {1, 12}
})
org.nodes[54507738] = Coin({
    location = L['wr_org_coin_01'],
    quest = 74845,
    parent = {1, 12}
})
org.nodes[50548249] = Machine({parent = {1, 12}})

------------------------------ THE WAKING SHORES ------------------------------

tws.nodes[56461925] = Both({
    location = L['wr_tws_both_01'],
    quest = {73182, 75039}, -- Coin, Foil
    parent = {1978}
})
tws.nodes[34606370] = Foil({
    location = L['wr_tws_foil_01'],
    quest = 74851,
    parent = {1978}
})
tws.nodes[63107860] = Foil({
    location = L['wr_tws_foil_02'],
    quest = 74850,
    parent = {1978}
})

------------------------------- OHN'AHRAN PLAINS ------------------------------

ohn.nodes[19128201] = Both({
    location = L['wr_ohn_both_01'],
    quest = {73928, 75040}, -- Coin, Foil
    parent = {1978}
})
ohn.nodes[81807790] = Foil({
    location = L['wr_ohn_foil_02'],
    quest = 75036,
    parent = {1978}
})

--------------------------------- AZURE SPAN ----------------------------------

tas.nodes[07504755] = Both({
    location = L['wr_tas_both_01'],
    quest = {73936, 75041}, -- Coin, Foil
    parent = {1978}
})
tas.nodes[57303770] = Foil({
    location = L['wr_tas_foil_01'],
    quest = 75037,
    parent = {1978}
})

--------------------------------- THALDRASZUS ---------------------------------

tha.nodes[49205840] = Both({
    location = L['wr_tha_both_01'],
    quest = {74843, 75038}, -- Coin, Foil
    parent = {1978}
})
tha.nodes[57006680] = Foil({
    location = L['wr_tha_foil_01'],
    quest = 74852,
    parent = {1978}
})

--------------------------------- VALDRAKKEN ----------------------------------

val.nodes[45504710] = Coin({
    location = L['wr_val_coin_01'],
    quest = 73180,
    parent = {1978}
})
val.nodes[46104670] = Foil({
    location = L['wr_val_foil_01'],
    quest = 74849,
    parent = {1978}
})
val.nodes[48104660] = Machine({location = L['wr_val_machine'], parent = {1978}})
