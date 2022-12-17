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

local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 118, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[35407000] = Rare({
    id = 32501,
    rewards = {
        Achievement({id = 2257, criteria = 2}), -- Frostbitten
        Transmog({item = 44695, slot = L['plate']})
    },
    pois = {
        Path({35407000, 32006980, 31606240}),
        Path({47407820, 49207900, 47208060, 49608520, 48608680, 46408480}),
        Path({73803140, 74003380, 72003640, 72003920, 68004120, 67003740})
    }
}) -- High Thane Jorfus

map.nodes[59105330] = Rare({
    id = 32495,
    rewards = {
        Achievement({id = 2257, criteria = 3}), -- Frostbitten
        Transmog({item = 44697, slot = L['mail']}) -- Val'kyr Vestments
    },
    pois = {
        Path({
            52625504, 55815172, 57175326, 59105330, 58525551, 59545833, 57916101
        }), Path({
            36912573, 33822748, 32792871, 30772657, 29342769, 29403025,
            30633270, 29883750, 28253903, 28524547, 31044322, 32004026, 29883750
        })
    }
}) -- Hildana Deathstealer

map.nodes[61004180] = Rare({
    id = 32487,
    rewards = {
        Achievement({id = 2257, criteria = 23}), -- Frostbitten
        Transmog({item = 44696, slot = L['leather']}) -- Giant's Toewrap
    },
    pois = {
        Path({
            68206880, 67605860, 65605140, 61004180, 56204060, 50204120,
            47804660, 44805380, 46806520
        })
    }
}) -- Putridus the Ancient

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

map.nodes[66602505] = Squirrel({
    id = 32498,
    rewards = {Achievement({id = 2557, criteria = 5})}
}) -- Glacier Penguin
