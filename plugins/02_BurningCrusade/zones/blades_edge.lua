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

local map = Map({id = 105, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[30807180] = Rare({
    id = 18692,
    rewards = {
        Achievement({id = 1312, criteria = 4514}), -- Bloody Rare
        Transmog({item = 31158, slot = L['cloth']}), -- Drakeweave Raiment
        Transmog({item = 31157, slot = L['leather']}), -- Drakehide Tunic
        Transmog({item = 31156, slot = L['mail']}), -- Drakescale Hauberk
        Transmog({item = 31155, slot = L['plate']}) -- Drakescale Breastplate
    },
    pois = {POI({29006820, 30806780, 29806440, 32005480, 29605080, 30004480})}
}) -- Hemathion

map.nodes[68607380] = Rare({
    id = 18690,
    rewards = {
        Achievement({id = 1312, criteria = 4518}), -- Bloody Rare
        Transmog({item = 31162, slot = L['cloth']}), -- Felstone Mantle
        Transmog({item = 31161, slot = L['leather']}), -- Felstone Spaulders
        Transmog({item = 31160, slot = L['mail']}), -- Felstone Epaulets
        Transmog({item = 31159, slot = L['plate']}) -- Felstone Pauldrons
    },
    pois = {
        POI({
            68006500, 61805400, 70804280, 59002540, 62001960, 68403280, 77602400
        })
    }
}) -- Morcrush

map.nodes[66802680] = Rare({
    id = 18693,
    rewards = {
        Achievement({id = 1312, criteria = 4521}), -- Bloody Rare
        Transmog({item = 31166, slot = L['cloth']}), -- Nethersteel-Lined Handwraps
        Transmog({item = 31165, slot = L['leather']}), -- Nethersteel-Reinforced Gloves
        Transmog({item = 31164, slot = L['mail']}), -- Nethersteel Gauntlets
        Transmog({item = 31163, slot = L['plate']}) -- Nethersteel Handguards
    },
    pois = {
        POI({
            64401920, 57803300, 56402440, 42605020, 39805700, 46807640, 42808120
        })
    }
}) -- Speaker Mar'grom
