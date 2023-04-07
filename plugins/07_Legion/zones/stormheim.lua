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
local Path = ns.poi.Path
-------------------------------------------------------------------------------

local map = Map({id = 634, settings = true})
local helheim = Map({id = 649, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[45867740] = Rare({
    id = 91874,
    quest = 38431,
    rewards = {
        Achievement({id = 11263, criteria = 33296}), -- Adventurer of Stormheim
        Transmog({item = 129048, slot = L['cloth']}) -- Squallfury Robes
    }
}) -- Bladesquall

map.nodes[37914065] = Rare({
    id = 92599,
    quest = 38626,
    rewards = {
        Achievement({id = 11263, criteria = 33300}) -- Adventurer of Stormheim
    },
    pois = {
        Path({
            39164470, 39044413, 38854353, 38554309, 37954261, 37554219,
            37494162, 37664110, 37914065, 38114008, 38203955, 38553916,
            39033898, 39583884, 39953846
        })
    }
}) -- Bloodstalker Alpha - Worg Pack

map.nodes[57984511] = Rare({
    id = 92685,
    quest = 38642,
    note = L['captain_brvet_note'],
    rewards = {
        Achievement({id = 11263, criteria = 33303}) -- Adventurer of Stormheim
    }
}) -- Captain Brvet - Helmouth Raiders

map.nodes[58437564] = Rare({
    id = 94313,
    quest = 39048,
    faction = 'Horde',
    rewards = {
        Transmog({item = 129144, slot = L['leather']}) -- Boomer's Utility Belt
    }
}) -- Daniel "Boomer" Vorick

map.nodes[76806253] = Rare({
    id = 94347,
    quest = 43343,
    faction = 'Alliance',
    rewards = {
        Transmog({item = 130134, slot = L['mail']}) -- Padded-Link Sniper Leggings
    },
    pois = {
        Path({
            74536018, 74136049, 73916100, 73756153, 73896207, 74106253,
            74346310, 74556361, 74716413, 75156441, 75626461, 76156446,
            76536412, 76816357, 76906303, 76806253, 76496202, 76146154,
            76026101, 75966040, 75536010, 75046021, 74536018
        })
    }
}) -- Dread-Rider Cortis

map.nodes[41783414] = Rare({
    id = 98188,
    quest = 40068,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11263, criteria = 33311}), -- Adventurer of Stormheim
        Transmog({item = 132898, slot = L['plate']}) -- Sabatons of the Endless Vigil
    },
    pois = {POI({41443215})}
}) -- Egyl the Enduring

map.nodes[46838414] = Rare({
    id = 91803,
    quest = 38425,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11263, criteria = 33295}) -- Adventurer of Stormheim
    },
    pois = {POI({46398309})}
}) -- Fathnyr

map.nodes[41546656] = Rare({
    id = 91529,
    quest = 38333,
    rewards = {
        Achievement({id = 11263, criteria = 33293}), -- Adventurer of Stormheim
        Transmog({item = 129291, slot = L['plate']}) -- Stormslayer Champion Belt
    }
}) -- Glimar Ironfist - Drake Wrestler

map.nodes[78656117] = Rare({
    id = 98503,
    quest = 40113,
    rewards = {
        Achievement({id = 11263, criteria = 33314}), -- Adventurer of Stormheim
        Transmog({item = 138421, slot = L['mail']}) -- The Conqueror's Chain
    }
}) -- Grrvrgull the Conquerer

map.nodes[51607474] = Rare({
    id = 107926,
    quest = 42591,
    rewards = {
        Achievement({id = 11263, criteria = 33315}), -- Adventurer of Stormheim
        Transmog({item = 138417, slot = L['leather']}) -- The Butcher's Apron
    }
}) -- Hannval the Butcher

map.nodes[41985771] = Rare({
    id = 92590,
    quest = 38625,
    label = L['hook_and_sinker'],
    faction = 'Alliance',
    rewards = {
        Transmog({item = 129109, slot = L['cloth']}) -- Sinker's Line
    }
}) -- Hook & Sinker

map.nodes[47165716] = Rare({
    id = 92951,
    quest = 38712,
    faction = 'Horde',
    rewards = {
        Transmog({item = 129037, slot = L['cloth']}) -- The Houndmaster's Fancy Pants
    }
}) -- Houndmaster Ely

map.nodes[63867429] = Rare({
    id = 90139,
    quest = 37908,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11186, criteria = 32404}) -- Tehd & Marius' Excellent Adventure
    },
    pois = {POI({62577493})}
}) -- Inquisitor Ernstenbok

map.nodes[62066046] = Rare({
    id = 94413,
    quest = 39120,
    rewards = {
        Achievement({id = 11263, criteria = 33309}), -- Adventurer of Stormheim
        Transmog({item = 129133, slot = L['mail']}) -- The Hammer's Head
    }
}) -- Isel the Hammer

map.nodes[59806812] = Rare({
    id = 92751,
    quest = 39031,
    rewards = {
        Achievement({id = 11263, criteria = 33304}) -- Adventurer of Stormheim
    }
}) -- Ivory Sentinel

map.nodes[73474766] = Rare({
    id = 98421,
    quest = 40109,
    rewards = {
        Achievement({id = 11263, criteria = 33313}), -- Adventurer of Stormheim
        Transmog({item = 138419, slot = L['leather']}) -- The Binder's Bonds
    }
}) -- Kottr Vondyr

map.nodes[72504993] = Rare({
    id = 93371,
    quest = 38837,
    rewards = {
        Achievement({id = 11263, criteria = 33307}), -- Adventurer of Stormheim
        Transmog({item = 129035, slot = L['cloak']}) -- Indomitable Bearskin Cloak
    }
}) -- Mordvigbjorn

map.nodes[35601860] = Rare({
    id = 91780,
    quest = 38422,
    faction = 'Horde',
    note = L['mother_clacker_note'],
    rewards = {
        Transmog({item = 129040, slot = L['plate']}) -- Clacker's Clanking Clam Diggers
    }
}) -- Mother Clacker

-- map.nodes[46603000] = Rare({
--     id = 107544,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11160, criteria = 32096}), -- Unleashed Monstrosities
--         Transmog({item = 141420, slot = L['mail']}), -- Coif of Unstable Discharge
--         Transmog({item = 141418, slot = L['leather']}), -- Helm of the Mountain Recluse
--         Transmog({item = 141414, slot = L['cloth']}), -- Hood of Scorned Brood
--         Transmog({item = 141424, slot = L['plate']}), -- Stormbattered Casque
--         Transmog({item = 141541, slot = L['cloak']}) -- Windwhipped Greatcloak

--     }
-- }) -- Nithogg (world boss)

map.nodes[58413384] = Rare({
    id = 110363,
    quest = 43342,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11263, criteria = 33316}), -- Adventurer of Stormheim
        Transmog({item = 139387, slot = L['mail']}) -- Drowned Champion's Greaves
    },
    pois = {POI({57773470})}
}) -- Roteye

map.nodes[54792939] = Rare({
    id = 107487,
    quest = 42437,
    rewards = {
        Transmog({item = 130132, slot = L['leather']}) -- Bracers of Earthbound Flight
    }
}) -- Starbuck

map.nodes[60572649] = Rare({
    id = 109994,
    note = L['stormtalon_note'],
    rewards = {
        Achievement({id = 11178, criteria = 32332}) -- Wake the Dragon
    }
}) -- Stormtalon

map.nodes[49547178] = Rare({
    id = 91795,
    quest = 38423,
    rewards = {
        Achievement({id = 11263, criteria = 33294}), -- Adventurer of Stormheim
        Transmog({item = 129110, slot = L['leather']}), -- Matriarch-Hide Legguards
        Pet({item = 129208, id = 1721}) -- Stormborne Whelpling
    }
}) -- Stormwing Matriarch

map.nodes[61454316] = Rare({
    id = 98268,
    quest = 40081,
    rewards = {
        Achievement({id = 11263, criteria = 33312}) -- Adventurer of Stormheim
    }
}) -- Tarben

map.nodes[40657240] = Rare({
    id = 91892,
    quest = 38424,
    note = L['thane_irglov_note'],
    rewards = {
        Achievement({id = 11263, criteria = 33297}), -- Adventurer of Stormheim
        Toy({item = 129113}) -- Faintly Glowing Flagon of Mead
    },
    pois = {POI({41877124})}
}) -- Thane Irglov the Merciless - Thane's Mead Hall

map.nodes[67273972] = Rare({
    id = 92763,
    quest = 38685,
    note = L['nameless_king_note'],
    rewards = {
        Achievement({id = 11263, criteria = 33305}), -- Adventurer of Stormheim
        Transmog({item = 129041, slot = L['cloth']}) -- Aurora of the Nameless King
    }
}) -- The Nameless King

map.nodes[47454992] = Rare({
    id = 93166,
    quest = 38774,
    rewards = {
        Achievement({id = 11263, criteria = 33306}) -- Adventurer of Stormheim
    },
    pois = {
        Path({
            45884981, 46394982, 46934983, 47454992, 47944975, 48414994, 48815030
        })
    }
}) -- Tiptog the Lost - Lost Ettin

map.nodes[64875181] = Rare({
    id = 93401,
    quest = 38847,
    rewards = {
        Achievement({id = 11263, criteria = 33308}), -- Adventurer of Stormheim
        Transmog({item = 129219, slot = L['cloth']}) -- The Flayer's Runewraps
    }
}) -- Urgev the Flayer

map.nodes[36505174] = Rare({
    id = 92152,
    quest = 38472,
    rewards = {
        Achievement({id = 11263, criteria = 33299}), -- Adventurer of Stormheim
        Transmog({item = 138418, slot = L['mail']}) -- Typhoon Grips
    }
}) -- Whitewater Typhoon

map.nodes[44402286] = Rare({
    id = 92604,
    quest = 38627,
    label = L['worgen_stalkers'],
    faction = 'Horde',
    rewards = {
        Achievement({id = 11263, criteria = 33301}), -- Adventurer of Stormheim
        Transmog({item = 129264, slot = L['plate']}) -- Patrol Captain's Gauntlets
    }
}) -- Worgen Stalkers (Champion Elodie, Priestess Liza, Tracker Jack, Ambusher Daggerfang)

map.nodes[44182270] = Rare({
    id = 92631,
    quest = 38630,
    label = L['forsaken_deathsquad'],
    faction = 'Alliance',
    rewards = {
        Achievement({id = 11263, criteria = 33302}), -- Adventurer of Stormheim
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

map.nodes[42473408] = Treasure({
    label = L['glimmering_treasure_chest'],
    note = L['going_up_note'],
    quest = 43189,
    rewards = {TreasuresOfStormheim, Achievement({id = 10627})},
    pois = {POI({42233486})}
})

map.nodes[68462961] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 40108,
    rewards = {TreasuresOfStormheim}
})

map.nodes[49694731] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = 38763,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({49734920})}
})

map.nodes[49086000] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43207,
    rewards = {TreasuresOfStormheim}
})

map.nodes[82395451] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43191,
    rewards = {TreasuresOfStormheim}
})

map.nodes[75676059] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43304,
    rewards = {TreasuresOfStormheim}
})

map.nodes[39571930] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38498,
    rewards = {TreasuresOfStormheim}
})

map.nodes[72125488] = Treasure({
    label = L['small_treasure_chest'],
    quest = 42628,
    rewards = {TreasuresOfStormheim}
})

map.nodes[73965224] = Treasure({
    label = L['small_treasure_chest'],
    quest = 42632,
    rewards = {TreasuresOfStormheim}
})

map.nodes[65585737] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43187,
    rewards = {TreasuresOfStormheim}
})

map.nodes[64293955] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43302,
    rewards = {TreasuresOfStormheim}
})

map.nodes[65374311] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43205,
    rewards = {TreasuresOfStormheim}
})

map.nodes[69996718] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43188,
    rewards = {TreasuresOfStormheim}
})

map.nodes[69144478] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38637,
    rewards = {TreasuresOfStormheim}
})

map.nodes[71924424] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43305,
    rewards = {TreasuresOfStormheim}
})

map.nodes[73324150] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40085,
    rewards = {TreasuresOfStormheim}
})

map.nodes[74404183] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43306,
    rewards = {TreasuresOfStormheim}
})

map.nodes[414156997] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38489,
    rewards = {TreasuresOfStormheim}
})

map.nodes[40646853] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38475,
    rewards = {TreasuresOfStormheim}
})

map.nodes[46606496] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38681,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({47996517})}
})

map.nodes[73124570] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43194,
    rewards = {TreasuresOfStormheim}
})

map.nodes[35186899] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38478,
    rewards = {TreasuresOfStormheim}
})

map.nodes[44993823] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43240,
    rewards = {TreasuresOfStormheim}
})

map.nodes[67955775] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40083,
    rewards = {TreasuresOfStormheim}
})

map.nodes[57926332] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40090,
    rewards = {TreasuresOfStormheim}
})

map.nodes[62667360] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40091,
    rewards = {TreasuresOfStormheim}
})

map.nodes[42346113] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38477,
    rewards = {TreasuresOfStormheim}
})

map.nodes[37213866] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43208,
    rewards = {TreasuresOfStormheim}
})

map.nodes[48137423] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38476,
    rewards = {TreasuresOfStormheim}
})

map.nodes[61933225] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38744,
    rewards = {TreasuresOfStormheim}
})

map.nodes[50554125] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43246,
    rewards = {TreasuresOfStormheim}
})

map.nodes[50324099] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38483,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim}
})

map.nodes[43708009] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43239,
    rewards = {TreasuresOfStormheim}
})

map.nodes[49767799] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38485,
    rewards = {TreasuresOfStormheim}
})

map.nodes[52028058] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38480,
    rewards = {TreasuresOfStormheim}
})

map.nodes[58044752] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40082,
    rewards = {TreasuresOfStormheim}
})

map.nodes[60857274] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40094,
    rewards = {TreasuresOfStormheim}
})

map.nodes[61414441] = Treasure({
    label = L['small_treasure_chest'],
    quest = 40093,
    rewards = {TreasuresOfStormheim}
})

map.nodes[41754604] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38488,
    rewards = {TreasuresOfStormheim}
})

map.nodes[43164049] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43238,
    rewards = {TreasuresOfStormheim}
})

map.nodes[31115598] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38676,
    rewards = {TreasuresOfStormheim}
})

map.nodes[35924793] = Treasure({
    label = L['small_treasure_chest'],
    quest = 38680,
    rewards = {TreasuresOfStormheim}
})

map.nodes[73985889] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43237,
    rewards = {TreasuresOfStormheim}
})

map.nodes[53229315] = Treasure({
    label = L['small_treasure_chest'],
    quest = 43190,
    rewards = {TreasuresOfStormheim}
})

map.nodes[33143606] = Treasure({
    label = L['treasure_chest'],
    quest = 38495,
    rewards = {TreasuresOfStormheim}
})

map.nodes[35033660] = Treasure({
    label = L['treasure_chest'],
    quest = 38487,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({34833444})}
})

map.nodes[75154947] = Treasure({
    label = L['treasure_chest'],
    quest = 42629,
    rewards = {TreasuresOfStormheim}
})

map.nodes[78427139] = Treasure({
    label = L['treasure_chest'],
    quest = 43307,
    rewards = {TreasuresOfStormheim}
})

map.nodes[81876750] = Treasure({
    label = L['treasure_chest'],
    quest = 40099,
    rewards = {TreasuresOfStormheim}
})

map.nodes[68974183] = Treasure({
    label = L['treasure_chest'],
    quest = 40086,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({69854250})}
})

map.nodes[55014715] = Treasure({
    label = L['treasure_chest'],
    quest = 40095,
    note = L['in_water'],
    rewards = {TreasuresOfStormheim}
})

map.nodes[39476518] = Treasure({
    label = L['treasure_chest'],
    quest = 38486,
    rewards = {TreasuresOfStormheim}
})

map.nodes[42616580] = Treasure({
    label = L['treasure_chest'],
    quest = 38474,
    rewards = {TreasuresOfStormheim}
})

map.nodes[47463411] = Treasure({
    label = L['treasure_chest'],
    quest = 43255,
    rewards = {TreasuresOfStormheim}
})

map.nodes[59315845] = Treasure({
    label = L['treasure_chest'],
    quest = 40088,
    rewards = {TreasuresOfStormheim}
})

map.nodes[61836290] = Treasure({
    label = L['treasure_chest'],
    quest = 40089,
    rewards = {TreasuresOfStormheim}
})

map.nodes[32742791] = Treasure({
    label = L['treasure_chest'],
    quest = 38490,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({33592747})}
})

map.nodes[47986237] = Treasure({
    label = L['treasure_chest'],
    quest = 38738,
    rewards = {TreasuresOfStormheim}
})

map.nodes[50061816] = Treasure({
    label = L['treasure_chest'],
    quest = 43195,
    rewards = {TreasuresOfStormheim}
})

Map({id = 636}).nodes[19994137] = Treasure({
    label = L['treasure_chest'],
    quest = 38529,
    rewards = {TreasuresOfStormheim},
    parent = {
        id = map.id,
        note = L['in_cave'],
        pois = {POI({31395738, 30035538})}
    }
})

map.nodes[46768039] = Treasure({
    label = L['treasure_chest'],
    quest = 38481,
    rewards = {TreasuresOfStormheim}
})

map.nodes[35735410] = Treasure({
    label = L['treasure_chest'],
    quest = 38677,
    rewards = {TreasuresOfStormheim}
})

map.nodes[32064719] = Treasure({
    label = L['treasure_chest'],
    quest = 43196,
    note = L['in_small_cave'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({32774795})}
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

-------------------------------------------------------------------------------
----------------------------------- HELHEIM -----------------------------------
-------------------------------------------------------------------------------

helheim.nodes[66254763] = ns.node.Node({
    label = L['to_stormheim'],
    scale = 2,
    icon = 'portal_bl',
    OnClick = function() WorldMapFrame:SetMapID(map.id) end,
    clabel = L['change_map']
})

map.nodes[73543951] = ns.node.Node({
    label = L['to_helheim'],
    scale = 2,
    icon = 'portal_bl',
    OnClick = function() WorldMapFrame:SetMapID(helheim.id) end,
    rewards = {
        Achievement({id = 11263, criteria = 33298}), -- Adventurer of Stormheim
        Achievement({
            id = 11259,
            criteria = {id = 1, qty = true},
            quest = {38383, 38503, 38510, 38516}
        }), Pet({item = 129188, id = 1753}) -- Bleakwater Jelly
    },
    clabel = L['change_map']
})

helheim.nodes[60865331] = Treasure({
    label = L['treasure_chest'],
    quest = 38383,
    rewards = {TreasuresOfStormheim}
})

helheim.nodes[83332455] = Treasure({
    label = L['treasure_chest'],
    quest = 38503,
    note = L['in_water'],
    rewards = {TreasuresOfStormheim},
    pois = {POI({82162329})}
})

helheim.nodes[79872469] = Treasure({
    label = L['treasure_chest'],
    quest = 38510,
    rewards = {TreasuresOfStormheim}
})

helheim.nodes[19594695] = Treasure({
    label = L['treasure_chest'],
    quest = 38516,
    rewards = {TreasuresOfStormheim}
})

helheim.nodes[84914996] = Rare({
    id = 92040,
    quest = 38461,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 11263, criteria = 33298}) -- Adventurer of Stormheim
    },
    pois = {POI({82404422})}
}) -- Fenri

helheim.nodes[28576380] = Rare({
    id = 97630,
    quest = 39870,
    note = L['in_water'],
    rewards = {
        Pet({item = 129188, id = 1753}) -- Bleakwater Jelly
    }
}) -- Soulthirster

helheim.nodes[27214235] = Rare({id = 115732, quest = 46949}) -- Jorvild the Trusted
