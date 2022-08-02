-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 102, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[22402140] = Rare({
    id = 18682,
    rewards = {
        Achievement({id = 1312, criteria = 4505}), -- Bloody Rare
        Transmog({item = 31250, slot = L['cloth']}), -- Bog Mantle
        Transmog({item = 31249, slot = L['leather']}), -- Bog Spaulders
        Transmog({item = 31248, slot = L['mail']}), -- Bog Epaulets
        Transmog({item = 31247, slot = L['plate']}) -- Bog Pauldrons
    },
    pois = {
        POI({
            22802840, 26802760, 27602120, 40806220, 50605960, 86408900, 84407920
        })
    }
}) -- Bog Lurker

map.nodes[25804260] = Rare({
    id = 18681,
    rewards = {
        Achievement({id = 1312, criteria = 4507}), -- Bloody Rare
        Transmog({item = 31246, slot = L['cloth']}), -- Nagahide Leggings
        Transmog({item = 31244, slot = L['leather']}), -- Nagahide Pants
        Transmog({item = 31243, slot = L['mail']}), -- Nagascale Legguards
        Transmog({item = 31242, slot = L['plate']}) -- Nagascale Legplates
    },
    pois = {POI({63003800, 62006960, 72207600, 73608220})}
}) -- Coilfang Emissary

map.nodes[10005240] = Rare({
    id = 18680,
    rewards = {
        Achievement({id = 1312, criteria = 4516}), -- Bloody Rare
        Transmog({item = 31254, slot = L['cloak']}) -- Striderhide Cloak
    },
    pois = {
        POI({
            18603140, 79605360, 69804000, 55203400, 48003000, 43003540,
            39403320, 38003820
        })
    }
}) -- Marticar
