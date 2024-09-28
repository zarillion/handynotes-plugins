-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 680, settings = true})
local felsoul_hold = Map({id = 682, settings = true})
local arcway_vaults = Map({id = 683, settings = true})
local temple_of_faladora = Map({id = 684, settings = true})
local falanaar_tunnels = Map({id = 685, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[42078013] = Rare({
    id = 109954,
    quest = 43348,
    rewards = {
        Achievement({id = 11265, criteria = 33353}) -- Adventurer of Suramar
    }
}) -- Magister Phaedris

map.nodes[49677898] = Rare({
    id = 111007,
    quest = 43603,
    rewards = {
        Achievement({id = 11265, criteria = 33364}) -- Adventurer of Suramar
    }
}) -- Randril

map.nodes[54866415] = Rare({
    id = 111649,
    quest = 43794,
    rewards = {
        Achievement({id = 11265, criteria = 33367}) -- Adventurer of Suramar
    }
}) -- Ambassador D'vwinn

map.nodes[54425612] = Rare({
    id = 111651,
    quest = 43792,
    rewards = {
        Achievement({id = 11265, criteria = 33368}) -- Adventurer of Suramar
    }
}) -- Degren

map.nodes[42195635] = Rare({
    id = 110870,
    quest = 43580,
    rewards = {
        Achievement({id = 11265, criteria = 33368}) -- Adventurer of Suramar
    }
}) -- Apothecary Faldren

map.nodes[33675177] = Rare({
    id = 111197,
    quest = 43954,
    rewards = {
        Achievement({id = 11265, criteria = 33365}) -- Adventurer of Suramar
    }
}) -- Anax

map.nodes[65585914] = Rare({
    id = 110656,
    quest = 43481,
    note = L['arcanist_lylandre_note'],
    rewards = {
        Achievement({id = 11265, criteria = 33358}) -- Adventurer of Suramar
    }
}) -- Arcanist Lylandre

map.nodes[33671475] = Rare({
    id = 106351,
    quest = 43717,
    rewards = {
        Achievement({id = 11265, criteria = 33350}) -- Adventurer of Suramar
    },
    pois = {Path({33671475, 34031489, 33871548, 33671542, 33521516, 33671475})}
}) -- Artificer Lothaire

map.nodes[62744842] = Rare({
    id = 110726,
    quest = 43495,
    rewards = {
        Achievement({id = 11265, criteria = 33359}) -- Adventurer of Suramar
    },
    pois = {Path({62454857, 62724913, 62744842, 62634777, 62644711})}
}) -- Cadraeus

map.nodes[68185861] = Rare({
    id = 100864,
    quest = 41135, -- 41137
    note = L['in_cave'],
    rewards = {
        Achievement({id = 11265, criteria = 33343}) -- Adventurer of Suramar
    },
    pois = {POI({69945701})}
}) -- Cora'kar

map.nodes[22165179] = Rare({
    id = 99792,
    quest = 41319,
    rewards = {
        Achievement({id = 11265, criteria = 33342}) -- Adventurer of Suramar
    }
}) -- Elfbane

map.nodes[53263019] = Rare({
    id = 99610,
    quest = 40897,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 11265, criteria = 33341}), -- Adventurer of Suramar
        Transmog({item = 121755, slot = L['mail']}) -- Slatecrusher Spaulders
    },
    pois = {
        Path({
            53263019, 52503058, 51643007, 51112979, 50823025, 51083076,
            51583132, 51943199, 51803263, 51393275, 50953244, 50363344, 49633376
        }), POI({49633376})
    }
}) -- Garvrulg

map.nodes[27606560] = Rare({
    id = 110832,
    quest = 43992,
    note = L['gorgroth_note'],
    rewards = {
        Achievement({id = 11265, criteria = 33361}) -- Adventurer of Suramar
    },
    pois = {POI({27776546})}
}) -- Gorgroth

map.nodes[58825156] = Rare({
    id = 110944,
    quest = 43597,
    rewards = {
        Achievement({id = 11265, criteria = 33363}) -- Adventurer of Suramar
    },
    pois = {Path({61015301, 59845221, 58825156, 57845103, 56815059, 56255030})}
}) -- Guardian Thor'el

map.nodes[67637097] = Rare({
    id = 103214,
    quest = 41136,
    rewards = {
        Achievement({id = 11265, criteria = 33345}) -- Adventurer of Suramar
    },
    pois = {POI({73186788})}
}) -- Har'kess the Insatiable

map.nodes[61283967] = Rare({
    id = 103223,
    quest = 43993,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11265, criteria = 33346}) -- Adventurer of Suramar
    }
}) -- Hertha Grimdottir

map.nodes[48535667] = Rare({
    id = 102303,
    quest = 40905,
    rewards = {
        Achievement({id = 11265, criteria = 33376}), -- Adventurer of Suramar
        Transmog({item = 121735, slot = L['plate']}) -- Nightguard Stompers
    }
}) -- Lieutenant Strathmar

map.nodes[24413517] = Rare({
    id = 112497,
    quest = 44072, -- 44071,43358,42831
    rewards = {
        Achievement({id = 11265, criteria = 33370}) -- Adventurer of Suramar
    }
}) -- Maia the White

map.nodes[13515343] = Rare({
    id = 112802,
    quest = 44124,
    rewards = {
        Achievement({id = 11265, criteria = 33371}) -- Adventurer of Suramar
    }
}) -- Mar'tura

map.nodes[36183384] = Rare({
    id = 111329,
    quest = 43718,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11265, criteria = 33366}) -- Adventurer of Suramar
    }
}) -- Matron Hagatha

map.nodes[62496367] = Rare({
    id = 111653,
    quest = 43793,
    rewards = {
        Achievement({id = 11265, criteria = 33369}) -- Adventurer of Suramar
    }
}) -- Miasu

map.nodes[40803280] = Rare({
    id = 110340,
    quest = 43358,
    note = L['myonix_note'],
    rewards = {
        Achievement({id = 11265, criteria = 33355}), -- Adventurer of Suramar
        Transmog({item = 121739, slot = L['leather']}) -- Felinus Manus
    }
}) -- Myonix

map.nodes[24564739] = Rare({
    id = 110577,
    quest = 43449,
    rewards = {
        Achievement({id = 11265, criteria = 33357}) -- Adventurer of Suramar
    }
}) -- Oreth the Vile

map.nodes[66656712] = Rare({
    id = 107846,
    quest = 43968,
    rewards = {
        Achievement({id = 11265, criteria = 33351}), -- Adventurer of Suramar
        Toy({item = 140314}) -- Crab Shank
    }
}) -- Pinchshank

map.nodes[23982552] = Rare({
    id = 105547,
    quest = 43484,
    rewards = {
        Achievement({id = 11265, criteria = 33349}), -- Adventurer of Suramar
        Transmog({item = 121759, slot = L['leather']}) -- Feather-Notched Belt
    }
}) -- Rauren

map.nodes[75845826] = Rare({
    id = 103575,
    quest = 44003,
    note = L['in_water'],
    rewards = {
        Achievement({id = 11265, criteria = 33347}) -- Adventurer of Suramar
    },
    pois = {
        Path({
            74715700, 75085730, 75425766, 75845826, 76455859, 76715864,
            77085825, 77445790, 77695737, 78045699, 78415665, 78565593, 78595562
        })
    }
}) -- Reef Lord Raj'his

map.nodes[80296940] = Rare({
    id = 103183,
    quest = 40680,
    rewards = {
        Achievement({id = 11265, criteria = 33344}), -- Adventurer of Suramar
        Transmog({item = 140019, slot = L['plate']}) -- Eel Collars
    },
    pois = {Path({80026798, 80296940, 80057121, 79687260})}
}) -- Rok'nash

map.nodes[26244119] = Rare({
    id = 109054,
    quest = 42831,
    rewards = {
        Achievement({id = 11265, criteria = 33352}), -- Adventurer of Suramar
        Transmog({item = 139926, slot = L['cloth']}), -- Subject 12's ID Bracelets
        Item({item = 138007, profession = nil}) -- Pattern: Imbued Silkweave Cover
    }
}) -- Shal'an

map.nodes[18676106] = Rare({
    id = 110824,
    quest = 43542,
    rewards = {
        Achievement({id = 11265, criteria = 33360}) -- Adventurer of Suramar
    }
}) -- Tideclaw

-- local Baconlisk = Class('Baconlisk', Rare, {id = 103787, quest = nil, fgroup = 'baconlisk'})
-- map.nodes[24804980] = Baconlisk()
-- map.nodes[39002940] = Baconlisk({note = L['in_small_cave']})
-- map.nodes[75805020] = Baconlisk()

-- map.nodes[16812672] = Rare({id = 103841, quest = 43996}) -- Shadowquill
-- map.nodes[23205860] = Rare({id = 104519, quest = 45503}) -- Colerian
-- map.nodes[23605660] = Rare({id = 104521, quest = 45504}) -- Alteria
-- map.nodes[24005500] = Rare({id = 104522, quest = 45502}) -- Selenyi
-- map.nodes[29208880] = Rare({id = 112756, quest = 45477, pois = {POI({28948490}), Path({29208880, 28478925, 27668929, 27108846, 27158712, 27768510, 28698530, 28948490})}}) -- Sorallus
-- map.nodes[34156099] = Rare({id = 110024, quest = 43351}) -- Mal'Dreth the Corruptor
-- map.nodes[35376700] = Rare({id = 106526, quest = 44675}) -- Lady Rivantas
-- map.nodes[37282159] = Rare({id = 110438, quest = 43369}) -- Siegemaster Aedrin
-- map.nodes[37977039] = Rare({id = 106532, quest = 44569}) -- Inquisitor Volitix
-- map.nodes[49605800] = Rare({id = 112760, quest = 45474}) -- Volshax, Breaker of Will
-- map.nodes[49607960] = Rare({id = 112757, quest = 45476}) -- Magistrix Vilessa
-- map.nodes[56607520] = Rare({id = 112705, quest = 45478, pois = {Path({57207600, 56607520, 56007420})}}) -- Achronos
-- map.nodes[57606700] = Rare({id = 112758, quest = 45475}) -- Auditor Esiel
-- map.nodes[64204800] = Rare({id = 113694, note = 'Hidden until you are near it.', pois = {POI({60204080, 62004680, 62405220, 62405280, 62605320, 64204740, 64204800, 66205340, 66205360})}}) -- Pashya - No Quest triggered
-- map.nodes[66805540] = Rare({id = 105899, quest = 45506, pois = {Path({67505495, 67045441, 66325418, 65695428, 65895430, 66325421, 66705442, 66535485, 66625528, 66965570, 67355579, 67625598, 67855623, 67775562, 67505495})}}) -- Oglok the Furious
-- map.nodes[79005800] = Rare({id = 99899, quest = 44669}) -- Vicious Whale Shark
-- map.nodes[8136264] = Rare({id = 112759, quest = 45471}) -- Az'jatar
-- map.nodes[87406260] = Rare({id = 103827, quest = 41786, note = 'Use the {npc:103859} to summon {npc:103827}'}) -- King Morgalash
-- falanaar_tunnels.nodes[59935820] = Rare({id = 105728, quest = 45505, parent = {id = map.id, note = L['inside_falanaar_tunnels'], pois = {POI({20655047})}}}) -- Scythemaster Cil'raman
-- falanaar_tunnels.nodes[67165175] = Rare({id = 105632, parent = {id = map.id, note = L['inside_falanaar_tunnels'], pois = {POI({20655047})}}}) -- Broodmother Shu'malis - No Quest triggered
-- temple_of_faladora.nodes[41123526] = Rare({id = 105739, pois = {Path({41123526, 36513225})}}) -- Sanaar -- no quest triggered

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

local TreasuresOfSuramar = Achievement({
    id = 11260,
    criteria = {id = 1, qty = true}
})

-- wowhead.com/achievement=11260/treasures-of-suramar#comments:id=2470536

map.nodes[26364133] = Treasure({
    label = L['ancient_mana_chunk'],
    quest = 42827,
    rewards = {TreasuresOfSuramar}
}) -- Ancient Mana Chunk

map.nodes[52703130] = Treasure({
    label = L['dusty_coffer'],
    quest = 40767,
    note = L['in_cave'],
    rewards = {TreasuresOfSuramar},
    pois = {
        Path({
            52703130, 52833207, 52563246, 52033261, 51843096, 51643007,
            51112979, 50823025, 51083076, 51583132, 51943199, 51803263,
            51393275, 50953244, 50363344, 49633376
        }), POI({49633376})
    }
}) -- Dusty Coffer

map.nodes[60356850] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 43876,
    rewards = {TreasuresOfSuramar}
}) -- Glimmering Treasure Chest

map.nodes[44053193] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 43856,
    note = L['in_waterfall_cave'],
    rewards = {TreasuresOfSuramar},
    pois = {POI({42413002})}
}) -- Glimmering Treasure Chest

map.nodes[42472046] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 43849,
    rewards = {TreasuresOfSuramar}
}) -- Glimmering Treasure Chest

arcway_vaults.nodes[37444341] = Treasure({
    label = L['protected_treasure_chest'],
    quest = 44179,
    parent = {id = map.id, pois = {POI({34638432})}},
    rewards = {TreasuresOfSuramar}
}) -- Protected Treasure Chest

map.nodes[23404878] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43842,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[44387587] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43869,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[76866150] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43860,
    note = L['in_water'],
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[48117321] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43865,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[31956251] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43831,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[81955745] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43861,
    note = L['in_water_cave'],
    rewards = {TreasuresOfSuramar},
    pois = {POI({79495751})}
}) -- Small Treasure Chest

map.nodes[71464976] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43859,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[26821696] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43847,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[42577667] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43870,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

temple_of_faladora.nodes[38645420] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43838,
    note = L['treasure43838'],
    parent = {
        id = map.id,
        note = L['inside_temple_of_faladora'],
        pois = {POI({22873563})}
    },
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[49988493] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43864,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[48288262] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43866,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[16602975] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43846,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[52202990] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43854,
    note = L['in_cave'],
    rewards = {TreasuresOfSuramar},
    pois = {
        Path({
            52202990, 51643007, 51112979, 50823025, 51083076, 51583132,
            51943199, 51803263, 51393275, 50953244, 50363344, 49633376
        }), POI({49633376})
    }
}) -- Small Treasure Chest

map.nodes[19791604] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43845,
    note = L['in_cave'],
    rewards = {TreasuresOfSuramar},
    pois = {POI({19311898})}
}) -- Small Treasure Chest

map.nodes[48143399] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43853,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[51503861] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43857,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[38148712] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43830,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

felsoul_hold.nodes[40522889] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40902,
    rewards = {TreasuresOfSuramar},
    parent = {id = map.id, note = L['in_cave']},
    pois = {POI({36537649})}
}) -- Small Treasure Chest

felsoul_hold.nodes[54613790] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43835,
    rewards = {TreasuresOfSuramar},
    parent = {id = map.id, note = L['in_cave']},
    pois = {POI({36537649})}
}) -- Small Treasure Chest

map.nodes[55685480] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43871,
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

map.nodes[83126933] = Treasure({
    label = L['treasure_chest'],
    quest = 43863,
    note = L['in_small_cave'],
    rewards = {TreasuresOfSuramar},
    pois = {POI({82936814})}
}) -- Treasure Chest

map.nodes[48557162] = Treasure({
    label = L['treasure_chest'],
    quest = 44324,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[48587217] = Treasure({
    label = L['treasure_chest'],
    quest = 44323,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[48947379] = Treasure({
    label = L['treasure_chest'],
    quest = 43867,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[50068060] = Treasure({
    label = L['treasure_chest'],
    quest = 44325,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[51908214] = Treasure({
    label = L['treasure_chest'],
    quest = 43868,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

falanaar_tunnels.nodes[58407018] = Treasure({
    label = L['treasure_chest'],
    quest = 43839, -- 43840
    rewards = {TreasuresOfSuramar},
    parent = {
        id = map.id,
        note = L['inside_falanaar_tunnels'],
        pois = {POI({20655047})}
    }
}) -- Treasure Chest

map.nodes[67315510] = Treasure({
    label = L['treasure_chest'],
    quest = 43858,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[83975764] = Treasure({
    label = L['treasure_chest'],
    quest = 43862,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[17275462] = Treasure({
    label = L['treasure_chest'],
    quest = 43844,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[44272286] = Treasure({
    label = L['treasure_chest'],
    quest = 43850,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[32287708] = Treasure({
    label = L['treasure_chest'],
    quest = 43834,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[29261621] = Treasure({
    label = L['treasure_chest'],
    quest = 43848,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[61355549] = Treasure({
    label = L['treasure_chest'],
    quest = 43872,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[54326032] = Treasure({
    label = L['treasure_chest'],
    quest = 43875,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[57326037] = Treasure({
    label = L['treasure_chest'],
    quest = 43873,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[57686197] = Treasure({
    label = L['treasure_chest'],
    quest = 43874,
    rewards = {TreasuresOfSuramar}
}) -- Treasure Chest

map.nodes[63024911] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43855, -- 43857
    note = L['in_small_cave'],
    rewards = {TreasuresOfSuramar}
}) -- Small Treasure Chest

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

Map({id = 687}).nodes[53908610] = PetBattle({
    id = 105323,
    note = L['general_pet_tamer_note'],
    parent = {id = map.id},
    rewards = {Achievement({id = 10876, criteria = 31544})}
}) -- Ancient Catacomb Eggs

map.nodes[52005480] = PetBattle({
    id = 105250,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['aulier_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31543}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 11, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 11, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 11, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 11, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 11, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 11, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 11, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 11, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 11, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 11, oneline = true}) -- Undead
    }
}) -- Aulier

map.nodes[33608320] = PetBattle({
    id = 105779,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31547})}
}) -- Felsoul Seer

map.nodes[25206260] = PetBattle({
    id = 97709,
    note = L['general_pet_tamer_note'] .. '\n\n' ..
        L['master_tamer_flummox_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31546}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 12, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 12, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 12, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 12, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 12, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 12, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 12, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 12, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 12, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 12, oneline = true}) -- Undead
    }
}) -- Master Tamer Flummox

map.nodes[19903520] = PetBattle({
    id = 105352,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31548})}
}) -- Surging Mana Crystal

map.nodes[63006060] = PetBattle({
    id = 105674,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['varenne_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31545}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 13, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 13, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 13, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 13, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 13, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 13, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 13, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 13, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 13, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 13, oneline = true}) -- Undead
    }
}) -- Varenne

-------------------------------------------------------------------------------
----------------------------- BROKEN ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[73406460] = ns.node.Safari.CoastalSandpiper({
    pois = {
        POI({
            14804960, 17605460, 70805700, 73406460, 74604980, 75005060,
            78605220, 80205240, 81606160, 83806100, 88006180
        })
    }
})

map.nodes[20404260] = ns.node.Safari.CrystallineBroodling({
    pois = {
        POI({
            18604000, 19804180, 20004840, 20404260, 21804020, 22004280,
            22203800, 22804020, 24204320, 24404380
        })
    }
})

map.nodes[33406900] = ns.node.Safari.ThornclawBroodling({
    pois = {
        POI({
            25006160, 25206140, 25406320, 25606040, 25606060, 25805880,
            27206480, 27406300, 27606280, 28208180, 28407300, 28806520,
            29006000, 29608240, 29806340, 30207400, 30407740, 30407760,
            32006360, 32207580, 32208340, 33406900, 34007340, 34007360,
            34007620, 35406960, 35407900, 35607280, 36607160
        })
    }
})

map.nodes[29608260] = ns.node.Safari.ViciousBroodling({
    pois = {
        POI({
            25006160, 25406340, 25406360, 25606320, 28208180, 28806500,
            29006000, 29608240, 29608260, 29806340, 30407420, 34007360,
            35607900, 36607160
        })
    }
})
