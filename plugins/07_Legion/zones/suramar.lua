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
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 680, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[42078013] = Rare({
    id = 109954,
    quest = 43348, -- needs to be checked
    rewards = {
        Achievement({id = 11265, criteria = 33353}) -- Adventurer of Suramar
    }
}) -- Magister Phaedris

map.nodes[49677898] = Rare({
    id = 111007,
    quest = 43602, -- 43603 -- needs to be ckecked
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

map.nodes[42195635] = Rare({
    id = 111197,
    quest = 43954,
    rewards = {
        Achievement({id = 11265, criteria = 33365}) -- Adventurer of Suramar
    }
}) -- Anax

------------------- Not part of the Adventurer Achievement --------------------

map.nodes[29208880] = Rare({
    id = 112756,
    quest = nil,
    rewards = {
        Transmog({item = 132455, slot = L['cloth'], class = 'MAGE'}), -- Norgannon's Foresight
        Transmog({item = 132455, slot = L['cloth'], class = 'PRIEST'}), -- Norgannon's Foresight
        Transmog({item = 132455, slot = L['cloth'], class = 'WARLOCK'}), -- Norgannon's Foresight
        Transmog({item = 137080, slot = L['mail'], class = 'HUNTER'}) -- Roar of the Seven Lions
    },
    pois = {
        POI({28948490}), Path({
            29208880, 28478925, 27668929, 27108846, 27158712, 27768510,
            28698530, 28948490
        })
    }
}) -- Sorallus

map.nodes[57606700] = Rare({id = 112758, quest = 45475, rewards = {}}) -- Auditor Esiel

map.nodes[49607960] = Rare({id = 112757, quest = 45476, rewards = {}}) -- Magistrix Vilessa

map.nodes[56607520] = Rare({
    id = 112705,
    quest = 45478,
    rewards = {},
    pois = {Path({57207600, 56607520, 56007420})}
}) -- Achronos

map.nodes[23605660] = Rare({id = 104521, quest = 45504, rewards = {}}) -- Alteria

map.nodes[34156099] = Rare({id = 110024, quest = 43351, rewards = {}}) -- Mal'Dreth the Corruptor

--------------------------------- TODO ---------------------------------
-- rough coordinates and quest ids from wowhead

map.nodes[65605900] = Rare({
    id = 110656,
    quest = 43481,
    note = 'TODO',
    rewards = {}
}) -- Arcanist Lylandre

map.nodes[33801500] = Rare({
    id = 106351,
    quest = 43717,
    note = 'TODO',
    rewards = {}
}) -- Artificer Lothaire

map.nodes[81606160] = Rare({
    id = 112759,
    quest = 45471,
    note = 'TODO',
    rewards = {}
}) -- Az'jatar

local Baconlisk = Rare({
    id = 103787,
    quest = nil,
    fgroup = 'baconlisk',
    note = 'TODO',
    rewards = {}
}) -- Baconlisk

map.nodes[24804980] = Baconlisk
map.nodes[39002940] = Baconlisk
map.nodes[75805020] = Baconlisk

map.nodes[25004400] = Rare({
    id = 105632,
    quest = nil,
    note = 'TODO',
    rewards = {}
}) -- Broodmother Shu'malis

map.nodes[62604760] = Rare({
    id = 110726,
    quest = nil,
    note = 'TODO',
    rewards = {}
}) -- Cadraeus

map.nodes[23205860] = Rare({
    id = 104519,
    quest = 45503,
    note = 'TODO',
    rewards = {}
}) -- Colerian

map.nodes[68205860] = Rare({
    id = 100864,
    quest = nil,
    note = 'TODO',
    rewards = {}
}) -- Cora'kar

map.nodes[22165179] = Rare({
    id = 99792,
    quest = 41319,
    note = 'TODO',
    rewards = {}
}) -- Elfbane

map.nodes[53003020] = Rare({
    id = 99610,
    quest = 40897,
    note = 'TODO',
    rewards = {}
}) -- Garvrulg

map.nodes[27606560] = Rare({
    id = 110832,
    quest = 43992,
    note = 'TODO',
    rewards = {}
}) -- Gorgroth

map.nodes[58605140] = Rare({
    id = 110944,
    quest = 43597,
    note = 'TODO',
    rewards = {}
}) -- Guardian Thor'el

map.nodes[67807080] = Rare({
    id = 103214,
    quest = nil,
    note = 'TODO',
    rewards = {}
}) -- Har'kess the Insatiable

map.nodes[61603960] = Rare({
    id = 103223,
    quest = 43993,
    note = 'TODO',
    rewards = {}
}) -- Hertha Grimdottir

map.nodes[38007040] = Rare({
    id = 106532,
    quest = 44569,
    note = 'TODO',
    rewards = {}
}) -- Inquisitor Volitix

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- King Morgalash

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Lady Rivantas

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Lieutenant Strathmar

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Maia the White

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Mar'tura

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Matron Hagatha

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Miasu

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Myonix

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Oglok the Furious

-- map.nodes[24564739] = Rare({
--     id = 110577,
--     quest = 43449,
-- note = 'TODO',
--     rewards = {},
-- }) -- Oreth the Vile

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Pashya

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Pinchshank

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Rauren

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Reef Lord Raj'his

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Rok'nash

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Sanaar

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Scythemaster Cil'raman

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Selenyi

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Shadowquill

map.nodes[26244119] = Rare({
    id = 109054,
    quest = 42831,
    note = 'TODO',
    rewards = {}
}) -- Shal'an

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Siegemaster Aedrin

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Tideclaw

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Vicious Whale Shark

-- map.nodes[0000] = Rare({
--     id = nil,
--     quest = nil,
-- note = 'TODO',
--     rewards = {},
-- }) -- Volshax, Breaker of Will

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[26364133] = Treasure({
    quest = 42827,
    label = L['ancient_mana_chunk'],
    rewards = {
        Achievement({id = 11260, criteria = {id = 1, qty = true}}) -- NAME
    }
}) -- Ancient Mana Chunk

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
