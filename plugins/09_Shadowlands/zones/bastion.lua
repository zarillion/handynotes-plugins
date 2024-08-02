-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Safari = ns.node.Safari
local Soulshape = ns.node.Soulshape
local Squirrel = ns.node.Squirrel
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local KYRIAN = ns.covenants.KYR
local NECROLORD = ns.covenants.NEC
local NIGHTFAE = ns.covenants.FAE

local map = Map({id = 1533, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[32592336] = Rare({
    id = 171211,
    quest = 61083,
    requires = ns.requirement.Item(180613),
    note = L['aspirant_eolis_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50613}),
        Transmog({item = 183607, slot = L['polearm']}) -- Uncertain Aspirant's Spear
    },
    pois = {
        POI({
            31412295, 31412386, 32052123, 32122305, 32332113, 32562449,
            32762035, 33062071, 33172321
        }) -- Fragile Humility Scroll
    }
}) -- Aspirant Eolis

map.nodes[51344080] = Rare({
    id = 160629,
    quest = {58648, 62192},
    note = L['baedos_note'],
    rewards = {Achievement({id = 14307, criteria = 50592})}
}) -- Baedos

map.nodes[48985031] = Rare({
    id = 170659,
    quest = {60897, 62158},
    note = L['basilofos_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50602})
        -- Toy({item=182655}) -- Hill King's Roarbox (gone?)
    }
}) -- Basilofos, King of the Hill

map.nodes[55358024] = Rare({
    id = 161527,
    label = L['beasts_of_bastion'],
    note = L['beasts_of_bastion_note'],
    quest = {60570, 60571, 60569, 58526},
    questCount = true,
    rewards = {
        Achievement({
            id = 14307,
            criteria = {
                {id = 50597, quest = 60570}, -- Sigilback
                {id = 50598, quest = 60571}, -- Cloudtail
                {id = 50599, quest = 60569}, -- Nemaeus
                {id = 50617, quest = 58526} -- Aethon
            }
        }), -- Toy({item=174445}), -- Glimmerfly Cocoon
        Transmog({item = 179485, slot = L['dagger']}), -- Fang of Nemaeus
        Transmog({item = 179486, slot = L['1h_mace']}), -- Sigilback's Smashshell
        Transmog({item = 179487, slot = L['warglaive']}), -- Aethon's Horn
        Transmog({item = 179488, slot = L['fist']}) -- Cloudtail's Paw
    }
}) -- Beasts of Bastion

map.nodes[55826249] = Rare({
    id = 171189,
    quest = 59022,
    note = L['bookkeeper_mnemis_note'],
    rewards = {Achievement({id = 14307, criteria = 50612})}
}) -- Bookkeeper Mnemis

map.nodes[50435804] = Rare({
    id = 170932,
    quest = {60978, 62191},
    note = L['cloudfeather_patriarch_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50604}),
        Pet({item = 180812, id = 2925}) -- Golden Cloudfeather
    }
}) -- Cloudfeather Guardian

map.nodes[66004367] = Rare({
    id = 171014,
    quest = 61002,
    note = L['collector_astor_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50610}),
        -- https://www.wowhead.com/npc=171014/collector-astorestes
        Transmog({item = 183604, slot = L['crossbow']}), -- Piercing Timbre Crossbow
        Transmog({item = 183605, slot = L['warglaive']}), -- Devourer Wrought Warglaive
        Transmog({item = 183606, slot = L['shield']}), -- Bulwark of Echoing Courage
        Transmog({item = 183607, slot = L['polearm']}), -- Uncertain Aspirant's Spear
        Transmog({item = 183608, slot = L['offhand']}), -- Evernote Vesper
        Transmog({item = 183609, slot = L['fist']}), -- Re-Powered Golliath Fists
        Transmog({item = 183610, slot = L['dagger']}), -- Warrior Poet's Poniard
        Transmog({item = 183611, slot = L['2h_sword']}), -- Humble Ophelia's Greatblade
        Transmog({item = 183612, slot = L['1h_mace']}), -- Loyal Champion's Hammer
        Transmog({item = 183613, slot = L['dagger']}), -- Glinting Daybreak Dagger
        Transmog({item = 183614, slot = L['1h_mace']}) -- Gavel of Harmonious Wisdom
    },
    pois = {
        POI({
            -- 66194411, Mercia's Legacy: Chapter One
            -- 65904411, Mercia's Legacy: Chapter Two
            -- 65734396, Mercia's Legacy: Chapter Three
            -- 65734345, Mercia's Legacy: Chapter Four
            -- 65934316, Mercia's Legacy: Chapter Five
            -- 66204327, Mercia's Legacy: Chapter Six
            64174218, -- Mercia's Legacy: Chapter Seven
            65074138, -- Mercia's Legacy: Chapter Seven
            65184396, -- Mercia's Legacy: Chapter Seven
            65514293, -- Mercia's Legacy: Chapter Seven
            65844451, -- Mercia's Legacy: Chapter Seven
            66214333, -- Mercia's Legacy: Chapter Seven
            67394283, -- Mercia's Legacy: Chapter Seven
            67604342, -- Mercia's Legacy: Chapter Seven
            65304440 -- Mercia's Legacy: Chapter Seven
        })
    }
}) -- Collector Astorestes

map.nodes[56904778] = Rare({
    id = 171010,
    quest = 60999,
    requires = ns.requirement.Item(180651),
    note = L['corrupted_clawguard_note'],
    rewards = {Achievement({id = 14307, criteria = 50615})},
    pois = {
        POI({55004125}) -- Forgefire Outpost
    }
}) -- Corrupted Clawguard

map.nodes[27823014] = Rare({
    id = 170623,
    quest = 60883,
    note = L['dark_watcher_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50603}),
        Transmog({item = 184297, slot = L['2h_sword']}) -- Death Warden's Greatblade
    }
}) -- Dark Watcher

map.nodes[37004180] = Rare({
    id = 171011,
    quest = {61069, 61000},
    note = L['demi_hoarder_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50611}),
        -- https://www.wowhead.com/object=354649/relic-hoard
        Transmog({item = 183604, slot = L['crossbow']}), -- Piercing Timbre Crossbow
        Transmog({item = 183605, slot = L['warglaive']}), -- Devourer Wrought Warglaive
        Transmog({item = 183606, slot = L['shield']}), -- Bulwark of Echoing Courage
        Transmog({item = 183607, slot = L['polearm']}), -- Uncertain Aspirant's Spear
        Transmog({item = 183608, slot = L['offhand']}), -- Evernote Vesper
        Transmog({item = 183609, slot = L['fist']}), -- Re-Powered Golliath Fists
        Transmog({item = 183610, slot = L['dagger']}), -- Warrior Poet's Poniard
        Transmog({item = 183611, slot = L['2h_sword']}), -- Humble Ophelia's Greatblade
        Transmog({item = 183612, slot = L['1h_mace']}), -- Loyal Champion's Hammer
        Transmog({item = 183613, slot = L['dagger']}), -- Glinting Daybreak Dagger
        Transmog({item = 183614, slot = L['1h_mace']}) -- Gavel of Harmonious Wisdom
    },
    pois = {
        Path({
            37004180, 37714171, 37944069, 38484042, 39004077, 39354145,
            39854155, 40334106, 40424024, 40733931, 41233883
        })
    }
}) -- Demi the Relic Hoarder

map.nodes[41354887] = Rare({
    id = 163460,
    quest = 62650,
    note = L['in_small_cave'] .. ' ' .. L['dionae_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50595}),
        Pet({item = 180856, id = 2932}) -- Silvershell Snapper
    }
}) -- Dionae

map.nodes[45656550] = Rare({
    id = 171255,
    quest = {61082, 61091, 62251},
    rewards = {
        Achievement({id = 14307, criteria = 50614}), Item({item = 180062}) -- Heavenly Drum
    },
    pois = {
        Path({
            45126865, 45596837, 45836792, 46266754, 46326688, 46756655,
            47196619, 47366568, 47516509, 47196458, 46916413, 46516378,
            46036393, 45726457, 45636517, 45686586, 45896645, 46326688
        }), Path({
            45896645, 45406672, 45106624, 44756599, 44636542, 44656487,
            45046456, 45436462, 45696476
        })
        -- Path({45546459, 44656486, 44766596, 45366670, 45866643, 45616562})
    }
}) -- Echo of Aella <Hand of Courage>

map.nodes[51151953] = Rare({
    id = 171009,
    quest = 60998,
    note = L['aegeon_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50605}), Toy({item = 184404}) -- Ever-Abundant Hearth
    },
    pois = {
        Path({
            51151953, 50761914, 50681837, 50731769, 50931703, 51351673,
            51881686, 52251724, 52451799, 52351868, 52051918, 51651962, 51151953
        })
    }
}) -- Enforcer Aegeon

map.nodes[60427305] = Rare({
    id = 160721,
    quest = 58222,
    rewards = {
        Achievement({id = 14307, criteria = 50596}),
        Transmog({item = 180444, slot = L['leather']}) -- Harmonia's Chosen Belt
    },
    pois = {Path({60137285, 60427305, 60597376})}
}) -- Fallen Acolyte Erisne

map.nodes[42908265] = Rare({
    id = 158659,
    quest = {57705, 57708},
    note = L['herculon_note'],
    requires = ns.requirement.Item(172451, 10),
    rewards = {
        Achievement({id = 14307, criteria = 50582})
        -- https://www.wowhead.com/object=336428/aspirants-chest
        -- Item({item=182759, quest=62200}) -- Functioning Anima Core
    }
}) -- Herculon

map.nodes[51456859] = Rare({
    id = 160882,
    quest = 58319,
    note = L['repair_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50594}),
        Transmog({item = 183608, slot = L['offhand']}) -- Evernote Vesper
    }
}) -- Nikara Blackheart

map.nodes[30365517] = Rare({
    id = 171327,
    quest = 61108,
    note = L['reekmonger_note'],
    rewards = {Achievement({id = 14307, criteria = 50616})}
}) -- Reekmonger

map.nodes[61295090] = Rare({
    id = 160985,
    quest = 58320,
    note = L['repair_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50593}),
        Transmog({item = 183608, slot = L['offhand']}) -- Evernote Vesper
    }
}) -- Selena the Reborn

map.nodes[22432285] = Rare({
    id = 156339,
    label = GetAchievementCriteriaInfoByID(14307, 50618) or UNKNOWN,
    quest = 61634,
    covenant = KYRIAN,
    requires = ns.requirement.GarrisonTalent(1241, L['anima_channeled']),
    note = L['sotiros_orstus_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50618}),
        Transmog({item = 184365, slot = L['shield']}), -- Aegis of Salvation
        Pet({item = 184401, id = 3063, covenant = KYRIAN}) -- Larion Pouncer
    }
}) -- Orstus and Sotiros

map.nodes[61409050] = Rare({
    id = 170548,
    quest = 60862,
    note = L['sundancer_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50601}),
        Mount({item = 180773, id = 1307}) -- Sundancer
    },
    pois = {
        Path({
            58209700, 61009560, 61609340, 61409050, 61708710, 62808430,
            62508060, 61107910
        }), POI({60049398}) -- Buff?
    }
}) -- Sundancer

local SWELLING_TEAR = Rare({
    id = 171012,
    quest = {61001, 61046, 61047},
    questCount = true,
    note = L['swelling_tear_note'],
    focusable = true,
    rewards = {
        Achievement({
            id = 14307,
            criteria = {
                {id = 50607, quest = 61001}, -- Embodied Hunger
                {id = 50609, quest = 61047}, -- Worldfeaster Chronn
                {id = 50608, quest = 61046} -- Xixin the Ravening
            }
        }), Transmog({item = 183605, slot = L['warglaive']}), -- Devourer Wrought Warglaive
        Pet({item = 180869, id = 2940}) -- Devoured Wader
    }
}) -- Swelling Tear

map.nodes[39604499] = SWELLING_TEAR
map.nodes[47434282] = SWELLING_TEAR
map.nodes[52203280] = SWELLING_TEAR
map.nodes[56031463] = SWELLING_TEAR
map.nodes[59825165] = SWELLING_TEAR
map.nodes[63503590] = SWELLING_TEAR

map.nodes[53498868] = Rare({
    id = 170899,
    quest = 60977, -- 60933 makes Cache of the Ascended visible
    label = GetAchievementCriteriaInfoByID(14307, 50619),
    note = L['ascended_council_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50619}), ns.reward.Spacer(),
        Achievement({id = 14734, criteria = {49818, 49815, 49816, 49819, 49817}}),
        Mount({item = 183741, id = 1426}) -- Ascended Skymane
    },
    pois = {
        POI({
            64326980, -- Vesper of Purity
            33325980, -- Vesper of Courage
            71933896, -- Vesper of Humility
            39132038, -- Vesper of Wisdom
            32171776 -- Vesper of Loyalty
        })
    }
}) -- The Ascended Council

map.nodes[43482524] = Rare({
    id = 171008,
    quest = 60997,
    note = L['unstable_memory_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50606}), Toy({item = 184413}) -- Mnemonic Attunement Pane
    }
}) -- Unstable Memory

map.nodes[40635306] = Rare({
    id = 167078,
    quest = {60314, 62197},
    covenant = KYRIAN,
    requires = ns.requirement.GarrisonTalent(1238, L['anima_channeled']),
    note = L['wingflayer_note'],
    rewards = {
        Achievement({id = 14307, criteria = 50600}), Item({item = 182749}) -- Regurgitated Kyrian Wings
    }
}) -- Wingflayer the Cruel

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Treasure of Courage (27051932)
-- Treasure of Purity (26852473)
-- Treasure of Humility (24662039)
-- Treasure of Wisdom (23652548)

map.nodes[46114536] = Treasure({
    quest = 61006,
    note = L['in_cave'],
    rewards = {Achievement({id = 14311, criteria = 50053})},
    pois = {
        POI({46454661}) -- Entrance
    }
}) -- Abandoned Stockpile

map.nodes[35834811] = Treasure({
    quest = 61053,
    requires = ns.requirement.Item(180536),
    note = L['broken_flute'],
    rewards = {
        Achievement({id = 14311, criteria = 50055}), Item({item = 180064}) -- Ascended Flute
    }
}) -- Broken Flute

map.nodes[61061510] = Treasure({
    quest = 61698,
    label = L['cloudwalkers_coffer'],
    note = L['cloudwalkers_coffer_note'],
    rewards = {
        Achievement({id = 14833, criteria = 49866, covenant = NECROLORD}),
        Item({item = 180783}) -- Design: Crown of the Righteous
    },
    pois = {
        POI({59011639}) -- First Flower
    }
}) -- Cloudwalker's Coffer

map.nodes[51471795] = Treasure({
    quest = 61052,
    requires = ns.requirement.Item(180534),
    note = L['experimental_construct_part'],
    rewards = {
        Achievement({id = 14311, criteria = 50054}),
        Transmog({item = 183609, slot = L['fist']}) -- Re-Powered Golliath Fists
    },
    pois = {
        POI({
            49811739, 50871471, 52041999, 52471448, 52861966, 53001500,
            53141903, 53541715
        }) -- Unstable Anima Core
    }
}) -- Experimental Construct Part

map.nodes[35085805] = Treasure({
    quest = 60893,
    requires = ns.requirement.Spell(333063),
    note = L['gift_of_agthia'],
    rewards = {
        Achievement({id = 14311, criteria = 50058}), Item({item = 180063}) -- Unearthly Chime
    },
    pois = {Path({39085448, 38455706, 37405674, 37115684, 35165822})}
}) -- Gift of Agthia

map.nodes[70473645] = Treasure({
    quest = 60892,
    requires = ns.requirement.Spell(333045),
    note = L['gift_of_chyrus'],
    rewards = {
        Achievement({id = 14311, criteria = 50060}), Toy({item = 183988}) -- Bondable Val'kyr Diadem
    },
    pois = {POI({69374031})}
}) -- Gift of Chyrus

map.nodes[27602179] = Treasure({
    quest = 60895,
    requires = ns.requirement.Spell(333070),
    note = L['gift_of_devos'],
    rewards = {
        Achievement({id = 14311, criteria = 50062}), Item({item = 179977}) -- Benevolent Gong
    },
    pois = {
        Path({
            23932482, 24712512, 25232402, 25832329, 25792226, 25192140,
            25732097, 26552137, 27122130, 27102031, 27452003, 27702102, 27602179
        }) -- Suggested path
    }
}) -- Gift of Devos

map.nodes[40601890] = Treasure({
    quest = 60894,
    requires = ns.requirement.Spell(333068),
    note = L['gift_of_thenios'],
    rewards = {
        Achievement({id = 14311, criteria = 50061}),
        Transmog({item = 181290, slot = L['cloak'], covenant = KYRIAN}) -- Harmonious Sigil of the Archon
    },
    pois = {
        POI({41662331, 39551900}) -- Transport platform
    }
}) -- Gift of Thenios

map.nodes[64877114] = Treasure({
    quest = 60890,
    requires = ns.requirement.Spell(332785),
    note = L['gift_of_vesiphone'],
    rewards = {
        Achievement({id = 14311, criteria = 50059}),
        Pet({item = 180859, id = 2935}) -- Purity
    }
}) -- Gift of Vesiphone

map.nodes[58233999] = Treasure({
    quest = 61049,
    note = L['larion_harness'],
    rewards = {
        Achievement({id = 14311, criteria = 50051})
        -- Item({item=182652})
    },
    pois = {
        POI({55694287}) -- Entrance
    }
}) -- Larion Tamer's Harness

map.nodes[59336092] = Treasure({
    quest = 61048,
    rewards = {
        Achievement({id = 14311, criteria = 50050}),
        Item({item = 182693, quest = 62170}) -- You'll Never Walk Alone
    }
}) -- Lost Disciple's Notes

map.nodes[56481714] = Treasure({
    quest = 61150,
    requires = ns.requirement.Item(180797),
    note = L['memorial_offering'],
    rewards = {Achievement({id = 14311, criteria = 50056})},
    pois = {
        POI({
            56851899, -- Drink Tray
            33996651, -- Kobri (Cliffs of Respite)
            43573224, -- Kobri (Sagehaven)
            47967389, -- Kobri (Aspirant's Rest)
            51804641, -- Kobri (Hero's Rest)
            52164709, -- Kobri (Hero's Rest)
            53498033 -- Kobri (Aspirant's Crucible)
        })
    }
}) -- Memorial Offering

map.nodes[52038607] = Treasure({
    quest = 58329,
    rewards = {
        Achievement({id = 14311, criteria = 50049}), Item({item = 174007})
    }
}) -- Purifying Draught

-- 58292 (purians), 58294 (first offer), 58293 (second offer)
map.nodes[53508037] = Treasure({
    quest = 58298,
    note = L['scroll_of_aeons'],
    rewards = {
        Achievement({id = 14311, criteria = 50047}), Toy({item = 173984}) -- Scroll of Aeons
    },
    pois = {POI({54428387, 56168305})}
}) -- Scroll of Aeons

map.nodes[40504980] = Treasure({
    quest = 61044,
    rewards = {
        Achievement({id = 14311, criteria = 50052}),
        Transmog({item = 182561, slot = L['cloak']}) -- Fallen Disciple's Cloak
    }
}) -- Stolen Equipment

map.nodes[36012652] = Treasure({
    quest = 61183, -- 61229 (mallet forged) 61191 (vesper rung)
    requires = ns.requirement.Item(180858),
    label = L['vesper_of_silver_wind'],
    note = L['vesper_of_silver_wind_note'],
    rewards = {
        Mount({item = 180772, id = 1404}) -- Silverwind Larion
    }
}) -- Vesper of the Silver Wind

map.nodes[58667135] = Treasure({
    quest = 60478,
    rewards = {
        Achievement({id = 14311, criteria = 50048}), Item({item = 179982}) -- Kyrian Bell
    }
}) -- Vesper of Virtues

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[52727429] = PetBattle({
    id = 175777,
    rewards = {Achievement({id = 14881, criteria = 51047})}
}) -- Crystalsnap

map.nodes[25903078] = PetBattle({
    id = 175783,
    rewards = {Achievement({id = 14881, criteria = 51053})}
}) -- Digallo

map.nodes[46524930] = PetBattle({
    id = 175785,
    rewards = {Achievement({id = 14881, criteria = 51055})}
}) -- Kostos

map.nodes[34806280] = PetBattle({
    id = 173131,
    note = L['stratios_note'],
    rewards = {
        Achievement({id = 14625, criteria = 49416}), ns.reward.Spacer(),
        Achievement({id = 14868, criteria = 9, oneline = true}), -- Aquatic
        Achievement({id = 14869, criteria = 9, oneline = true}), -- Beast
        Achievement({id = 14870, criteria = 9, oneline = true}), -- Critter
        Achievement({id = 14871, criteria = 9, oneline = true}), -- Dragon
        Achievement({id = 14872, criteria = 9, oneline = true}), -- Elemental
        Achievement({id = 14873, criteria = 9, oneline = true}), -- Flying
        Achievement({id = 14874, criteria = 9, oneline = true}), -- Humanoid
        Achievement({id = 14875, criteria = 9, oneline = true}), -- Magic
        Achievement({id = 14876, criteria = 9, oneline = true}), -- Mechanical
        Achievement({id = 14877, criteria = 9, oneline = true}) -- Undead
    }
}) -- Stratios

map.nodes[36603180] = PetBattle({
    id = 173133,
    rewards = {Achievement({id = 14625, criteria = 49417})}
}) -- Jawbone

map.nodes[51393833] = PetBattle({
    id = 173130,
    note = L['zolla_note'],
    rewards = {
        Achievement({id = 14625, criteria = 49415}), ns.reward.Spacer(),
        Achievement({id = 14868, criteria = 7, oneline = true}), -- Aquatic
        Achievement({id = 14869, criteria = 7, oneline = true}), -- Beast
        Achievement({id = 14870, criteria = 7, oneline = true}), -- Critter
        Achievement({id = 14871, criteria = 7, oneline = true}), -- Dragon
        Achievement({id = 14872, criteria = 7, oneline = true}), -- Elemental
        Achievement({id = 14873, criteria = 7, oneline = true}), -- Flying
        Achievement({id = 14874, criteria = 7, oneline = true}), -- Humanoid
        Achievement({id = 14875, criteria = 7, oneline = true}), -- Magic
        Achievement({id = 14876, criteria = 7, oneline = true}), -- Mechanical
        Achievement({id = 14877, criteria = 7, oneline = true}) -- Undead
    }
}) -- Zolla

map.nodes[54555609] = PetBattle({
    id = 173129,
    note = L['thenia_note'],
    rewards = {
        Achievement({id = 14625, criteria = 49414}), ns.reward.Spacer(),
        Achievement({id = 14868, criteria = 8, oneline = true}), -- Aquatic
        Achievement({id = 14869, criteria = 8, oneline = true}), -- Beast
        Achievement({id = 14870, criteria = 8, oneline = true}), -- Critter
        Achievement({id = 14871, criteria = 8, oneline = true}), -- Dragon
        Achievement({id = 14872, criteria = 8, oneline = true}), -- Elemental
        Achievement({id = 14873, criteria = 8, oneline = true}), -- Flying
        Achievement({id = 14874, criteria = 8, oneline = true}), -- Humanoid
        Achievement({id = 14875, criteria = 8, oneline = true}), -- Magic
        Achievement({id = 14876, criteria = 8, oneline = true}), -- Mechanical
        Achievement({id = 14877, criteria = 8, oneline = true}) -- Undead
    }
}) -- Thenia

-------------------------------------------------------------------------------
----------------------------- COUNT YOUR BLESSINGS ----------------------------
-------------------------------------------------------------------------------

map.nodes[34753001] = Collectible({
    icon = 1022951,
    group = ns.groups.BLESSINGS,
    label = '{spell:327976}',
    note = L['count_your_blessings_note'],
    rewards = {Achievement({id = 14767, criteria = 49946})}
}) -- Purified Blessing of Fortitude

map.nodes[53832886] = Collectible({
    icon = 1022951,
    group = ns.groups.BLESSINGS,
    label = '{spell:327974}',
    note = L['count_your_blessings_note'],
    rewards = {Achievement({id = 14767, criteria = 49944})}
}) -- Purified Blessing of Grace

map.nodes[45285979] = Collectible({
    icon = 1022951,
    group = ns.groups.BLESSINGS,
    label = '{spell:327975}',
    note = L['count_your_blessings_note'],
    rewards = {Achievement({id = 14767, criteria = 49945})}
}) -- Purified Blessing of Power

-------------------------------------------------------------------------------
------------------------- RALLYING CRY OF THE ASCENDED ------------------------
-------------------------------------------------------------------------------

map.nodes[32171776] = Collectible({
    icon = 3536181,
    group = ns.groups.VESPERS,
    label = L['vesper_of_loyalty'],
    note = L['vespers_ascended_note'],
    rewards = {Achievement({id = 14734, criteria = 49817})}
}) -- Vesper of Loyalty

map.nodes[33325980] = Collectible({
    icon = 3536181,
    group = ns.groups.VESPERS,
    label = L['vesper_of_courage'],
    note = L['vespers_ascended_note'],
    rewards = {Achievement({id = 14734, criteria = 49815})}
}) -- Vesper of Courage

map.nodes[39132038] = Collectible({
    icon = 3536181,
    group = ns.groups.VESPERS,
    label = L['vesper_of_wisdom'],
    note = L['vespers_ascended_note'],
    rewards = {Achievement({id = 14734, criteria = 49819})}
}) -- Vesper of Wisdom

map.nodes[64326980] = Collectible({
    icon = 3536181,
    group = ns.groups.VESPERS,
    label = L['vesper_of_purity'],
    note = L['vespers_ascended_note'],
    rewards = {Achievement({id = 14734, criteria = 49818})}
}) -- Vesper of Purity

map.nodes[71933896] = Collectible({
    icon = 3536181,
    group = ns.groups.VESPERS,
    label = L['vesper_of_humility'],
    note = L['vespers_ascended_note'],
    rewards = {Achievement({id = 14734, criteria = 49816})}
}) -- Vesper of Humility

-------------------------------------------------------------------------------
--------------------------------- SHARD LABOR ---------------------------------
-------------------------------------------------------------------------------

local AnimaShard = Class('AnimaShard', Node, {
    label = L['anima_shard'],
    icon = 'crystal_b',
    scale = 1.5,
    group = ns.groups.ANIMA_SHARD,
    rewards = {
        Achievement({
            id = 14339,
            criteria = {{id = 0, qty = true, suffix = L['anima_shard']}}
        })
    }
})

map.nodes[39057704] = AnimaShard({quest = 61225, note = L['anima_shard_61225']})
map.nodes[43637622] = AnimaShard({quest = 61235, note = L['anima_shard_61235']})
map.nodes[48427273] = AnimaShard({quest = 61236, note = L['anima_shard_61236']})
map.nodes[52677555] = AnimaShard({quest = 61237, note = L['anima_shard_61237']})
map.nodes[53317362] = AnimaShard({quest = 61238, note = L['anima_shard_61238']})
map.nodes[53498060] = AnimaShard({quest = 61239, note = L['anima_shard_61239']})
map.nodes[55968666] = AnimaShard({quest = 61241, note = L['anima_shard_61241']})
map.nodes[61048566] = AnimaShard({quest = 61244, note = L['anima_shard_61244']})
map.nodes[58108008] = AnimaShard({quest = 61245, note = L['anima_shard_61245']})
map.nodes[56877498] = AnimaShard({quest = 61247, note = L['anima_shard_61247']})
map.nodes[65527192] = AnimaShard({
    quest = 61249,
    note = L['anima_shard_61249'],
    pois = {
        POI({63467240}) -- Transport platform
    }
})
map.nodes[58156391] = AnimaShard({quest = 61250, note = L['anima_shard_61250']})
map.nodes[54005970] = AnimaShard({quest = 61251, note = L['anima_shard_61251']})
map.nodes[46706595] = AnimaShard({quest = 61253, note = L['anima_shard_61253']})
map.nodes[50685614] = AnimaShard({quest = 61254, note = L['anima_shard_61254']})
map.nodes[34846578] = AnimaShard({quest = 61257, note = L['anima_shard_61257']})
map.nodes[51674802] = AnimaShard({quest = 61258, note = L['anima_shard_61258']})
map.nodes[47084923] = AnimaShard({quest = 61260, note = L['anima_shard_61260']})
map.nodes[41394663] = AnimaShard({quest = 61261, note = L['anima_shard_61261']})
map.nodes[40045912] = AnimaShard({quest = 61263, note = L['anima_shard_61263']})
map.nodes[38525326] = AnimaShard({quest = 61264, note = L['anima_shard_61264']})
map.nodes[57645567] = AnimaShard({quest = 61270, note = L['anima_shard_61270']})
map.nodes[65254288] = AnimaShard({quest = 61271, note = L['anima_shard_61271']})
map.nodes[72384029] = AnimaShard({quest = 61273, note = L['anima_shard_61273']})
map.nodes[66892692] = AnimaShard({quest = 61274, note = L['anima_shard_61274']})
map.nodes[57553827] = AnimaShard({
    quest = 61275,
    note = L['anima_shard_61275'],
    pois = {
        POI({55694287}) -- Entrance
    }
})
map.nodes[52163939] = AnimaShard({quest = 61277, note = L['anima_shard_61277']})
map.nodes[49993826] = AnimaShard({quest = 61278, note = L['anima_shard_61278']})
map.nodes[48483491] = AnimaShard({quest = 61279, note = L['anima_shard_61279']})
map.nodes[56722884] = AnimaShard({quest = 61280, note = L['anima_shard_61280']})
map.nodes[56201731] = AnimaShard({quest = 61281, note = L['anima_shard_61281']})
map.nodes[59881391] = AnimaShard({quest = 61282, note = L['anima_shard_61282']})
map.nodes[52440942] = AnimaShard({
    quest = 61283,
    note = L['anima_shard_61283'],
    pois = {
        POI({53650953}) -- Entrance
    }
})
map.nodes[46691804] = AnimaShard({quest = 61284, note = L['anima_shard_61284']})
map.nodes[44942845] = AnimaShard({quest = 61285, note = L['anima_shard_61285']})
map.nodes[42302402] = AnimaShard({quest = 61286, note = L['anima_shard_61286']})
map.nodes[37102468] = AnimaShard({quest = 61287, note = L['anima_shard_61287']})
map.nodes[42813321] = AnimaShard({quest = 61288, note = L['anima_shard_61288']})
map.nodes[42713940] = AnimaShard({quest = 61289, note = L['anima_shard_61289']})
map.nodes[33033762] = AnimaShard({quest = 61290, note = L['anima_shard_61290']})
map.nodes[31002747] = AnimaShard({quest = 61291, note = L['anima_shard_61291']})
map.nodes[30612373] = AnimaShard({quest = 61292, note = L['anima_shard_61292']})
map.nodes[24642298] = AnimaShard({quest = 61293, note = L['anima_shard_61293']})
map.nodes[26152262] = AnimaShard({quest = 61294, note = L['anima_shard_61294']})
map.nodes[24371821] = AnimaShard({quest = 61295, note = L['anima_shard_61295']})

-------------------------------------------------------------------------------

local gardens = Map({id = 1693})
local font = Map({id = 1694})
local wake = Map({id = 1666})

wake.nodes[52508860] = AnimaShard({
    quest = 61296,
    note = L['anima_shard_61296'],
    parent = map.id
})
wake.nodes[36202280] = AnimaShard({
    quest = 61297,
    note = L['anima_shard_61297'],
    parent = map.id
})
gardens.nodes[46605310] = AnimaShard({
    quest = 61298,
    note = L['anima_shard_61298']
})
gardens.nodes[69403870] = AnimaShard({
    quest = 61299,
    note = L['anima_shard_61299']
})
font.nodes[49804690] =
    AnimaShard({quest = 61300, note = L['anima_shard_61300']})

map.nodes[60552554] = AnimaShard({
    quest = {61298, 61299, 61300},
    questCount = true,
    note = L['anima_shard_spires']
})

-------------------------------------------------------------------------------
---------------------------- WHAT IS THAT MELODY? -----------------------------
-------------------------------------------------------------------------------

local Hymn = Class('Hymn', Collectible, {
    icon = 'scroll',
    note = L['hymn_note'],
    group = ns.groups.HYMNS
})

local COURAGE = Hymn({
    label = '{spell:338912}',
    rewards = {Achievement({id = 14768, criteria = 49948})}
})

local HUMILITY = Hymn({
    label = '{spell:338910}',
    rewards = {Achievement({id = 14768, criteria = 49949})}
})

local PURITY = Hymn({
    label = '{spell:338911}',
    rewards = {Achievement({id = 14768, criteria = 49947})}
})

local WISDOM = Hymn({
    label = '{spell:338909}',
    rewards = {Achievement({id = 14768, criteria = 49950})}
})

map.nodes[31905460] = COURAGE
map.nodes[32505770] = COURAGE
map.nodes[34105850] = COURAGE
map.nodes[35405560] = COURAGE
map.nodes[39216038] = COURAGE -- available after phase
map.nodes[40365882] = COURAGE -- available after phase

map.nodes[63004290] = HUMILITY
map.nodes[64504640] = HUMILITY
map.nodes[66104080] = HUMILITY
map.nodes[68704340] = HUMILITY
map.nodes[69304110] = HUMILITY

map.nodes[57927896] = PURITY
map.nodes[60127258] = PURITY
map.nodes[61107610] = PURITY
map.nodes[63607370] = PURITY
map.nodes[63717413] = PURITY
map.nodes[63907350] = PURITY

map.nodes[41702420] = WISDOM
map.nodes[41832781] = WISDOM
map.nodes[42202370] = WISDOM
map.nodes[42502560] = WISDOM
map.nodes[42902730] = WISDOM
map.nodes[43182813] = WISDOM

-------------------------------------------------------------------------------
------------------ TO ALL THE SQUIRRELS I'VE LOVED AND LOST -------------------
-------------------------------------------------------------------------------

map.nodes[54901350] = Squirrel({
    id = 170242,
    rewards = {Achievement({id = 14731, criteria = 50248})},
    pois = {POI({48202300, 56201320, 54801360, 54801340})}
}) -- Dreadfur Kit

map.nodes[37702750] = Squirrel({
    id = 170006,
    rewards = {Achievement({id = 14731, criteria = 50249})},
    pois = {POI({24603020, 24603020, 24603020, 37402740, 37602760})}
}) -- Darkened Wyrmling

map.nodes[48007780] = Squirrel({
    id = 168397,
    rewards = {Achievement({id = 14731, criteria = 50250})},
    pois = {
        POI({
            40605360, 41805460, 43205360, 43405540, 43405560, 45004420,
            45604580, 45805600, 46805900, 47207280, 47407740, 47407760,
            47607740, 47607880, 48007760, 48407520, 48407620, 48603040,
            48605060, 48607640, 48806440, 49007660, 49205000, 52407120,
            52607100, 53405680, 54006440, 55202980, 56402620, 57605540,
            57605560, 57804720, 58604020, 58804460, 59409380, 59609380,
            59804000, 59805140, 60009320, 60808020, 60808600, 62803160
        })
    }
}) -- Soulwing Flitter

-------------------------------------------------------------------------------
--------------------------------- SOULSHAPES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[50004700] = Soulshape({
    id = 181682,
    icon = 645906,
    note = L['soulshape_otter_soul'],
    rewards = {
        Item({item = 187818, quest = 64959, covenant = NIGHTFAE}) -- Otter Soul
    }
}) -- Otter Soul

-------------------------------------------------------------------------------
----------------------------- SHADOWLANDS SAFARI ------------------------------
-------------------------------------------------------------------------------

map.nodes[42606140] = Safari.CopperfurKit({
    pois = {
        POI({
            37406000, 37606040, 39808020, 41208140, 41406000, 42005940,
            42005960, 42406140, 42406200, 42606140, 42606200, 42608380,
            43207280, 44005820, 44207100, 44207160, 60004180, 60404140, 60604120
        })
    }
}) -- Copperfur Kit

map.nodes[42606140] = Safari.FledglingTeroclaw({
    pois = {
        POI({
            37406000, 37606040, 39808020, 41208140, 41406000, 42005940,
            42005960, 42406140, 42406200, 42606140, 42606200, 42608380,
            43207280, 44005820, 44207100, 44207160, 60004180, 60404140, 60604120
        })
    }
}) -- Fledgling Teroclaw

map.nodes[48406340] = Safari.FlutteringGlimmerfly({
    pois = {
        POI({
            35402520, 36202240, 36602780, 36802620, 36802920, 36806140,
            37206200, 37405980, 37406300, 37602780, 37606780, 37806360,
            38002520, 38006260, 38006920, 38206220, 38602700, 39006240,
            39006260, 39006420, 39404760, 39406500, 39804620, 39806220,
            39806300, 40003800, 40405980, 40606100, 40607060, 40607240,
            41006500, 41406040, 41406280, 41407260, 41606280, 41804940,
            41806000, 41807220, 42004040, 42006640, 42205060, 42206140,
            42405240, 42405440, 42405600, 42405720, 42405780, 42405860,
            42605220, 42605280, 42605420, 42605680, 42606820, 43203540,
            43204880, 43205540, 43207240, 43405560, 43406160, 43407080,
            43603560, 43606140, 43606160, 43803480, 43807060, 44004060,
            44203660, 44204300, 44205400, 44404420, 44404700, 44404940,
            44404960, 44405500, 44407220, 44605500, 44806100, 45003860,
            45004440, 45004500, 45004700, 45006000, 45203400, 45204320,
            45204620, 45205920, 45403500, 45404760, 45405200, 45405700,
            45405760, 45406180, 45406980, 45407800, 45408360, 45604020,
            45604580, 45605460, 45605700, 45606980, 45805600, 45806200,
            46003920, 46004180, 46004440, 46004500, 46004960, 46006140,
            46007580, 46203440, 46204840, 46404700, 46405180, 46405400,
            46406880, 46407080, 46408300, 46603480, 46605440, 46605600,
            46605700, 46607080, 46607380, 46607620, 46607800, 46803940,
            46803960, 46804180, 46804500, 46804860, 46805900, 46806020,
            47003260, 47003400, 47004140, 47007740, 47008100, 47204760,
            47205020, 47205140, 47205220, 47206160, 47207280, 47603380,
            47605320, 47605380, 47607580, 47607880, 47802500, 47804680,
            47804980, 48005180, 48006200, 48007760, 48204760, 48207080,
            48402580, 48405800, 48406340, 48406360, 48406980, 48407520,
            48604740, 48604780, 48607620, 48803060, 48806440, 49003040,
            49003840, 49205000, 49207660, 49402340, 49402360, 49402620,
            49406340, 49603280, 49606260, 49802700, 50402640, 50602660,
            50803140, 50803460, 51003160, 51005440, 51206380, 51402780,
            51402940, 51406080, 51603620, 51605400, 51606360, 51803080,
            51803760, 51805940, 51806540, 51806560, 52002420, 52002500,
            52003040, 52005180, 52206080, 52403220, 52405960, 52406680,
            52603700, 52606740, 52802940, 52803140, 52806440, 52806460,
            52806980, 53006300, 53206560, 53403860, 53405520, 53405680,
            53406840, 53603920, 53802700, 53802840, 53803760, 53805560,
            53806400, 54003340, 54003400, 54207060, 54406140, 54407160,
            54602840, 54602860, 54606140, 54606160, 54800960, 54805640,
            55202980, 55206640, 55207100, 55406980, 55606540, 55607220,
            55803140, 55808840, 56005660, 56208940, 56401280, 56407060,
            56408600, 56606560, 56608600, 56608900, 56806800, 57003760,
            57005680, 57006660, 57208460, 57209000, 57403300, 57409100,
            57803660, 57804740, 57805440, 57805460, 57808180, 57808840,
            58009240, 58009260, 58201300, 58208100, 58208880, 58604020,
            58604100, 58606640, 58608660, 58609020, 58609380, 58803740,
            58803900, 58804200, 58804460, 58805160, 58805420, 59000960,
            59003340, 59004320, 59204440, 59205540, 59409160, 59604000,
            59604680, 59609380, 59804760, 60009300, 60201140, 60208480,
            60208740, 60808020, 60808220, 60808280, 60808600, 61003980,
            61004220, 61204060, 61205340, 61404540, 61804080, 62003980,
            62404900, 62604700, 64403660, 64803840
        })
    }
}) -- Fluttering Glimmerfly

map.nodes[45602940] = Safari.GlimmerpoolHatchling({
    pois = {
        POI({
            28402760, 28602760, 36203260, 36803360, 37003220, 37402600,
            44003600, 44202840, 44202940, 44203660, 44403120, 44403160,
            44802980, 45403420, 45403500, 45602940, 45602960, 45603480,
            46003400, 46802540, 46802800, 46802880, 46803320, 48003280,
            48206280, 48406180, 49406140, 49406160, 49406380, 49606140,
            49606200, 53003140, 53003380, 53403160, 53403260, 53603180,
            53803280, 56601880, 57601760
        })
    }
}) -- Glimmerpool Hatchling

map.nodes[50606280] = Safari.RustfurKit({
    pois = {
        POI({
            41404180, 41604180, 43804240, 43804260, 44204520, 44204560,
            50403400, 50406300, 50606280, 53802580, 55003160, 55003620,
            56408820, 56608820, 57209180, 57403520, 59808380, 59808680
        })
    }
}) -- Rustfur Kit

map.nodes[51405520] = Safari.VibrantGlimmerfly({
    pois = {
        POI({
            34404960, 34602820, 34604720, 34604940, 34604960, 35002580,
            36202240, 36205040, 36402260, 36402540, 36402560, 36602780,
            36806140, 36806840, 37006040, 37006240, 37006260, 37202300,
            37604760, 37606000, 37606540, 37606780, 37802360, 37804580,
            38404720, 38406360, 38602720, 38604320, 38604720, 38802380,
            39006260, 39006420, 39006800, 39404780, 39406500, 39604200,
            39806460, 40206360, 40206780, 40207000, 40404800, 40405980,
            40606160, 40606460, 40606920, 40607060, 40607540, 40607560,
            41208080, 41208280, 41405940, 41406280, 41406600, 41406720,
            41806460, 41806840, 41806940, 41807160, 41807440, 42004040,
            42206160, 42206640, 42208240, 42405240, 42405280, 42405440,
            42604880, 42605220, 42605280, 42605640, 42605680, 42605780,
            43008360, 43205040, 43205380, 43405060, 43405540, 43406180,
            43808040, 44004040, 44004140, 44007340, 44008060, 44204300,
            44407080, 44407420, 44607400, 44803840, 44805500, 44807260,
            45204320, 45205920, 45206100, 45207560, 45403520, 45403920,
            45408360, 45601060, 45603760, 45603920, 45604020, 45605460,
            45805600, 45806200, 45807080, 45807660, 46004440, 46004500,
            46206940, 46207460, 46403500, 46404240, 46405180, 46405400,
            46605600, 46605700, 46606000, 46607140, 46607380, 46803960,
            47004440, 47004460, 47005220, 47005280, 47006140, 47008120,
            47404920, 47405540, 47407740, 47603520, 47604460, 47605320,
            47805000, 47807120, 48003740, 48003760, 48004900, 48005180,
            48403140, 48403160, 48405820, 48406340, 48406360, 48407520,
            48800840, 48803060, 48805220, 48806440, 49002300, 49002840,
            49403160, 49403280, 49404240, 49404360, 49406340, 49603160,
            49802700, 49803440, 49803460, 49806840, 49806860, 50002940,
            50803460, 50806100, 51001120, 51003360, 51005280, 51200780,
            51402960, 51403640, 51405520, 51406360, 51602780, 51603640,
            51805520, 51805580, 51805940, 51806540, 51806560, 52002500,
            52200900, 52203440, 52206080, 52402380, 52403240, 52405180,
            52606740, 52802940, 52802960, 52803140, 52806440, 52806980,
            53006500, 53206560, 53403720, 53403840, 53403860, 53405400,
            53605420, 53605660, 53802700, 53803740, 53803780, 53805560,
            54205500, 54207060, 54401040, 54406140, 54406160, 54407160,
            54801060, 54805640, 55001260, 55002280, 55002740, 55202980,
            55603140, 55606520, 55606580, 55606980, 55607220, 55608840,
            56401280, 56401440, 56401460, 56402620, 56407060, 56408600,
            56608600, 56801620, 56802000, 56806800, 56809200, 57000940,
            57006680, 57008900, 57201440, 57202420, 57208440, 57208460,
            57603320, 57603440, 57603460, 57606640, 57801600, 57804720,
            58006960, 58008220, 58008840, 58009240, 58009260, 58201300,
            58406940, 58409020, 58603420, 58604020, 58604100, 58606640,
            58804200, 58804480, 58805420, 58808880, 59000940, 59000960,
            59203240, 59203340, 59204440, 59205540, 59205560, 59209100,
            59605580, 59608100, 59608760, 59609140, 59609380, 59803240,
            60009300, 60201140, 60201160, 60208460, 60208600, 60208740,
            60808280, 60808600, 61003980, 61004240, 61004260, 61005340,
            61803300, 61804080, 62003060, 62003980, 62203820, 62205300,
            63203400, 63203640, 63403840, 63403860, 63404020, 63405240,
            64204060, 64602960, 64803560, 64803840, 65004060, 65203120,
            66803780, 67003340, 67403720, 68203620, 68803460, 69003040
        })
    }
}) -- Vibrant Glimmerfly

map.nodes[53408140] = Safari.WaderChick({
    pois = {
        POI({
            52603400, 53008480, 53207280, 53207620, 53403140, 53403160,
            53407240, 53407660, 53408140, 53408160, 53608000, 53608160,
            53803300, 54208080, 54407340, 56003720, 56207800
        })
    }
}) -- Wader Chick

map.nodes[52002320] = Safari.WildEtherwyrm({
    pois = {
        POI({
            35004880, 35207080, 35404820, 35406720, 35407020, 35606700,
            35606840, 35804740, 35804760, 35804860, 35806980, 39403700,
            40403780, 40603780, 43203500, 44403620, 44403700, 45204120,
            45208320, 45208360, 45804100, 47803240, 48004260, 48202640,
            49802500, 51403180, 52002320, 52002400, 52803780, 53402880,
            53403740, 53602880, 53805840, 54005860, 54005960, 54603340,
            54603380, 55005880, 55803020, 56005840, 56005860, 56203120,
            56205960, 56801900, 56808860, 57001840, 57205840, 57205860,
            57605800, 58409020, 58609240, 59609160, 63403580
        })
    }
}) -- Wild Etherwyrm
