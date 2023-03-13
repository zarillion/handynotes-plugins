-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local PetBattle = ns.node.PetBattle

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 634, settings = true})

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
