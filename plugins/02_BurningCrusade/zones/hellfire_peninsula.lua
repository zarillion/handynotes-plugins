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

local map = Map({id = 100, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[56607180] = Rare({
    id = 18678,
    rewards = {
        Achievement({id = 1312, criteria = 4512}), -- Bloody Rare
        Transmog({item = 31181, slot = L['cloth']}), -- Rockwurm Hide Handwraps
        Transmog({item = 31177, slot = L['mail']}), -- Rockwurm Scale Gauntlets
        Transmog({item = 31179, slot = L['leather']}), -- Rockwurm Hide Gloves
        Transmog({item = 31176, slot = L['plate']}) -- Rockwurm Plate Handguards
    },
    pois = {
        POI({
            23605680, 23605820, 23605860, 23605960, 23606100, 23805580,
            24804800, 24804960, 25804580, 26204380, 26404480, 27404240,
            28004240, 28606580, 29004080, 29206480, 29604020, 30006480,
            30606400, 30803700, 31406120, 32406060, 33606120, 35405700,
            37205280, 38005220, 40405180, 40605160, 42407220, 43605040,
            43807100, 45004880, 46406980, 49007040, 49407060, 50807020,
            51407080, 53407160, 54007240, 54607180
        })
    }
}) -- Fulgorge

map.nodes[69806820] = Rare({
    id = 18677,
    rewards = {
        Achievement({id = 1312, criteria = 4517}), -- Bloody Rare
        Transmog({item = 31174, slot = L['cloth']}), -- Demonweave Raiment
        Transmog({item = 31172, slot = L['leather']}), -- Demon-Cured Tunic
        Transmog({item = 31170, slot = L['mail']}), -- Demon-Forged Hauberk
        Transmog({item = 31168, slot = L['plate']}) -- Demon-Forged Chestguard
    },
    pois = {
        POI({
            41007100, 41407040, 41606900, 41606980, 41607120, 41806760,
            42006680, 42206540, 42206620, 42606460, 42806420, 43806240,
            44605960, 44803960, 45004280, 45404440, 45604100, 45604440,
            45804180, 46004340, 46005960, 46205940, 46604440, 46605940,
            46804460, 46804620, 47005840, 47604640, 47804680, 48205020,
            48605360, 49605240, 49605280, 50205080, 50605100, 51805120,
            53205060, 53405040, 55605040, 64807240, 65207100, 67406840,
            67607340, 67807680, 68807020, 69606900
        })
    }
}) -- Mekthorg the Wild

map.nodes[71405600] = Rare({
    id = 18679,
    rewards = {
        Achievement({id = 1312, criteria = 4523}), -- Bloody Rare
        Transmog({item = 31185, slot = L['cloth']}), -- Legion Crown
        Transmog({item = 31184, slot = L['leather']}), -- Legion Headguard
        Transmog({item = 31183, slot = L['mail']}), -- Legion Coif
        Transmog({item = 31182, slot = L['plate']}) -- Legion Helm
    },
    pois = {POI({65402930, 73404090, 40293254, 74003780})}
}) -- Vorakem Doomspeaker
