-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({ id=630, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[35483320] = Rare({
    id=107657,
    quest=42505,
    note="Walks around the pool",
    rewards={
        Achievement({id=11261, criteria=33372}),
        Transmog({item=141868, slot=L["cloth"]}) -- Shal'imanacles
    },
    pois={
        Path({35383458, 35103437, 34933382, 35153332, 35483320, 35743343, 35883393, 35703445, 35383458})
    }
}) -- Arcanist Shal'iman

map.nodes[59861206] = Rare({
    id=90244,
    quest=37932,
    note=L["arcavellus_note"],
    rewards={
        Achievement({id=11261, criteria=33262}),
        Transmog({item=129085, slot=L["cloth"]}) -- Arcavellus' Unbound Spaulders
    }
}) -- Arcavellus

map.nodes[32352992] = Rare({
    id=91187,
    quest=38238,
    note=L["beacher_note"],
    rewards={
        Achievement({id=11261, criteria=33268}),
        Transmog({item=129067, slot=L["plate"]}) -- Sand-Blasted Pauldrons
    },
    pois={
        Path({32083009, 32352992, 32532875, 32722834, 33352833})
    }
}) -- Beacher

map.nodes[29295365] = Rare({
    id=107327,
    quest=42417,
    rewards={
        Transmog({item=129079, slot=L["leather"]}) -- Bile-Resistant Boots
    }
}) -- Bilebrain

map.nodes[55144573] = Rare({
    id=107127,
    quest=42450,
    rewards={
        Achievement({id=11261, criteria=33270}),
        Transmog({item=129086, slot=L["plate"]}) -- Brawlgoth's Choker
    }
}) -- Brawlgoth

map.nodes[59304630] = Rare({
    id=91100,
    quest=38212,
    note=L["brogozog_note"],
    rewards={
        Achievement({id=11261, criteria=32403}),
        Achievement({id=11186, criteria=1}),
        Transmog({item=129068, slot=L["mail"]}) -- Legion Lord's Spaulder
    }
}) -- Brogozog

map.nodes[33434116] = Rare({
    id=107105,
    quest=44670, --42277
    note=L["in_small_cave"],
    rewards={
        Transmog({item=141869, slot=L["leather"]}) -- Broodmother Armor
    },
    pois={
        POI({33314250})
    }
}) -- Broodmother Lizax

map.nodes[52372300] = Rare({
    id=91289,
    quest=38268,
    rewards={
        Transmog({item=129063, slot=L["leather"]}) -- Darkbane Visage
    }
}) -- Cailyn Paledoom

map.nodes[53454397] = Rare({
    id=89846,
    quest=37821,
    rewards={
        Achievement({id=11261, criteria=33250}),
        Transmog({item=129066, slot=L["leather"]}) -- Nar'thalas Guard Mantle
    }
}) -- Captain Volo'ren

map.nodes[65645690] = Rare({
    id=106990,
    quest=42221,
    note=L["chief_bitterbrine_note"],
    rewards={
        Achievement({id=11261, criteria=33269}),
        Item({item=129073, note=L["ring"]}) -- Bitterbrine's Signet Ring
    }
}) -- Chief Bitterbrine

Map({id=633}).nodes[62783072] = Rare({ -- remove??
    id=108255,
    quest=42699,
    parent={ id=map.id, pois={POI({56096851})} }
}) -- Coura, Mistress of Arcana

map.nodes[51143172] = Rare({
    id=90057,
    quest=37869,
    rewards={
        Achievement({id=11261, criteria=33259}),
        Transmog({item=129084, slot=L["mail"]}) -- Daggerbeak's Nesting Legguards
    }
}) -- Daggerbeak

map.nodes[50525203] = Rare({
    id=112637,
    quest=44081, -- 37869
    note=L["devious_sunrunner_note"],
    rewards={
        Achievement({id=11261, criteria=33272})
    },
    pois={
        POI({60274618}) -- Ley Portal
    }
}) -- Devious Sunrunner

map.nodes[43152815] = Rare({
    id=91579,
    quest=38352,
    note=L["doomlord_kazrok_note"],
    rewards={
        Achievement({id=11261, criteria=32402}),
        Achievement({id=11186, criteria=1}),
        Item({item=129056, note=L["trinket"]}) -- Dreadlord's Hamstring
    }
}) -- Doomlord Kazrok

map.nodes[43532458] = Rare({
    id=105938,
    quest=42069,
    note=L["felwing_note"],
    rewards={
        Achievement({id=11261, criteria=32401}),
        Achievement({id=11186, criteria=1}),
        Transmog({item=129087, slot=L["leather"]}) -- Smooth Felwing Wraps
    }
}) -- Felwing

map.nodes[45205783] = Rare({
    id=89884,
    quest=37824,
    rewards={
        Achievement({id=11261, criteria=33258}),
        Transmog({item=129090, slot=L["cloak"]}) -- Bosun's Acid-Blotched Cape
    }
}) -- Flog the Captain-Eater

map.nodes[65164000] = Rare({
    id=89816,
    quest=37820,
    note=L["golza_note"],
    rewards={
        Achievement({id=11261, criteria=33249}),
        Item({item=129091, note=L["trinket"]}) -- Golza's Iron Fin
    }
}) -- Golza the Iron Fin

map.nodes[30784800] = Rare({
    id=107136,
    quest=42286,
    rewards={
        Transmog({item=141873, slot=L["mail"]}) -- Felstalker Leash Belt
    }
}) -- Houndmaster Stroxis

map.nodes[35325038] = Rare({
    id=90803,
    quest=38037, -- 43427
    note=L["infernal_lord_note"],
    rewards={
        Achievement({id=11261, criteria=33264}),
        Transmog({item=129083, slot=L["plate"]}) -- Greathelm of Infernal Lords
    }
}) -- Infernal Lord

map.nodes[28435219] = Rare({
    id=107269,
    quest=42376,
    note=L["inquisitor_tivos_note"],
    rewards={
        Achievement({id=11261, criteria=33374}),
        Transmog({item=141874, slot=L["cloth"]}) -- Inquisitor's Corrupted Cincture
    },
    pois={
        POI({26824905}) -- Legion Portal
    }
}) -- Inquisitor Tivos

map.nodes[50043466] = Rare({
    id=89865,
    quest=37823,
    rewards={
        Achievement({id=11261, criteria=33257}),
        Item({item=129072, note=L["neck"]}) -- The Violaceous Pearl
    }
}) -- Mrrgrl the Tide Reaver

map.nodes[49500880] = Rare({
    id=90217,
    quest=37928,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=11261, criteria=33261}),
        Transmog({item=129061, slot=L["cloth"]}) -- Cowl of Azure Vengeance
    },
    pois={
        POI({50140777}) -- Cave Entrance
    }
}) -- Normantis the Deposed

map.nodes[56112907] = Rare({
    id=90901,
    quest=38061,
    rewards={
        Achievement({id=11261, criteria=33265}),
        Transmog({item=138395, slot=L["leather"]}) -- Meowl's Mane
    }
}) -- Pridelord Meowl

map.nodes[32604875] = Rare({
    id=109504,
    quest=44108,
    rewards={
        Achievement({id=11261, criteria=33271}),
        Transmog({item=129075, slot=L["cloak"]}) -- Ragemaw's Hide
    },
    pois={
        POI({34814982}) -- Cave Entrance
    }
}) -- Ragemaw

map.nodes[41014179] = Rare({
    id=89016,
    quest=37537,
    rewards={
        Achievement({id=11261, criteria=33377}),
        Transmog({item=129080, slot=L["leather"]}) -- Alpha Seal Handwraps
    }
}) -- Ravyn-Drath

map.nodes[67135159] = Rare({
    id=90505,
    quest=37989,
    rewards={
        Achievement({id=11261, criteria=33263}),
        Transmog({item=129064, slot=L["plate"]}) -- Arcanetic Plate Greaves
    }
}) -- Syphonus & Leodrath

map.nodes[58687964] = Rare({
    id=108136,
    quest=44671,
    note=L["in_cave"],
    rewards={
        Transmog({item=129081, slot=L["plate"]}) -- The Heavyweight Belt
    },
    pois={
        POI({58447849}) -- Cave Entrance
    }
}) -- The Muscle

map.nodes[59685517] = Rare({
    id=89850,
    quest=37822,
    rewards={
        Achievement({id=11261, criteria=33251}),
        Transmog({item=129065, slot=L["cloth"]}) -- The Shadow Oracle's Leggings
    }
}) -- The Oracle

map.nodes[61306200] = Rare({
    id=91113,
    quest=38217,
    rewards={
        Achievement({id=11261, criteria=33267}),
        Transmog({item=129062, slot=L["mail"]}) -- Scale Helm of the Frigid Depths
    }
}) -- Tide Behemoth

map.nodes[47453446] = Rare({
    id=89650,
    quest=37726,
    rewards={
        Achievement({id=11261, criteria=33248}),
        Transmog({item=129082, slot=L["cloth"]}) -- Valiyaka's Weathered Handwraps
    }
}) -- Valiyaka the Stormbringer

map.nodes[37274322] = Rare({
    id=107113,
    quest=42280,
    rewards={
        Achievement({id=11261, criteria=33373}),
        Transmog({item=141875, slot=L["mail"]}) -- Hauberk of the Wrathblade
    }
}) -- Vorthax

map.nodes[49105520] = Rare({
    id=90164,
    quest=37909,
    rewards={
        Achievement({id=11261, criteria=33260}),
        Transmog({item=129069, slot=L["mail"]}) -- Stalker Collar Bracers
    },
    pois={
        Path({51475623, 50325564, 49555540, 48105415, 47855347, 47365290})
    }
}) -- Warbringer Mox'na

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- 43 / 49 Treasures ( 6 Missing, criteriatree id = 53746 )

local Treasure = Class('Treasure', Treasure, {
    label=L["small_treasure_chest"],
    rewards={
        Achievement({id=11256, criteria={
            {id=1, qty=true, suffix=" "..L["treasures_discovered"]}
        }})
    }
})

map.nodes[53033726] = Treasure({quest=37596})

map.nodes[44473946] = Treasure({
    quest=37713,
    label=L["treasure_chest"]
})

map.nodes[49384536] = Treasure({
    quest=37828,
    label=L["treasure_chest"],
    rewards={
        Toy({item=122681}) -- Sternfathom's Pet Journal
    }
})

map.nodes[53176444] = Treasure({quest=37829, label=L["treasure_chest"]})
map.nodes[58364378] = Treasure({quest=37830, label=L["glimmering_treasure_chest"]})
map.nodes[49653448] = Treasure({quest=37831})
map.nodes[63231521] = Treasure({quest=37832, label=L["treasure_chest"]})

map.nodes[57901220] = Treasure({
    quest=37958,
    label=L["treasure_chest"],
    note=L["treasure_37958"],
    pois={
        POI({57271300})
    }
})

map.nodes[58381229] = Treasure({
    quest=37980,
    label=L["treasure_chest"],
    note=L["treasure_37980"],
    pois={
        POI({58701410}) -- Ley Portal
    }
})

map.nodes[65066978] = Treasure({
    quest=38239,
    label=L["seemingly_unguarded_treasure"],
    note=L["seemingly_unguarded_treasure_note"],
    rewards={
        Item({item=129070, note=L["ring"]}) -- Ring of the Dread Pirate Bob
    }
})

map.nodes[56443481] = Treasure({quest=38251, label=L["treasure_chest"]})
map.nodes[40575767] = Treasure({quest=38316, label=L["treasure_chest"]})
map.nodes[42600810] = Treasure({quest=38367, label=L["glimmering_treasure_chest"]})

map.nodes[49415800] = Treasure({
    quest=38370,
    rewards={
        Item({item=141882, note=L["ring"]}) -- Eternal Groom's Wedding Band
    }
})

map.nodes[55905690] = Treasure({quest=38365, label=L["disputed_treasure"]})
map.nodes[57153106] = Treasure({quest=38419})
map.nodes[55621855] = Treasure({
    quest=40711,
    label=L["treasure_chest"],
    note=L["treasure_40711"]
})
map.nodes[66064345] = Treasure({quest=40751})
map.nodes[58645340] = Treasure({quest=40752})
map.nodes[59876316] = Treasure({quest=42272})
map.nodes[62405840] = Treasure({quest=42273})
map.nodes[63005420] = Treasure({
    quest=42278,
    note=L["in_cave"],
    pois={
        POI({64005290})
    }
})
map.nodes[52004210] = Treasure({quest=42281})
map.nodes[53684396] = Treasure({quest=42282, note=L["treasure_42282"]})
map.nodes[53504545] = Treasure({quest=42283, note=L["treasure_42283"]})

Map({id=631}).nodes[61968380] = Treasure({
    quest=42284,
    note=L["treasure_42284"],
    parent={ id=map.id, pois={ POI({53794043})} }
})

map.nodes[54313633] = Treasure({quest=42287, note=L["treasure_42287"]})
map.nodes[55362774] = Treasure({quest=42288})

map.nodes[51502430] = Treasure({
    quest=42289,
    label=L["treasure_chest"],
    note=L["in_cave"],
    pois={
        POI({47932503})
    }
})

map.nodes[50215029] = Treasure({
    quest=42290,
    note=L["in_cave"],
    pois={
        POI({50094879})
    }
})

map.nodes[41393075] = Treasure({
    quest=42292,
    label=L["treasure_chest"],
    note=L["in_small_cave"]
})

map.nodes[63653919] = Treasure({quest=42293})
map.nodes[62814479] = Treasure({quest=42294})
map.nodes[47860773] = Treasure({quest=42295})
map.nodes[43402243] = Treasure({quest=42297, label=L["glimmering_treasure_chest"]})

map.nodes[56892499] = Treasure({
    quest=42338,
    note=L["in_small_cave"],
    pois={
        POI({55702540})
    }
})

map.nodes[52842059] = Treasure({
    quest=42339,
    label=L["treasure_chest"],
    note=L["in_cave"].."\n"..L["treasure_42339"],
    pois={
        POI({53902240})
    }
})

map.nodes[65462961] = Treasure({quest=42958})
map.nodes[34583556] = Treasure({quest=44102, note=L["in_small_cave"]})

map.nodes[68872973] = Treasure({
    quest=44103,
    note=L["in_water_cave"],
    pois={
        POI({69732953})
    }
})

map.nodes[53611813] = Treasure({quest=44104, note=L["in_small_cave"]})
map.nodes[26254713] = Treasure({quest=44105, note=L["in_small_cave"]})
map.nodes[54875214] = Treasure({quest=44405, note=L["in_small_cave"]})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[50004140] = PetBattle({
    id=106476,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31520})
    }
}) -- Beguiling Orb

map.nodes[65604100] = PetBattle({
    id=105898,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31518})
    }
}) -- Blottis

map.nodes[46404040] = PetBattle({
    id=106552,
    note=L["general_pet_tamer_note"].."\n\n"..L["nightwatcher_merayl_note"],
    rewards={
        Achievement({id=10876, criteria=31521}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=1, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=1, oneline=true}), -- Beast
        Achievement({id=9688, criteria=1, oneline=true}), -- Critter
        Achievement({id=9689, criteria=1, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=1, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=1, oneline=true}), -- Flying
        Achievement({id=9692, criteria=1, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=1, oneline=true}), -- Magic
        Achievement({id=9694, criteria=1, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=1, oneline=true})  -- Undead
    }
}) -- Nightwatcher Merayl

map.nodes[43400860] = PetBattle({
    id=106417,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31522})
    }
}) -- Vinu

map.nodes[53141620] = PetBattle({
    id=106542,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31523})
    }
}) -- Wounded Azurewing Whelpling
