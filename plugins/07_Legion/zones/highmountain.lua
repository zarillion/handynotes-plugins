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
