-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale
local Class = ns.Class

local Rare = ns.node.Rare
local Collectible = ns.node.Collectible
local Treasure = ns.node.Treasure
local Squirrel = ns.node.Squirrel

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------
local map = Map({id = 376, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[69376366] = Rare({
    id = 62346,
    rewards = {
        Mount({item = 89783, id = 515}),
        Transmog({item = 90419, slot = L['leather']}), -- Fireproofed Chestguard
        Transmog({item = 90451, slot = L['leather']}), -- Cannoneer's Gunpowder Carrier
        Transmog({item = 90442, slot = L['leather']}), -- Flamefoot Tabi
        Transmog({item = 90449, slot = L['cloth']}), -- Belt of Detonation
        Transmog({item = 90450, slot = L['leather']}), -- Carrot-Holder Belt
        Transmog({item = 90421, slot = L['mail']}), -- Chain of Unseized Skies
        Transmog({item = 90411, slot = L['leather']}), -- Facemask of Unrepentant Banditry
        Transmog({item = 90454, slot = L['plate']}), -- Girdle of the Galloping Giant
        Transmog({item = 90412, slot = L['mail']}), -- Helm of Restoring Wind
        Transmog({item = 90418, slot = L['cloth']}), -- Robes of the Lightning Rider
        Transmog({item = 90441, slot = L['leather']}), -- Stompdodger Boots
        Transmog({item = 90443, slot = L['mail']}), -- Burnmender Boots
        Transmog({item = 90448, slot = L['cloth']}), -- Cannonfire Cord
        Transmog({item = 90410, slot = L['leather']}), -- Cap of Wandering Pride
        Transmog({item = 90413, slot = L['mail']}), -- Crest of the Grand Warband
        Transmog({item = 90445, slot = L['plate']}), -- Firerider Treads
        Transmog({item = 90420, slot = L['leather']}), -- Flameshot Wrap
        Transmog({item = 90439, slot = L['cloth']}), -- Open Steppe Sandals
        Transmog({item = 90409, slot = L['cloth']}), -- Sky-Sear Cowl
        Transmog({item = 90452, slot = L['mail']}), -- Sparkmaker Girdle
        Transmog({item = 90447, slot = L['plate']}), -- Stompers of Vigorous Stomping
        Transmog({item = 90444, slot = L['mail']}), -- Treads of Gentle Nudges
        Transmog({item = 90422, slot = L['mail']}), -- Armor of the Single Cloud
        Transmog({item = 90425, slot = L['plate']}), -- Carapace of Crushed Conviction
        Transmog({item = 90456, slot = L['plate']}), -- Cord of Crazed Strength
        Transmog({item = 90416, slot = L['plate']}), -- Crown of Ranging Invasion
        Transmog({item = 90408, slot = L['cloth']}), -- Free Spirit Hood
        Transmog({item = 90415, slot = L['plate']}), -- Giantfoot Headguard
        Transmog({item = 90453, slot = L['mail']}), -- Girdle of the Raging Rider
        Transmog({item = 90455, slot = L['plate']}), -- Greatbelt of Livid Fury
        Transmog({item = 90424, slot = L['plate']}), -- Ravaging Warrior's Chestplate
        Transmog({item = 90446, slot = L['plate']}), -- Silverspur Warboots
        Transmog({item = 90440, slot = L['cloak']}), -- Slippers of Fiery Retribution
        Transmog({item = 90423, slot = L['plate']}), -- Chestguard of the Unbowed Back
        Transmog({item = 90414, slot = L['plate']}), -- Greathelm of the Monstrous Mushan
        Transmog({item = 90417, slot = L['cloth']}) -- Robes of Blue Skies
    }
}) -- Galleon

map.nodes[34605960] = Rare({
    id = 51059,
    rewards = {
        Achievement({id = 7439, criteria = 21098}), -- Glorious!
        Toy({item = 86565, id = 442}), -- Battle Horn
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    },
    pois = {POI({32806280, 37806060, 39605760})}
}) -- Blackhoof

map.nodes[16803520] = Rare({
    id = 50828,
    rewards = {
        Achievement({id = 7439, criteria = 21049}), -- Glorious!
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    },
    pois = {15603100, 15403260, 14003820, 16604100, 19003580}
}) -- Bonobos

map.nodes[18607760] = Rare({
    id = 50351,
    rewards = {
        Achievement({id = 7439, criteria = 21077}), -- Glorious!
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    }
}) -- Jonn-Dar

map.nodes[09805380] = Rare({
    id = 50364,
    rewards = {
        Achievement({id = 7439, criteria = 21063}), -- Glorious!
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    },
    pois = {
        POI({
            08205940, 08205960, 08405620, 08405680, 08405760, 08605600,
            08606080, 08805080, 09005940, 09204740, 09205160, 09205400,
            09205820, 09205980, 09404560, 09404820, 09404880, 09405040,
            09405300, 09405480, 09604760, 09605460, 09605740, 09605760,
            09805240, 09805340, 09805380, 09805620, 10004940, 10004960,
            10404740, 10604740, 10604760, 11005660, 11205500, 11205620,
            11205860, 11404880, 11605580, 11805220, 11805420, 11805460,
            12005080, 12005320, 12204840, 12204900, 12205020, 12804980
        })
    }
}) -- Nal'lak the Ripper

map.nodes[88601800] = Rare({
    id = 50811,
    rewards = {
        Achievement({id = 7439, criteria = 21084}), -- Glorious!
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    }
}) -- Nasra Spothide

map.nodes[70605260] = Rare({
    id = 50783,
    rewards = {
        Achievement({id = 7439, criteria = 21091}), -- Glorious!
        Toy({item = 86583, id = 454}),
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    },
    pois = {
        Path({
            67406000, 68605760, 69005620, 69605460, 70605260, 71605120,
            72605260, 73805260, 74604880, 75204700, 75804680
        })
    }
}) -- Salyin Warscout

map.nodes[60203920] = Rare({
    id = 50766,
    rewards = {
        Achievement({id = 7439, criteria = 21056}), -- Glorious!
        Transmog({item = 87599, slot = L['leather']}), -- Grower's Gloves
        Transmog({item = 87600, slot = L['mail']}), -- Marshsong Gloves
        Transmog({item = 87596, slot = L['mail']}), -- Mudmug's Mitts
        Transmog({item = 87595, slot = L['leather']}), -- Gloves of Burrow Spelunking
        Transmog({item = 87597, slot = L['cloth']}), -- Gloves of Congealed Mist
        Transmog({item = 87602, slot = L['plate']}), -- Grain Warden's Gauntlets
        Transmog({item = 87598, slot = L['cloth']}), -- Monstrous Silk Gloves
        Transmog({item = 87601, slot = L['plate']}), -- Plough Driving Grips
        Transmog({item = 87603, slot = L['plate']}) -- Thunderfall Gauntlets
    },
    pois = {
        POI({
            54603660, 57603380, 58003820, 60203920, 59203720, 54203260,
            54003160, 52802860, 52202860
        })
    }
}) -- Sele'na

map.nodes[37002560] = Rare({
    id = 50339,
    rewards = {
        Achievement({id = 7439, criteria = 21070}) -- Glorious!
    }
}) -- Sulik'shor

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[46802460] = Treasure({
    quest = 31284,
    label = '{item:85973}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Toy({item = 85973, id = 485}) -- Ancient Pandaren Fishing Charm
    }
}) -- Ancient Pandaren Fishing Charm

map.nodes[45403820] = Treasure({
    quest = 31292,
    label = '{item:86079}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Item({item = 86079}) -- Ancient Pandaren Woodcutter
    }
}) -- Ancient Pandaren Woodcutter

map.nodes[19103790] = Treasure({
    quest = 31407,
    label = '{item:86218}',
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}), -- Is Another Man's Treasure
        Transmog({item = 86218, slot = L['staff']}) -- Staff of the Hidden Master
    },
    pois = {POI({15402910, 17503570, 15003370, 19004250})}
}) -- Name

map.nodes[43603750] = Treasure({
    quest = 31406,
    label = L['cache_of_pilfered_goods'],
    rewards = {
        Achievement({id = 7284, criteria = {id = 1, qty = true}}) -- Is Another Man's Treasure
    }
}) -- Cache of Pilfered Goods

map.nodes[23802840] = Treasure({
    quest = 31405,
    label = L['virmen_treasure_cache'],
    note = L['in_cave'],
    icon = 'chest_yw',
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}) -- Riches of Pandaria
    },
    pois = {POI({23213069})}
}) -- Virmen Treasure Cache

map.nodes[75005520] = Treasure({
    quest = 31408,
    label = '{item:86220}',
    icon = 'chest_yw',
    rewards = {
        Achievement({id = 7997, criteria = {id = 1, qty = true}}), -- Riches of Pandaria
        Item({item = 86220})
    },
    pois = {POI({77235743})}
}) -- Saurok Stone Tablet

map.nodes[92003900] = Treasure({
    quest = 31869,
    label = '{item:87524}',
    icon = 'chest_bn',
    rewards = {Item({item = 87524})}
}) -- Boat-Building Instructions

-------------------------------------------------------------------------------
--------------------------------- LOREWALKER ----------------------------------
-------------------------------------------------------------------------------

local Lorewalker = Class('Lorewalker', Collectible,
    {icon = 645218, group = ns.groups.LOREWALKER})

map.nodes[55064713] = Lorewalker({
    rewards = {Achievement({id = 6856, criteria = 19794})}
}) -- Ballad of Liu Lang - A Most Famous Bill of Sale

map.nodes[61193467] = Lorewalker({
    rewards = {Achievement({id = 6846, criteria = 19769})}
}) -- Fish Tails -  Waterspeakers

map.nodes[18833168] = Lorewalker({
    rewards = {Achievement({id = 6858, criteria = 19801})}
}) -- What is Worth Fighting For -  Pandaren Fighting Tactics

map.nodes[83242116] = Lorewalker({
    rewards = {Achievement({id = 6850, criteria = 19783})}
}) -- Hozen in the Mist -  Embracing the Passions

map.nodes[20215589] = Lorewalker({
    rewards = {Achievement({id = 6856, criteria = 19793})}
}) -- Ballad of Liu Lang -  The Birthplace of Liu Lang

map.nodes[34606391] = Lorewalker({
    rewards = {Achievement({id = 6856, criteria = 19795})}
}) -- Ballad of Liu Lang -  The Wandering Widow

-------------------------------------------------------------------------------
---------------------------- To All the Squirrels -----------------------------
-------------------------------------------------------------------------------

map.nodes[68416747] = Squirrel({
    label = '{npc:64782}, {npc:64784}, {npc:64786}',
    rewards = {Achievement({id = 6350, criteria = {2, 11, 12}})}
}) -- Bandicoon, Malayan Quillrat, Marsh Fiddler

map.nodes[70745524] = Squirrel({
    id = 64787,
    rewards = {Achievement({id = 6350, criteria = 16})}
}) -- Sifang Otter
