-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local Entrance = ns.poi.Entrance

-------------------------------------------------------------------------------

local map = Map({id = 2599, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[42605830] = Rare({
    id = 264866,
    quest = 96372,
    rewards = {
        Achievement({id = 62881, criteria = 114000}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115262}), -- Heroic Slugger
        Transmog({item = 274851, type = L['mail']}) -- Glittering Frostscale Wraps
    }
}) -- Krilkan

map.nodes[49707920] = Rare({
    id = 264865,
    quest = 96371,
    rewards = {
        Achievement({id = 62881, criteria = 113998}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115260}), -- Heroic Slugger
        Transmog({item = 274867, type = L['1h_sword']}) -- Inscribed Domanaar's Sword
    }
}) -- Mercilus

map.nodes[66808640] = Rare({
    id = 261965,
    quest = 95939,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62881, criteria = 113995}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115257}), -- Heroic Slugger
        Transmog({item = 274828, type = L['cloth']}) -- Domanaar Subjugator's Vestments
    }
}) -- Sleet-Rune

map.nodes[28507450] = Rare({
    id = 264864,
    quest = 96370,
    rewards = {
        Achievement({id = 62881, criteria = 113999}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115261}), -- Heroic Slugger
        Transmog({item = 274875, type = L['offhand']}) -- Riftwalker's Lantern
    }
}) -- Xirah

map.nodes[67204180] = RareElite({
    id = 261716,
    quest = 95559,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62881, criteria = 113997}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115259}), -- Heroic Slugger
        Transmog({item = 274857, type = L['plate']}), -- Chitonous Broodmother's Spaulders
        Transmog({item = 274849, type = L['mail']}), -- Frostscale Spider's Monnion
        Transmog({item = 274833, type = L['cloth']}) -- Icy Spidersilk Mantle
    },
    pois = {Entrance({57204845})}
}) -- Glacial Broodmother

map.nodes[33304300] = Rare({
    id = 264868,
    quest = 96373,
    rewards = {
        Achievement({id = 62881, criteria = 114001}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115263}), -- Heroic Slugger
        Transmog({item = 274837, type = L['leather']}) -- Corrupted Hide Boots
    }
}) -- Opprimius

map.nodes[35305780] = Rare({
    id = 264870,
    quest = 999999,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62881, criteria = 114003}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115265}) -- Heroic Slugger
    },
    pois = {Arrow({35305780, 43107140})}
}) -- The Horror Below

map.nodes[37907725] = Rare({
    id = 262421,
    quest = 96088,
    rewards = {
        Achievement({id = 62881, criteria = 113996}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115258}) -- Heroic Slugger
    }
}) -- Atomus

map.nodes[23204140] = Rare({
    id = 264869,
    quest = 96374,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62881, criteria = 114002}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115264}), -- Heroic Slugger
        Transmog({item = 274856, type = L['plate']}), -- Felguard's Frozen Greaves
        Transmog({item = 274840, type = L['leather']}) -- Pants of the Lost Legion
    }
}) -- Nelgothar

--[=[
map.nodes[00000000] = RareElite({
    id = 265269,
    rewards = {
        Achievement({id = 62881, criteria = 114004}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115266}), -- Heroic Slugger
    }
}) -- Shadowguard Destroyer
]=]
