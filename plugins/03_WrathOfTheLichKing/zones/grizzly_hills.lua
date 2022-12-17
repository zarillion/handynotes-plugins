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

local map = Map({id = 116, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[34614995] = Rare({
    id = 32429,
    rewards = {
        Achievement({id = 2257, criteria = 14}), -- Frostbitten
        Transmog({item = 44674, slot = L['cloth']}) -- Ichor-Stained Wraps
    },
    pois = {POI({40485098, 39654877, 38334966, 28174545, 26524685})}
}) -- Seething Hate

map.nodes[20205620] = Rare({
    id = 32422,
    rewards = {
        Achievement({id = 2257, criteria = 13}), -- Frostbitten
        Transmog({item = 44675, slot = L['mail']}) -- 22.6 73.6
    },
    pois = {
        POI({28004180}), Path({
            10203720, 11004200, 12204360, 13204660, 13405160, 12605400,
            12205540, 13605420, 14605280, 15605020
        }), Path({
            20205620, 21605760, 23005760, 24005680, 24005440, 25205620,
            26205640, 25205720, 24806000, 24005940
        }), Path({
            11207100, 13607080, 15007000, 16406940, 17807140, 20207260,
            21607080, 22607360
        })
    }
}) -- Grocklar

map.nodes[65003000] = Rare({
    id = 32438,
    rewards = {
        Achievement({id = 2257, criteria = 15}), -- Frostbitten
        Transmog({item = 44676, slot = L['leather']}) -- Syreian's Leggings
    },
    pois = {
        Path({
            65003000, 65802840, 67602800, 68602680, 68803080, 70203340,
            71603500, 73603760, 75203880, 76204160
        }),
        Path(
            {
                66604160, 66204040, 66603600, 65603360, 64603560, 61803660,
                61203520
            })
    }
}) -- Syreian the Bonecarver

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

map.nodes[32205480] = Squirrel({
    id = 31889,
    rewards = {Achievement({id = 2557, criteria = 6})}
}) -- Grizzly Squirrel

map.nodes[57553532] = Squirrel({
    id = 31890,
    rewards = {Achievement({id = 2557, criteria = 9})}
}) -- Mountain Skunk
