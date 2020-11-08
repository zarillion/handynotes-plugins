-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local PetBattle = ns.node.PetBattle
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Toy = ns.reward.Toy

-------------------------------------------------------------------------------

local map = Map({ id=627, settings=true })

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[45144682] = Treasure({
    quest=nil,
    label=L["sheddles_chest"],
    note=L["shoe_shine_kit_note"],
    rewards={
        Toy({item=129055}) -- Shoe Shine Kit
    }
}) -- Sheddle's Chest

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[28082610] = PetBattle({
    id=107489,
    note=L["general_pet_tamer_note"].."\n\n"..L["amalia_note"],
    rewards={
        Achievement({id=10876, criteria=31524}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=4, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=4, oneline=true}), -- Beast
        Achievement({id=9688, criteria=4, oneline=true}), -- Critter
        Achievement({id=9689, criteria=4, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=4, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=4, oneline=true}), -- Flying
        Achievement({id=9692, criteria=4, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=4, oneline=true}), -- Magic
        Achievement({id=9694, criteria=4, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=4, oneline=true})  -- Undead
    }
}) -- Amalia

map.nodes[26992530] = PetBattle({
    id=99210,
    note=L["general_pet_tamer_note"].."\n\n"..L["bohdi_sunwayver_note"],
    rewards={
        Achievement({id=10876, criteria=31525}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=2, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=2, oneline=true}), -- Beast
        Achievement({id=9688, criteria=2, oneline=true}), -- Critter
        Achievement({id=9689, criteria=2, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=2, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=2, oneline=true}), -- Flying
        Achievement({id=9692, criteria=2, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=2, oneline=true}), -- Magic
        Achievement({id=9694, criteria=2, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=2, oneline=true})  -- Undead
    }
}) -- Bohdi Sunwayver

map.nodes[26742377] = PetBattle({
    id=99742,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31526})
    }
}) -- Heliosus

map.nodes[27192195] = PetBattle({
    id=99182,
    note=L["general_pet_tamer_note"].."\n\n"..L["sir_galveston_note"],
    rewards={
        Achievement({id=10876, criteria=31527}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=5, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=5, oneline=true}), -- Beast
        Achievement({id=9688, criteria=5, oneline=true}), -- Critter
        Achievement({id=9689, criteria=5, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=5, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=5, oneline=true}), -- Flying
        Achievement({id=9692, criteria=5, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=5, oneline=true}), -- Magic
        Achievement({id=9694, criteria=5, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=5, oneline=true})  -- Undead
    }
}) -- Sir Galveston

map.nodes[28382151] = PetBattle({
    id=105241,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31528})
    }
}) -- Splint Jr.

map.nodes[29252257] = PetBattle({
    id=105840,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31529})
    }
}) -- Stitches Jr. Jr

map.nodes[29672412] = PetBattle({
    id=97804,
    note=L["general_pet_tamer_note"].."\n\n"..L["tiffany_nelson_note"],
    rewards={
        Achievement({id=10876, criteria=31530}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=3, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=3, oneline=true}), -- Beast
        Achievement({id=9688, criteria=3, oneline=true}), -- Critter
        Achievement({id=9689, criteria=3, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=3, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=3, oneline=true}), -- Flying
        Achievement({id=9692, criteria=3, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=3, oneline=true}), -- Magic
        Achievement({id=9694, criteria=3, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=3, oneline=true})  -- Undead
    }
}) -- Tiffany Nelson
