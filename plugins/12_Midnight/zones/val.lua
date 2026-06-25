-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
local Collectible = ns.node.Collectible
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
        Transmog({item = 274859, type = L['plate']}), -- Klaxid Plate Vambraces
        Transmog({item = 274851, type = L['mail']}), -- Glittering Frostscale Wraps
        Transmog({item = 274843, type = L['leather']}), -- Pincher-Proof Wristguards
        Transmog({item = 274835, type = L['cloth']}) -- Bands of Pincher Sinew
    }
}) -- Krilkan

map.nodes[49707920] = Rare({
    id = 264865,
    quest = 96371,
    rewards = {
        Achievement({id = 62881, criteria = 113998}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115260}), -- Heroic Slugger
        Transmog({item = 274858, type = L['plate']}), -- Domanaar Battle Belt
        Transmog({item = 274850, type = L['mail']}), -- Mercilus's Chain Waistguard
        Transmog({item = 274842, type = L['leather']}), -- Gatekeeper's Leather Waistguard
        Transmog({item = 274834, type = L['cloth']}), -- Cord of Domineering Resolve
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
        Transmog({item = 274852, type = L['plate']}), -- Sleetstone Chestplate
        Transmog({item = 274844, type = L['mail']}), -- Sleetlink Hauberk
        Transmog({item = 274836, type = L['leather']}), -- Sleet-Resistant Jerkin
        Transmog({item = 274828, type = L['cloth']}), -- Domanaar Subjugator's Vestments
        Transmog({item = 274869, type = L['warglaive']}) -- Void-Iced Warglaives
    },
    pois = {Entrance({61707880})}
}) -- Sleet-Rune

map.nodes[28507450] = Rare({
    id = 264864,
    quest = 96370,
    rewards = {
        Achievement({id = 62881, criteria = 113999}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115261}), -- Heroic Slugger
        Transmog({item = 274820, type = L['cloak']}), -- Cloak of the Voracious Gorger
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
        Transmog({item = 274841, type = L['leather']}), -- Frigid Cavedweller's Shoulderpads
        Transmog({item = 274833, type = L['cloth']}), -- Icy Spidersilk Mantle
        Transmog({item = 274861, type = L['dagger']}) -- Frosty Broodmother's Fang
    },
    pois = {Entrance({57204845})}
}) -- Glacial Broodmother

map.nodes[33304300] = Rare({
    id = 264868,
    quest = 96373,
    rewards = {
        Achievement({id = 62881, criteria = 114001}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115263}), -- Heroic Slugger
        Transmog({item = 274853, type = L['plate']}), -- Creature Crushers
        Transmog({item = 274845, type = L['mail']}), -- Greaves of Corrupted Scale
        Transmog({item = 274837, type = L['leather']}), -- Corrupted Hide Boots
        Transmog({item = 274829, type = L['cloth']}) -- Creature Corruptor Slippers
    }
}) -- Opprimius

map.nodes[33505820] = Rare({
    id = 264870,
    quest = 96375,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 62881, criteria = 114003}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115265}), -- Heroic Slugger
        Transmog({item = 274818, type = L['cloak']}), -- Drape of Intense Darkness
        Transmog({item = 274872, type = L['fist']}) -- Darkness' Horrific Barb
    },
    pois = {Arrow({33505820, 43107140})}
}) -- The Horror Below

map.nodes[37907725] = Rare({
    id = 262421,
    quest = 95940,
    rewards = {
        Achievement({id = 62881, criteria = 113996}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115258}), -- Heroic Slugger
        Transmog({item = 274855, type = L['plate']}), -- Portal-Keeper's Helm
        Transmog({item = 274847, type = L['mail']}), -- Atomus's Headcover
        Transmog({item = 274839, type = L['leather']}), -- Cold-World Cover
        Transmog({item = 274831, type = L['cloth']}), -- Portal Shaper's Circlet
        Transmog({item = 274868, type = L['1h_sword']}) -- Portal Master's Shortblade
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
        Transmog({item = 274848, type = L['mail']}), -- Legguards of Fel-Corruption
        Transmog({item = 274840, type = L['leather']}), -- Pants of the Lost Legion
        Transmog({item = 274832, type = L['cloth']}) -- Fel-Tainted Trousers
    },
    pois = {Entrance({29303880})}
}) -- Nelgothar

map.nodes[47205790] = RareElite({
    id = 265269,
    quest = 96465,
    location = L['multiple_spawns'],
    rewards = {
        Achievement({id = 62881, criteria = 114004}), -- Showdown Slugger: Val
        Achievement({id = 63348, criteria = 115266}), -- Heroic Slugger
        Transmog({item = 274854, type = L['plate']}), -- Shadowguard Plate Gauntlets
        Transmog({item = 274846, type = L['mail']}), -- Glacier Basin Gauntlets
        Transmog({item = 274838, type = L['leather']}), -- Gloves of the Descending Destroyer
        Transmog({item = 274830, type = L['cloth']}), -- Ice-Glazed Gloves
        Transmog({item = 274865, type = L['1h_mace']}) -- Destroyer's Drop Hammer
    }
}) -- Shadowguard Destroyer

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[70508430] = Collectible({
    label = L['enchanted_hilt'],
    note = L['enchanted_hilt_note'],
    location = L['in_cave'],
    icon = 135602,
    group = ns.groups.TREASURE,
    rewards = {
        Transmog({item = 276290, type = L['1h_sword']}) -- Ice Guardian's Sleetblade
    },
    pois = {Entrance({61707880})}
}) -- Ice Guardian's Sleetblade

-- Transmog({item = 274863, type = L['1h_mace']}) -- Cudgel of the Twisted Reaper
