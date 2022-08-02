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

local map = Map({id = 108, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[46067880] = Rare({
    id = 18689,
    rewards = {
        Achievement({id = 1312, criteria = 4509}) -- Bloody Rare
    },
    pois = {
        POI({
            51066660, 50066240, 45046240, 48065580, 46085220, 43045700,
            39024920, 40086260, 38086760, 41026580, 39006360, 32045100,
            35045600, 29045560, 32046340, 28066340
        })
    }
}) -- Crippler

map.nodes[58003360] = Rare({
    id = 18686,
    rewards = {
        Achievement({id = 1312, criteria = 4510}), -- Bloody Rare
        Transmog({item = 31236, slot = L['cloth']}), -- Grim Slippers
        Transmog({item = 31235, slot = L['leather']}), -- Grim Boots
        Transmog({item = 31233, slot = L['mail']}), -- Grim Greaves
        Transmog({item = 31232, slot = L['plate']}) -- Grim Sabatons
    },
    pois = {POI({68004660, 36064200, 35083580, 41062620, 47062680, 55081980})}
}) -- Doomsayer Jurim

map.nodes[49061820] = Rare({
    id = 18685,
    rewards = {
        Achievement({id = 1312, criteria = 4520}), -- Bloody Rare
        Transmog({item = 31231, slot = L['cloth']}), -- Feathered Sash
        Transmog({item = 31229, slot = L['leather']}), -- Feathered Waistband
        Transmog({item = 31231, slot = L['mail']}), -- Feathered Sash
        Transmog({item = 31227, slot = L['plate']}) -- Feathered Girdle
    },
    pois = {POI({31004300, 59022420, 56066780})}
}) -- Okrek
