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

map.nodes[76207800] = Rare({
    id = 17144,
    rewards = {
        Achievement({id = 1312, criteria = 4513}), -- Bloody Rare
        Transmog({item = 31192, slot = L['cloth']}), -- Crocolisk Hide Bindings
        Transmog({item = 31191, slot = L['leather']}), -- Crocolisk Hide Bracers
        Transmog({item = 31189, slot = L['mail']}), -- Crocolisk Scale Wristguards
        Transmog({item = 31188, slot = L['plate']}) -- Crocolisk Scale Vambraces
    },
    pois = {
        POI({
            41404140, 44004700, 44804040, 58202780, 74607600, 75807560,
            76007960, 76008080
        })
    }
}) -- Goretooth

map.nodes[39607280] = Rare({
    id = 18683,
    rewards = {
        Achievement({id = 1312, criteria = 4522}), -- Bloody Rare
        Transmog({item = 31199, slot = L['cloth']}), -- Voidweave Cilice
        Transmog({item = 31198, slot = L['leather']}), -- Voidhide Cord
        Transmog({item = 31197, slot = L['mail']}), -- Voidscale Belt
        Transmog({item = 31195, slot = L['plate']}) -- Voidplate Girdle
    },
    pois = {
        POI({
            32207040, 32207100, 32207160, 32407320, 32606960, 32607360,
            32806880, 33007460, 33206780, 33406740, 33606700, 33607580,
            34206620, 34606600, 35007680, 35806560, 36006540, 36207700,
            36807660, 37206580, 37606600, 38207600, 39006820, 39007440,
            39007540, 39406880, 39407320, 39607080, 39607200
        })
    }
}) -- Voidhunter Yar
