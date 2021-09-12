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

local map = Map({id = 650, settings = true})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[47606900] = PetBattle({
    id = 99077,
    note = L['bredda_tenderhide_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31531}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 6, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 6, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 6, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 6, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 6, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 6, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 6, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 6, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 6, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 6, oneline = true}) -- Undead
    }
}) -- Bredda Tenderhide

map.nodes[41803580] = PetBattle({
    id = 99150,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['grixis_tinypop_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31532}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 7, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 7, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 7, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 7, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 7, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 7, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 7, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 7, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 7, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 7, oneline = true}) -- Undead
    }
}) -- Grixis Tinypop

map.nodes[53205300] = PetBattle({
    id = 104782,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31533})}
}) -- Hungry Icefang

map.nodes[43200760] = PetBattle({
    id = 105841,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31534})}
}) -- Lil'idan

Map({id = 659}).nodes[47744458] = PetBattle({
    id = 104553,
    note = format('%s\n\n%s\n%s', L['general_pet_tamer_note'], L['in_cave'],
        L['odrogg_note']),
    parent = {id = map.id, pois = {POI({42572533})}},
    rewards = {
        Achievement({id = 10876, criteria = 31535}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 8, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 8, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 8, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 8, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 8, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 8, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 8, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 8, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 8, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 8, oneline = true}) -- Undead
    }
}) -- Odrogg

map.nodes[32705760] = PetBattle({
    id = 98572,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31536})}
}) -- Rocko
