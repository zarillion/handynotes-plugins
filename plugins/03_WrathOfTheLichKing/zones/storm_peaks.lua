-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog
local Mount = ns.reward.Mount

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=120, settings=true })

local tlpd = Rare({
    id = 32491,
    label = '{npc:32491}, {npc:32630}',
    fgroup='tlpd',
    rewards = {
        Mount({item=44168,id=265}),
        Achievement({id = 2257, criteria = 8120}), -- Frostbitten
        Transmog({item = 44732, slot = L['leather']}) -- Azure Dragonleather Helm
    }
}) -- Time-Lost Proto-Drake, Vyragosa

map.nodes[31457000] = tlpd
map.nodes[35277688] = tlpd
map.nodes[51217119] = tlpd
map.nodes[52303492] = tlpd

map.nodes[41403900] = Rare({
    id = 32500,
    rewards = {
        Achievement({id = 2257, criteria = 8121}), -- Frostbitten
        Transmog({item = 44708, slot = L['2h_mace']}), -- Dirkee's Superstructure
    },
    pois = {
        POI({
            41604060, 41005160, 37805860, 68204760, 41604290, 64904100
        })
    }
}) -- Dirkee
