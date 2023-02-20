-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Safari = ns.node.Safari
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

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[43205060] = Safari.ArcticHare({
    pois = {
        POI({
            14205740, 15805860, 16005220, 16804800, 18005380, 19404940,
            21605400, 25005340, 26005620, 27005940, 27205960, 29206080,
            29805280, 30004920, 30405780, 30605780, 33006020, 34404840,
            34604900, 34605240, 34605640, 36007280, 38004240, 39007400,
            40604180, 40604780, 41605200, 43205060, 45201240, 47406060,
            47606080, 48806500, 49006240, 49206260, 50401920, 50601920,
            71805900, 71806760, 72606120, 73206360, 73206600, 74206800,
            75204260, 77405040, 77406420, 77605020, 82406320, 83603400,
            84203140, 85001940, 86206000, 88806500, 89603220, 89806940, 90806520
        })
    }
}) -- Arctic Hare

map.nodes[57405840] = Safari.DragonboneHatchling({
    pois = {
        POI({
            51002580, 51402700, 51405340, 51405360, 51602720, 52004300,
            52004380, 52005380, 52405500, 52602540, 52605420, 52802620,
            52804400, 53202660, 54004040, 54004060, 54804200, 55003940,
            55004120, 55404000, 56805900, 57405840, 57605800, 57605920,
            62202920, 62602960, 62606720, 62802840, 63202900, 63406800,
            63606800, 64205240, 64205280, 65005240, 65205340, 65205360,
            65604360, 66004300, 66406220, 66406260, 66606280, 67006360
        })
    }
}) -- Dragonbone Hatchling

map.nodes[10806320] = Safari.TundraPenguin({
    pois = {POI({06406220, 08406300, 10806320, 13006120, 18206200, 18606260})}
}) -- Tundra Penguin
