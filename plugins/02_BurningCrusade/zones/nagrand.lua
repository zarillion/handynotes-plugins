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

local map = Map({id = 107, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[35404720] = Rare({
    id = 17144,
    rewards = {
        Achievement({id = 1312, criteria = 4513}), -- Bloody Rare
        Transmog({item = 31192, slot = L['cloth']}), -- Crocolisk Hide Bindings
        Transmog({item = 31191, slot = L['leather']}), -- Crocolisk Hide Bracers
        Transmog({item = 31189, slot = L['mail']}), -- Crocolisk Scale Wristguards
        Transmog({item = 31188, slot = L['plate']}) -- Crocolisk Scale Vambraces
    },
    pois = {POI({42804780, 42204000, 58802880, 76607880})}
}) -- Goretooth

map.nodes[35806560] = Rare({
    id = 18683,
    rewards = {
        Achievement({id = 1312, criteria = 4522}), -- Bloody Rare
        Transmog({item = 31199, slot = L['cloth']}), -- Voidweave Cilice
        Transmog({item = 31198, slot = L['leather']}), -- Voidhide Cord
        Transmog({item = 31197, slot = L['mail']}), -- Voidscale Belt
        Transmog({item = 31195, slot = L['plate']}) -- Voidplate Girdle
    },
    pois = {POI({34607680, 32607160, 39807100})}
}) -- Voidhunter Yar
