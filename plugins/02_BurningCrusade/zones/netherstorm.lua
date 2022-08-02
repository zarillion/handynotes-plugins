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

local map = Map({id = 109, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[26604200] = Rare({
    id = 18697,
    rewards = {
        Achievement({id = 1312, criteria = 4506}), -- Bloody Rare
        Transmog({item = 31201, slot = L['cloak']}) -- Illidari Cloak
    },
    pois = {POI({27003720, 58606400, 61006540, 46608320, 46208080})}
}) -- Chief Engineer Lorthander

map.nodes[23006460] = Rare({
    id = 18698,
    rewards = {
        Achievement({id = 1312, criteria = 4511}) -- Bloody Rare
    },
    pois = {
        POI({
            23047580, 20067000, 27087080, 62083240, 61064680, 57064040,
            67063920, 30084180, 24044060
        })

    }
}) -- Ever-Core the Punisher

map.nodes[25008240] = Rare({
    id = 20932,
    rewards = {
        Achievement({id = 1312, criteria = 4519}), -- Bloody Rare
        Transmog({item = 31212, slot = L['cloth']}), -- Chimaerahide Leggings
        Transmog({item = 31211, slot = L['leather']}), -- Chimaerahide Pants
        Transmog({item = 31210, slot = L['mail']}), -- Chimaerascale Legguards
        Transmog({item = 31209, slot = L['plate']}) -- Chimaerascale Legplates
    },
    pois = {POI({46007340, 67606100, 52805780, 35003320, 35802080})}
}) -- Nuramoc
