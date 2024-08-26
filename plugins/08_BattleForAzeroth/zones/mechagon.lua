-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local Node = ns.node.Node
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Quest = ns.node.Quest
local Rare = ns.node.Rare
local Safari = ns.node.Safari
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 1462, settings = true})

function map:Prepare()
    Map.Prepare(self)
    self.future = AuraUtil.FindAuraByName(ns.api.GetSpellInfo(296644), 'player')
end

function map:CanDisplay(node, coord, minimap)
    -- check node's future availability (nil=no, 1=yes, 2=both)
    if self.future and not node.future then return false end
    if not self.future and node.future == 1 then return false end
    return Map.CanDisplay(self, node, coord, minimap)
end

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[52894092] = Rare({
    id = 151934,
    quest = 55512,
    future = 2,
    rewards = {
        Achievement({id = 13470, criteria = 45124}),
        Mount({id = 1229, item = 168823}) -- Rusty Mechanocrawler
    }
}) -- Arachnoid Harvester

map.nodes[55622571] = Rare({
    id = 151308,
    quest = 55539,
    rewards = {
        Achievement({id = 13470, criteria = 45131}),
        Item({item = 169688, quest = 56515}) -- Vinyl: Gnomeregan Forever
    }
}) -- Boggac Skullbash

map.nodes[51265010] = Rare({
    id = 153200,
    quest = 55857,
    requires = '{npc:150306} (DR-JD41)',
    rewards = {
        Achievement({id = 13470, criteria = 45152}),
        Item({item = 167042, quest = 55030}), -- Blueprint: Scrap Trap
        Item({item = 169691, quest = 56518}) -- Vinyl: Depths of Ulduar
    }
}) -- Boilburn

map.nodes[65842288] = Rare({
    id = 152001,
    quest = 55537,
    note = L['cave_spawn'],
    rewards = {
        Achievement({id = 13470, criteria = 45130}),
        Item({item = 167846, quest = 55061}), -- Blueprint: Mechano-Treat
        Pet({id = 2719, item = 169392}) -- Bonebiter
    }
}) -- Bonepicker

map.nodes[66535891] = Rare({
    id = 154739,
    quest = 56368,
    requires = '{npc:150306} (DR-CC73)',
    rewards = {
        Achievement({id = 13470, criteria = 45411}),
        Item({item = 169170, quest = 55078}) -- Blueprint: Utility Mechanoclaw
    }
}) -- Caustic Mechaslime

map.nodes[82522072] = Rare({
    id = 149847,
    quest = 55812,
    note = L['crazed_trogg_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45137}),
        Item({item = 169169, quest = 55077}), -- Blueprint: Blue Spraybot
        Item({item = 169168, quest = 55076}), -- Blueprint: Green Spraybot
        Item({item = 169167, quest = 55075}), -- Blueprint: Orange Spraybot
        Item({item = 167792, quest = 55452}), -- Paint Vial: Fel Mint Green
        Item({item = 167793, quest = 55457}) -- Paint Vial: Overload Orange
    }
}) -- Crazed Trogg

map.nodes[35464229] = Rare({
    id = 151569,
    quest = 55514,
    note = L['deepwater_note'],
    requires = ns.requirement.Item(167649),
    rewards = {
        Achievement({id = 13470, criteria = 45128}),
        Item({item = 167836, quest = 55057}) -- Blueprint: Canned Minnows
    }
}) -- Deepwater Maw

map.nodes[63122559] = Rare({
    id = 150342,
    quest = 55814,
    requires = '{npc:150306} (DR-TR35)',
    rewards = {
        Achievement({id = 13470, criteria = 45138}),
        Item({item = 167042, quest = 55030}), -- Blueprint: Scrap Trap
        Item({item = 169691, quest = 56518}) -- Vinyl: Depths of Ulduar
    }
}) -- Earthbreaker Gulroc

map.nodes[55075684] = Rare({
    id = 154153,
    quest = 56207,
    rewards = {
        Achievement({id = 13470, criteria = 45373}),
        Item({item = 169174, quest = 55082}), -- Blueprint: Rustbolt Pocket Turret
        Transmog({item = 170466, slot = L['staff']}), -- Junkyard Motivator
        Transmog({item = 170467, slot = L['1h_sword']}), -- Whirring Chainblade
        Transmog({item = 170468, slot = L['gun']}), -- Supervolt Zapper
        Transmog({item = 170470, slot = L['shield']}) -- Reinforced Grease Deflector
    }
}) -- Enforcer KX-T57

map.nodes[65515167] = Rare({
    id = 151202,
    quest = 55513,
    note = L['foul_manifest_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45127}),
        Item({item = 167871, quest = 55063}) -- Blueprint: G99.99 Landshark
    }
}) -- Foul Manifestation

map.nodes[44553964] = Rare({
    id = 151884,
    quest = 55367,
    note = L['furor_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45126}),
        Item({item = 167793, quest = 55457}), -- Paint Vial: Overload Orange
        Pet({id = 2712, item = 169379}) -- Snowsoft Nibbler
    }
}) -- Fungarian Furor

map.nodes[61395117] = Rare({
    id = 153228,
    quest = 55852,
    note = L['cogstar_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45155}),
        Item({item = 167847, quest = 55062}), -- Blueprint: Ultrasafe Transporter: Mechagon
        Transmog({item = 170467, slot = L['1h_sword']}) -- Whirring Chainblade
    }
}) -- Gear Checker Cogstar

map.nodes[59836701] = Rare({
    id = 153205,
    quest = 55855,
    requires = '{npc:150306} (DR-JD99)',
    rewards = {
        Achievement({id = 13470, criteria = 45146}),
        Item({item = 169691, quest = 56518}) -- Vinyl: Depths of Ulduar
    }
}) -- Gemicide

map.nodes[73135414] = Rare({
    id = 154701,
    quest = 56367,
    requires = '{npc:150306} (DR-CC61)',
    rewards = {
        Achievement({id = 13470, criteria = 45410}),
        Item({item = 167846, quest = 55061}) -- Blueprint: Mechano-Treat
    }
}) -- Gorged Gear-Cruncher

map.nodes[77124471] = Rare({
    id = 151684,
    quest = 55399,
    rewards = {Achievement({id = 13470, criteria = 45121})}
}) -- Jawbreaker

map.nodes[44824637] = Rare({
    id = 152007,
    quest = 55369,
    note = L['killsaw_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45125}), Toy({item = 167931}) -- Mechagonian Sawblades
    }
}) -- Killsaw

map.nodes[60654217] = Rare({
    id = 151933,
    quest = 55544,
    note = L['beastbot_note'],
    requires = ns.requirement.Item(168045),
    rewards = {
        Achievement({id = 13470, criteria = 45136}),
        Achievement({id = 13708, criteria = {45772, 45775, 45776, 45777, 45778}}), -- Most Minis Wins
        Item({item = 169848, weekly = 57135}), -- Azeroth Mini Pack: Bondo's Yard
        Item({item = 169173, quest = 55081}), -- Blueprint: Anti-Gravity Pack
        Pet({id = 2715, item = 169382}) -- Lost Robogrip
    }
}) -- Malfunctioning Beastbot (55926 56506)

map.nodes[57165258] = Rare({
    id = 151124,
    quest = 55207,
    note = L['nullifier_note'],
    requires = {ns.requirement.Item(168023), ns.requirement.Item(168435)},
    rewards = {
        Achievement({id = 13470, criteria = 45117}),
        Item({item = 168490, quest = 55069}), -- Blueprint: Protocol Transference Device
        Item({item = 169688, quest = 56515}) -- Vinyl: Gnomeregan Forever
    }
}) -- Mechagonian Nullifier

map.nodes[88142077] = Rare({
    id = 151672,
    quest = 55386,
    future = 2,
    rewards = {
        Achievement({id = 13470, criteria = 45119}),
        Pet({id = 2720, item = 169393}) -- Arachnoid Skitterbot
    }
}) -- Mecharantula

map.nodes[61036101] = Rare({
    id = 151627,
    quest = 55859,
    rewards = {
        Achievement({id = 13470, criteria = 45156}),
        Item({item = 168248, quest = 55068}), -- Blueprint: BAWLD-371
        Transmog({item = 170467, slot = L['1h_sword']}) -- Whirring Chainblade
    }
}) -- Mr. Fixthis

map.nodes[56243595] = Rare({
    id = 153206,
    quest = 55853,
    requires = '{npc:150306} (DR-TR28)',
    rewards = {
        Achievement({id = 13470, criteria = 45145}),
        Item({item = 167846, quest = 55061}), -- Blueprint: Mechano-Treat
        Item({item = 169691, quest = 56518}), -- Vinyl: Depths of Ulduar
        Transmog({item = 170466, slot = L['staff']}) -- Junkyard Motivator
    }
}) -- Ol' Big Tusk

map.nodes[57063944] = Rare({
    id = 151296,
    quest = 55515,
    note = L['avenger_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45129}),
        Item({item = 168492, quest = 55071}) -- Blueprint: Emergency Rocket Chicken
    }
}) -- OOX-Avenger/MG

map.nodes[56636287] = Rare({
    id = 152764,
    quest = 55856,
    note = L['leachbeast_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45157}),
        Item({item = 167794, quest = 55454}) -- Paint Vial: Lemonade Steel
    }
}) -- Oxidized Leachbeast

map.nodes[22466873] = Rare({
    id = 151702,
    quest = 55405,
    rewards = {
        Achievement({id = 13470, criteria = 45122}),
        Transmog({item = 170468, slot = L['gun']}) -- Supervolt Zapper
    }
}) -- Paol Pondwader

map.nodes[40235317] = Rare({
    id = 150575,
    quest = 55368,
    note = L['cave_spawn'],
    rewards = {
        Achievement({id = 13470, criteria = 45123}),
        Item({item = 168001, quest = 55517}) -- Paint Vial: Big-ol Bronze
    }
}) -- Rumblerocks

map.nodes[65637850] = Rare({
    id = 152182,
    quest = 55811,
    rewards = {
        Achievement({id = 13470, criteria = 45135}),
        Item({item = 169173, quest = 55081}), -- Blueprint: Anti-Gravity Pack
        Mount({id = 1248, item = 168370}) -- Rusted Keys to the Junkheap Drifter
    }
}) -- Rustfeather

map.nodes[82287300] = Rare({
    id = 155583,
    quest = 56737,
    note = L['scrapclaw_note'],
    rewards = {
        Achievement({id = 13470, criteria = 45691}),
        Transmog({item = 170470, slot = L['shield']}) -- Reinforced Grease Deflector
    }
}) -- Scrapclaw

map.nodes[19127975] = Rare({
    id = 150937,
    quest = 55545,
    rewards = {
        Achievement({id = 13470, criteria = 45133}),
        Item({item = 168063, quest = 55065}) -- Blueprint: Rustbolt Kegerator
    }
}) -- Seaspit

map.nodes[81852708] = Rare({
    id = 153000,
    quest = 55810,
    note = L['sparkqueen_note'],
    rewards = {Achievement({id = 13470, criteria = 45134})}
}) -- Sparkqueen P'Emp

map.nodes[26257806] = Rare({
    id = 153226,
    quest = 55854,
    rewards = {
        Achievement({id = 13470, criteria = 45154}),
        Item({item = 168062, quest = 55064}), -- Blueprint: Rustbolt Gramophone
        Item({item = 169690, quest = 56517}), -- Vinyl: Battle of Gnomeregan
        Item({item = 169689, quest = 56516}), -- Vinyl: Mimiron's Brainstorm
        Item({item = 169692, quest = 56519}) -- Vinyl: Triumph of Gnomeregan
    }
}) -- Steel Singer Freza

map.nodes[80962019] = Rare({
    id = 155060,
    quest = 56419,
    label = GetAchievementCriteriaInfoByID(13470, 45433),
    note = L['doppel_note'],
    requires = ns.requirement.Item(169470),
    rewards = {Achievement({id = 13470, criteria = 45433})}
}) -- The Doppel Gang

map.nodes[68434776] = Rare({
    id = 152113,
    quest = 55858,
    requires = '{npc:150306} (DR-CC88)',
    rewards = {
        Achievement({id = 13470, criteria = 45153}),
        Item({item = 169691, quest = 56518}), -- Vinyl: Depths of Ulduar
        Pet({id = 2753, item = 169886}) -- Spraybot 0D
    }
}) -- The Kleptoboss

map.nodes[57335827] = Rare({
    id = 154225,
    quest = 56182,
    future = 2,
    note = L['rusty_note'],
    requires = ns.requirement.Item(169114),
    rewards = {
        Achievement({id = 13470, criteria = 45374}), Toy({item = 169347}), -- Judgment of Mechagon
        Transmog({item = 170467, slot = L['1h_sword']}) -- Whirring Chainblade
    }
}) -- The Rusty Prince

map.nodes[72344987] = Rare({
    id = 151625,
    quest = 55364,
    rewards = {
        Achievement({id = 13470, criteria = 45118}),
        Item({item = 167846, quest = 55061}), -- Blueprint: Mechano-Treat
        Transmog({item = 170467, slot = L['1h_sword']}) -- Whirring Chainblade
    }
}) -- The Scrap King

map.nodes[57062218] = Rare({
    id = 151940,
    quest = 55538,
    note = L['cave_spawn'],
    rewards = {Achievement({id = 13470, criteria = 45132})}
}) -- Uncle T'Rogg

map.nodes[53824933] = Rare({
    id = 150394,
    quest = 55546,
    future = 2,
    note = L['vaultbot_note'],
    requires = ns.requirement.Item(167062),
    rewards = {
        Achievement({id = 13470, criteria = 45158}),
        Item({item = 167843, quest = 55058}), -- Blueprint: Vaultbot Key
        Item({item = 167796, quest = 55455}), -- Paint Vial: Mechagon Gold
        Pet({id = 2766, item = 170072}) -- Armored Vaultbot
    },
    pois = {
        POI({63263885}) -- Tesla Coil
    }
}) -- Armored Vaultbot

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[64706460] = PetBattle({
    id = 154922,
    rewards = {Achievement({id = 13625, criteria = 45459})}
}) -- Gnomefeaster
map.nodes[60704650] = PetBattle({
    id = 154923,
    rewards = {Achievement({id = 13625, criteria = 45460})}
}) -- Sputtertude
map.nodes[60605690] = PetBattle({
    id = 154924,
    rewards = {Achievement({id = 13625, criteria = 45461})}
}) -- Goldenbot XD
map.nodes[59205090] = PetBattle({
    id = 154925,
    rewards = {Achievement({id = 13625, criteria = 45462})}
}) -- Creakclank
map.nodes[65405770] = PetBattle({
    id = 154926,
    rewards = {Achievement({id = 13625, criteria = 45463})}
}) -- CK-9 Micro-Oppression Unit
map.nodes[51104540] = PetBattle({
    id = 154927,
    rewards = {Achievement({id = 13625, criteria = 45464})}
}) -- Unit 35
map.nodes[39504010] = PetBattle({
    id = 154928,
    rewards = {Achievement({id = 13625, criteria = 45465})}
}) -- Unit 6
map.nodes[72107290] = PetBattle({
    id = 154929,
    rewards = {Achievement({id = 13625, criteria = 45466})}
}) -- Unit 17

-------------------------------------------------------------------------------
-------------------------------- LOCKED CHESTS --------------------------------
-------------------------------------------------------------------------------

local Locked = Class('LockedChest', Node, {
    icon = 'chest_gy',
    scale = 1.3,
    group = ns.groups.LOCKED_CHEST
})

local iron = Locked({
    label = L['iron_chest'],
    note = L['iron_chest_note'],
    requires = ns.requirement.Item(169872),
    rewards = {
        Item({item = 170146, quest = 56907}) -- Paint Bottle: Nukular Red
    }
})

local mech = Locked({
    label = L['msup_chest'],
    note = L['msup_chest_note'],
    requires = ns.requirement.Item(169873),
    rewards = {
        Achievement({id = 13708, criteria = {45773, 45781, 45779, 45780, 45785}}), -- Most Minis Wins
        Item({item = 169850, weekly = 57133}) -- Azeroth Mini Pack: Mechagon
    }
})

local rusty = Locked({
    label = L['rust_chest'],
    note = L['rust_chest_note'],
    requires = ns.requirement.Item(169218)
})

map.nodes[23195699] = iron
map.nodes[13228581] = iron
map.nodes[19018086] = iron
map.nodes[30775964] = iron
map.nodes[20537120] = mech
map.nodes[18357618] = rusty
map.nodes[25267825] = rusty
map.nodes[23988441] = rusty

-------------------------------------------------------------------------------
------------------------------ MECHANIZED CHESTS ------------------------------
-------------------------------------------------------------------------------

local MechChest = Class('MechChest', Treasure)

MechChest.group = ns.groups.MECH_CHEST
MechChest.label = L['mech_chest']
MechChest.rewards = {
    Achievement({id = 13708, criteria = {45773, 45781, 45779, 45780, 45785}}), -- Most Minis Wins
    Item({item = 167790, quest = 55451}), -- Paint Vial: Fireball Red
    Item({item = 169850, weekly = 57133}) -- Azeroth Mini Pack: Mechagon
}

local TREASURE1 = MechChest({quest = 55547, icon = 'chest_yw'})
local TREASURE2 = MechChest({quest = 55548, icon = 'chest_bl'})
local TREASURE3 = MechChest({quest = 55549, icon = 'chest_nv'})
local TREASURE4 = MechChest({quest = 55550, icon = 'chest_tl'})
local TREASURE5 = MechChest({quest = 55551, icon = 'chest_bk', future = 1})
local TREASURE6 = MechChest({quest = 55552, icon = 'chest_pp'})
local TREASURE7 = MechChest({quest = 55553, icon = 'chest_gn'})
local TREASURE8 = MechChest({quest = 55554, icon = 'chest_pk'})
local TREASURE9 = MechChest({quest = 55555, icon = 'chest_lm'})
local TREASURE10 = MechChest({quest = 55556, icon = 'chest_rd'})

-- object 325659
map.nodes[43304977] = TREASURE1
map.nodes[49223021] = TREASURE1
map.nodes[52115326] = TREASURE1
map.nodes[53254190] = TREASURE1
map.nodes[56973861] = TREASURE1
-- object 325660
map.nodes[20617141] = TREASURE2
map.nodes[30785183] = TREASURE2
map.nodes[35683833] = TREASURE2
map.nodes[40155409] = TREASURE2
-- object 325661
map.nodes[59946357] = TREASURE3
map.nodes[65866460] = TREASURE3
map.nodes[67075645] = TREASURE3
map.nodes[73515334] = TREASURE3
map.nodes[80374838] = TREASURE3
-- object 325662
map.nodes[65555284] = TREASURE4
map.nodes[72594733] = TREASURE4
map.nodes[73014950] = TREASURE4
map.nodes[76215286] = TREASURE4
map.nodes[81196149] = TREASURE4
-- object 325663
map.nodes[56665739] = TREASURE5
map.nodes[58634160] = TREASURE5
map.nodes[61583230] = TREASURE5
map.nodes[64365961] = TREASURE5
map.nodes[70654796] = TREASURE5
-- object 325664
map.nodes[50662858] = TREASURE6
map.nodes[55612404] = TREASURE6
map.nodes[56782918] = TREASURE6
map.nodes[57142283] = TREASURE6
map.nodes[64092627] = TREASURE6
map.nodes[66432227] = TREASURE6
-- object 325665
map.nodes[67322289] = TREASURE7
map.nodes[80691868] = TREASURE7
map.nodes[85752824] = TREASURE7
map.nodes[86232042] = TREASURE7
map.nodes[88732015] = TREASURE7
-- object 325666
map.nodes[48367595] = TREASURE8
map.nodes[57258202] = TREASURE8
map.nodes[62297390] = TREASURE8
map.nodes[66767759] = TREASURE8
-- object 325667
map.nodes[63626715] = TREASURE9
map.nodes[72126545] = TREASURE9
map.nodes[76516601] = TREASURE9
map.nodes[81167231] = TREASURE9
map.nodes[85166335] = TREASURE9
-- object 325668
map.nodes[12088568] = TREASURE10
map.nodes[20537696] = TREASURE10
map.nodes[21788303] = TREASURE10
map.nodes[24796526] = TREASURE10

-------------------------------------------------------------------------------
-------------------------------- BATTLE SAFARI --------------------------------
-------------------------------------------------------------------------------

map.nodes[42602840] = Safari.DuskytoothSnooter({
    pois = {
        POI({
            37204740, 37404840, 37404880, 37405020, 37405060, 37604860,
            37605020, 37605060, 37804740, 37804780, 38403140, 38403160,
            38803140, 39003040, 39003160, 39202900, 39402840, 39404440,
            39602840, 39602860, 39803600, 40004400, 40004460, 40203740,
            40203820, 40203860, 40403340, 40403400, 40403460, 40603740,
            40603800, 40604440, 40803340, 40803440, 40803460, 41405080,
            41804040, 41805100, 42205040, 42205160, 42402840, 42402920,
            42402960, 42404400, 42602840, 42602940, 42602960, 42605100,
            42804320, 42804400, 44403540, 44403580, 44803600, 45004780,
            45202840, 45204920, 45204980, 45205080, 45402620, 45402660,
            45402880, 45403140, 45603160, 45802640, 45802900, 45803020,
            46003060, 46402720, 46402760, 46602740, 46602760, 48403040,
            48403060, 48403240, 48603040, 48603060, 48803200, 48803260,
            71402000, 72202020, 72202440, 72402100, 72402500, 72402560,
            72602000, 72602060, 72602500, 72602600, 72802340, 73002400,
            73402700, 73402780, 73802640, 73802720, 73802780, 73802860,
            76203020, 76403100, 76403700, 76403760, 76603040, 76603060,
            76603700, 76603760, 76804120, 77203640, 77203940, 77402940,
            77403980, 77404200, 77404260, 77602940, 77602960, 77603060,
            77603580, 77603660, 77603920, 77604000, 77604220, 77604280,
            79002960, 79202900, 79602880, 79602960, 80402760, 81002740,
            81201840, 81201860, 81202780, 81401740, 81402220, 81402260,
            81402860, 81402960, 81601740, 81601840, 81601860, 81601960,
            81602220, 81602260, 81602820, 81602860, 83404280, 83804300,
            84004400, 84402840, 84802820, 84802860, 87002620, 87202660,
            87602640, 87602660, 88402240, 88402260, 88402440, 88402460,
            88602240, 88602260, 88602440, 88602460
        })
    }
}) -- Duskytooth Snooter

map.nodes[70405660] = Safari.ExperimentalRoach({
    pois = {
        POI({
            37204860, 37404740, 37404780, 37604740, 37604800, 37604880,
            53404620, 53604580, 54204500, 60405240, 60405260, 61404240,
            61404280, 61405280, 61604260, 61605360, 61803840, 62003880,
            62005300, 62204240, 62204420, 62404460, 62603540, 62604440,
            62604460, 63003580, 63005740, 63804960, 64004680, 64004920,
            64204540, 64204600, 64205480, 64404840, 64604560, 64604820,
            64604900, 64604960, 64605500, 65004240, 65004260, 65404500,
            65604540, 66003880, 66004240, 66004260, 66203840, 66204940,
            66403740, 66404980, 66603760, 66604940, 66604980, 66605460,
            66803860, 66805060, 67003420, 67005440, 67203460, 67604120,
            67804160, 68002640, 68003220, 68003480, 68202680, 68203280,
            68602620, 68602680, 69003540, 69003560, 69202780, 69205940,
            69404060, 69405420, 69405600, 69405980, 69604060, 69605940,
            69802560, 69802760, 69804040, 69805460, 70002740, 70005980,
            70205840, 70402460, 70405600, 70405660, 70605620, 70805660,
            71002740, 71202840, 71205940, 71205980, 71402880, 71602820,
            71605880, 73003020, 73003060, 73205420, 73402940, 73405500,
            73805480, 74404320, 74404640, 74604040, 74804060, 74804320,
            74804380, 74804640, 74804680, 75405520, 75604160, 75605520,
            75605580, 76004120, 76203960, 76205680, 76403820, 76403860,
            76405760, 76604020, 76803880, 77005680, 77805320, 77805360,
            78006260, 78404780, 78406220, 79004720, 79205380, 79404840,
            79405320, 79605300, 79804340, 79804760, 80005240, 80204360,
            80205360, 80405460, 80405780, 80605440, 80605520, 80605740,
            80805760, 81005860, 81406020, 81606020, 82205520, 82205580
        })
    }
}) -- Experimental Roach

map.nodes[46603640] = Safari.FleetingFrog({
    pois = {
        POI({
            33407600, 33807640, 33807660, 34207940, 34207960, 34408120,
            34408160, 34607940, 34607960, 34608140, 34608180, 37204660,
            37404540, 37404620, 37604600, 37604660, 38004540, 38204320,
            39204340, 39204360, 39404140, 39404240, 39604160, 39604260,
            40403940, 42203880, 46203640, 46203700, 46403020, 46403060,
            46602940, 46603040, 46603060, 46603640, 46603660, 47403160,
            47603140, 47603180, 47803640, 47803780, 48003740, 64402840,
            64402860, 64602880, 64802840, 73401820, 73401900, 73601840,
            73801900, 74001960, 77202240, 77402260, 77602220, 77602260,
            78804200, 79004140, 79203780, 79204260, 79403720, 79603720,
            79603760, 79604220, 83206040, 83206080, 83606040, 83606060,
            84405840, 84405900, 84605840, 84605920, 84605960, 85403220,
            85403260, 85603140, 85603220, 85603260
        })
    }
}) -- Fleeting Frog

map.nodes[68402640] = Safari.JunkheapRoach({
    pois = {
        POI({
            37404740, 37404840, 37404860, 37604720, 37604800, 37604900,
            53204540, 53204580, 53204660, 53604560, 54404440, 54404480,
            54604460, 54804440, 60204500, 60205180, 60405300, 60605240,
            61404240, 61404260, 61404360, 61405320, 61405360, 61605360,
            61803840, 61804280, 61805240, 61805300, 62003860, 62004200,
            62403500, 62403600, 62404440, 62404460, 62604440, 62604460,
            62803540, 62803560, 63205700, 63205760, 63404920, 63605760,
            63804960, 64004680, 64004900, 64404320, 64404540, 64404580,
            64404840, 64405440, 64405480, 64604560, 64604820, 64604880,
            64605440, 64605480, 65004240, 65004280, 65204500, 65404440,
            65604500, 66004240, 66203860, 66204280, 66403740, 66403780,
            66404380, 66404940, 66404980, 66603740, 66603800, 66603860,
            66604300, 66604940, 66805020, 66805440, 67005060, 67005480,
            67203440, 67203460, 67804160, 68004140, 68203240, 68203260,
            68203440, 68203500, 68204040, 68402640, 68402660, 68602640,
            68602660, 68603280, 68603520, 69003560, 69204040, 69205340,
            69402800, 69404060, 69405380, 69405460, 69405600, 69405900,
            69405960, 69602740, 69602800, 69604060, 69605440, 69605460,
            69605960, 69804020, 70005820, 70005900, 70202540, 70202560,
            70405600, 70405680, 70602500, 70605620, 70805660, 71202720,
            71202760, 71402860, 71405880, 71405960, 71602720, 71602780,
            71602880, 71606000, 71805940, 73003060, 73203020, 73402940,
            73405440, 73405480, 73602940, 73602960, 73605440, 73605500,
            74404020, 74404080, 74404320, 74404360, 74404640, 74404660,
            74604340, 74804020, 74804080, 74804160, 74804360, 74804640,
            74804660, 75205440, 75405540, 75405560, 75604160, 75605540,
            75605560, 76004140, 76005760, 76205300, 76205740, 76403840,
            76403860, 76404000, 76603840, 76603860, 76604000, 76604060,
            76605780, 77205640, 77205680, 77405340, 77405360, 77605700,
            77805340, 77805360, 78206240, 78404720, 78404780, 78406260,
            78604740, 78606240, 78606260, 79204780, 79404280, 79404860,
            79405320, 79405380, 79604740, 79804340, 79804360, 79804780,
            79805320, 79805360, 80005240, 80405460, 80405560, 80405720,
            80405760, 80604380, 80605440, 80605480, 80605580, 80805740,
            81005820, 81205860, 81406020, 81406060, 81605880, 81606020,
            81805560, 82005540, 82006060
        })
    }
}) -- Junkheap Roach

map.nodes[62006060] = Safari.MalfunctioningMicrobot({
    pois = {
        POI({
            54406240, 55005960, 55006160, 55406080, 55606040, 55805940,
            55806160, 56006140, 57005820, 57005860, 57805760, 58005740,
            58404740, 58804820, 59404940, 59404960, 59804960, 59805140,
            60004920, 60005220, 60404840, 60405280, 60604880, 60804640,
            60804840, 60804980, 60805340, 61005360, 61006260, 61205120,
            61404220, 61404720, 61405800, 61405880, 61804240, 61805920,
            61805960, 62005340, 62006060, 62204140, 62204260, 62404360,
            62405720, 62405840, 62604340, 62604360, 62605740, 62605780,
            62605860, 63404240, 65205380, 65205560, 65405540, 65805860,
            66005540, 66204120, 66204200, 66204260, 66205580, 66403340,
            66403440, 66403460, 66404700, 66404940, 66405020, 66405660,
            66603560, 66604220, 66604940, 66605460, 66605640, 66803340,
            66804140, 66804960, 66805660, 67003440, 67003480, 67004260,
            67204380, 67204840, 67205140, 67205760, 67603460, 67604220,
            67604920, 67605520, 67804140, 68204260, 68204800
        })
    }
}) -- Malfunctioning Microbot

map.nodes[81403260] = Safari.MechagonMarmot({
    pois = {
        POI({
            54405040, 54405080, 54605160, 54805080, 55005040, 58205140,
            58405020, 58405180, 58605140, 58605220, 60405580, 60405720,
            60605700, 60805640, 65004840, 65204880, 65604840, 65604860,
            66005520, 66205560, 66605480, 66605560, 68404380, 68404460,
            68405040, 68405060, 68605060, 68804460, 68805020, 69004420,
            69402320, 69402360, 69602320, 69602360, 69605020, 69802240,
            70204840, 70204860, 70604860, 70804820, 71402140, 71402160,
            71402640, 71402720, 71402760, 71402860, 71602140, 71602180,
            71602640, 71602720, 71602760, 72002260, 72203920, 72404000,
            72404060, 72603940, 72604000, 72804060, 75404140, 75404160,
            75604140, 75604160, 78402540, 79202440, 79402480, 79602500,
            79602560, 80402440, 81002360, 81002480, 81402320, 81403240,
            81403260, 81602440, 81603260, 81803200, 82402340, 82402740,
            82402800, 82402860, 82602340, 82602380, 82602740, 82602800,
            83203060, 83402860, 83402960, 83602840, 83802940, 84002440,
            84202960, 84402540, 84802520, 85001540, 85001580, 85002420,
            85202560, 85401660, 85402720, 85402760, 85601620, 85601700,
            85601760, 85802720, 86002640, 86202780, 87802220, 87802260
        })
    }
}) -- Mechagon Marmot

map.nodes[22407980] = Safari.MotorizedCroaker({
    pois = {
        POI({
            18207800, 18407900, 18408000, 19007820, 19007940, 19007960,
            19607880, 21207560, 21407440, 21407460, 21607420, 22007500,
            22407580, 22407840, 22407980, 22807960, 23207900, 23407840,
            23408060, 23607840, 23607880, 23807980, 55203260, 55403100,
            56003120, 56003260, 56403200, 56603160, 63406640, 63406660,
            63606620, 63606680, 64406540, 64606600, 64806520, 68206140,
            68406040, 68606260, 68806040, 69006080, 69006160, 69606040,
            69606100, 75404700, 75404820, 75604700, 75804760, 76404940,
            77204840, 77204860, 77404980, 77405900, 77405960, 77604920,
            77604960, 77805840, 78005940, 78205980, 78206060, 78404800,
            78605960, 78606060, 78805920, 79004740, 79204800, 79204860,
            79604720, 82406240, 82406320, 82406360, 82606320, 82806100,
            82806240, 82806380, 83806180
        })
    }
}) -- Motorized Croaker

map.nodes[74603560] = Safari.RustboltClucker({
    pois = {
        POI({
            69403580, 69803600, 71403320, 71403360, 71603340, 71803360,
            73803560, 74003520, 74603560, 74803540
        })
    }
}) -- Rustbolt Clucker

map.nodes[76804120] = Safari.RustyrootSnooter({
    pois = {
        POI({
            37204740, 37404840, 37404880, 37405020, 37405060, 37604860,
            37605020, 37605060, 37804740, 37804780, 38403140, 38403160,
            38803140, 39003040, 39003160, 39202900, 39402840, 39404440,
            39602840, 39602860, 39803600, 40004400, 40004460, 40203740,
            40203820, 40203860, 40403340, 40403400, 40403460, 40603740,
            40603800, 40604440, 40803340, 40803440, 40803460, 41405080,
            41804040, 41805100, 42205040, 42205160, 42402840, 42402920,
            42402960, 42404400, 42602840, 42602940, 42602960, 42605100,
            42804320, 42804400, 44403540, 44403580, 44803600, 45004780,
            45202840, 45204920, 45204980, 45205080, 45402620, 45402660,
            45402880, 45403140, 45603160, 45802640, 45802900, 45803020,
            46003060, 46402720, 46402760, 46602740, 46602760, 48403040,
            48403060, 48403240, 48603040, 48603060, 48803200, 48803260,
            71402000, 72202020, 72202440, 72402100, 72402500, 72402560,
            72602000, 72602060, 72602500, 72602600, 72802340, 73002400,
            73402700, 73402780, 73802640, 73802720, 73802780, 73802860,
            76203020, 76403100, 76403700, 76403760, 76603040, 76603060,
            76603700, 76603760, 76804120, 77203640, 77203940, 77402940,
            77403980, 77404200, 77404260, 77602940, 77602960, 77603060,
            77603580, 77603660, 77603920, 77604000, 77604220, 77604280,
            79002960, 79202900, 79602880, 79602960, 80402760, 81002740,
            81201840, 81201860, 81202780, 81401740, 81402220, 81402260,
            81402860, 81402960, 81601740, 81601840, 81601860, 81601960,
            81602220, 81602260, 81602820, 81602860, 83404280, 83804300,
            84004400, 84402840, 84802820, 84802860, 87002620, 87202660,
            87602640, 87602660, 88402240, 88402260, 88402440, 88402460,
            88602240, 88602260, 88602440, 88602460
        })
    }
}) -- Rustyroot Snooter

map.nodes[25002000] = Safari.ScrapyardTunneler() -- Scrapyard Tunneler

map.nodes[60602480] = Safari.Specimen97({
    pois = {
        POI({
            58202340, 58202720, 58202760, 59202340, 59402380, 59402540,
            59402600, 59402660, 59602620, 59802660, 60202760, 60402440,
            60402460, 60602440, 60602480, 60802560, 60802780, 61202720,
            61602640, 62402720, 62602540, 62602560
        })
    }
}) -- Specimen 97

map.nodes[33807660] = Safari.YellowJunkhopper({
    pois = {POI({33807660, 34207920, 34408160, 37804560})}
}) -- Yellow Junkhopper

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[53486145] = Quest({
    quest = 55743,
    questDeps = 56117,
    daily = true,
    minimap = false,
    scale = 1.8,
    rewards = {
        Achievement({id = 13708, criteria = {45772, 45775, 45776, 45777, 45778}}), -- Most Minis Wins
        Item({item = 169848, weekly = 57134}) -- Azeroth Mini Pack: Bondo's Yard
    }
})

-------------------------------------------------------------------------------

map.nodes[69976201] = Class('RegRig', NPC, {
    id = 150448,
    icon = 'peg_bl',
    scale = 2,
    note = L['rec_rig_note'],
    group = ns.groups.RECRIG,
    rewards = {
        Achievement({id = 13708, criteria = {45773, 45781, 45779, 45780, 45785}}), -- Most Minis Wins
        Item({item = 169850, note = L['normal'], weekly = 57132}), -- Azeroth Mini Pack: Mechagon
        Item({item = 168495, note = L['hard'], quest = 55074}), -- Blueprint: Rustbolt Requisitions
        Pet({id = 2721, item = 169396}), -- Echoing Oozeling
        Pet({id = 2756, item = 169879}) -- Irradiated Elementaling
    },
    getters = {
        rlabel = function(self)
            local G, GR, N, H = ns.status.Green, ns.status.Gray, L['normal'],
                L['hard']
            local normal = C_QuestLog.IsQuestFlaggedCompleted(55847) and G(N) or
                               GR(N)
            local hard = C_QuestLog.IsQuestFlaggedCompleted(55848) and G(H) or
                             GR(H)
            return normal .. ' ' .. hard
        end
    }
})() -- Reclamation Rig ???=56079
