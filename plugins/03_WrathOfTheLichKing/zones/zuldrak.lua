-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Squirrel = ns.node.Squirrel
local Node = ns.node.Node
local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 121, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[40255237] = Rare({
    id = 32447,
    rewards = {
        Achievement({id = 2257, criteria = 8115}), -- Frostbitten
        Transmog({item = 44677, slot = L['plate']}) -- Eternal Observer's Legplates
    },
    pois = {
        Path({40425237, 40425562, 40425887, 40426381}),
        Path({42427055, 44917453, 47417851, 51218455}), Path({
            43555454, 44825617, 45255900, 46566131, 47416280, 46906468,
            45636625, 44146819
        }), Path({29007164, 29007857, 29008280, 25128280, 20608280})
    }
}) -- Zul'Drak Sentinel

map.nodes[22007060] = Rare({
    id = 32471,
    rewards = {
        Achievement({id = 2257, criteria = 8116}), -- Frostbitten
        Transmog({item = 44686, slot = L['leather']}) -- Ethereal Terror Handwraps
    },
    pois = {
        POI({
            18007060, 26607120, 24807680, 21207980, 23206160, 27205440, 14605680
        })
    }
}) -- Griegen

map.nodes[72002840] = Rare({
    id = 32475,
    rewards = {
        Achievement({id = 2257, criteria = 8117}), -- Frostbitten
        Transmog({item = 44685, slot = L['mail']}) -- Calcified Web Spaulders
    },
    pois = {
        POI({
            71602240, 71802460, 70802980, 81603460, 80803640, 77804280,
            76804360, 75206660, 74006600, 61603640, 60403560, 53203140, 52003280
        })
    }
}) -- Terror Spinner

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

map.nodes[44976090] = Squirrel({
    id = 6653,
    rewards = {Achievement({id = 2557, criteria = 7})}
}) -- Huge Toad

map.nodes[44606780] = Collectible({
    id = 28202,
    icon = 132196,
    rewards = {Achievement({id = 2556, criteria = 8})}
}) -- Zul'Drak Rat

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[58005400] = Safari.ArcticHare({
    pois = {
        POI({
            52805280, 53003900, 53205900, 54204400, 54403900, 55003840,
            55603860, 55605280, 58005400, 60806400, 67403440, 70202620,
            71602240, 73801880, 75202260
        })
    }
}) -- Arctic Hare

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[48425635] = Node({
    id = 30007,
    label = '{achievement:4958}',
    icon = 132334,
    quest = {12932, 12933, 12934, 12935, 12936, 12948},
    questCount = true,
    rewards = {
        Achievement({id = 4958, criteria = 2}) -- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
    }
}) -- Amphitheater of Anguish in Zul'Drak
