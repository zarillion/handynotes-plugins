-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local PetBattle = ns.node.PetBattle
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 634, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- https://wowwiki-archive.fandom.com/wiki/Stormheim/Rare_mobs

-- map.nodes[52602400] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Aegir Wavecrusher

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Ambusher Daggerfang

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Apothecary Perez

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Assassin Howe

-- map.nodes[45807740] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Bladesquall

-- map.nodes[38003900] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Bloodstalker Alpha

-- map.nodes[31603360] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Boulderfall, the Eroded

-- map.nodes[73008300] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Bulvinkel

-- map.nodes[57804500] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Captain Brvet

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Champion Elodie

-- map.nodes[58207660] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Daniel "Boomer" Vorick

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Dark Ranger Jess

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Deathguard Adams

-- map.nodes[38607060] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Den Mother Ylva

-- map.nodes[74006400] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Dread-Rider Cortis

-- map.nodes[41603380] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Egyl the Enduring

-- map.nodes[46608380] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Fathnyr

-- map.nodes[67005200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Fjorlag, the Grave's Chill

-- map.nodes[41606660] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Glimar Ironfist

-- map.nodes[78806120] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Grrvrgull the Conqueror

-- map.nodes[39606580] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Halfdan

-- map.nodes[51607460] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Hannval the Butcher

-- map.nodes[42005780] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Hook

-- map.nodes[47205700] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Houndmaster Ely

-- map.nodes[39606580] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Huntress Estrid

-- map.nodes[63803260] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Hydrannon

-- map.nodes[63607460] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Inquisitor Ernstenbok

-- map.nodes[62006060] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Isel the Hammer

-- map.nodes[61006800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Ivory Sentinel

-- map.nodes[73404760] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Kottr Vondyr

-- map.nodes[62007320] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Lagertha

-- map.nodes[72605020] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Mordvigbjorn

-- map.nodes[35601860] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Mother Clacker

-- map.nodes[46603000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Nithogg

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Priestess Liza

-- map.nodes[58203400] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Roteye

-- map.nodes[80801260] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Rulf Bonesnapper

-- map.nodes[78200840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Runeseer Sigvid

-- map.nodes[37604040] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Simone the Seductress

-- map.nodes[42005760] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Sinker

-- map.nodes[81600460] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Soulbinder Halldora

-- map.nodes[54802960] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Starbuck

-- map.nodes[61002400] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Stormtalon

-- map.nodes[49607200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Stormwing Matriarch

-- map.nodes[61604340] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Tarben

-- map.nodes[408072.2] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Thane Irglov the Merciless

-- map.nodes[67203980] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "The Nameless King

-- map.nodes[46805000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Tiptog the Lost

-- map.nodes[44202280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Tracker Jack

-- map.nodes[64805180] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Urgev the Flayer

-- map.nodes[36605160] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Whitewater Typhoon

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

local TreasuresOfStormheim = Achievement({
    id = 11259,
    criteria = {id = 1, qty = true}
})

-- wowhead.com/achievement=11259/treasures-of-stormheim#comments:id=2472646

map.nodes[42403410] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = nil,
    note = '1',
    rewards = {TreasuresOfStormheim}
})

map.nodes[68402960] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = nil,
    note = '2',
    rewards = {TreasuresOfStormheim}
})

map.nodes[49106000] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '3',
    rewards = {TreasuresOfStormheim}
})

map.nodes[82405450] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '4',
    rewards = {TreasuresOfStormheim}
})

map.nodes[75606060] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '5',
    rewards = {TreasuresOfStormheim}
})

map.nodes[39601930] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '6',
    rewards = {TreasuresOfStormheim}
})

map.nodes[72105490] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '7',
    rewards = {TreasuresOfStormheim}
})

map.nodes[73905220] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '8',
    rewards = {TreasuresOfStormheim}
})

map.nodes[65605740] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '9',
    rewards = {TreasuresOfStormheim}
})

map.nodes[64303950] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '10',
    rewards = {TreasuresOfStormheim}
})

map.nodes[65404310] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '11',
    rewards = {TreasuresOfStormheim}
})

map.nodes[70006720] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '12',
    rewards = {TreasuresOfStormheim}
})

map.nodes[69104480] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '13',
    rewards = {TreasuresOfStormheim}
})

map.nodes[71904420] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '14',
    rewards = {TreasuresOfStormheim}
})

map.nodes[73304150] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '15',
    rewards = {TreasuresOfStormheim}
})

map.nodes[74404180] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '16',
    rewards = {TreasuresOfStormheim}
})

map.nodes[44107000] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '17',
    rewards = {TreasuresOfStormheim}
})

map.nodes[40606850] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '18',
    rewards = {TreasuresOfStormheim}
})

map.nodes[46606490] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '19',
    rewards = {TreasuresOfStormheim}
})

map.nodes[73104570] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '20',
    rewards = {TreasuresOfStormheim}
})

map.nodes[35206900] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '21',
    rewards = {TreasuresOfStormheim}
})

map.nodes[45003820] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '22',
    rewards = {TreasuresOfStormheim}
})

map.nodes[67905770] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '23',
    rewards = {TreasuresOfStormheim}
})

map.nodes[57906330] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '24',
    rewards = {TreasuresOfStormheim}
})

map.nodes[62607360] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '25',
    rewards = {TreasuresOfStormheim}
})

map.nodes[42306110] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '26',
    rewards = {TreasuresOfStormheim}
})

map.nodes[37203860] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '27',
    rewards = {TreasuresOfStormheim}
})

map.nodes[48107420] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '28',
    rewards = {TreasuresOfStormheim}
})

map.nodes[61903220] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '29',
    rewards = {TreasuresOfStormheim}
})

map.nodes[50504120] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '30',
    rewards = {TreasuresOfStormheim}
})

map.nodes[50304100] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '31',
    rewards = {TreasuresOfStormheim}
})

map.nodes[43708010] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '32',
    rewards = {TreasuresOfStormheim}
})

map.nodes[49707800] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '33',
    rewards = {TreasuresOfStormheim}
})

map.nodes[52008060] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '34',
    rewards = {TreasuresOfStormheim}
})

map.nodes[58004750] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '35',
    rewards = {TreasuresOfStormheim}
})

map.nodes[60804270] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '36',
    rewards = {TreasuresOfStormheim}
})

map.nodes[61404440] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '37',
    rewards = {TreasuresOfStormheim}
})

map.nodes[41704600] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '38',
    rewards = {TreasuresOfStormheim}
})

map.nodes[43104050] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '39',
    rewards = {TreasuresOfStormheim}
})

map.nodes[31105600] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '40',
    rewards = {TreasuresOfStormheim}
})

map.nodes[35904790] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '41',
    rewards = {TreasuresOfStormheim}
})

map.nodes[33103610] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '42',
    rewards = {TreasuresOfStormheim}
})

map.nodes[35003660] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '43',
    rewards = {TreasuresOfStormheim}
})

map.nodes[75104950] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '44',
    rewards = {TreasuresOfStormheim}
})

map.nodes[78407140] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '45',
    rewards = {TreasuresOfStormheim}
})

map.nodes[81806750] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '46',
    rewards = {TreasuresOfStormheim}
})

map.nodes[69004180] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '47',
    rewards = {TreasuresOfStormheim}
})

map.nodes[55004710] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '48',
    rewards = {TreasuresOfStormheim}
})

map.nodes[39506520] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '49',
    rewards = {TreasuresOfStormheim}
})

map.nodes[42606580] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '50',
    rewards = {TreasuresOfStormheim}
})

map.nodes[47403410] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '51',
    rewards = {TreasuresOfStormheim}
})

map.nodes[59305840] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '52',
    rewards = {TreasuresOfStormheim}
})

map.nodes[61806290] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '53',
    rewards = {TreasuresOfStormheim}
})

map.nodes[32702790] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '54',
    rewards = {TreasuresOfStormheim}
})

map.nodes[48006240] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '55',
    rewards = {TreasuresOfStormheim}
})

map.nodes[50001810] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '56',
    rewards = {TreasuresOfStormheim}
})

map.nodes[27305750] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '57',
    rewards = {TreasuresOfStormheim}
})

map.nodes[46708040] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '58',
    rewards = {TreasuresOfStormheim}
})

map.nodes[35705410] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '59',
    rewards = {TreasuresOfStormheim}
})

map.nodes[32004720] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '60',
    rewards = {TreasuresOfStormheim}
})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[62005200] = PetBattle({
    id = 105386,
    label = '{npc:105387}, {npc:105386}',
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31542})}
}) -- Andrus and Rydyr

map.nodes[38402740] = PetBattle({
    id = 105842,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31537})}
}) -- Chromadon

map.nodes[62606740] = PetBattle({
    id = 105512,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31541})}
}) -- Envoy of the Hunt

map.nodes[4830448] = PetBattle({
    id = 99878,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31539})}
}) -- Ominitron Defense System

map.nodes[78405720] = PetBattle({
    id = 98270,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['robert_craig_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31540}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 9, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 9, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 9, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 9, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 9, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 9, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 9, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 9, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 9, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 9, oneline = true}) -- Undead
    }
}) -- Robert Craig

map.nodes[56804620] = PetBattle({
    id = 105455,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['trapper_jarrun_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31538}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 10, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 10, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 10, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 10, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 10, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 10, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 10, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 10, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 10, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 10, oneline = true}) -- Undead
    }
}) -- Trapper Jarrun

-------------------------------------------------------------------------------
----------------------------- BROKEN ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[59805340] = ns.node.Safari.BlackFootedFoxKit({
    pois = {
        POI({
            53406040, 58005220, 59605480, 59805340, 63005080, 63804820,
            64604140, 66405080, 66805440, 67604080, 70005080
        })
    }
})

map.nodes[66405540] = ns.node.Safari.GoldenEaglet({
    pois = {
        POI({
            50205540, 50405560, 50406020, 53206080, 59005600, 60405160,
            61605360, 61605540, 62205120, 63604620, 63606000, 64405380,
            64604300, 64605400, 65803960, 66405540, 66804740, 66805640,
            67005200, 67405660, 68205840, 68403980, 68404400, 68405860,
            70404720, 70605920, 73204980, 73205760
        })
    }
})

map.nodes[33404720] = ns.node.Safari.LongEaredOwl({
    pois = {POI({32405060, 33404720, 44003260})}
})

map.nodes[65203980] = ns.node.Safari.RoseTaipan({
    pois = {
        POI({
            50205760, 50405420, 50405460, 50605440, 50805240, 50805280,
            51005520, 51005560, 51805620, 51805660, 52006000, 52605420,
            52805220, 52805600, 53405880, 53605880, 58405080, 58605080,
            60005420, 61005640, 61005660, 62205600, 63005580, 63205500,
            63405820, 63605820, 63605860, 65203980, 65204780, 65205520,
            65604460, 65804440, 66004120, 66204040, 66404300, 67004420,
            68204060, 68604080, 69005860, 69804020, 70204780, 70205980,
            70803820, 72005040, 75405700
        })
    }
})

map.nodes[42005200] = ns.node.Safari.SlitheringBrownscale({
    pois = {
        POI({
            33004860, 33204300, 35404020, 42005200, 46005760, 48803760, 49605220
        })
    }
})

map.nodes[47206140] = ns.node.Safari.StormstruckBeaver({
    pois = {
        POI({
            29204480, 33405480, 33405560, 33805300, 35805100, 35805240,
            37005220, 42006120, 47206140, 47206160, 47605200, 47605260,
            52206480, 52606460
        })
    }
})

map.nodes[55204600] = ns.node.Safari.TinyApparition({
    pois = {POI({54204300, 54603940, 54803960, 55204600, 57004360, 57804500})}
})
