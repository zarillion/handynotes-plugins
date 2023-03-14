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

local map = Map({id = 650, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- https://wowwiki-archive.fandom.com/wiki/Highmountain/Rare_mobs

-- map.nodes[43404750] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- "Sure-Shot" Arnie

-- map.nodes[28205280] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Ala'washte

-- map.nodes[48805000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Arru

-- map.nodes[36801620] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Bodash the Hoarder

-- map.nodes[38004560] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Bristlemaw

-- map.nodes[56407260] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Brogrul the Mighty

-- map.nodes[44001200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Crab Rider Grmlrml

-- map.nodes[48604060] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Crawshuk the Hungry

-- map.nodes[43404740] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Dargok Thunderuin

-- map.nodes[52405840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Darkful

-- map.nodes[57004840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Defilia

-- map.nodes[54604160] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Devouring Darkness

-- map.nodes[36404870] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Drugon the Frostblood

-- map.nodes[43807560] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Durguth

-- map.nodes[41205800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Flamescale

-- map.nodes[50005000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Flotsam

-- map.nodes[54407460] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Frostshard

-- map.nodes[56805960] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Gurbog da Basher

-- map.nodes[51004820] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Hartli the Snatcher

-- map.nodes[52405840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Jak

-- map.nodes[50803460] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Luggut the Eggeater

-- map.nodes[49002800] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Majestic Elderhorn

-- map.nodes[58604860] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Mawat'aki

-- map.nodes[48802740] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Mellok, Son of Tork

-- map.nodes[46600760] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Mrrklr

-- map.nodes[54604060] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Mynta Talonscreech

-- map.nodes[33802160] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Olokk the Shipbreaker

-- map.nodes[52605840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Ormagrogg

-- map.nodes[47607380] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Oubdob da Smasher

-- map.nodes[52405830] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Puck

-- map.nodes[47003300] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Raging Earth

-- map.nodes[55306180] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Raging Earth

-- map.nodes[52405140] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Ram'Pag

-- map.nodes[43404740] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Ryael Dawndrifter

-- map.nodes[45605560] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Sekhan

-- map.nodes[51002580] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Shara Felbreath

-- map.nodes[51403180] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Skullhat

-- map.nodes[41603200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Slumber

-- map.nodes[53805120] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Taurson

-- map.nodes[42004160] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Tenpak Flametotem

-- map.nodes[52405840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Xaander

-- map.nodes[52405850] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Zenobia

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

local TreasuresOfHighmountain = Achievement({
    id = 11257,
    criteria = {id = 1, qty = true}
})

-- wowhead.com/achievement=11257/treasures-of-highmountain#comments:id=2470109

map.nodes[63405930] = Treasure({
    label = L['steamy_jewelry_box'],
    quest = nil,
    note = '1',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[52405150] = Treasure({
    label = L['actually_safe_treasure_chest'],
    quest = nil,
    note = '2',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[41604990] = Treasure({
    label = L['floating_treasure'],
    quest = nil,
    note = '3',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[46702810] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = nil,
    note = '4',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[54204160] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = nil,
    note = '5',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[37205770] = Treasure({
    label = L['glimmering_treasure_chest'],
    quest = nil,
    note = '6',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[45503460] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '7',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[45202740] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '8',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[53504350] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '9',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[37503380] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '10',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[53005220] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '11',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[53103950] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '12',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[49207320] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '13',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[43707270] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '14',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[50203860] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '15',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[53404870] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '16',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[55104960] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '17',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[46804010] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '18',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[50803500] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '19',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[42503500] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '20',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[13705540] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '21',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[32304170] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '22',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[50607540] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '23',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[46207340] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '24',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[47604400] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '25',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[51003880] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '26',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[36606210] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '27',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[41903990] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '28',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[40205000] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '29',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[39307620] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '30',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[51003640] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '31',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[53605100] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '32',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[43702460] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '33',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[49603770] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '34',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[52003240] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '35',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[42202730] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '36',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[47305230] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '37',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[31903830] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '38',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[39406230] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '39',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[39505740] = Treasure({
    label = L['treasure_chest'],
    quest = nil,
    note = '40',
    rewards = {TreasuresOfHighmountain}
})

map.nodes[46302160] = Treasure({
    label = L['small_treasure_chest'],
    quest = nil,
    note = '41',
    rewards = {TreasuresOfHighmountain}
})

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

-------------------------------------------------------------------------------
----------------------------- BROKEN ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[44005120] = ns.node.Safari.BlackFootedFoxKit({
    pois = {
        POI({
            26006200, 34002440, 34006160, 35407080, 35802300, 35802360,
            36006640, 36006660, 36802080, 37206680, 39804740, 41405180,
            42604660, 43405440, 44005120, 46606800, 48204400, 48206700,
            49004420, 50406480, 50606480, 51204980, 51804560, 52004420,
            52203820, 52604320, 55006200, 56605560, 57406300
        })
    }
})

map.nodes[45807120] = ns.node.Safari.BurrowSpiderling({
    pois = {
        POI({
            42203600, 42803240, 42803260, 43203000, 43402440, 44403040,
            44403060, 44803500, 45807120, 46802980, 46803340, 47802420,
            48003260, 48207360, 51007320, 51007560
        })
    }
})

map.nodes[42601080] = ns.node.Safari.CoralbackFiddler({
    pois = {
        POI({
            25803580, 26403480, 27003300, 27203420, 27402980, 27804820,
            28003400, 28403100, 29403600, 30403380, 31402500, 31602540,
            32802200, 33602100, 35001880, 35202040, 35802020, 36201660,
            36201940, 37601580, 38001420, 39001400, 39401460, 39801240,
            41001020, 42400840, 42400900, 42601080, 43001000, 43400840,
            44001020, 44001220, 44200700, 44801280, 45201180, 46400920,
            46601120, 47400720, 47600880, 48400700, 48401340, 48401360,
            49000900, 49400980, 57002040
        })
    }
})

map.nodes[50403600] = ns.node.Safari.EchoBatling({
    pois = {
        POI({
            40804560, 49203480, 50403600, 50603540, 50603600, 49604040,
            50603620, 54604100, 54804260
        })
    }
})

map.nodes[49603640] = ns.node.Safari.HogNosedBat({
    pois = {
        POI({
            46403940, 48403680, 49203620, 49403680, 49603640, 49603660,
            50403200, 50403500, 50803360, 52803420, 53203540, 53403560
        })
    }
})

map.nodes[56406500] = ns.node.Safari.LongEaredOwl({
    pois = {POI({35002460, 55206520, 56005440, 56406500, 57605520, 58002760})}
})

map.nodes[46603280] = ns.node.Safari.MistFoxKit({
    pois = {POI({26404380, 46603280, 47803020})}
})

map.nodes[48201220] = ns.node.Safari.MudshellConch({
    pois = {
        POI({
            36201700, 37001620, 38601440, 39601360, 40001200, 42201020,
            43400780, 43600780, 43600900, 45600900, 45601060, 46200680,
            46801020, 47600780, 47801080, 48201220, 49200700, 49400920,
            49400960, 49600820, 56202020, 56202140, 57002120
        })
    }
})

map.nodes[54608960] = ns.node.Safari.NorthernHawkOwl({
    pois = {
        POI({
            47607280, 47607480, 49207860, 49607720, 49807540, 50007040,
            50007800, 50208180, 50407940, 51007800, 51207520, 51408020,
            52208320, 52407860, 53007680, 53008440, 53008460, 53408120,
            53608120, 54407240, 54408960, 54608960, 54807920, 54808140,
            55008600, 55407020, 56007720, 56407120, 56408000, 56608320,
            57207180, 58207100
        })
    }
})

map.nodes[41805940] = ns.node.Safari.SpiketailBeaver({
    pois = {
        POI({
            27405520, 27805460, 31606220, 33206480, 33806340, 34806740,
            34806760, 34806900, 38206420, 38606460, 39404740, 39404780,
            40206260, 40604880, 40605920, 41005760, 41405020, 41605020,
            41606020, 41805440, 41805940, 42005460, 42205300, 42205560,
            42605940, 42605960, 44804600, 44804820, 44806700, 45204460,
            47206740, 47806700, 48206760, 49006760, 49406680, 50406580,
            50606580, 51606380, 51606520, 52206120
        })
    }
})
