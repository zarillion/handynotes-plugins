-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle

local Achievement = ns.reward.Achievement
local Toy = ns.reward.Toy

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 627, settings = true})
local swrs = Map({id = 628, settings = true}) -- Sewers
-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[45144682] = Collectible({
    icon = 'chest_gy',
    scale = 1.5,
    label = L['sheddles_chest'],
    note = L['shoe_shine_kit_note'],
    rewards = {
        Toy({item = 129055}) -- Shoe Shine Kit
    }
}) -- Sheddle's Chest

map.nodes[47364124] = Collectible({
    --  quest=45365,
    icon = 'chest_gy',
    scale = 1.5,
    label = '{item:143534}',
    note = L['wand_simulated_life_note'],
    rewards = {
        Toy({item = 143534}) -- Wand of Simulated Life
    }
}) -- Wand of Simulated Life

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[28082610] = PetBattle({
    id = 107489,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['amalia_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31524}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 4, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 4, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 4, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 4, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 4, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 4, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 4, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 4, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 4, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 4, oneline = true}) -- Undead
    }
}) -- Amalia

map.nodes[26992530] = PetBattle({
    id = 99210,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['bohdi_sunwayver_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31525}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 2, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 2, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 2, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 2, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 2, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 2, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 2, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 2, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 2, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 2, oneline = true}) -- Undead
    }
}) -- Bohdi Sunwayver

map.nodes[26742377] = PetBattle({
    id = 99742,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31526})}
}) -- Heliosus

map.nodes[27192195] = PetBattle({
    id = 99182,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['sir_galveston_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31527}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 5, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 5, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 5, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 5, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 5, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 5, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 5, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 5, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 5, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 5, oneline = true}) -- Undead
    }
}) -- Sir Galveston

map.nodes[28382151] = PetBattle({
    id = 105241,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31528})}
}) -- Splint Jr.

map.nodes[29252257] = PetBattle({
    id = 105840,
    note = L['general_pet_tamer_note'],
    rewards = {Achievement({id = 10876, criteria = 31529})}
}) -- Stitches Jr. Jr

map.nodes[29672412] = PetBattle({
    id = 97804,
    note = L['general_pet_tamer_note'] .. '\n\n' .. L['tiffany_nelson_note'],
    rewards = {
        Achievement({id = 10876, criteria = 31530}), ns.reward.Spacer(),
        Achievement({id = 9686, criteria = 3, oneline = true}), -- Aquatic
        Achievement({id = 9687, criteria = 3, oneline = true}), -- Beast
        Achievement({id = 9688, criteria = 3, oneline = true}), -- Critter
        Achievement({id = 9689, criteria = 3, oneline = true}), -- Dragon
        Achievement({id = 9690, criteria = 3, oneline = true}), -- Elemental
        Achievement({id = 9691, criteria = 3, oneline = true}), -- Flying
        Achievement({id = 9692, criteria = 3, oneline = true}), -- Humanoid
        Achievement({id = 9693, criteria = 3, oneline = true}), -- Magic
        Achievement({id = 9694, criteria = 3, oneline = true}), -- Mechanical
        Achievement({id = 9695, criteria = 3, oneline = true}) -- Undead
    }
}) -- Tiffany Nelson

-------------------------------------------------------------------------------
----------------------------- BROKEN ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

swrs.nodes[52805260] = ns.node.Safari.BlindRat({
    parent = {
        id = map.id,
        pois = {POI({60224829, 34604549})},
        note = L['inside_dalaran_sewers']
    },
    pois = {
        POI({
            47206000, 48006160, 48403720, 48405940, 48406020, 48606000,
            48606120, 49403860, 49406160, 50006020, 50403880, 50405020,
            50803940, 51204040, 51404080, 52004040, 52204100, 52205280,
            52206640, 52406720, 52406780, 52805260, 53406720, 53406760,
            53606780, 54006700, 54203780, 55003660, 55403760, 55406720,
            55603740, 56003820, 56206400, 56403860, 56606020, 56803800,
            57205860, 57406180, 57605940, 57606140, 57606240, 62205020,
            62205060, 63005180, 63205060, 63404740, 63405020, 63605020,
            64004800, 64005280
        })
    }
})

map.nodes[50406400] = ns.node.Safari.DustBunny({
    pois = {
        POI({
            21003060, 21603120, 32004240, 32004340, 32004360, 36204420,
            36404540, 36604500, 37204560, 38601720, 39001780, 39601640,
            39601680, 39805180, 40405280, 40605180, 41005080, 41005340,
            41405360, 45203440, 45403480, 46003440, 46003460, 46603460,
            47202020, 47402080, 50006620, 50406400, 50406500, 50806360,
            50806500, 51206640, 53203980, 53403940, 54203940, 54204020,
            54403840, 54404080, 54603900, 54604040, 54604060, 61402440,
            61602460, 61802440, 64206020, 64206080, 64606060, 67204640,
            67404800, 67604560, 68204480
        })
    }
})
