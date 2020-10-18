-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local NPC = ns.node.NPC
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

map.nodes[50378160] = Rare({
    id=135852,
    quest=51058,
    rewards={
        Achievement({id=12943, criteria=41606}),
        Transmog({item=161021, slot=L["cloth"]}) -- Soaring Slateclaw Gloves
    }
}) -- Ak'tar

map.nodes[54701517] = Rare({
    id=130439,
    quest=47532,
    rewards={
        Achievement({id=12943, criteria=41607}),
        Transmog({item=161106, slot=L["mail"]}) -- Rabid Packleader Bracers
    }
}) -- Ashmane

map.nodes[49058905] = Rare({
    id=128553,
    quest=49252,
    rewards={
        Achievement({id=12943, criteria=41608})
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

map.nodes[49064989] = Rare({
    id=129476,
    quest=47562,
    rewards={
        Achievement({id=12943, criteria=41610}),
        Transmog({item=161037, slot=L["plate"]}) -- Sand Scoured Girdle
    }
}) -- Bloated Krolusk

map.nodes[56105356] = Rare({
    id=136393,
    quest=51079,
    rewards={
        Achievement({id=12943, criteria=41611}),
        Transmog({item=161019, slot=L["cloth"]}) -- Dread Vulture Waistcord
    }
}) -- Bloodwing Bonepicker

map.nodes[41272449] = Rare({
    id=136346,
    quest=51073,
    rewards={
        Achievement({id=12943, criteria=41612}),
        Transmog({item=160990, slot=L["cloth"]}) -- Marrow's Sash
    }
}) -- Captain Stef "Marrow" Quin

map.nodes[42679245] = Rare({
    id=124722,
    quest=50905,
    rewards={
        Achievement({id=12943, criteria=41613}),
        Transmog({item=162615, slot=L["leather"]}) -- Commodore Calhoun's Tricorne
    }
}) -- Commodore Calhoun

map.nodes[61853788] = Rare({
    id=136335,
    quest=51077,
    rewards={
        Achievement({id=12943, criteria=41614}),
        Transmog({item=161036, slot=L["plate"]}) -- Sand-Smoothed Wristguards
    }
}) -- Enraged Krolusk

map.nodes[64004757] = Rare({
    id=128674,
    quest=49270,
    rewards={
        Achievement({id=12943, criteria=41615}),
        Transmog({item=161105, slot=L["mail"]}) -- Gluttonous Carnivore Treads
    }
}) -- Gut-Gut the Glutton

map.nodes[53685347] = Rare({
    id=130443,
    quest=47533,
    rewards={
        Achievement({id=12943, criteria=41616}),
        Transmog({item=161027, slot=L["leather"]}) -- Venomous Hivemother Cord
    }
}) -- Hivemother Kraxi

map.nodes[37428498] = Rare({
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

map.nodes[35085183] = Rare({
    id=128686,
    quest=50528,
    rewards={
        Achievement({id=12943, criteria=41619}),
        Transmog({item=161038, slot=L["plate"]}) -- Sand Trapper's Legguards
    }
}) -- Kamid the Trapper

map.nodes[38284138] = Rare({
    id=137681,
    quest=51424,
    rewards={
        Achievement({id=12943, criteria=41620}),
        Transmog({item=161108, slot=L["plate"]}) -- Kingshell Legplates
    }
}) -- King Clickyclack

map.nodes[43758624] = Rare({
    id=128951,
    quest=50898,
    rewards={
        Achievement({id=12943, criteria=41621}),
        Transmog({item=161024, slot=L["cloth"]}) -- Wrathful Sister's Cincture
    }
}) -- Nez'ara

map.nodes[49017210] = Rare({
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

map.nodes[32716522] = Rare({
    id=136336,
    quest=51076,
    rewards={
        Achievement({id=12943, criteria=41624}),
        Transmog({item=161030, slot=L["leather"]}) -- Vicious Scorpidsting Sandals
    }
}) -- Scorpox

map.nodes[24736850] = Rare({
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
    rewards={
        Achievement({id=12943, criteria=41626}),
        Transmog({item=160968, slot=L["staff"]}) -- Skycaller Spellstaff
    }
}) -- Skycaller Teskris

map.nodes[51263645] = Rare({
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

map.nodes[57197349] = Rare({
    id=130401,
    quest=49674,
    rewards={
        Achievement({id=12943, criteria=41629}),
        Transmog({item=161097, slot=L["leather"]}) -- Rattling Earth Armwraps
    }
}) -- Vathikur

map.nodes[37084616] = Rare({
    id=129180,
    quest=49373,
    rewards={
        Achievement({id=12943, criteria=41630}),
        Transmog({item=161032, slot=L["mail"]}) -- Spire-Charged Links
    }
}) -- Warbringer Hozzik

map.nodes[30115256] = Rare({
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

map.nodes[43915405] = Rare({
    id=129411,
    quest=48319,
    rewards={
        Achievement({id=12943, criteria=41633}),
        Item({item=161119, note=L["trinket"]}) -- Ravasaur Skull Bijou
    }
}) -- Zunashi the Exile

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[46598801] = Treasure({
    quest=50237,
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
    rewards={
        Achievement({id=12849, criteria=40967})
    }
}) -- Grayal's Last Offering

map.nodes[49787940] = Treasure({
    quest=51132,
    rewards={
        Achievement({id=12849, criteria=40968})
    }
}) -- Lost Explorer's Bounty

map.nodes[57061121] = Treasure({
    quest=52992,
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

map.nodes[26484534] = Treasure({
    quest=53004,
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
------------------------------ ELUSIVE QUICKHOOF ------------------------------
-------------------------------------------------------------------------------

map.nodes[43006900] = NPC({id=162681, icon=2916283, group=ns.groups.ALPACA_VOLDUN, pois={
    POI({
        26405250, 29006600, 31106730, 42006000, 43006900, 51108590, 52508900,
        54008200, 54605320, 55007300
    })
}, rewards={
    Mount({id=1324, item=174860}) -- Elusive Quickhoof
}, note=L["elusive_alpaca"]})
