-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
local Class = ns.Class
local Collectible = ns.node.Collectible
local Treasure = ns.node.Treasure
local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Entrance = ns.poi.Entrance

-------------------------------------------------------------------------------

local map = Map({id = 2600, settings = true})
local vcr = Map({id = 2646, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

vcr.nodes[73608340] = Rare({
    id = 264569,
    quest = 96316,
    location = L['in_building'],
    parent = map.id,
    rewards = {
        Achievement({id = 62883, criteria = 114009}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115253}), -- Heroic Slugger
        Transmog({item = 275167, type = L['plate']}), -- Intact Construct Plates
        Transmog({item = 275159, type = L['mail']}), -- Construct Manipulator Bracers
        Transmog({item = 275151, type = L['leather']}), -- Bands of Draenic Mourning
        Transmog({item = 275143, type = L['cloth']}), -- Draeni Ceremonial Cuffs
        Transmog({item = 274873, type = L['staff']}) -- Funeral Attendant's Spire
    },
    pois = {Entrance({28005060})}
}) -- Auredar's Chassis <The Vacant Vigilant>

map.nodes[45105540] = Rare({
    id = 263950,
    quest = 96206,
    rewards = {
        Achievement({id = 62883, criteria = 114006}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115250}), -- Heroic Slugger
        Transmog({item = 275162, type = L['plate']}), -- Spore-Shined Gloves
        Transmog({item = 275154, type = L['mail']}), -- Swamp Trekker's Grips
        Transmog({item = 275146, type = L['leather']}), -- Spore-Membrane Gloves
        Transmog({item = 275138, type = L['cloth']}) -- Spore-Handler's Handwraps
    }
}) -- Broxion <Contagious Anomaly>

map.nodes[54604230] = RareElite({
    id = 264571,
    quest = 96317,
    rewards = {
        Achievement({id = 62883, criteria = 114011}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115255}), -- Heroic Slugger
        Transmog({item = 275164, type = L['plate']}), -- Indomitable Mechanized Legplates
        Transmog({item = 275156, type = L['mail']}), -- Gear-Linked Leggings
        Transmog({item = 275148, type = L['leather']}), -- Reaver's Padded Trousers
        Transmog({item = 275140, type = L['cloth']}), -- Leggings of Tainted Stuffing
        Transmog({item = 276298, type = L['dagger']}) -- Forgotten Fel Shard Talon
    }
}) -- Indomitable Mk XII <Blazing Reaver>

map.nodes[37606180] = Rare({
    id = 263947,
    quest = 96205,
    rewards = {
        Achievement({id = 62883, criteria = 114005}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115248}), -- Heroic Slugger
        Transmog({item = 275163, type = L['plate']}), -- Uarn's Reinforced Headplate
        Transmog({item = 275155, type = L['mail']}), -- Interminable Fungal Helmet
        Transmog({item = 275147, type = L['leather']}), -- Bioluminescent Swamp Mask
        Transmog({item = 275139, type = L['cloth']}), -- Crown of Fungal Spores
        Transmog({item = 274876, type = L['shield']}), -- Reinforced Fungalhide Bulwark
        Transmog({item = 274862, type = L['dagger']}) -- Corrupted Draenei Priest's Kris
    }
}) -- Interminable Uarn <The Undying Stalk>

map.nodes[68506220] = Rare({
    id = 263955,
    quest = 96208,
    rewards = {
        Achievement({id = 62883, criteria = 114008}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115252}), -- Heroic Slugger
        Transmog({item = 274819, type = L['cloak']}), -- Fungal Fold Frock
        Transmog({item = 274860, type = L['1h_axe']}) -- Ancient Spore-Coated Axe
    }
}) -- Lomelith

map.nodes[77703830] = Rare({
    id = 263954,
    quest = 96207,
    rewards = {
        Achievement({id = 62883, criteria = 114007}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115251}), -- Heroic Slugger
        Transmog({item = 275161, type = L['plate']}), -- Swamp-Resistant Stompers
        Transmog({item = 275153, type = L['mail']}), -- Flickering Scale Sabatons
        Transmog({item = 275145, type = L['leather']}), -- Swalewing Skin Footpads
        Transmog({item = 275137, type = L['cloth']}), -- Flickering Soft-Steppers
        Transmog({item = 274874, type = L['2h_sword']}) -- Flickering Wing Separator
    }
}) -- Swalewing Matriarch

map.nodes[55206200] = Rare({
    id = 264576,
    quest = 96320,
    rewards = {
        Achievement({id = 62883, criteria = 114012}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115256}), -- Heroic Slugger
        Transmog({item = 275160, type = L['plate']}), -- Slaipaan's Carapace
        Transmog({item = 275152, type = L['mail']}), -- Burrower's Linked Hauberk
        Transmog({item = 275144, type = L['leather']}), -- Leafy-Hide Coat
        Transmog({item = 275136, type = L['cloth']}), -- Leaf-Woven Blouse
        Transmog({item = 274871, type = L['dagger']}) -- Giant Worm Piercer
    }
}) -- Slaipaan

map.nodes[29701920] = Rare({
    id = 267422,
    quest = 97014,
    rewards = {
        Achievement({id = 63348, criteria = 115343}), -- Heroic Slugger
        Transmog({item = 275165, type = L['plate']}), -- Petrified Mushroom Shoulderplates
        Transmog({item = 275157, type = L['mail']}), -- Swampwalker's Spaulders
        Transmog({item = 275149, type = L['leather']}), -- Fungal Draped Epaulets
        Transmog({item = 275141, type = L['cloth']}), -- Spore-Speckled Shoulderpads
        Transmog({item = 274864, type = L['1h_mace']}), -- Sporebloom Gavel
        Transmog({item = 276298, type = L['dagger']}) -- Forgotten Fel Shard Talon
    }
}) -- Warbringer Thal'kuur

map.nodes[70307640] = Rare({
    id = 264574,
    quest = 96319,
    rewards = {
        Achievement({id = 62883, criteria = 114010}), -- Showdown Slugger: Naigtal
        Achievement({id = 63348, criteria = 115254}), -- Heroic Slugger
        Transmog({item = 274821, type = L['cloak']}), -- Drape of the Hal'hadar Assassin
        Transmog({item = 274870, type = L['bow']}) -- Assassin's Void String Bow

    }
}) -- Warp Agent Xi'grivr

map.nodes[48804740] = Rare({
    id = 265698,
    quest = 96566,
    rewards = {
        Transmog({item = 275166, type = L['plate']}), -- Voidwarped Greatbelt
        Transmog({item = 275158, type = L['mail']}), -- Voidwarped Scale Girdle
        Transmog({item = 275150, type = L['leather']}), -- Sporebat Leather Belt
        Transmog({item = 275142, type = L['cloth']}), -- Voidwarped Sash
        Transmog({item = 274866, type = L['1h_sword']}) -- Voidwarped Edge
    }
}) -- Voidwarped Sporebat

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------

vcr.nodes[52905730] = Collectible({
    label = L['ancient_crypt_reliquary'],
    note = L['multiple_spawns'],
    location = L['in_building'],
    icon = 'chest_gy',
    scale = 1.2,
    parent = map.id,
    group = ns.groups.TREASURE,
    rewards = {
        Transmog({item = 276292, type = L['offhand']}), -- Ancient Anchorite's Beacon
        Transmog({item = 276303, type = L['1h_sword']}), -- Blessed Blade of Taalvilor
        Transmog({item = 276285, type = L['1h_sword']}), -- Elonath's Defender's Sword
        Transmog({item = 276302, type = L['1h_mace']}) -- Taalvilor Crystalsmith's Mace
    },
    pois = {Entrance({28005060})}
}) -- Ancient Crypt Reliquary

map.nodes[29802910] = Collectible({
    label = L['spiked_shell'],
    icon = 6361206,
    group = ns.groups.TREASURE,
    rewards = {
        Transmog({item = 235986, slot = L['cloak']}) -- Pointy Half-Shell
    }
}) -- Spiked Shell

local SquirmingMollusk = Class('SquirmingMollusk', Collectible, {
    label = L['squirming_mollusk'],
    note = L['multiple_spawns'],
    icon = 135602,
    group = ns.groups.TREASURE,
    rewards = {
        Transmog({item = 276296, type = L['fist']}) -- Soltian Wrangler's Grip
    }
}) -- Squirming Mollusk

map.nodes[24705500] = SquirmingMollusk()
map.nodes[26304710] = SquirmingMollusk()
map.nodes[37302370] = SquirmingMollusk()
map.nodes[61507180] = SquirmingMollusk()
map.nodes[72603130] = SquirmingMollusk()
map.nodes[76205070] = SquirmingMollusk()
map.nodes[78406880] = SquirmingMollusk()

-------------------------------------------------------------------------------
----------------------------- PET: SLEEPY MANDRAKE ------------------------------
-------------------------------------------------------------------------------

map.nodes[68255161] = Treasure({
    label = '{npc:267910}',
    icon = 7467154,
    location = L['in_cave'],
    quest = {97091, 97092, 97093, 97094, 97095},
    note = L['sleepy_mandrake_note'],
    requires = {
        ns.requirement.Item(276365), -- Highland Redcap
        ns.requirement.Item(276366), -- Dusty Redcap
        ns.requirement.Item(276367), -- Marshy Redcap
        ns.requirement.Item(276368), -- Partially-Digested Redcap
        ns.requirement.Item(276369) -- Airy Redcap
    },
    rewards = {
        Pet({item = 262768, id = 4965}) -- Sleepy Mandrake
    },
    pois = {
        POI({
            points = {28906176},
            icon = 134528,
            label = '{item:276365}',
            quest = 97091
        }), -- Highland Redcap
        POI({
            points = {27914996},
            icon = 134528,
            label = '{item:276366}',
            quest = 97092,
            location = L['in_building']
        }), -- Dusty Redcap
        POI({
            points = {71423705},
            icon = 134528,
            label = '{item:276367}',
            quest = 97093,
            location = L['in_cave']
        }), -- Marshy Redcap
        POI({
            points = {78504000},
            icon = 134528,
            label = '{item:276368}',
            quest = 97094
        }), -- Partially-Digested Redcap
        POI({
            points = {95092667},
            icon = 134528,
            label = '{item:276369}',
            quest = 97095
        }) -- Airy Redcap
    }
}) -- Sleepy Mandrake

