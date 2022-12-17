-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 115, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[24005400] = Rare({
    id = 32409,
    rewards = {
        Achievement({id = 2257, criteria = 11}), -- Frostbitten
        Transmog({item = 44672, slot = L['leather']}) -- Seal-Fur Spaulders
    },
    pois = {
        POI({
            15604560, 15605820, 20605520, 26605860, 28806160, 30605860, 33405760
        })
    }
}) -- Crazed Indu'le Survivor

map.nodes[72207060] = Rare({
    id = 32417,
    rewards = {
        Achievement({id = 2257, criteria = 12}), -- Scarlet Highlord Daion
        Transmog({item = 44671, slot = L['mail']}) -- Highlord's Padded Legguards
    },
    pois = {
        POI({
            72007400, 69007580, 86804160, 86003640, 88003660, 75602720,
            72202560, 71202260
        })
    }
}) -- Scarlet Highlord Daion

map.nodes[53805920] = Rare({
    id = 32400,
    rewards = {
        Achievement({id = 2257, criteria = 10}), -- Frostbitten
        Transmog({item = 44673, slot = L['cloth']}) -- Mammoth-Riding Boots
    },
    pois = {
        Path({
            53805920, 55545560, 56885204, 57664845, 57894348, 58823937,
            60343496, 61283216, 60872948, 59112850
        }), Path({58094224, 60294336, 61654433}), Path({
            56885204, 57205545, 58705758, 60735789, 62515607, 62465187,
            61884776, 61654433, 62664035, 64273744, 65233614, 67793569,
            69933397, 70353212, 70053036, 68492936, 67173066, 66743414,
            66923814, 67164254, 67674538, 68544748, 69575073, 69575342,
            68865683, 67965908, 66206147
        })
    }
}) -- Tukemuth

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

map.nodes[22314886] = Squirrel({
    id = 29328,
    rewards = {Achievement({id = 2557, criteria = 1})}
}) -- Arctic Hare
