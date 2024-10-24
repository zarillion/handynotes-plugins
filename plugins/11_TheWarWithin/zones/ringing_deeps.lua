-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local DisturbedEarth = ns.node.DisturbedEarth
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local FlightMaster = ns.node.FlightMaster
-- local LoreObject = ns.node.LoreObject
local SkyridingGlyph = ns.node.SkyridingGlyph

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Circle = ns.poi.Circle
local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2214, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[52591991] = Rare({
    id = 220265,
    quest = 81674, -- 84046
    rewards = {
        Achievement({id = 40837, criteria = 69634}),
        Reputation({id = 2594, gain = 150, quest = 84046}),
        Transmog({item = 221218, slot = L['mail']}), -- Reinforced Construct's Greaves
        Transmog({item = 221238, slot = L['staff']}) -- Pillar of Constructs
    }
}) -- Automaxor

map.nodes[49556618] = Rare({
    id = 220274,
    quest = 80557, -- One time kill
    rewards = {
        Achievement({id = 40837, criteria = 69625}),
        Reputation({id = 2594, gain = 150, quest = 80557}),
        Transmog({item = 223371, slot = L['cloth']}), -- Slippers of Shallow Waters
        Transmog({item = 223373, slot = L['leather']}), -- Treads of Shallow Waters
        Transmog({item = 223372, slot = L['mail']}), -- Sabatons of Shallow Waters
        Transmog({item = 223340, slot = L['plate']}) -- Footguards of Shallow Waters
    }
}) -- Aquellion

map.nodes[66232975] = Rare({ -- flyes around
    id = 220276,
    quest = 80505, -- One time kill
    rewards = {
        Achievement({id = 40837, criteria = 69623}),
        Reputation({id = 2594, gain = 150, quest = 80505}),
        Transmog({item = 223360, slot = L['plate']}), -- Flying Kobold's Seatbelt
        Transmog({item = 223363, slot = L['leather']}), -- Flying Kobold's Seatbelt
        Transmog({item = 223362, slot = L['mail']}), -- Flying Kobold's Seatbelt
        Transmog({item = 223361, slot = L['cloth']}) -- Flying Kobold's Seatbelt
    }
}) -- Candleflyer Captain

map.nodes[41371692] = Rare({
    id = 220267,
    quest = 81562, -- 84044
    rewards = {
        Achievement({id = 40837, criteria = 69632}),
        Reputation({id = 2594, gain = 150, quest = 84044}),
        Transmog({item = 221209, slot = L['leather']}), -- Flame Trader's Gloves
        Transmog({item = 221249, slot = L['1h_mace']}) -- Kobold Rodent Squasher
    }
}) -- Charmonger

map.nodes[57903813] = Rare({
    id = 220266,
    quest = 81511, -- 84045
    rewards = {
        Achievement({id = 40837, criteria = 69633}),
        Reputation({id = 2594, gain = 150, quest = 84045}),
        Transmog({item = 221226, slot = L['plate']}) -- Voidtouched Waistguard
    }
}) -- Coalesced Monstrosity

map.nodes[50994631] = Rare({
    id = 220269,
    quest = 80560, -- 84042
    rewards = {
        Achievement({id = 40837, criteria = 69630}),
        Reputation({id = 2594, gain = 150, quest = 84042}),
        Transmog({item = 221205, slot = L['cloth']}), -- Vest of the River
        Transmog({item = 221507, slot = L['cloak']}), -- Earth Golem's Wrap
        Transmog({item = 221254, slot = L['polearm']}) -- Earthshatter Lance
    }
}) -- Cragmund

map.nodes[66636887] = Rare({
    id = 220272,
    quest = 81566, -- One time kill
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40837, criteria = 69627}),
        Reputation({id = 2594, gain = 150, quest = 81566})
    }
}) -- Deathbound Husk

map.nodes[67045265] = Rare({
    id = 218393,
    quest = 80003, -- 84050
    note = L['disturbed_earthgorger_note'],
    rewards = {
        Achievement({id = 40837, criteria = 69640}),
        Reputation({id = 2594, gain = 150, quest = 84050}),
        Transmog({item = 223926, slot = L['mail']}), -- Earthgorger's Chain Bib
        Transmog({item = 223943, slot = L['leather']}), -- Cord of the Earthbreaker
        Transmog({item = 221237, slot = L['offhand']}) -- Lamentable Vagrant's Lantern
    }
}) -- Disturbed Earthgorger

map.nodes[53000880] = Rare({
    id = 220286,
    quest = 80536, -- 85162
    note = L['deepflayer_broodmother_note'],
    pois = {
        Path({
            53000880, 49040974, 46751191, 44871082, 44150911, 41540943,
            45001210, 45741770, 53302261, 56010925, 53000880
        })
    },
    rewards = {
        Achievement({id = 40837, criteria = 69636}),
        Reputation({id = 2594, gain = 150, quest = 85162}),
        Transmog({item = 221254, slot = L['polearm']}), -- Earthshatter Lance
        Transmog({item = 221507, slot = L['cloak']}), -- Earth Golem's Wrap
        Transmog({item = 225999, slot = L['tabard']}) -- Earthen Adventurer's Tabard
    }
}) -- Deepflayer Broodmother

map.nodes[65354950] = Rare({
    id = 221199,
    quest = 81648, -- 84048
    rewards = {
        Achievement({id = 40837, criteria = 69639}),
        Reputation({id = 2594, gain = 150, quest = 84048}),
        Transmog({item = 223949, slot = L['mail']}), -- Dark Depth Stompers
        Transmog({item = 221248, slot = L['1h_axe']}), -- Deep Terror Carver
        Transmog({item = 221255, slot = L['dagger']}) -- Sharpened Scalepiercer
    }
}) -- Hungerer of the Deeps

map.nodes[47064697] = Rare({
    id = 220287,
    quest = 81485, -- 84047
    rewards = {
        Achievement({id = 40837, criteria = 69635}),
        Reputation({id = 2594, gain = 150, quest = 84047}),
        Transmog({item = 221204, slot = L['plate']}), -- Spore Giant's Stompers
        Transmog({item = 221250, slot = L['1h_sword']}), -- Creeping Lasher Machete
        Transmog({item = 221253, slot = L['fist']}) -- Cultivator's Plant Puncher
    }
}) -- Kelpmire

map.nodes[42773508] = Rare({
    id = 220275,
    quest = 80547, -- One Time Kill (gives 150 rep on first kill)
    rewards = {
        Achievement({id = 40837, criteria = 69624}),
        Reputation({id = 2594, gain = 150, quest = 80547}),
        Transmog({item = 223353, slot = L['cloth']}), -- Waterskipper's Trousers
        Transmog({item = 223355, slot = L['leather']}), -- Waterskipper's Leggings
        Transmog({item = 223354, slot = L['mail']}), -- Waterskipper's Chain Leggings
        Transmog({item = 223352, slot = L['plate']}) -- Waterskipper's Legplates
    }
}) -- King Splash

map.nodes[60887668] = Rare({
    id = 220285,
    quest = 81633, -- 85163
    note = L['lurker_note'],
    rewards = {
        Achievement({id = 40837, criteria = 69637}),
        Mount({item = 223501, id = 2205}), -- Ol' Mole Rufus
        Reputation({id = 2594, gain = 150, quest = 85163}),
        Transmog({item = 221255, slot = L['dagger']}), -- Sharpened Scalepiercer
        Transmog({item = 221248, slot = L['1h_axe']}) -- Deep Terror Carver
    },
    pois = {
        POI({
            label = '{npc:191865}',
            points = {49460881, 53902529, 57622357, 62844464, 59059239},
            color = 'Red'
        })
    }
}) -- Lurker of the Deeps

map.nodes[57015473] = Rare({
    id = 220273,
    quest = 81563, -- One time kill
    rewards = {
        Achievement({id = 40837, criteria = 69626}),
        Reputation({id = 2594, gain = 150, quest = 81563}),
        Transmog({item = 223401, slot = L['cloth']}), -- Corrupted Earthen Wristwraps
        Transmog({item = 223404, slot = L['leather']}), -- Corrupted Earthen Cuffs
        Transmog({item = 223403, slot = L['mail']}), -- Corrupted Earthen Binds
        Transmog({item = 223402, slot = L['plate']}) -- Corrupted Earthen Wristguards
    }
}) -- Rampaging Blight

map.nodes[66214622] = Rare({
    id = 221217,
    quest = 81652, -- 84049
    rewards = {
        Achievement({id = 40837, criteria = 69638}),
        Reputation({id = 2594, gain = 150, quest = 84049}),
        Transmog({item = 223942, slot = L['cloth']}), -- Spore-Encrusted Ribbon
        Transmog({item = 223919, slot = L['1h_mace']}), -- Abducted Lawman's Gavel
        Transmog({item = 223918, slot = L['gun']}) -- Specter Stalker's Shotgun
    },
    pois = {
        Path({
            65424760, 66214622, 67714621, 68464746, 68644916, 68195135,
            66875175, 66384917, 65424760
        })
    }
}) -- Spore-infused Shalewing

map.nodes[47621217] = Rare({
    id = 220271,
    quest = 80507, -- 84040
    rewards = {
        Achievement({id = 40837, criteria = 69628}),
        Reputation({id = 2594, gain = 150, quest = 84040}),
        Transmog({item = 221242, slot = L['plate']}), -- Forgeborn Helm
        Transmog({item = 221248, slot = L['1h_axe']}), -- Deep Terror Carver
        Transmog({item = 221255, slot = L['dagger']}) -- Sharpened Scalepiercer
    }
}) -- Terror of the Forge

map.nodes[71654630] = Rare({
    id = 220268,
    quest = 80574, -- 84043
    note = L['trungal_note'],
    rewards = {
        Achievement({id = 40837, criteria = 69631}),
        Reputation({id = 2594, gain = 150, quest = 84043}),
        Transmog({item = 221228, slot = L['cloth']}), -- Infested Fungal Wristwraps
        Transmog({item = 221253, slot = L['fist']}), -- Cultivator's Plant Puncher
        Transmog({item = 221250, slot = L['1h_sword']}) -- Creeping Lasher Machete
    },
    pois = {Entrance({72844447})} -- Entrance
}) -- Trungal

map.nodes[52032657] = Rare({
    id = 220270,
    quest = 80506, -- 84041
    rewards = {
        Achievement({id = 40837, criteria = 69629}),
        Reputation({id = 2594, gain = 150, quest = 84041}),
        Transmog({item = 221220, slot = L['leather']}), -- Basilisk Scale Pauldrons
        Transmog({item = 221246, slot = L['staff']}), -- Fierce Beast Staff
        Transmog({item = 221247, slot = L['crossbow']}), -- Cavernous Critter Shooter
        Transmog({item = 221251, slot = L['2h_axe']}) -- Bestial Underground Cleaver
    }
}) -- Zilthara

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[63086311] = Treasure({ -- lvl 71
    quest = 82230,
    rewards = {
        Achievement({id = 40724, criteria = 69281}),
        Reputation({id = 2594, gain = 150, quest = 82230})
    }
}) -- Cursed Pickaxe

map.nodes[45511745] = Treasure({ -- lvl 71
    quest = 82239,
    rewards = {
        Achievement({id = 40724, criteria = 69283}),
        Reputation({id = 2594, gain = 150, quest = 82239})
    }
}) -- Discarded Toolbox

map.nodes[48254896] = Treasure({ -- lvl 71
    quest = 82820,
    rewards = {
        Achievement({id = 40724, criteria = 69311}),
        Reputation({id = 2594, gain = 150, quest = 82820}),
        Pet({item = 221548, id = 4536}) -- Blightbud
    }
}) -- Dislodged Blockage (Blocked Intake)

map.nodes[49053163] = Treasure({ -- Inside the Inn
    quest = 82464,
    requires = {
        ns.requirement.Item(223878), ns.requirement.Item(223879),
        ns.requirement.Item(223880), ns.requirement.Item(223881),
        ns.requirement.Item(223882)
    },
    rewards = {
        Achievement({id = 40724, criteria = 69312}),
        Reputation({id = 2594, gain = 150, quest = 82464})
    },
    pois = {
        Entrance({47673217}), -- Entrance
        POI({label = '{item:223880}', points = {57302200}}), -- Amethyst
        POI({label = '{item:223882}', points = {68205320}}), -- Diamond
        POI({label = '{item:223878}', points = {57404940}}), -- Ruby
        POI({label = '{item:223879}', points = {62506300}}), -- Topaz
        POI({label = '{item:223881}', points = {59103800}}) -- Emerald
    }
}) -- Dusty Prospector's Chest

map.nodes[59016438] = Treasure({
    quest = 82819,
    location = L['in_building'],
    note = L['kaja_cola_machine_note'],
    rewards = {
        Achievement({id = 40724, criteria = 69308}),
        Reputation({id = 2594, gain = 150, quest = 82819}),
        Item({item = 220774, note = L['bag']}) -- Goblin Mini Fridge
    }
}) -- Kaja'Cola Machine

map.nodes[50485349] = Treasure({ -- lvl 71
    quest = 80485,
    requires = {
        ns.requirement.Item(217960) -- Forgotten Key
    },
    location = L['in_waterfall_cave'],
    note = L['forgotten_treasure_note'],
    rewards = {
        Achievement({id = 40724, criteria = 69313}),
        Reputation({id = 2594, gain = 150, quest = 80485}), --
        Toy({item = 224783}) -- Sovereign's Finery Chest
    },
    pois = {Entrance({52065314})} -- Entrance
}) -- Forgotten Treasure

map.nodes[55391385] = Treasure({ -- lvl 71
    quest = 82235,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40724, criteria = 69282}),
        Reputation({id = 2594, gain = 150, quest = 82235})
    },
    pois = {Entrance({54681421})} -- Entrance
}) -- Munderut's Forgotten Stash

map.nodes[58933027] = Treasure({ -- lvl 71
    quest = 82818,
    rewards = {
        Achievement({id = 40724, criteria = 69307}),
        Reputation({id = 2594, gain = 150, quest = 82818}),
        Pet({item = 224439, id = 4470}) -- Oop'lajax
    }
}) -- Scary Dark Chest

map.nodes[66203341] = Treasure({ -- lvl 71
    quest = 83030,
    rewards = {
        Achievement({id = 40724, criteria = 69304}),
        Reputation({id = 2594, gain = 150, quest = 83030})
    }
}) -- Waterlogged Refuse

map.nodes[68863883] = Treasure({ -- lvl 71
    quest = 79308,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40724, criteria = 69280}),
        Reputation({id = 2594, gain = 150, quest = 79308})
    },
    pois = {Entrance({68714072})} -- Entrance
}) -- Webbed Knapsack

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[61583760] = ns.node.PetBattle({
    id = 223444,
    rewards = {
        Achievement({id = 40153, criteria = 67136, oneline = true}), -- Battle on Khaz Algar
        ns.reward.Spacer(),
        Achievement({id = 40154, criteria = 67140, oneline = true}), -- Aquatic Battler of Khaz Algar
        Achievement({id = 40155, criteria = 67144, oneline = true}), -- Beast Battler of Khaz Algar
        Achievement({id = 40156, criteria = 67148, oneline = true}), -- Critter Battler of Khaz Algar
        Achievement({id = 40157, criteria = 67152, oneline = true}), -- Dragonkin Battler of Khaz Algar
        Achievement({id = 40158, criteria = 67156, oneline = true}), -- Elemental Battler of Khaz Algar
        Achievement({id = 40161, criteria = 67160, oneline = true}), -- Flying Battler of Khaz Algar -- criteriaID?
        Achievement({id = 40162, criteria = 67160, oneline = true}), -- Humanoid Battler of Khaz Algar -- criteriaID?
        Achievement({id = 40163, criteria = 67167, oneline = true}), -- Magic Battler of Khaz Algar
        Achievement({id = 40164, criteria = 67171, oneline = true}), -- Mechanical Battler of Khaz Algar
        Achievement({id = 40165, criteria = 67175, oneline = true}) -- Undead Battler of Khaz Algar
    }
}) -- Friendhaver Grem

map.nodes[66855808] = ns.node.PetBattle({
    id = 222535,
    rewards = {
        Achievement({id = 40153, criteria = 67132, oneline = true}) -- Battle on Khaz Algar
    }
}) -- Haywire Servobot

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[42212415] = PT.Alchemy({quest = 83842, id = 226267}) -- Reinforced Beaker
map.nodes[64966175] = PT.Alchemy({quest = 83843, id = 226268}) -- Engraved Stirring Rod
map.nodes[47703316] = PT.Blacksmithing({quest = 83850, id = 226278}) -- Ringing Hammer Vise
map.nodes[60535368] = PT.Blacksmithing({quest = 83851, id = 226279}) -- Earthen Chisels
map.nodes[44612213] = PT.Enchanting({quest = 83860, id = 226286}) -- Soot-Coated Orb
map.nodes[67186590] = PT.Enchanting({quest = 83861, id = 226287}) -- Animated Enchanting Dust1
map.nodes[42632725] = PT.Engineering({quest = 83868, id = 226294}) -- Inert Mining Bomb
map.nodes[64495875] = PT.Engineering({quest = 83869, id = 226295}) -- Earthen Construct Blueprints
map.nodes[48563432] = PT.Inscription({quest = 83884, id = 226310}) -- Runic Scroll
map.nodes[62465801] = PT.Inscription({quest = 83885, id = 226311}) -- Blue Earthen Pigment
map.nodes[48243504] = PT.Herbalism({quest = 83876, id = 226302}) -- Earthen Digging Fork
map.nodes[52916581] = PT.Herbalism({quest = 83877, id = 226303}) -- Fungarian Slicer's Knife
map.nodes[48493513] = PT.Jewelcrafting({quest = 83892, id = 226318}) -- Carved Stone File
map.nodes[56985453] = PT.Jewelcrafting({quest = 83893, id = 226319}) -- Jeweler's Delicate Drill
map.nodes[47053489] = PT.Leatherworking({quest = 83900, id = 226326}) -- Underground Stropping Compound
map.nodes[64286527] = PT.Leatherworking({quest = 83901, id = 226327}) -- Earthen Awl
map.nodes[49422755] = PT.Mining({quest = 83908, id = 226334}) -- Earthen Excavator's Shovel
map.nodes[66266624] = PT.Mining({quest = 83909, id = 226335}) -- Regenerating Ore
map.nodes[47302833] = PT.Skinning({quest = 83916, id = 226342}) -- Artisan's Drawing Knife
map.nodes[65696190] = PT.Skinning({quest = 83917, id = 226343}) -- Fungarian's Rich Tannin
map.nodes[48823286] = PT.Tailoring({
    quest = 83924,
    id = 226350,
    pois = {Entrance({47703216})} -- Entrance
}) -- Runed Earthen Pins
map.nodes[64156033] = PT.Tailoring({quest = 83925, id = 226351}) -- Earthen Stitcher's Snips

-------------------------------------------------------------------------------
----------------------- THE RINGING DEEPS GLYPH HUNTER ------------------------
-------------------------------------------------------------------------------

map.nodes[63789482] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69252})}
}) -- Abyssal Excavation

map.nodes[69463446] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69249})}
}) -- Chittering Den

map.nodes[49063155] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69246})}
}) -- Gundargaz

map.nodes[62896604] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69253})}
}) -- Taelloch Mine

map.nodes[49066644] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69251})}
}) -- The Living Grotto

map.nodes[57293127] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69248})}
}) -- The Lost Mines

map.nodes[56165608] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69250})}
}) -- The Rumbling Wastes

map.nodes[46941006] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69247})}
}) -- The Stonevault Exterior

map.nodes[46445175] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69254})}
}) -- The Waterworks

-------------------------------------------------------------------------------
---------------------- ACHIEVEMENT: I ONLY NEED ONE TRIP ----------------------
-------------------------------------------------------------------------------

map.nodes[61516421] = Collectible({
    icon = 236316,
    label = '{achievement:40623}',
    note = L['i_only_need_one_trip_note'],
    group = ns.groups.I_ONLY_NEED_ONE_TRIP,
    rewards = {Achievement({id = 40623})}
})

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: NOT SO QUICK FIX ------------------------
-------------------------------------------------------------------------------

local BustedConsole = Class('BustedConsole', Collectible, {
    icon = 134067,
    group = ns.groups.NOT_SO_QUICK_FIX,
    note = L['not_so_quick_fix_note']
})

map.nodes[45304640] = BustedConsole({
    location = L['water_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68658})}
}) -- Water Console

map.nodes[59049339] = BustedConsole({
    location = L['abyssal_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68659})}
}) -- Abyssal Console

map.nodes[63696115] = BustedConsole({
    location = L['taelloch_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68660})}
}) -- Taelloch Console

map.nodes[69064879] = BustedConsole({
    rewards = {Achievement({id = 40473, criteria = 68661})}
}) -- Obsidian Console

map.nodes[56382253] = BustedConsole({
    location = L['lost_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68662})}
}) -- Lost Console

map.nodes[46291411] = BustedConsole({
    rewards = {Achievement({id = 40473, criteria = 68663})}
}) -- Earthen Console

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: NOTABLE MACHINES ------------------------
-------------------------------------------------------------------------------

local MachineSpeakerNote = Class('MachineSpeakerNote', Collectible, {
    icon = 1506451,
    group = ns.groups.NOTABLE_MACHINES,
    note = L['notable_machines_note']
})

map.nodes[45882881] = MachineSpeakerNote({
    location = L['fragment_I_location'],
    rewards = {Achievement({id = 40628, criteria = 68991})}
}) -- Notes On The Machine Speakers: Fragment I

map.nodes[48932593] = MachineSpeakerNote({
    location = L['fragment_II_location'],
    rewards = {Achievement({id = 40628, criteria = 68992})}
}) -- Notes On The Machine Speakers: Fragment II

map.nodes[51071448] = MachineSpeakerNote({
    location = L['fragment_III_location'],
    rewards = {Achievement({id = 40628, criteria = 68993})}
}) -- Notes On The Machine Speakers: Fragment III

map.nodes[39892099] = MachineSpeakerNote({
    location = L['fragment_IV_location'],
    rewards = {Achievement({id = 40628, criteria = 68994})}
}) -- Notes On The Machine Speakers: Fragment IV

map.nodes[63695878] = MachineSpeakerNote({
    location = L['fragment_V_location'],
    rewards = {Achievement({id = 40628, criteria = 68995})}
}) -- Notes On The Machine Speakers: Fragment V

map.nodes[65107955] = MachineSpeakerNote({
    location = L['fragment_VI_location'],
    rewards = {Achievement({id = 40628, criteria = 68996})}
}) -- Notes On The Machine Speakers: Fragment VI

-------------------------------------------------------------------------------
------------------------ ACHIEVEMENT: ROCKED TO SLEEP -------------------------
-------------------------------------------------------------------------------

local InertEarthen = Class('InertEarthen', Collectible, {
    icon = 5788303,
    group = ns.groups.ROCKED_TO_SLEEP,
    note = L['rocked_to_sleep_note']
})

map.nodes[48537065] = InertEarthen({
    location = L['alfritha_location'],
    rewards = {Achievement({id = 40504, criteria = 68690})}
}) -- Alfritha

map.nodes[62853635] = InertEarthen({
    location = L['attwogaz_location'], -- on top of the ledge
    rewards = {Achievement({id = 40504, criteria = 68684})}
}) -- Attwogaz

map.nodes[65428379] = InertEarthen({
    location = L['gundrig_location'], -- on top of the ledge
    rewards = {Achievement({id = 40504, criteria = 68691})}
}) -- Gundrig

map.nodes[44351354] = InertEarthen({
    location = L['halthaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68682})}
}) -- Hathlaz

map.nodes[43154087] = InertEarthen({
    location = L['krattdaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68685})}
}) -- Krattdaz

map.nodes[59179369] = InertEarthen({
    location = L['merunth_location'], -- Up on the pipe
    rewards = {Achievement({id = 40504, criteria = 68688})}
}) -- Merunth

map.nodes[64075574] = InertEarthen({
    location = L['sathilga_location'],
    rewards = {Achievement({id = 40504, criteria = 68692})}
}) -- Sathilga

map.nodes[55043023] = InertEarthen({
    location = L['uisgaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68686})}
}) -- Uisgaz

map.nodes[49364902] = InertEarthen({
    location = L['varerko_location'],
    rewards = {Achievement({id = 40504, criteria = 68689})}
}) -- Varerko

map.nodes[48583175] = InertEarthen({
    location = L['venedaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68687})}
}) -- Venedaz

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: GOBBLIN' WITH GLUBLURP ---------------------
-------------------------------------------------------------------------------

local GobblinWithGlublurp = Class('gobblin_with_glublurp', Collectible, {
    icon = 5763494,
    group = ns.groups.GOBBLIN_WITH_GLUBLURP

})

map.nodes[44315026] = GobblinWithGlublurp({
    id = 227132,
    rewards = {Achievement({id = 40614, criteria = 68929})},
    note = L['gobblin_with_glublurp_note'],
    pois = {
        POI({
            label = '{item:225930}',
            color = 'Red',
            points = {59964103, 61924254}
        }), -- Glimmering Crystal
        Path({color = 'Orange', Circle({origin = 57903351, radius = 1.25})})
    }
}) -- Glublurp

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

-- map.nodes[39311739] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69374}),
--         Reputation({id = 2594, gain = 250})
--     }
-- }) -- A Skull on a Sign

-- map.nodes[64945614] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69378}),
--         Reputation({id = 2594, gain = 250})
--     }
-- }) -- Kobold Warning Sign

-- map.nodes[51477241] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69376}),
--         Reputation({id = 2594, gain = 250})
--     }
-- }) -- Submerged Sign

-- map.nodes[71364240] = LoreObject({
--     rewards = {
--         Achievement({id = 40762, criteria = 69375}),
--         Reputation({id = 2594, gain = 250})
--     }
-- }) -- Warning: Collapsed Tunnel

-- map.nodes[50215826] = LoreObject({
--     note = L['in_small_cave'],
--     rewards = {
--         Achievement({id = 40762, criteria = 69377}),
--         Reputation({id = 2594, gain = 250})
--     }
-- }) -- Wax-Drenched Sign

-------------------------------------------------------------------------------
-------------------- ACHIEVEMENT: TO ALL THE SLIMES I LOVE --------------------
-------------------------------------------------------------------------------

local CritterLove = Class('CritterLove', Collectible, {
    group = ns.groups.CRITTER_LOVE,
    icon = 3459801,
    note = L['critter_love_note']
})

function CritterLove:Initialize(id)
    Collectible.Initialize(self)
    self.criteria = id
end

function CritterLove.getters:rewards()
    return {Achievement({id = 40475, criteria = self.criteria})}
end

map.nodes[57486764] = CritterLove(68670) -- Spring Mole
map.nodes[51281543] = CritterLove(68673) -- Snake
map.nodes[64533238] = CritterLove(68674) -- Lightdarter
map.nodes[52855473] = CritterLove(68676) -- Tiny Sporbit
map.nodes[63463980] = CritterLove(68677) -- Dustcrawler Beetle
map.nodes[60319221] = CritterLove(68675) -- Mass of Worms
map.nodes[58796861] = CritterLove(68731) -- Grottoscale Hatchling
map.nodes[54672992] = CritterLove(68729) -- Crackcreeper
map.nodes[48501257] = CritterLove(68730) -- Lava Slug
map.nodes[45781352] = CritterLove(68732) -- Earthenwork Stoneskitterer
map.nodes[72853965] = CritterLove(68733) -- Cavern Skiplet
map.nodes[57306574] = CritterLove(68734) -- Moss Sludglet
map.nodes[42011638] = CritterLove(68747) -- Cavern Mote
map.nodes[61963027] = CritterLove(68748) -- Stumblegrub
map.nodes[54413473] = CritterLove(69805) -- Darkgrotto Hopper
map.nodes[67013878] = CritterLove(68749) -- Oozeling
map.nodes[59404592] = CritterLove(68750) -- Pebble Scarab
map.nodes[42421437] = CritterLove(68751) -- Rock Snail

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

map.nodes[47663529] = Vendor({
    id = 216164,
    note = L['gnawbles_ruby_vendor_note'],
    rewards = {
        Pet({item = 224760, id = 4597}), -- Wobbles
        Pet({item = 224646, id = 4598}), -- Coppers the Cobold
        Toy({item = 224643}) -- Pet-Sized Candle
    }
}) -- Gnawbles

map.nodes[46713076] = DisturbedEarth()
map.nodes[47453785] = DisturbedEarth()
map.nodes[49361113] = DisturbedEarth()
map.nodes[51821194] = DisturbedEarth()
map.nodes[52713193] = DisturbedEarth()
map.nodes[52991720] = DisturbedEarth()
map.nodes[53611070] = DisturbedEarth()
map.nodes[54823031] = DisturbedEarth()
map.nodes[55572820] = DisturbedEarth()
map.nodes[55673637] = DisturbedEarth()
map.nodes[55763100] = DisturbedEarth()
map.nodes[55893943] = DisturbedEarth()
map.nodes[55896839] = DisturbedEarth()
map.nodes[56576361] = DisturbedEarth()
map.nodes[56704160] = DisturbedEarth()
map.nodes[56752418] = DisturbedEarth()
map.nodes[57056517] = DisturbedEarth()
map.nodes[57056845] = DisturbedEarth()
map.nodes[57142299] = DisturbedEarth()
map.nodes[57263511] = DisturbedEarth()
map.nodes[57497726] = DisturbedEarth()
map.nodes[57514834] = DisturbedEarth()
map.nodes[57663957] = DisturbedEarth()
map.nodes[57914262] = DisturbedEarth()
map.nodes[58036805] = DisturbedEarth()
map.nodes[58846629] = DisturbedEarth()
map.nodes[59207742] = DisturbedEarth()
map.nodes[59227892] = DisturbedEarth()
map.nodes[59235361] = DisturbedEarth()
map.nodes[59612851] = DisturbedEarth()
map.nodes[60039242] = DisturbedEarth()
map.nodes[60222998] = DisturbedEarth()
map.nodes[61255312] = DisturbedEarth()
map.nodes[62563191] = DisturbedEarth()
map.nodes[63103270] = DisturbedEarth()
map.nodes[63756316] = DisturbedEarth()
map.nodes[64066137] = DisturbedEarth()
map.nodes[64656659] = DisturbedEarth()
map.nodes[65393974] = DisturbedEarth()
map.nodes[66733837] = DisturbedEarth()
map.nodes[67753931] = DisturbedEarth()
map.nodes[67794830] = DisturbedEarth()
map.nodes[75624339] = DisturbedEarth() -- ?

-------------------------------------------------------------------------------
-------------------- ACHIEVEMENT: KHAZ ALGAR FLIGHT MASTER --------------------
-------------------------------------------------------------------------------

map.nodes[46873337] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68190})}
}) -- Gundargaz

map.nodes[58166405] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68184})}
}) -- Camp Murroch

map.nodes[61444793] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68191})}
}) -- Shadowvein Point

map.nodes[64717808] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68183})}
}) -- Opportunity Point

-------------------------------------------------------------------------------
----------------------- ACHIEVEMENT: FOR THE COLLECTIVE -----------------------
-------------------------------------------------------------------------------

local ReclamationMachinist = Class('ReclamationMachinist', Collectible, {
    label = '{npc:228056}',
    icon = 'peg_yw',
    scale = 1.5,
    group = ns.groups.FOR_THE_COLLECTIVE,
    note = L['for_the_collective_note'],
    rewards = {
        Achievement({
            id = 40630,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['for_the_collective_suffix']
            }
        })
    }
}) -- Reclamation Machinist

map.nodes[63596298] = ReclamationMachinist()
map.nodes[64026395] = ReclamationMachinist()
map.nodes[66896425] = ReclamationMachinist()
map.nodes[64276487] = ReclamationMachinist({
    location = L['for_the_collective_location'],
    pois = {POI({64866448})} -- Wood Plank
})
