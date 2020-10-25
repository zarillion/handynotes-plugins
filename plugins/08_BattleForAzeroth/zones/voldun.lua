-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=864, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[50328163] = Rare({
    id=135852,
    quest=51058,
    rewards={
        Achievement({id=12943, criteria=41606}),
        Transmog({item=161021, slot=L["cloth"]}) -- Soaring Slateclaw Gloves
    }
}) -- Ak'tar

map.nodes[54701513] = Rare({
    id=130439,
    quest=47532,
    rewards={
        Achievement({id=12943, criteria=41607}),
        Transmog({item=161106, slot=L["mail"]}) -- Rabid Packleader Bracers
    }
}) -- Ashmane

map.nodes[49028903] = Rare({
    id=128553,
    quest=49252,
    note=L["in_cave"],
    rewards={
        Achievement({id=12943, criteria=41608})
    },
    pois={
        POI({47888819}) -- Cave entrance
    }
}) -- Azer'tor

map.nodes[31008109] = Rare({
    id=128497,
    quest=49251,
    rewards={
        Achievement({id=12943, criteria=41609}),
        Transmog({item=162622, slot=L["plate"]}) -- Groggy Brawler's Chestplate
    }
}) -- Bajiani the Slick

map.nodes[48855005] = Rare({
    id=129476,
    quest=47562,
    rewards={
        Achievement({id=12943, criteria=41610}),
        Transmog({item=161037, slot=L["plate"]}) -- Sand Scoured Girdle
    }
}) -- Bloated Krolusk

map.nodes[56065359] = Rare({
    id=136393,
    quest=51079,
    note=L["bloodwing_bonepicker_note"],
    rewards={
        Achievement({id=12943, criteria=41611}),
        Transmog({item=161019, slot=L["cloth"]}) -- Dread Vulture Waistcord
    }
}) -- Bloodwing Bonepicker

map.nodes[41412410] = Rare({
    id=136346,
    quest=51073,
    rewards={
        Achievement({id=12943, criteria=41612}),
        Transmog({item=160990, slot=L["cloth"]}) -- Marrow's Sash
    }
}) -- Captain Stef "Marrow" Quin

map.nodes[42519208] = Rare({
    id=124722,
    quest=50905,
    rewards={
        Achievement({id=12943, criteria=41613}),
        Transmog({item=162615, slot=L["leather"]}) -- Commodore Calhoun's Tricorne
    }
}) -- Commodore Calhoun

map.nodes[61983783] = Rare({
    id=136335,
    quest=51077,
    rewards={
        Achievement({id=12943, criteria=41614}),
        Transmog({item=161036, slot=L["plate"]}) -- Sand-Smoothed Wristguards
    }
}) -- Enraged Krolusk

map.nodes[64014750] = Rare({
    id=128674,
    quest=49270,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12943, criteria=41615}),
        Transmog({item=161105, slot=L["mail"]}) -- Gluttonous Carnivore Treads
    }
}) -- Gut-Gut the Glutton

map.nodes[53605373] = Rare({
    id=130443,
    quest=47533,
    note=L["in_cave"],
    rewards={
        Achievement({id=12943, criteria=41616}),
        Transmog({item=161027, slot=L["leather"]}) -- Venomous Hivemother Cord
    },
    pois={
        POI({53865150}) -- Cave entrance
    }
}) -- Hivemother Kraxi

map.nodes[37408479] = Rare({
    id=129283,
    quest=49392,
    rewards={
        Achievement({id=12943, criteria=41617}),
        Transmog({item=161107, slot=L["plate"]}) -- Brineshell Footguards
    }
}) -- Jumbo Sandsnapper

map.nodes[60561801] = Rare({
    id=136341,
    quest=51074,
    rewards={
        Achievement({id=12943, criteria=41618}),
        Transmog({item=161026, slot=L["leather"]}) -- Spiderbite Wristwraps
    }
}) -- Jungleweb Hunter

map.nodes[35065184] = Rare({
    id=128686,
    quest=50528,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12943, criteria=41619}),
        Transmog({item=161038, slot=L["plate"]}) -- Sand Trapper's Legguards
    }
}) -- Kamid the Trapper

map.nodes[38284140] = Rare({
    id=137681,
    quest=51424,
    note=L["in_cave"],
    rewards={
        Achievement({id=12943, criteria=41620}),
        Transmog({item=161108, slot=L["plate"]}) -- Kingshell Legplates
    },
    pois={
        POI({37324051}) -- Cave entrance
    }
}) -- King Clickyclack

map.nodes[43768623] = Rare({
    id=128951,
    quest=50898,
    note=L["nezara_note"],
    rewards={
        Achievement({id=12943, criteria=41621}),
        Transmog({item=161024, slot=L["cloth"]}) -- Wrathful Sister's Cincture
    }
}) -- Nez'ara

map.nodes[48987216] = Rare({
    id=136340,
    quest=51126,
    rewards={
        Achievement({id=12943, criteria=41622}),
        Transmog({item=160956, slot=L["fist"]}) -- Hazaak's Windshorn Claws
    }
}) -- Relic Hunter Hazaak

map.nodes[44538023] = Rare({
    id=127776,
    quest=48960,
    rewards={
        Achievement({id=12943, criteria=41623}),
        Transmog({item=161039, slot=L["plate"]}) -- Sandclaw Handguards
    }
}) -- Scaleclaw Broodmother

map.nodes[32706507] = Rare({
    id=136336,
    quest=51076,
    rewards={
        Achievement({id=12943, criteria=41624}),
        Transmog({item=161030, slot=L["leather"]}) -- Vicious Scorpidsting Sandals
    }
}) -- Scorpox

map.nodes[24566845] = Rare({
    id=136338,
    quest=51075,
    rewards={
        Achievement({id=12943, criteria=41625}),
        Transmog({item=161099, slot=L["mail"]}) -- Wind-Scoured Greaves
    }
}) -- Sirokar

map.nodes[46972518] = Rare({
    id=134571,
    quest=50637,
    note=L["in_cave"],
    rewards={
        Achievement({id=12943, criteria=41626}),
        Transmog({item=160968, slot=L["staff"]}) -- Skycaller Spellstaff
    },
    pois={
        POI({46312713}) -- Cave entrance
    }
}) -- Skycaller Teskris

map.nodes[51293645] = Rare({
    id=134745,
    quest=50686,
    rewards={
        Achievement({id=12943, criteria=41627}),
        Transmog({item=160980, slot=L["warglaive"]}) -- Skycarver Warglaive
    }
}) -- Skycarver Krakit

map.nodes[66892446] = Rare({
    id=136304,
    quest=51063,
    rewards={
        Achievement({id=12943, criteria=41628}),
        Transmog({item=161025, slot=L["cloth"]}) -- Wailing Sister's Gloves
    }
}) -- Songstress Nahjeen

map.nodes[57317329] = Rare({
    id=130401,
    quest=49674,
    note=L["vathikur_note"],
    rewards={
        Achievement({id=12943, criteria=41629}),
        Transmog({item=161097, slot=L["leather"]}) -- Rattling Earth Armwraps
    }
}) -- Vathikur

map.nodes[37064605] = Rare({
    id=129180,
    quest=49373,
    rewards={
        Achievement({id=12943, criteria=41630}),
        Transmog({item=161032, slot=L["mail"]}) -- Spire-Charged Links
    }
}) -- Warbringer Hozzik

map.nodes[30205256] = Rare({
    id=134638,
    quest=50662,
    rewards={
        Achievement({id=12943, criteria=41631}),
        Transmog({item=161031, slot=L["mail"]}) -- Zothix's Conductive Vambraces
    }
}) -- Warlord Zothix

map.nodes[50713086] = Rare({
    id=134625,
    quest=50658,
    rewards={
        Achievement({id=12943, criteria=41632}),
        Transmog({item=161103, slot=L["mail"]}) -- Barbarous Captive's Wargreaves
    }
}) -- Warmother Captive

map.nodes[43905405] = Rare({
    id=129411,
    quest=48319,
    note=L["in_cave"]..' '..L["zunashi_note"],
    rewards={
        Achievement({id=12943, criteria=41633}),
        Item({item=161119, note=L["trinket"]}) -- Ravasaur Skull Bijou
    },
    pois={
        POI({43975252}) -- Entrance
    }
}) -- Zunashi the Exile

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- 47527542 50925
-- 48338890 50920
-- 49778730 51673
-- 52613184 50917

-------------------------------------------------------------------------------

map.nodes[46598801] = Treasure({
    quest=50237,
    note=L["ashvane_spoils_note"],
    rewards={
        Achievement({id=12849, criteria=40966})
    }
}) -- Ashvane Spoils

map.nodes[40578574] = Treasure({
    quest=52994,
    rewards={
        Achievement({id=12849, criteria=41003})
    }
}) -- Deadwood Chest

map.nodes[57746464] = Treasure({
    quest=51136,
    note=L["excavators_greed_note"],
    rewards={
        Achievement({id=12849, criteria=40971})
    }
}) -- Excavator's Greed

map.nodes[48186469] = Treasure({
    quest=51093,
    note=L["grayals_offering_note"],
    rewards={
        Achievement({id=12849, criteria=40967})
    },
    pois={
        POI({49076468}) -- Entrance
    }
}) -- Grayal's Last Offering

map.nodes[49787940] = Treasure({
    quest=51132,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12849, criteria=40968})
    }
}) -- Lost Explorer's Bounty

map.nodes[57061121] = Treasure({
    quest=52992,
    note=L["kimbul_offerings_note"],
    rewards={
        Achievement({id=12849, criteria=41002})
    }
}) -- Lost Offerings of Kimbul

map.nodes[47195846] = Treasure({
    quest=51133,
    rewards={
        Achievement({id=12849, criteria=40969})
    }
}) -- Sandfury Reserve

map.nodes[26484535] = Treasure({
    quest=53004,
    note=L["sandsunken_note"],
    rewards={
        Achievement({id=12849, criteria=41004})
    }
}) -- Sandsunken Treasure

map.nodes[44502613] = Treasure({
    quest=51135,
    rewards={
        Achievement({id=12849, criteria=40970})
    }
}) -- Stranded Cache

map.nodes[29388742] = Treasure({
    quest=51137,
    rewards={
        Achievement({id=12849, criteria=40972})
    }
}) -- Zem'lan's Buried Treasure

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[30526194] = PetBattle({
    id=141969,
    rewards={
        Achievement({id=12936, criteria=44226})
    }
}) -- What Do You Mean, Mind Controlling Plants? (Spineleaf)

map.nodes[26585492] = PetBattle({
    id=141945,
    note=L["sizzik_note"],
    rewards={
        Achievement({id=12936, criteria=44228}),
        ns.reward.Spacer(),
        Achievement({id=13270, criteria=15, oneline=true}), -- Beast
        Achievement({id=13271, criteria=15, oneline=true}), -- Critter
        Achievement({id=13272, criteria=15, oneline=true}), -- Dragon
        Achievement({id=13273, criteria=15, oneline=true}), -- Elemental
        Achievement({id=13274, criteria=15, oneline=true}), -- Flying
        Achievement({id=13275, criteria=15, oneline=true}), -- Magic
        Achievement({id=13277, criteria=15, oneline=true}), -- Mechanical
        Achievement({id=13278, criteria=15, oneline=true}), -- Undead
        Achievement({id=13280, criteria=15, oneline=true}), -- Aquatic
        Achievement({id=13281, criteria=15, oneline=true})  -- Humanoid
    }
}) -- Snakes on a Terrace (Sizzik)

map.nodes[45134642] = PetBattle({
    id=142054,
    note=L["kusa_note"],
    rewards={
        Achievement({id=12936, criteria=44227}),
        ns.reward.Spacer(),
        Achievement({id=13270, criteria=16, oneline=true}), -- Beast
        Achievement({id=13271, criteria=16, oneline=true}), -- Critter
        Achievement({id=13272, criteria=16, oneline=true}), -- Dragon
        Achievement({id=13273, criteria=16, oneline=true}), -- Elemental
        Achievement({id=13274, criteria=16, oneline=true}), -- Flying
        Achievement({id=13275, criteria=16, oneline=true}), -- Magic
        Achievement({id=13277, criteria=16, oneline=true}), -- Mechanical
        Achievement({id=13278, criteria=16, oneline=true}), -- Undead
        Achievement({id=13280, criteria=16, oneline=true}), -- Aquatic
        Achievement({id=13281, criteria=16, oneline=true})  -- Humanoid
    }
}) -- Desert Survivors (Kusa)

map.nodes[57134896] = PetBattle({
    id=141879,
    note=L["keeyo_note"],
    rewards={
        Achievement({id=12936, criteria=44225}),
        ns.reward.Spacer(),
        Achievement({id=13270, criteria=14, oneline=true}), -- Beast
        Achievement({id=13271, criteria=14, oneline=true}), -- Critter
        Achievement({id=13272, criteria=14, oneline=true}), -- Dragon
        Achievement({id=13273, criteria=14, oneline=true}), -- Elemental
        Achievement({id=13274, criteria=14, oneline=true}), -- Flying
        Achievement({id=13275, criteria=14, oneline=true}), -- Magic
        Achievement({id=13277, criteria=14, oneline=true}), -- Mechanical
        Achievement({id=13278, criteria=14, oneline=true}), -- Undead
        Achievement({id=13280, criteria=14, oneline=true}), -- Aquatic
        Achievement({id=13281, criteria=14, oneline=true})  -- Humanoid
    }
}) -- Keeyo's Champions of Vol'dun (Keeyo)

-------------------------------------------------------------------------------
--------------------------------- DUNE RIDER ----------------------------------
-------------------------------------------------------------------------------

map.nodes[32146908] = NPC({
    id=123535,
    icon=134962,
    rewards={
        Achievement({id=13018})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Rickety Plank 1

map.nodes[38037098] = NPC({
    id=123535,
    icon=134962,
    rewards={
        Achievement({id=13018})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Rickety Plank 2

map.nodes[45746360] = NPC({
    id=123535,
    icon=134962,
    rewards={
        Achievement({id=13018})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Rickety Plank 3

map.nodes[47916247] = NPC({
    id=123535,
    icon=134962,
    rewards={
        Achievement({id=13018})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Rickety Plank 4

map.nodes[54902140] = NPC({
    id=123535,
    icon=134962,
    rewards={
        Achievement({id=13018})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Rickety Plank 5

-------------------------------------------------------------------------------
------------------------------ MUSHROOM HARVEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[61001820] = NPC({
    id=143313,
    icon=1869654,
    rewards={
        Achievement({id=13027, criteria=41392})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Portakillo

-------------------------------------------------------------------------------
------------------------------ ELUSIVE QUICKHOOF ------------------------------
-------------------------------------------------------------------------------

map.nodes[43006900] = NPC({
    id=162681,
    icon=2916283,
    note=L["elusive_alpaca"],
    rewards={
        Mount({id=1324, item=174860}) -- Elusive Quickhoof
    },
    pois={
        POI({
            26405250, 29006600, 31106730, 42006000, 43006900, 51108590,
            52508900, 54008200, 54605320, 55007300
        })
    },
    IsCompleted = function (self) return self:IsCollected() end
})
