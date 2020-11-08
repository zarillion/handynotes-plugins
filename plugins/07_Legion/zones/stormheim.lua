-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local PetBattle = ns.node.PetBattle

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({ id=634, settings=true })

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[62005200] = PetBattle({
    id=105386,
    label="{npc:105387}, {npc:105386}",
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31542})
    }
}) -- Andrus and Rydyr

map.nodes[38402740] = PetBattle({
    id=105842,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31537})
    }
}) -- Chromadon

map.nodes[62606740] = PetBattle({
    id=105512,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31541})
    }
}) -- Envoy of the Hunt

map.nodes[4830448] = PetBattle({
    id=99878,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31539})
    }
}) -- Ominitron Defense System

map.nodes[78405720] = PetBattle({
    id=98270,
    note=L["general_pet_tamer_note"].."\n\n"..L["robert_craig_note"],
    rewards={
        Achievement({id=10876, criteria=31540}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=9, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=9, oneline=true}), -- Beast
        Achievement({id=9688, criteria=9, oneline=true}), -- Critter
        Achievement({id=9689, criteria=9, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=9, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=9, oneline=true}), -- Flying
        Achievement({id=9692, criteria=9, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=9, oneline=true}), -- Magic
        Achievement({id=9694, criteria=9, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=9, oneline=true})  -- Undead
    }
}) -- Robert Craig

map.nodes[56804620] = PetBattle({
    id=105455,
    note=L["general_pet_tamer_note"].."\n\n"..L["trapper_jarrun_note"],
    rewards={
        Achievement({id=10876, criteria=31538}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=10, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=10, oneline=true}), -- Beast
        Achievement({id=9688, criteria=10, oneline=true}), -- Critter
        Achievement({id=9689, criteria=10, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=10, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=10, oneline=true}), -- Flying
        Achievement({id=9692, criteria=10, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=10, oneline=true}), -- Magic
        Achievement({id=9694, criteria=10, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=10, oneline=true})  -- Undead
    }
}) -- Trapper Jarrun
