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
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 634, settings = true})
local helheim = Map({id = 649, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- https://wowwiki-archive.fandom.com/wiki/Stormheim/Rare_mobs

map.nodes[45807740] = Rare({
    id = 91874,
    quest = nil, -- 38431
    rewards = {
        Achievement({id = 11263, criteria = 33296}), -- Adventurer of Stormheim
        Transmog({item = 129048, slot = L['cloth']}) -- Squallfury Robes
    }
}) -- Bladesquall

map.nodes[38003900] = Rare({
    id = 92599,
    quest = nil, -- 38626
    rewards = {
        Achievement({id = 11263, criteria = 33300}) -- Adventurer of Stormheim
    }
}) -- Bloodstalker Alpha - Worg Pack

map.nodes[57804500] = Rare({
    id = 92685,
    rewards = {
        Achievement({id = 11263, criteria = 33303}) -- Adventurer of Stormheim
    }
}) -- Captain Brvet - Helmouth Raiders

map.nodes[58207660] = Rare({
    id = 94313,
    faction = 'Horde',
    rewards = {
        Transmog({item = 129144, slot = L['leather']}) -- Boomer's Utility Belt
    }
}) -- Daniel "Boomer" Vorick

map.nodes[74006400] = Rare({
    id = 94347,
    quest = nil, -- 43343
    rewards = {
        Transmog({item = 130134, slot = L['mail']}) -- Padded-Link Sniper Leggings
    }
}) -- Dread-Rider Cortis

map.nodes[41603380] = Rare({
    id = 98188,
    quest = nil, -- 40068
    rewards = {
        Achievement({id = 11263, criteria = 33311}), -- Adventurer of Stormheim
        Transmog({item = 132898, slot = L['plate']}) -- Sabatons of the Endless Vigil
    }
}) -- Egyl the Enduring

map.nodes[46608380] = Rare({
    id = 91803,
    quest = nil, -- 38425
    rewards = {
        Achievement({id = 11263, criteria = 33295}) -- Adventurer of Stormheim
    }
}) -- Fathnyr

helheim.nodes[85005020] = Rare({
    id = 92040,
    quest = nil, -- 38461
    rewards = {
        Achievement({id = 11263, criteria = 33298}) -- Adventurer of Stormheim
    }
}) -- Fenri

map.nodes[41606660] = Rare({
    id = 91529,
    quest = nil, -- 38333
    rewards = {
        Achievement({id = 11263, criteria = 33293}), -- Adventurer of Stormheim
        Transmog({item = 129291, slot = L['plate']}) -- Stormslayer Champion Belt
    }
}) -- Glimar Ironfist - Drake Wrestler

map.nodes[78806120] = Rare({
    id = 98503,
    quest = nil, -- 40113
    rewards = {
        Achievement({id = 11263, criteria = 33314}), -- Adventurer of Stormheim
        Transmog({item = 138421, slot = L['mail']}) -- The Conqueror's Chain
    }
}) -- Grrvrgull the Conquerer

map.nodes[51607460] = Rare({
    id = 107926,
    quest = nil, -- 42591
    rewards = {
        Achievement({id = 11263, criteria = 33315}), -- Adventurer of Stormheim
        Transmog({item = 138417, slot = L['leather']}) -- The Butcher's Apron
    }
}) -- Hannval the Butcher

map.nodes[42005780] = Rare({
    id = 92590,
    quest = nil, -- 38625
    rewards = {
        Transmog({item = 129109, slot = L['cloth']}) -- Sinker's Line
    }
}) -- Hook

map.nodes[47205700] = Rare({
    id = 92951,
    quest = nil, -- 38712
    faction = 'Horde',
    rewards = {
        Transmog({item = 129037, slot = L['cloth']}) -- The Houndmaster's Fancy Pants
    }
}) -- Houndmaster Ely

map.nodes[63607460] = Rare({
    id = 90139,
    quest = nil, -- 37908
    rewards = {
        Achievement({id = 11186, criteria = 32404}) -- Tehd & Marius' Excellent Adventure
    }
}) -- Inquisitor Ernstenbok

map.nodes[62006060] = Rare({
    id = 94413,
    quest = nil, -- 39120
    rewards = {
        Achievement({id = 11263, criteria = 33309}), -- Adventurer of Stormheim
        Transmog({item = 129133, slot = L['mail']}) -- The Hammer's Head
    }
}) -- Isel the Hammer

map.nodes[61006800] = Rare({
    id = 92751,
    quest = nil, -- 39031
    rewards = {
        Achievement({id = 11263, criteria = 33304}) -- Adventurer of Stormheim
    }
}) -- Ivory Sentinel

map.nodes[73404760] = Rare({
    id = 98421,
    quest = nil, -- 40109
    rewards = {
        Achievement({id = 11263, criteria = 33313}), -- Adventurer of Stormheim
        Transmog({item = 138419, slot = L['leather']}) -- The Binder's Bonds
    }
}) -- Kottr Vondyr

map.nodes[72605020] = Rare({
    id = 93371,
    quest = nil, -- 38837
    rewards = {
        Achievement({id = 11263, criteria = 33307}), -- Adventurer of Stormheim
        Transmog({item = 129035, slot = L['cloak']}) -- Indomitable Bearskin Cloak
    }
}) -- Mordvigbjorn

map.nodes[35601860] = Rare({
    id = 91780,
    rewards = {
        Transmog({item = 129040, slot = L['plate']}) -- Clacker's Clanking Clam Diggers
    }
}) -- Mother Clacker

map.nodes[46603000] = Rare({
    id = 107544,
    quest = nil,
    rewards = {
        Achievement({id = 11160, criteria = 32096}), -- Unleashed Monstrosities
        Transmog({item = 141420, slot = L['mail']}), -- Coif of Unstable Discharge
        Transmog({item = 141418, slot = L['leather']}), -- Helm of the Mountain Recluse
        Transmog({item = 141414, slot = L['cloth']}), -- Hood of Scorned Brood
        Transmog({item = 141424, slot = L['plate']}), -- Stormbattered Casque
        Transmog({item = 141541, slot = L['cloak']}) -- Windwhipped Greatcloak

    }
}) -- Nithogg

map.nodes[58203400] = Rare({
    id = 110363,
    quest = nil, -- 43342
    rewards = {
        Achievement({id = 11263, criteria = 33316}), -- Adventurer of Stormheim
        Transmog({item = 139387, slot = L['mail']}) -- Drowned Champion's Greaves
    }
}) -- Roteye

map.nodes[42005760] = Rare({
    id = 92591,
    quest = nil, -- 38625
    rewards = {
        Transmog({item = 129109, slot = L['cloth']}) -- Sinker's Line
    }
}) -- Sinker

helheim.nodes[29606260] = Rare({
    id = 97630,
    quest = nil, -- 39870
    rewards = {
        Pet({item = 129188, id = 1753}) -- Bleakwater Jelly
    }
}) -- Soulthirster

map.nodes[54802960] = Rare({
    id = 107487,
    quest = nil, -- 42437
    rewards = {
        Transmog({item = 130132, slot = L['leather']}) -- Bracers of Earthbound Flight
    }
}) -- Starbuck

map.nodes[61002400] = Rare({
    id = 109994,
    note = L['stormtalon_note'],
    rewards = {
        Achievement({id = 11178, criteria = 32332}), -- Wake the Dragon
    }
}) -- Stormtalon

map.nodes[49607200] = Rare({
    id = 91795,
    quest = nil, -- 40939
    rewards = {
        Achievement({id = 11263, criteria = 33294}), -- Adventurer of Stormheim
        Transmog({item = 129110, slot = L['leather']}), -- Matriarch-Hide Legguards
        Pet({item = 129208, id = 1721}) -- Stormborne Whelpling
    }
}) -- Stormwing Matriarch

map.nodes[61604340] = Rare({
    id = 98268,
    quest = nil, -- 40081
    rewards = {
        Achievement({id = 11263, criteria = 33312}), -- Adventurer of Stormheim
    }
}) -- Tarben

map.nodes[408072.2] = Rare({
    id = 91892,
    quest = nil, -- 38424
    rewards = {
        Achievement({id = 11263, criteria = 33297}), -- Adventurer of Stormheim
        Toy({item = 129113}) -- Faintly Glowing Flagon of Mead
    }
}) -- Thane Irglov the Merciless - Thane's Mead Hall

map.nodes[67203980] = Rare({
    id = 92763,
    quest = nil, -- 38685
    rewards = {
        Achievement({id = 11263, criteria = 33305}), -- Adventurer of Stormheim
        Transmog({item = 129041, slot = L['cloth']}) -- Aurora of the Nameless King
    }
}) -- The Nameless King

map.nodes[46805000] = Rare({
    id = 93166,
    quest = nil, -- 38774
    rewards = {
        Achievement({id = 11263, criteria = 33306}) -- Adventurer of Stormheim
    }
}) -- Tiptog the Lost - Lost Ettin

map.nodes[64805180] = Rare({
    id = 93401,
    quest = nil, -- 38847
    rewards = {
        Achievement({id = 11263, criteria = 33308}), -- Adventurer of Stormheim
        Transmog({item = 129219, slot = L['cloth']}) -- The Flayer's Runewraps
    }
}) -- Urgev the Flayer

map.nodes[36605160] = Rare({
    id = 92152,
    quest = nil, -- 38472
    rewards = {
        Achievement({id = 11263, criteria = 33299}), -- Adventurer of Stormheim
        Transmog({item = 138418, slot = L['mail']}) -- Typhoon Grips
    }
}) -- Whitewater Typhoon

map.nodes[44202280] = Rare({
    id = 92604,
    quest = nil, -- 38627
    faction = 'Horde',
    rewards = {
        Achievement({id = 11263, criteria = 8}), -- Adventurer of Stormheim -- 33301
        Transmog({item = 129264, slot = L['plate']}) -- Patrol Captain's Gauntlets
    }
}) -- Worgen Stalkers (Champion Elodie, Priestess Liza, Tracker Jack, Ambusher Daggerfang)

map.nodes[44202281] = Rare({
    id = 92631,
    quest = nil, -- 38630
    label = L['horde_kill_squad'],
    faction = 'Alliance',
    rewards = {
        Achievement({id = 11263, criteria = 8}), -- Adventurer of Stormheim -- 33302
        Transmog({item = 129266, slot = L['plate']}) -- Raider Captain's Gauntlets
    }
}) -- Horde Kill Squad (Dark Ranger Jess, Apothecary Perez, Deathguard Adams, Assassin Huwe)

-- map.nodes[52602400] = Rare({id = 108885}) -- Aegir Wavecrusher
-- map.nodes[31603360] = Rare({id = 109113}) -- Boulderfall, the Eroded
-- map.nodes[73008300] = Rare({id = 111463, class = 'HUNTER'}) -- Bulvinkel
-- map.nodes[38607060] = Rare({id = 108790}) -- Den Mother Ylva
-- map.nodes[67005200] = Rare({id = 108827}) -- Fjorlag, the Grave's Chill
-- map.nodes[39606580] = Rare({id = 108823}) -- Halfdan
-- map.nodes[39606580] = Rare({id = 108822}) -- Huntress Estrid
-- map.nodes[63803260] = Rare({id = 100067, class = 'SHAMAN'}) -- Hydrannon
-- map.nodes[62007320] = Rare({id = 109015}) -- Lagertha
-- map.nodes[80801260] = Rare({id = 109317}) -- Rulf Bonesnapper
-- map.nodes[78200840] = Rare({id = 109318}) -- Runeseer Sigvid
-- map.nodes[37604040] = Rare({id = 117850}) -- Simone the Seductress
-- map.nodes[81600460] = Rare({id = 109195}) -- Soulbinder Halldora

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
