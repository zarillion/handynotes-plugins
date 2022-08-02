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

map.nodes[24206360] = Rare({
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
            24804960, 31003680, 27606980, 32406060, 40605160, 58607160,
            47206960, 41407100, 40206480
        })
    }
}) -- Fulgorge

map.nodes[41807180] = Rare({
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
            47205760, 48005440, 55605040, 47804680, 45204060, 67607680, 67406820
        })
    }
}) -- Mekthorg the Wild

map.nodes[72805720] = Rare({
    id = 18679,
    rewards = {
        Achievement({id = 1312, criteria = 4523}), -- Bloody Rare
        Transmog({item = 31185, slot = L['cloth']}), -- Legion Crown
        Transmog({item = 31184, slot = L['leather']}), -- Legion Headguard
        Transmog({item = 31183, slot = L['mail']}), -- Legion Coif
        Transmog({item = 31182, slot = L['plate']}) -- Legion Helm
    },
    pois = {POI({71004680, 74403960, 65603060, 53602940, 42603180, 38402980})}
}) -- Vorakem Doomspeaker
