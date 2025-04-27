-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Spacer = ns.reward.Spacer

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local kvr = Map({id = 2250, settings = false}) -- Kriegval's Rest
local tuk = Map({id = 2299, settings = false}) -- The Underkeep
local ecm = Map({id = 2269, settings = false}) -- Earthcrawl Mines
local mmc = Map({id = 2312, settings = false}) -- Mycomancer Cavern
local tdp = Map({id = 2302, settings = false}) -- The Dread Pit
local tww = Map({id = 2251, settings = false}) -- The Waterworks
local tsw = Map({id = 2347, settings = false}) -- The Spiral Weave
local tsh = Map({id = 2301, settings = false}) -- The Sinkhole
local fol = Map({id = 2249, settings = false}) -- Fungal Folly
local ski = Map({id = 2310, settings = false}) -- Skittering Breach
local nfs = Map({id = 2277, settings = false}) -- Nightfall Sanctum
local tra = Map({id = 2259, settings = false}) -- Tak-Rethan Abyss

local esn = Map({id = 2396, settings = false}) -- Excavation Site 9

local pit = Map({id = 2420, settings = false}) -- Sidestreet Sluice - The Pits
local thd = Map({id = 2422, settings = false}) -- Sidestreet Sluice - The High Decks

-------------------------------------------------------------------------------

local SturdyChestCriteria = {
    id = 1,
    qty = true,
    suffix = L['sturdy_chest_suffix']
}

local SturdyChest = Class('SturdyChest', Treasure, {
    icon = 'chest_yw',
    label = L['sturdy_chest'],
    scale = 1.25,
    getters = {
        rewards = function(self)
            return {
                Achievement({
                    id = self.achievementID,
                    criteria = SturdyChestCriteria
                })
            }
        end
    }
}) -- Sturdy Chest

-------------------------------------------------------------------------------
------------------------------- KRIEGVAL'S REST -------------------------------
-------------------------------------------------------------------------------

kvr.nodes[46251972] = SturdyChest({
    achievementID = 40807,
    quest = 83665,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

kvr.nodes[62135285] = SturdyChest({
    achievementID = 40807,
    location = L['kvr_chest_2_location'],
    quest = 83698,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

kvr.nodes[74467020] = SturdyChest({
    achievementID = 40807,
    quest = 83683,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

kvr.nodes[69958519] = SturdyChest({
    achievementID = 40807,
    quest = 83666,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- THE UNDERKEEP --------------------------------
-------------------------------------------------------------------------------

tuk.nodes[35893463] = SturdyChest({
    achievementID = 40815,
    location = L['tuk_chest_1_note'],
    quest = 83664,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

tuk.nodes[63723223] = SturdyChest({
    achievementID = 40815,
    note = L['tuk_chest_2_note'],
    -- requires = scenarioID:2429 Runaway Evolution and scenarioID:?? Torture Victims
    quest = 83682,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

tuk.nodes[38946882] = SturdyChest({
    achievementID = 40815,
    note = L['tuk_chest_3_note'],
    -- requires = scenarioID:2429 Runaway Evolution and scenarioID:?? Weaver Rescue
    quest = 83663,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

tuk.nodes[72128904] = SturdyChest({
    achievementID = 40815,
    quest = 83697,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ EARTHCRAWL MINES -------------------------------
-------------------------------------------------------------------------------

ecm.nodes[45341525] = SturdyChest({
    achievementID = 40806,
    quest = 83440,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

ecm.nodes[43572716] = SturdyChest({
    achievementID = 40806,
    quest = 83438,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

ecm.nodes[36163308] = SturdyChest({
    achievementID = 40806,
    location = L['ecm_chest_3_location'],
    quest = 83441,
    rlabel = ns.status.Gray('#3'),
    pois = {
        POI({34523427}), -- jump point
        Path({34523427, 35393357}) -- jump path
    }
}) -- Sturdy Chest 3

ecm.nodes[32743966] = SturdyChest({
    achievementID = 40806,
    quest = 83451,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

ecm.nodes[53558214] = SturdyChest({
    achievementID = 40806,
    quest = 83439,
    rlabel = ns.status.Gray('#5')
}) -- Sturdy Chest 5

-------------------------------------------------------------------------------
------------------------------ MYOMANCER CAVERN -------------------------------
-------------------------------------------------------------------------------

mmc.nodes[49662155] = SturdyChest({
    achievementID = 40808,
    quest = 83652,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

mmc.nodes[63224544] = SturdyChest({
    achievementID = 40808,
    quest = 83691,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

mmc.nodes[68914096] = SturdyChest({
    achievementID = 40808,
    quest = 83455,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

mmc.nodes[40666161] = SturdyChest({
    achievementID = 40808,
    quest = 83672,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- THE DREAD PIT --------------------------------
-------------------------------------------------------------------------------

tdp.nodes[41074551] = SturdyChest({
    achievementID = 40812,
    quest = 83677,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

tdp.nodes[57495613] = SturdyChest({
    achievementID = 40812,
    quest = 83658,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

tdp.nodes[57782765] = SturdyChest({
    achievementID = 40812,
    quest = 83678,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

tdp.nodes[36281662] = SturdyChest({
    achievementID = 40812,
    quest = 83659,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------- THE WATERWORKS --------------------------------
-------------------------------------------------------------------------------

tww.nodes[49892459] = SturdyChest({
    achievementID = 40816,
    quest = 83684,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

tww.nodes[44363821] = SturdyChest({
    achievementID = 40816,
    location = L['in_water'],
    quest = 83650,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

tww.nodes[47925350] = SturdyChest({
    achievementID = 40816,
    quest = 83667,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

tww.nodes[49587916] = SturdyChest({
    achievementID = 40816,
    quest = 83456,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ THE SPIRAL WEAVE ------------------------------
-------------------------------------------------------------------------------

tsw.nodes[50044631] = SturdyChest({
    achievementID = 40814,
    quest = 83649,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

tsw.nodes[36331051] = SturdyChest({
    achievementID = 40814,
    note = L['tsw_chest_2_note'],
    location = L['tsw_chest_2_location'],
    -- requires = scenarioID:2403 From the Weaver with Love
    quest = 83661,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

tsw.nodes[46004644] = SturdyChest({
    achievementID = 40814,
    location = L['tsw_chest_3_location'],
    quest = 83681,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

tsw.nodes[42334786] = SturdyChest({
    achievementID = 40814,
    location = L['tsw_chest_4_location'],
    quest = 83662,
    rlabel = ns.status.Gray('#4'),
    pois = {Path({47714549, 42334786})}
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- THE SINKHOLE ---------------------------------
-------------------------------------------------------------------------------

tsh.nodes[52221334] = SturdyChest({
    achievementID = 40813,
    quest = 83453,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

tsh.nodes[43496066] = SturdyChest({
    achievementID = 40813,
    quest = 83668,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

tsh.nodes[72586118] = SturdyChest({
    achievementID = 40813,
    quest = 83700,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

tsh.nodes[48446923] = SturdyChest({
    achievementID = 40813,
    quest = 83685,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------------- FUNGAL FOLLY ---------------------------------
-------------------------------------------------------------------------------

fol.nodes[58784691] = SturdyChest({
    achievementID = 40803,
    location = L['fol_chest_1_location'],
    quest = 83702,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

fol.nodes[32747411] = SturdyChest({
    achievementID = 40803,
    location = L['fol_use_mushrooms'],
    quest = 83671,
    rlabel = ns.status.Gray('#2'),
    pois = {Path({34516795, 33106726, 30986856, 30937054, 32747411})}
}) -- Sturdy Chest 2

fol.nodes[34456569] = SturdyChest({
    achievementID = 40803,
    location = L['fol_chest_3_location'],
    quest = 83689,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

fol.nodes[49583598] = SturdyChest({
    achievementID = 40803,
    location = L['in_water'],
    quest = 83452,
    rlabel = ns.status.Gray('#4'),
    rewards = {
        ns.reward.Toy({item = 225556}) -- Ancient Construct
    }
}) -- Sturdy Chest 4

fol.nodes[53334138] = SturdyChest({
    achievementID = 40803,
    location = L['fol_use_mushrooms'],
    quest = 83690,
    rlabel = ns.status.Gray('#5'),
    pois = {
        Path({
            57845665, 55845497, 53845005, 53244437, 55674511, 55744326, 53334138
        })
    }
}) -- Sturdy Chest 5

-------------------------------------------------------------------------------
------------------------------ SKITTERING BREACH ------------------------------
-------------------------------------------------------------------------------

ski.nodes[50746583] = SturdyChest({
    achievementID = 40810,
    quest = 83679,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

ski.nodes[27422648] = SturdyChest({
    achievementID = 40810,
    quest = 83660,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

ski.nodes[56062413] = SturdyChest({
    achievementID = 40810,
    location = L['ski_chest_3_location'],
    quest = 83696,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

ski.nodes[66801480] = SturdyChest({
    achievementID = 40810,
    quest = 83680,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ NIGHTFALL SANCTUM ------------------------------
-------------------------------------------------------------------------------

nfs.nodes[77783613] = SturdyChest({
    achievementID = 40809,
    quest = 83688,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

nfs.nodes[70934454] = SturdyChest({
    achievementID = 40809,
    location = L['nfs_chest_2_location'],
    quest = 83670,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

nfs.nodes[39147437] = SturdyChest({
    achievementID = 40809,
    location = L['nfs_chest_3_location'],
    quest = 83454,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

nfs.nodes[40023667] = SturdyChest({
    achievementID = 40809,
    location = L['nfs_chest_4_location'],
    quest = 83701,
    rlabel = ns.status.Gray('#4'),
    pois = {
        POI({38554822}), -- jump point
        Path({38554822, 38494360}) -- jump path
    }
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ TAK-RETHAN ABYSS -------------------------------
-------------------------------------------------------------------------------

tra.nodes[59732483] = SturdyChest({
    achievementID = 40811,
    quest = 83651,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

tra.nodes[64734930] = SturdyChest({
    achievementID = 40811,
    location = L['tra_chest_2_location'],
    quest = 83686,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

tra.nodes[44784979] = SturdyChest({
    achievementID = 40811,
    quest = 83687,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

tra.nodes[35135863] = SturdyChest({
    achievementID = 40811,
    quest = 83669,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ EXCAVATION SITE 9 ------------------------------
-------------------------------------------------------------------------------

esn.nodes[50906155] = SturdyChest({
    achievementID = 41100,
    quest = 86347,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1 -- Rowdy Rifts

esn.nodes[57014680] = SturdyChest({
    achievementID = 41100,
    quest = 86345,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2 -- Rowdy Rifts

esn.nodes[33585917] = SturdyChest({
    achievementID = 41100,
    quest = 86346,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3 -- Lost Excavators (didn't see on Rowdy Rifts?)

esn.nodes[73363995] = SturdyChest({
    achievementID = 41100,
    quest = 86343,
    rlabel = ns.status.Gray('#4'),
    pois = {
        POI({71953763, 73013890}), -- jump point
        Path({71953763, 73013890}) -- jump path
    }
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
------------------------------ SIDESTREET SLUICE ------------------------------
-------------------------------------------------------------------------------

pit.nodes[33437316] = SturdyChest({
    achievementID = 41101,
    quest = 86790,
    rlabel = ns.status.Gray('#1')
}) -- Sturdy Chest 1

thd.nodes[77573947] = SturdyChest({
    achievementID = 41101,
    location = L['sss_chest_2_location'],
    pois = {
        POI({72803794}), --
        Path({72803794, 74303947, 77573947})
    },
    quest = 86789,
    rlabel = ns.status.Gray('#2')
}) -- Sturdy Chest 2

pit.nodes[61616581] = SturdyChest({
    achievementID = 41101,
    quest = 86787,
    rlabel = ns.status.Gray('#3')
}) -- Sturdy Chest 3

pit.nodes[74447419] = SturdyChest({
    achievementID = 41101,
    quest = 86788,
    rlabel = ns.status.Gray('#4')
}) -- Sturdy Chest 4

-------------------------------------------------------------------------------
-------------------------- DELVE REWARDS (AREAPOIS) ---------------------------
-------------------------------------------------------------------------------

local maps = {
    ns.maps[2214], -- Ringing Deeps
    ns.maps[2215], -- Hallowfall
    ns.maps[2248], -- Isle of Dorn
    ns.maps[2255], -- Azj-Kahet - Upper
    ns.maps[2256], -- Azj-Kahet - Lower
    ns.maps[2346] -- Undermine
}

for _, m in pairs(maps) do
    m.groups[#m.groups + 1] = ns.groups.DELVE_REWARDS
    m.groups[ns.groups.DELVE_REWARDS] = true
end

local DELVE_REWARDS = {
    -- FUNGARIAN DELVES -------------------------------------------------------
    ['mycomancer_cavern'] = {
        Achievement({id = 40808, criteria = SturdyChestCriteria}), -- Mycomancer Cavern Discoveries
        Achievement({id = 40531, criteria = {68770, 68771, 68772}}), -- Mycomancer Cavern Stories
        Achievement({id = 40445, oneline = true}), -- Sporesweeper
        Achievement({id = 41110, oneline = true, criteria = {71061}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71089}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71117}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 225337, id = 4506}) -- Violet Sporbit
    },
    ['fungal_folly'] = {
        Achievement({id = 40803, criteria = SturdyChestCriteria}), -- Fungal Folly Discoveries
        Achievement({id = 40525, criteria = {68752, 68753, 68754, 102965}}), -- Fungal Folly Stories
        Achievement({id = 40445, oneline = true}), -- Sporesweeper
        Achievement({id = 41110, oneline = true, criteria = {71059}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71087}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71115}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 225337, id = 4506}) -- Violet Sporbit
    },
    -- KOBOLD DELVES ----------------------------------------------------------
    ['kriegvals_rest'] = {
        Achievement({id = 40807, criteria = SturdyChestCriteria}), -- Kriegval's Rest Discoveries
        Achievement({id = 40526, criteria = {68755, 68756, 68757, 102967}}), -- Kriegval's Rest Stories
        Achievement({id = 40446, oneline = true}), -- I TAKE Candle!
        Achievement({id = 41110, oneline = true, criteria = {71060}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71088}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71116}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 223624, id = 4575}) -- Sneef
    },
    ['the_waterworks'] = {
        Achievement({id = 40816, criteria = SturdyChestCriteria}), -- The Waterworks Discoveries
        Achievement({id = 40528, criteria = {68761, 68762, 68763, 102968}}), -- The Waterworks Stories
        Achievement({id = 40446, oneline = true}), -- I TAKE Candle!
        Achievement({id = 41110, oneline = true, criteria = {71069}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71097}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71125}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 223624, id = 4575}) -- Sneef
    },
    -- KOBYSS DELVES ----------------------------------------------------------
    ['the_sinkhole'] = {
        Achievement({id = 40813, criteria = SturdyChestCriteria}), -- The Sinkhole Discoveries
        Achievement({id = 40532, criteria = {68773, 68774, 68775, 102970}}), -- The Sinkhole Stories
        Achievement({id = 40452, oneline = true}), -- Just Keep Swimming
        Achievement({id = 41110, oneline = true, criteria = {71066}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71094}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71122}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 221496, id = 4496}) -- Wriggle
    },
    ['tek_rethan_abyss'] = {
        Achievement({id = 40811, criteria = SturdyChestCriteria}), -- Tek-Rethan Abyss Discoveries
        Achievement({id = 40535, criteria = {68783, 68784, 68785, 102966}}), -- Tek-Rethan Abyss Stories
        Achievement({id = 40452, oneline = true}), -- Just Keep Swimming
        Achievement({id = 41110, oneline = true, criteria = {71064}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71092}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71120}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 221496, id = 4496}) -- Wriggle
    },
    -- NERUBIAN DELVES --------------------------------------------------------
    ['earthcrawl_mines'] = {
        Achievement({id = 40806, criteria = SturdyChestCriteria}), -- Earthcrawl Mines Discoveries
        Achievement({
            id = 40527,
            criteria = {68758, 68759, 68760, 102963, 102964}
        }), -- Earthcrawl Mines Stories
        Achievement({id = 40453, oneline = true}), -- Spider Sense
        Achievement({id = 41110, oneline = true, criteria = {71058}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71086}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71114}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 222971, id = 4489}) -- Bouncer
    },
    ['the_dread_pit'] = {
        Achievement({id = 40812, criteria = SturdyChestCriteria}), -- The Dread Pit Discoveries
        Achievement({id = 40529, criteria = {68764, 68765, 68766, 102969}}), -- The Dread Pit Stories
        Achievement({id = 40453, oneline = true}), -- Spider Sense
        Achievement({id = 41110, oneline = true, criteria = {71065}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71093}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71121}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 222971, id = 4489}) -- Bouncer
    },
    ['the_spiral_weave'] = {
        Achievement({id = 40814, criteria = SturdyChestCriteria}), -- The Spiral Weave Discoveries
        Achievement({id = 40536, criteria = {68786, 68787, 68788, 102973}}), -- The Spiral Weave Stories
        Achievement({id = 40453, oneline = true}), -- Spider Sense
        Achievement({id = 41110, oneline = true, criteria = {71067}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71095}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71123}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 222971, id = 4489}) -- Bouncer
    },
    ['the_underkeep'] = {
        Achievement({id = 40815, criteria = SturdyChestCriteria}), -- The Underkeep Discoveries
        Achievement({
            id = 40534,
            criteria = {68779, 68780, 68781, 68782, 102974}
        }), -- The Underkeep Stories
        Achievement({id = 40453, oneline = true}), -- Spider Sense
        Achievement({id = 41110, oneline = true, criteria = {71068}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71096}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71124}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 222971, id = 4489}) -- Bouncer
    },
    -- ORDER OF THE NIGHT DELVES ----------------------------------------------
    ['nightfall_sanctum'] = {
        Achievement({id = 40809, criteria = SturdyChestCriteria}), -- Nightfall Sanctum Discoveries
        Achievement({id = 40530, criteria = {68767, 68768, 68769, 102975}}), -- Nightfall Sanctum Stories
        Achievement({id = 40454, oneline = true}), -- Daystormer
        Achievement({id = 41110, oneline = true, criteria = {71062}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71090}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71118}}) -- Algari Delver Tank  III
    },
    ['skittering_breach'] = {
        Achievement({id = 40810, criteria = SturdyChestCriteria}), -- Skittering Breach Discoveries
        Achievement({id = 40533, criteria = {68776, 68777, 68778, 102972}}), -- Skittering Breach Stories
        Achievement({id = 40454, oneline = true}), -- Daystormer
        Achievement({id = 41110, oneline = true, criteria = {71063}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71091}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71119}}) -- Algari Delver Tank  III
    },
    -- GOBLIN DELVES ----------------------------------------------------------
    ['excavation_site_9'] = {
        Achievement({id = 41100, criteria = SturdyChestCriteria}), -- Excavation Site 9 Discoveries
        Achievement({id = 41098, criteria = {70985, 70986, 70987}}), -- Excavation Site 9 Stories
        Achievement({id = 41110, oneline = true, criteria = {71071}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71099}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71127}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 232848, id = 4647}) -- Mr. DELVER
    },
    ['sidestreet_sluice'] = {
        Achievement({id = 41101, criteria = SturdyChestCriteria}), -- Sidestreet Sluice Discoveries
        Achievement({id = 41099, criteria = {70988, 70989, 70990}}), -- Sidestreet Sluice Stories
        Achievement({id = 41110, oneline = true, criteria = {71070}}), -- Algari Delver Damage Dealer III
        Achievement({id = 41112, oneline = true, criteria = {71098}}), -- Algari Delver Healer III
        Achievement({id = 41114, oneline = true, criteria = {71126}}), -- Algari Delver Tank  III
        Spacer(), --
        Pet({item = 221820, id = 4537}), -- Chester
        Pet({item = 232848, id = 4647}) -- Mr. DELVER
    }
}

local DELVE_AREA_POIS = {
    -- NORMAL DELVES ----------------------------------------------------------
    [7863] = DELVE_REWARDS['earthcrawl_mines'],
    [7864] = DELVE_REWARDS['fungal_folly'],
    [7865] = DELVE_REWARDS['kriegvals_rest'],
    [7866] = DELVE_REWARDS['the_waterworks'],
    [7867] = DELVE_REWARDS['the_dread_pit'],
    [7868] = DELVE_REWARDS['nightfall_sanctum'],
    [7869] = DELVE_REWARDS['mycomancer_cavern'],
    [7870] = DELVE_REWARDS['the_sinkhole'],
    [7871] = DELVE_REWARDS['skittering_breach'],
    [7872] = DELVE_REWARDS['the_underkeep'],
    [7873] = DELVE_REWARDS['tek_rethan_abyss'],
    [7874] = DELVE_REWARDS['the_spiral_weave'],
    [8143] = DELVE_REWARDS['excavation_site_9'],
    [8140] = DELVE_REWARDS['sidestreet_sluice'],
    -- BOUNTIFUL DELVES -------------------------------------------------------
    [7779] = DELVE_REWARDS['fungal_folly'],
    [7780] = DELVE_REWARDS['mycomancer_cavern'],
    [7781] = DELVE_REWARDS['kriegvals_rest'],
    [7782] = DELVE_REWARDS['the_waterworks'],
    [7783] = DELVE_REWARDS['the_sinkhole'],
    [7784] = DELVE_REWARDS['tek_rethan_abyss'],
    [7785] = DELVE_REWARDS['nightfall_sanctum'],
    [7786] = DELVE_REWARDS['the_underkeep'],
    [7787] = DELVE_REWARDS['earthcrawl_mines'],
    [7788] = DELVE_REWARDS['the_dread_pit'],
    [7789] = DELVE_REWARDS['skittering_breach'],
    [7790] = DELVE_REWARDS['the_spiral_weave'],
    [8181] = DELVE_REWARDS['excavation_site_9'],
    [8246] = DELVE_REWARDS['sidestreet_sluice']
}

ns.hooks.delve.Add(ns.groups.DELVE_REWARDS, DELVE_AREA_POIS)
