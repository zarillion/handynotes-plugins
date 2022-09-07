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
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({ id=119, settings=true })

map.nodes[27166055] = Squirrel({
    id = 28093,
    rewards = {Achievement({id = 2557, criteria = 11})}
}) -- Sholazar Tickbird

map.nodes[58602220] = Rare({
    id = 32517,
    rewards = {
        Achievement({id = 2257, criteria = 1}), -- Frostbitten
        Transmog({item = 44687, slot = L['cloak']})
    },
    pois = {
        POI({
            36003000, 21806880, 31206600, 51208140, 67007880, 71407160
        })
    }
}) -- Loque'nahak <Mate of Har'koa>

map.nodes[46805500] = Rare({
    id = 32481,
    rewards = {
        Achievement({id = 2257, criteria = 19}), -- Frostbitten
        Transmog({item = 44691, slot = L['plate']}), -- Aotona's Collar
    },
    pois = {
        POI({
            43205260, 40605860, 41806920, 44806880, 42207340, 52607220, 57606540, 54805180
        })
    }
}) -- Aotona

map.nodes[38952976] = Rare({
    id = 32485,
    rewards = {
        Achievement({id = 2257, criteria = 20}), -- Frostbitten
    },
    pois = {
        Path({38952976, 35483226, 32353982, 27104423, 25744801, 28265363, 28336231, 29607163, 26467897
    })
    }
}) -- King Krush
