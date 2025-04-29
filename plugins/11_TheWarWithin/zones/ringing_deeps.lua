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
local LoreObject = ns.node.LoreObject
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

map.nodes[48431991] = Rare({
    id = 220265,
    quest = 81674, -- 84046
    rewards = {
        Achievement({id = 40837, criteria = 69634}),
        Reputation({id = 2594, gain = 150, quest = 84046}),
        Transmog({item = 221218, slot = L['mail']}), -- Reinforced Construct's Greaves
        Transmog({item = 221238, slot = L['staff']}) -- Pillar of Constructs
    }
}) -- Automaxor

map.nodes[45396618] = Rare({
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

map.nodes[62072975] = Rare({ -- flyes around
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

map.nodes[37211692] = Rare({
    id = 220267,
    quest = 81562, -- 84044
    rewards = {
        Achievement({id = 40837, criteria = 69632}),
        Reputation({id = 2594, gain = 150, quest = 84044}),
        Transmog({item = 221209, slot = L['leather']}), -- Flame Trader's Gloves
        Transmog({item = 221249, slot = L['1h_mace']}) -- Kobold Rodent Squasher
    }
}) -- Charmonger

map.nodes[53743813] = Rare({
    id = 220266,
    quest = 81511, -- 84045
    rewards = {
        Achievement({id = 40837, criteria = 69633}),
        Reputation({id = 2594, gain = 150, quest = 84045}),
        Transmog({item = 221226, slot = L['plate']}) -- Voidtouched Waistguard
    }
}) -- Coalesced Monstrosity

map.nodes[46834631] = Rare({
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

map.nodes[62476887] = Rare({
    id = 220272,
    quest = 81566, -- One time kill
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40837, criteria = 69627}),
        Reputation({id = 2594, gain = 150, quest = 81566})
    }
}) -- Deathbound Husk

map.nodes[62885265] = Rare({
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

map.nodes[48840880] = Rare({
    id = 220286,
    quest = 80536, -- 85162
    note = L['deepflayer_broodmother_note'],
    pois = {
        Path({
            48840880, 44880974, 42591191, 40711082, 39990911, 37380943,
            40841210, 41581770, 49142261, 51850925, 48840880
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

map.nodes[61194950] = Rare({
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

map.nodes[42904697] = Rare({
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

map.nodes[38613508] = Rare({
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

map.nodes[56727668] = Rare({
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
            points = {45300881, 49742529, 53462357, 58684464, 54899239},
            color = 'Red'
        })
    }
}) -- Lurker of the Deeps

map.nodes[52855473] = Rare({
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

map.nodes[62054622] = Rare({
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
            61264760, 62054622, 63554621, 64304746, 64484916, 64035135,
            62715175, 62224917, 61264760
        })
    }
}) -- Spore-infused Shalewing

map.nodes[43461217] = Rare({
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

map.nodes[67494630] = Rare({
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
    pois = {Entrance({68684447})} -- Entrance
}) -- Trungal

map.nodes[47872657] = Rare({
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

map.nodes[58926311] = Treasure({ -- lvl 71
    quest = 82230,
    rewards = {
        Achievement({id = 40724, criteria = 69281}),
        Reputation({id = 2594, gain = 150, quest = 82230})
    }
}) -- Cursed Pickaxe

map.nodes[41351745] = Treasure({ -- lvl 71
    quest = 82239,
    rewards = {
        Achievement({id = 40724, criteria = 69283}),
        Reputation({id = 2594, gain = 150, quest = 82239})
    }
}) -- Discarded Toolbox

map.nodes[44094896] = Treasure({ -- lvl 71
    quest = 82820,
    rewards = {
        Achievement({id = 40724, criteria = 69311}),
        Reputation({id = 2594, gain = 150, quest = 82820}),
        Pet({item = 221548, id = 4536}) -- Blightbud
    }
}) -- Dislodged Blockage (Blocked Intake)

map.nodes[44893163] = Treasure({ -- Inside the Inn
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
        Entrance({43513217}), -- Entrance
        POI({label = '{item:223880}', points = {53142200}}), -- Amethyst
        POI({label = '{item:223882}', points = {64045320}}), -- Diamond
        POI({label = '{item:223878}', points = {53244940}}), -- Ruby
        POI({label = '{item:223879}', points = {58346300}}), -- Topaz
        POI({label = '{item:223881}', points = {54943800}}) -- Emerald
    }
}) -- Dusty Prospector's Chest

map.nodes[54856438] = Treasure({
    quest = 82819,
    location = L['in_building'],
    note = L['kaja_cola_machine_note'],
    rewards = {
        Achievement({id = 40724, criteria = 69308}),
        Reputation({id = 2594, gain = 150, quest = 82819}),
        Item({item = 220774, note = L['bag']}) -- Goblin Mini Fridge
    }
}) -- Kaja'Cola Machine

map.nodes[46325349] = Treasure({ -- lvl 71
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
    pois = {Entrance({47905314})} -- Entrance
}) -- Forgotten Treasure

map.nodes[51231385] = Treasure({ -- lvl 71
    quest = 82235,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40724, criteria = 69282}),
        Reputation({id = 2594, gain = 150, quest = 82235})
    },
    pois = {Entrance({50521421})} -- Entrance
}) -- Munderut's Forgotten Stash

map.nodes[54773027] = Treasure({ -- lvl 71
    quest = 82818,
    rewards = {
        Achievement({id = 40724, criteria = 69307}),
        Reputation({id = 2594, gain = 150, quest = 82818}),
        Pet({item = 224439, id = 4470}) -- Oop'lajax
    }
}) -- Scary Dark Chest

map.nodes[62043341] = Treasure({ -- lvl 71
    quest = 83030,
    rewards = {
        Achievement({id = 40724, criteria = 69304}),
        Reputation({id = 2594, gain = 150, quest = 83030})
    }
}) -- Waterlogged Refuse

map.nodes[64703883] = Treasure({ -- lvl 71
    quest = 79308,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40724, criteria = 69280}),
        Reputation({id = 2594, gain = 150, quest = 79308})
    },
    pois = {Entrance({64554072})} -- Entrance
}) -- Webbed Knapsack

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[57423760] = ns.node.PetBattle({
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

map.nodes[62695808] = ns.node.PetBattle({
    id = 222535,
    rewards = {
        Achievement({id = 40153, criteria = 67132, oneline = true}) -- Battle on Khaz Algar
    }
}) -- Haywire Servobot

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[38052415] = PT.Alchemy({quest = 83842, id = 226267}) -- Reinforced Beaker
map.nodes[60806175] = PT.Alchemy({quest = 83843, id = 226268}) -- Engraved Stirring Rod
map.nodes[43543316] = PT.Blacksmithing({quest = 83850, id = 226278}) -- Ringing Hammer Vise
map.nodes[56375368] = PT.Blacksmithing({quest = 83851, id = 226279}) -- Earthen Chisels
map.nodes[40452213] = PT.Enchanting({quest = 83860, id = 226286}) -- Soot-Coated Orb
map.nodes[63026590] = PT.Enchanting({quest = 83861, id = 226287}) -- Animated Enchanting Dust1
map.nodes[38472725] = PT.Engineering({quest = 83868, id = 226294}) -- Inert Mining Bomb
map.nodes[60335875] = PT.Engineering({quest = 83869, id = 226295}) -- Earthen Construct Blueprints
map.nodes[44403432] = PT.Inscription({quest = 83884, id = 226310}) -- Runic Scroll
map.nodes[58305801] = PT.Inscription({quest = 83885, id = 226311}) -- Blue Earthen Pigment
map.nodes[44083504] = PT.Herbalism({quest = 83876, id = 226302}) -- Earthen Digging Fork
map.nodes[48756581] = PT.Herbalism({quest = 83877, id = 226303}) -- Fungarian Slicer's Knife
map.nodes[44333513] = PT.Jewelcrafting({quest = 83892, id = 226318}) -- Carved Stone File
map.nodes[52825453] = PT.Jewelcrafting({quest = 83893, id = 226319}) -- Jeweler's Delicate Drill
map.nodes[42893489] = PT.Leatherworking({quest = 83900, id = 226326}) -- Underground Stropping Compound
map.nodes[60126527] = PT.Leatherworking({quest = 83901, id = 226327}) -- Earthen Awl
map.nodes[45262755] = PT.Mining({quest = 83908, id = 226334}) -- Earthen Excavator's Shovel
map.nodes[62106624] = PT.Mining({quest = 83909, id = 226335}) -- Regenerating Ore
map.nodes[43142833] = PT.Skinning({quest = 83916, id = 226342}) -- Artisan's Drawing Knife
map.nodes[61536190] = PT.Skinning({quest = 83917, id = 226343}) -- Fungarian's Rich Tannin
map.nodes[44663286] = PT.Tailoring({
    quest = 83924,
    id = 226350,
    pois = {Entrance({43543216})} -- Entrance
}) -- Runed Earthen Pins
map.nodes[59996033] = PT.Tailoring({quest = 83925, id = 226351}) -- Earthen Stitcher's Snips

-------------------------------------------------------------------------------
----------------------- THE RINGING DEEPS GLYPH HUNTER ------------------------
-------------------------------------------------------------------------------

map.nodes[59629482] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69252})}
}) -- Abyssal Excavation

map.nodes[65303446] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69249})}
}) -- Chittering Den

map.nodes[44903155] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69246})}
}) -- Gundargaz

map.nodes[58736604] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69253})}
}) -- Taelloch Mine

map.nodes[44906644] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69251})}
}) -- The Living Grotto

map.nodes[53133127] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69248})}
}) -- The Lost Mines

map.nodes[52005608] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69250})}
}) -- The Rumbling Wastes

map.nodes[42781006] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69247})}
}) -- The Stonevault Exterior

map.nodes[42285175] = SkyridingGlyph({
    rewards = {Achievement({id = 40703, criteria = 69254})}
}) -- The Waterworks

-------------------------------------------------------------------------------
---------------------- ACHIEVEMENT: I ONLY NEED ONE TRIP ----------------------
-------------------------------------------------------------------------------

map.nodes[57356421] = Collectible({
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

map.nodes[41144640] = BustedConsole({
    location = L['water_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68658})}
}) -- Water Console

map.nodes[54889339] = BustedConsole({
    location = L['abyssal_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68659})}
}) -- Abyssal Console

map.nodes[59536115] = BustedConsole({
    location = L['taelloch_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68660})}
}) -- Taelloch Console

map.nodes[64904879] = BustedConsole({
    rewards = {Achievement({id = 40473, criteria = 68661})}
}) -- Obsidian Console

map.nodes[52222253] = BustedConsole({
    location = L['lost_console_location'],
    rewards = {Achievement({id = 40473, criteria = 68662})}
}) -- Lost Console

map.nodes[42131411] = BustedConsole({
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

map.nodes[41722881] = MachineSpeakerNote({
    location = L['fragment_I_location'],
    rewards = {Achievement({id = 40628, criteria = 68991})}
}) -- Notes On The Machine Speakers: Fragment I

map.nodes[44772593] = MachineSpeakerNote({
    location = L['fragment_II_location'],
    rewards = {Achievement({id = 40628, criteria = 68992})}
}) -- Notes On The Machine Speakers: Fragment II

map.nodes[46911448] = MachineSpeakerNote({
    location = L['fragment_III_location'],
    rewards = {Achievement({id = 40628, criteria = 68993})}
}) -- Notes On The Machine Speakers: Fragment III

map.nodes[35732099] = MachineSpeakerNote({
    location = L['fragment_IV_location'],
    rewards = {Achievement({id = 40628, criteria = 68994})}
}) -- Notes On The Machine Speakers: Fragment IV

map.nodes[59535878] = MachineSpeakerNote({
    location = L['fragment_V_location'],
    rewards = {Achievement({id = 40628, criteria = 68995})}
}) -- Notes On The Machine Speakers: Fragment V

map.nodes[60947955] = MachineSpeakerNote({
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

map.nodes[44377065] = InertEarthen({
    location = L['alfritha_location'],
    rewards = {Achievement({id = 40504, criteria = 68690})}
}) -- Alfritha

map.nodes[58693635] = InertEarthen({
    location = L['attwogaz_location'], -- on top of the ledge
    rewards = {Achievement({id = 40504, criteria = 68684})}
}) -- Attwogaz

map.nodes[61268379] = InertEarthen({
    location = L['gundrig_location'], -- on top of the ledge
    rewards = {Achievement({id = 40504, criteria = 68691})}
}) -- Gundrig

map.nodes[40191354] = InertEarthen({
    location = L['halthaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68682})}
}) -- Hathlaz

map.nodes[38994087] = InertEarthen({
    location = L['krattdaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68685})}
}) -- Krattdaz

map.nodes[55019369] = InertEarthen({
    location = L['merunth_location'], -- Up on the pipe
    rewards = {Achievement({id = 40504, criteria = 68688})}
}) -- Merunth

map.nodes[59915574] = InertEarthen({
    location = L['sathilga_location'],
    rewards = {Achievement({id = 40504, criteria = 68692})}
}) -- Sathilga

map.nodes[50883023] = InertEarthen({
    location = L['uisgaz_location'],
    rewards = {Achievement({id = 40504, criteria = 68686})}
}) -- Uisgaz

map.nodes[45204902] = InertEarthen({
    location = L['varerko_location'],
    rewards = {Achievement({id = 40504, criteria = 68689})}
}) -- Varerko

map.nodes[44423175] = InertEarthen({
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

map.nodes[40155026] = GobblinWithGlublurp({
    id = 227132,
    rewards = {Achievement({id = 40614, criteria = 68929})},
    note = L['gobblin_with_glublurp_note'],
    pois = {
        POI({
            label = '{item:225930}',
            color = 'Red',
            points = {55804103, 57764254}
        }), -- Glimmering Crystal
        Path({color = 'Orange', Circle({origin = 53743351, radius = 1.25})})
    }
}) -- Glublurp

-------------------------------------------------------------------------------
--------------------- ACHIEVEMENT: KHAZ ALGAR LORE HUNTER ---------------------
-------------------------------------------------------------------------------

map.nodes[35151739] = LoreObject({
    rewards = {
        Achievement({id = 40762, criteria = 69374}),
        Reputation({id = 2594, gain = 250})
    }
}) -- A Skull on a Sign

map.nodes[60785614] = LoreObject({
    rewards = {
        Achievement({id = 40762, criteria = 69378}),
        Reputation({id = 2594, gain = 250})
    }
}) -- Kobold Warning Sign

map.nodes[47317241] = LoreObject({
    rewards = {
        Achievement({id = 40762, criteria = 69376}),
        Reputation({id = 2594, gain = 250})
    }
}) -- Submerged Sign

map.nodes[67204240] = LoreObject({
    rewards = {
        Achievement({id = 40762, criteria = 69375}),
        Reputation({id = 2594, gain = 250})
    }
}) -- Warning: Collapsed Tunnel

map.nodes[46055826] = LoreObject({
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 40762, criteria = 69377}),
        Reputation({id = 2594, gain = 250})
    }
}) -- Wax-Drenched Sign

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

map.nodes[53326764] = CritterLove(68670) -- Spring Mole
map.nodes[47121543] = CritterLove(68673) -- Snake
map.nodes[60373238] = CritterLove(68674) -- Lightdarter
map.nodes[48695473] = CritterLove(68676) -- Tiny Sporbit
map.nodes[59303980] = CritterLove(68677) -- Dustcrawler Beetle
map.nodes[56159221] = CritterLove(68675) -- Mass of Worms
map.nodes[54636861] = CritterLove(68731) -- Grottoscale Hatchling
map.nodes[50512992] = CritterLove(68729) -- Crackcreeper
map.nodes[44341257] = CritterLove(68730) -- Lava Slug
map.nodes[41621352] = CritterLove(68732) -- Earthenwork Stoneskitterer
map.nodes[68693965] = CritterLove(68733) -- Cavern Skiplet
map.nodes[53146574] = CritterLove(68734) -- Moss Sludglet
map.nodes[37851638] = CritterLove(68747) -- Cavern Mote
map.nodes[57803027] = CritterLove(68748) -- Stumblegrub
map.nodes[50253473] = CritterLove(69805) -- Darkgrotto Hopper
map.nodes[62853878] = CritterLove(68749) -- Oozeling
map.nodes[55244592] = CritterLove(68750) -- Pebble Scarab
map.nodes[38261437] = CritterLove(68751) -- Rock Snail

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

map.nodes[43503529] = Vendor({
    id = 216164,
    note = L['gnawbles_ruby_vendor_note'],
    rewards = {
        Pet({item = 224760, id = 4597}), -- Wobbles
        Pet({item = 224646, id = 4598}), -- Coppers the Cobold
        Toy({item = 224643}) -- Pet-Sized Candle
    }
}) -- Gnawbles

map.nodes[42553076] = DisturbedEarth()
map.nodes[43293785] = DisturbedEarth()
map.nodes[45201113] = DisturbedEarth()
map.nodes[47661194] = DisturbedEarth()
map.nodes[48553193] = DisturbedEarth()
map.nodes[48831720] = DisturbedEarth()
map.nodes[49451070] = DisturbedEarth()
map.nodes[50663031] = DisturbedEarth()
map.nodes[51412820] = DisturbedEarth()
map.nodes[51513637] = DisturbedEarth()
map.nodes[51603100] = DisturbedEarth()
map.nodes[51733943] = DisturbedEarth()
map.nodes[51736839] = DisturbedEarth()
map.nodes[52416361] = DisturbedEarth()
map.nodes[52544160] = DisturbedEarth()
map.nodes[52592418] = DisturbedEarth()
map.nodes[52896517] = DisturbedEarth()
map.nodes[52896845] = DisturbedEarth()
map.nodes[52982299] = DisturbedEarth()
map.nodes[53103511] = DisturbedEarth()
map.nodes[53337726] = DisturbedEarth()
map.nodes[53354834] = DisturbedEarth()
map.nodes[53503957] = DisturbedEarth()
map.nodes[53754262] = DisturbedEarth()
map.nodes[53876805] = DisturbedEarth()
map.nodes[54686629] = DisturbedEarth()
map.nodes[55047742] = DisturbedEarth()
map.nodes[55067892] = DisturbedEarth()
map.nodes[55075361] = DisturbedEarth()
map.nodes[55452851] = DisturbedEarth()
map.nodes[55879242] = DisturbedEarth()
map.nodes[56062998] = DisturbedEarth()
map.nodes[57095312] = DisturbedEarth()
map.nodes[58403191] = DisturbedEarth()
map.nodes[58943270] = DisturbedEarth()
map.nodes[59596316] = DisturbedEarth()
map.nodes[59906137] = DisturbedEarth()
map.nodes[60496659] = DisturbedEarth()
map.nodes[61233974] = DisturbedEarth()
map.nodes[62573837] = DisturbedEarth()
map.nodes[63593931] = DisturbedEarth()
map.nodes[63634830] = DisturbedEarth()
map.nodes[71464339] = DisturbedEarth() -- ?

-------------------------------------------------------------------------------
-------------------- ACHIEVEMENT: KHAZ ALGAR FLIGHT MASTER --------------------
-------------------------------------------------------------------------------

map.nodes[42713337] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68190})}
}) -- Gundargaz

map.nodes[54006405] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68184})}
}) -- Camp Murroch

map.nodes[57284793] = FlightMaster({
    rewards = {Achievement({id = 40430, criteria = 68191})}
}) -- Shadowvein Point

map.nodes[60557808] = FlightMaster({
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

map.nodes[59436298] = ReclamationMachinist()
map.nodes[59866395] = ReclamationMachinist()
map.nodes[62736425] = ReclamationMachinist()
map.nodes[60116487] = ReclamationMachinist({
    location = L['for_the_collective_location'],
    pois = {POI({60706448})} -- Wood Plank
})

-------------------------------------------------------------------------------
----------------------------- WORLDSOUL MEMORIES ------------------------------
-------------------------------------------------------------------------------

map.nodes[39401070] = ns.node.WorldsoulMemory({areaPoiID = 7835}) -- Elemental Fury
map.nodes[55187000] = ns.node.WorldsoulMemory({areaPoiID = 7836}) -- Primal Predators
