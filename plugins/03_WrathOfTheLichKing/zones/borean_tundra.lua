-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Squirrel = ns.node.Squirrel
local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 114, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[70003700] = Rare({
    id = 32358,
    rewards = {
        Achievement({id = 2257, criteria = 5}), -- Frostbitten
        Transmog({item = 44666, slot = L['leather']}) -- Fumblub's Seat Cushion
    },
    pois = {
        Path({
            70003700, 70602960, 67002300, 62601880, 61402260, 63602840,
            65803500, 70003700
        })
    }
}) -- Fumblub Gearwind

map.nodes[33803080] = Rare({
    id = 32357,
    rewards = {
        Achievement({id = 2257, criteria = 4}), -- Frostbitten
        Transmog({item = 44649, slot = L['plate']}) -- Crystalbark's Toenail
    }
}) -- Old Crystalbark

map.nodes[88603980] = Rare({
    id = 32361,
    rewards = {
        Achievement({id = 2257, criteria = 6}), -- Frostbitten
        Transmog({item = 44667, slot = L['cloth']}) -- Mammoth-Hair Crown
    },
    pois = {POI({84604680, 80604620, 81603200, 85803460, 91603260})}
}) -- Icehorn

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

map.nodes[82503360] = Squirrel({
    id = 29328,
    rewards = {Achievement({id = 2557, criteria = 1})}
}) -- Arctic Hare

map.nodes[62856853] = Squirrel({
    id = 28440,
    rewards = {Achievement({id = 2557, criteria = 12})}
}) -- Tundra Penguin

map.nodes[51507342] = Squirrel({
    id = 31685,
    rewards = {Achievement({id = 2557, criteria = 2})}
}) -- Borean Marmot

-------------------------------------------------------------------------------
-------------------------------- PEST CONTROL ---------------------------------
-------------------------------------------------------------------------------

map.nodes[27502600] = Collectible({
    id = 32261,
    icon = 132196,
    note = L['in_nexus'],
    rewards = {Achievement({id = 2556, criteria = 11})}
}) -- Crystal Spider
