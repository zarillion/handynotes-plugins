-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Safari = ns.node.Safari
local Supply = ns.node.Supply
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 863, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[67792946] = Rare({
    id = 125250,
    quest = 48063,
    rewards = {Achievement({id = 12942, criteria = 41440})}
}) -- Ancient Jawbreaker

map.nodes[54128110] = Rare({
    id = 134298,
    quest = 50569,
    rewards = {Achievement({id = 12942, criteria = 41444})}
}) -- Azerite-Infused Elemental

map.nodes[33122699] = Rare({
    id = 134293,
    quest = 50563,
    rewards = {
        Achievement({id = 12942, criteria = 41447}),
        Transmog({item = 161100, slot = L['mail']}) -- Fused-Slag Girdle
    }
}) -- Azerite-Infused Slag

map.nodes[42836053] = Rare({
    id = 126142,
    quest = 48439,
    rewards = {
        Achievement({id = 12942, criteria = 41466}),
        Transmog({item = 161093, slot = L['leather']}) -- Clutch Mother Wristwraps
    }
}) -- Bajiatha

map.nodes[43199131] = Rare({
    id = 126635,
    quest = 48541,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 12942, criteria = 41448}),
        Transmog({item = 161217, slot = L['mail']}) -- Tainted Blood Vambraces
    }
}) -- Blood Priest Xak'lar

map.nodes[81833057] = Rare({
    id = 125232,
    quest = 48057,
    note = L['captain_mukala_note'],
    rewards = {Achievement({id = 12942, criteria = 41454})}
}) -- Captain Mu'kala

map.nodes[41315343] = Rare({
    id = 126187,
    quest = 48462,
    rewards = {
        Achievement({id = 12942, criteria = 41453}),
        Transmog({item = 161102, slot = L['mail']}) -- Corpseblood Belt
    }
}) -- Corpse Bringer Yal'kar

map.nodes[81696105] = Rare({
    id = 134294,
    quest = 50565,
    note = L['enraged_water_note'],
    rewards = {
        Achievement({id = 12942, criteria = 41464}),
        Transmog({item = 161045, slot = L['cloth']}) -- Scrollbound Hurricane Slippers
    }
}) -- Enraged Water Elemental

map.nodes[68595720] = Rare({
    id = 121242,
    quest = 50361,
    rewards = {Achievement({id = 12942, criteria = 41456})}
}) -- Glompmaw

map.nodes[32754304] = Rare({
    id = 128426,
    quest = 49231,
    rewards = {
        Achievement({id = 12942, criteria = 41457}),
        Transmog({item = 161041, slot = L['plate']}) -- Gutrip's Tramplers
    }
}) -- Gutrip

map.nodes[33788600] = Rare({
    id = 127001,
    quest = 48638,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 12942, criteria = 41455}),
        Transmog({item = 162614, slot = L['cloth']}) -- Gwugnug's Cursed Wraps
    }
}) -- Gwugnug the Cursed

map.nodes[24407796] = Rare({
    id = 124399,
    quest = 47877,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 12942, criteria = 41459}),
        Transmog({item = 161218, slot = L['leather']}) -- Direhorn Studded Belt
    }
}) -- Infected Direhorn

map.nodes[45185189] = Rare({
    id = 133373,
    quest = 50307,
    rewards = {
        Achievement({id = 12942, criteria = 41460}),
        Transmog({item = 160969, slot = L['1h_sword']}) -- Reanimated Necromancer's Blade
    }
}) -- Jax'teb the Reanimated

map.nodes[28103401] = Rare({
    id = 133527,
    quest = 50342,
    rewards = {
        Achievement({id = 12942, criteria = 41461}),
        Transmog({item = 160950, slot = L['2h_axe']}) -- Nicked Nazmani Greataxe
    }
}) -- Juba the Scarred

map.nodes[52921315] = Rare({
    id = 124397,
    quest = 47843,
    rewards = {
        Achievement({id = 12942, criteria = 41462}),
        Transmog({item = 161018, slot = L['cloth']}) -- Winged Terror Wristwraps
    }
}) -- Kal'draxa

map.nodes[53414283] = Rare({
    id = 129005,
    quest = 49317,
    rewards = {
        Achievement({id = 12942, criteria = 41451}),
        Transmog({item = 161221, slot = L['leather']}) -- Jungle King Mudtossers
    }
}) -- King Kooba

map.nodes[75703593] = Rare({
    id = 125214,
    quest = 48052,
    rewards = {
        Achievement({id = 12942, criteria = 41463}),
        Transmog({item = 161110, slot = L['plate']}) -- Crusty Chitin Armguards
    }
}) -- Krubbs

map.nodes[77754508] = Rare({
    id = 133539,
    quest = 50355,
    rewards = {
        Achievement({id = 12942, criteria = 41478}),
        Transmog({item = 161111, slot = L['plate']}) -- Marshqueen's Crushers
    }
}) -- Lo'kuno

map.nodes[68102023] = Rare({
    id = 134296,
    quest = 50567,
    note = L['lucille_note'],
    rewards = {
        Achievement({id = 12942, criteria = 41452}),
        Transmog({item = 161046, slot = L['cloth']}) -- Scrollbound Arachnid Gloves
    }
}) -- Lucille

map.nodes[53125429] = Rare({
    id = 128930,
    label = '{npc:128935} and {npc:128930}',
    quest = 50040,
    rewards = {Achievement({id = 12942, criteria = 41479})}
}) -- Mala'kili and Rohnkor

map.nodes[57726770] = Rare({
    id = 128974,
    quest = 49312,
    rewards = {
        Achievement({id = 12942, criteria = 41458}),
        Transmog({item = 160963, slot = L['polearm']}) -- Blood Jungle Stinger
    }
}) -- Queen Tzxi'kik

map.nodes[59133878] = Rare({
    id = 127820,
    quest = 48972,
    rewards = {
        Achievement({id = 12942, criteria = 41467}),
        Transmog({item = 160951, slot = L['bow']}) -- Evergreen Scout's Bow
    }
}) -- Scout Skrasniss

map.nodes[58070893] = Rare({
    id = 127873,
    quest = 48980,
    rewards = {
        Achievement({id = 12942, criteria = 41468}),
        Transmog({item = 161219, slot = L['leather']}) -- Raptor Patriarch Gloves
    }
}) -- Scrounger Patriarch

map.nodes[29165577] = Rare({
    id = 124475,
    quest = 47878,
    note = L['shambling_ambusher_note']
}) -- Shambling Ambusher

map.nodes[31443815] = Rare({
    id = 126460,
    quest = 48508,
    rewards = {
        Achievement({id = 12942, criteria = 41469}),
        Transmog({item = 162621, slot = L['plate']}) -- Nazmani Golem's Greathelm
    }
}) -- Tainted Guardian

map.nodes[49423768] = Rare({
    id = 126056,
    quest = 48406,
    rewards = {
        Achievement({id = 12942, criteria = 41470}),
        Transmog({item = 162618, slot = L['mail']}) -- Totem Matriarch's Headdress
    }
}) -- Totem Maker Jash'ga

map.nodes[38095768] = Rare({
    id = 135565,
    quest = 50888,
    rewards = {Achievement({id = 12942, criteria = 41472})}
}) -- Urn of Agussu

map.nodes[44224873] = Rare({
    id = 128965,
    quest = 49305,
    rewards = {
        Achievement({id = 12942, criteria = 41450}),
        Transmog({item = 161094, slot = L['leather']}) -- Voodoo-Bound Handwraps
    }
}) -- Uroku the Bound

map.nodes[29535070] = Rare({
    id = 126926,
    quest = 48626,
    rewards = {
        Achievement({id = 12942, criteria = 41473}),
        Transmog({item = 161028, slot = L['leather']}) -- Noxious Crocolisk Trousers
    }
}) -- Venomjaw

map.nodes[48985082] = Rare({
    id = 126907,
    quest = 48623,
    rewards = {
        Achievement({id = 12942, criteria = 41474}),
        Transmog({item = 160961, slot = L['2h_mace']}) -- Warmother's Mace
    }
}) -- Wardrummer Zurula

map.nodes[36555053] = Rare({
    id = 133531,
    quest = 50348,
    rewards = {
        Achievement({id = 12942, criteria = 41475}),
        Transmog({item = 162619, slot = L['mail']}) -- Bone Collector's Chestcage
    }
}) -- Xu'ba

map.nodes[38782676] = Rare({
    id = 129657,
    quest = 49469,
    note = L['zaamar_note'],
    rewards = {
        Achievement({id = 12942, criteria = 41476}),
        Transmog({item = 161095, slot = L['leather']}) -- Queensguard Specter Legwraps
    },
    pois = {
        POI({38772885}) -- Entrance
    }
}) -- Za'amar the Queen's Blade

map.nodes[38737146] = Rare({
    id = 133812,
    quest = 50423,
    rewards = {
        Achievement({id = 12942, criteria = 41477}),
        Transmog({item = 161092, slot = L['leather']}) -- Rivermarsh Quickclaw Buckle
    }
}) -- Zanxib

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- 30604919 50894
-- 37112743 49913
-- 42275915 49916
-- 48833623 49914
-- 79535700 50893

-------------------------------------------------------------------------------

map.nodes[35638560] = Treasure({
    quest = 49885,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 12771, criteria = 40860})}
}) -- "Cleverly" Disguised Chest

map.nodes[43065078] = Treasure({
    quest = 49979,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 12771, criteria = 40859})}
}) -- Cursed Nazmani Chest

map.nodes[62103487] = Treasure({
    quest = 49891,
    note = L['in_water_cave'],
    rewards = {Achievement({id = 12771, criteria = 40861})}
}) -- Lost Nazmani Treasure

map.nodes[77683613] = Treasure({
    quest = 49867,
    rewards = {Achievement({id = 12771, criteria = 40857})}
}) -- Lucky Horace's Lucky Chest

map.nodes[42772620] = Treasure({
    quest = 49484,
    note = L['offering_to_bwonsamdi_note'],
    rewards = {Achievement({id = 12771, criteria = 40862})}
}) -- Offering to Bwonsamdi

map.nodes[77884635] = Treasure({
    quest = 50061,
    rewards = {Achievement({id = 12771, criteria = 40858})}
}) -- Partially-Digested Treasure

map.nodes[66791735] = Treasure({
    quest = 49483,
    rewards = {Achievement({id = 12771, criteria = 40863})}
}) -- Shipwrecked Chest

map.nodes[76876214] = Treasure({
    quest = 50045,
    rewards = {Achievement({id = 12771, criteria = 40865})}
}) -- Swallowed Naga Chest

map.nodes[46228295] = Treasure({
    quest = 49889,
    rewards = {Achievement({id = 12771, criteria = 40864})}
}) -- Venomous Seal

map.nodes[35455498] = Treasure({
    quest = 49313,
    note = L['in_small_cave'],
    rewards = {Achievement({id = 12771, criteria = 40866})}
}) -- Wunja's Trove

-------------------------------------------------------------------------------
----------------------------- SECRET SUPPLY CHESTS ----------------------------
-------------------------------------------------------------------------------

local SECRET_CHEST = ns.node.SecretSupply({
    quest = 55387,
    rewards = {Achievement({id = 13317, criteria = 43932})}
}) -- quest = 54717 (looted ever) 55387 (looted today)

map.nodes[60201010] = SECRET_CHEST
map.nodes[68691305] = SECRET_CHEST
map.nodes[78901850] = SECRET_CHEST

-------------------------------------------------------------------------------
------------------------------ WAR SUPPLY CHESTS ------------------------------
-------------------------------------------------------------------------------

map.nodes[50311187] = Supply({quest = 55409, fgroup = 'supply_path_1'})
map.nodes[50332663] = Supply({quest = 55409, fgroup = 'supply_path_1'})
map.nodes[50366990] = Supply({
    quest = 55409,
    fgroup = 'supply_path_1',
    pois = {Arrow({50378151, 50310587})}
})

map.nodes[54474113] = Supply({
    quest = 55409,
    note = L['supply_chest_note'] .. '\n\n' .. L['supply_single_drop'],
    pois = {Arrow({65002685, 40006081})}
}) -- 54144160 54214151 54584099

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[46657384] = PetBattle({
    id = 141588,
    rewards = {Achievement({id = 12936, criteria = 44222})}
}) -- Crawg in the Bog (Bloodtusk)

map.nodes[35935460] = PetBattle({
    id = 141799,
    note = L['grady_prett_note'],
    rewards = {
        Achievement({id = 12936, criteria = 44223}), ns.reward.Spacer(),
        Achievement({id = 13270, criteria = 12, oneline = true}), -- Beast
        Achievement({id = 13271, criteria = 12, oneline = true}), -- Critter
        Achievement({id = 13272, criteria = 12, oneline = true}), -- Dragon
        Achievement({id = 13273, criteria = 12, oneline = true}), -- Elemental
        Achievement({id = 13274, criteria = 12, oneline = true}), -- Flying
        Achievement({id = 13275, criteria = 12, oneline = true}), -- Magic
        Achievement({id = 13277, criteria = 12, oneline = true}), -- Mechanical
        Achievement({id = 13278, criteria = 12, oneline = true}), -- Undead
        Achievement({id = 13280, criteria = 12, oneline = true}), -- Aquatic
        Achievement({id = 13281, criteria = 12, oneline = true}) -- Humanoid
    }
}) -- Pack Leader (Grady Prett)

map.nodes[43003880] = PetBattle({
    id = 141814,
    note = L['korval_dark_note'],
    rewards = {
        Achievement({id = 12936, criteria = 44224}), ns.reward.Spacer(),
        Achievement({id = 13270, criteria = 13, oneline = true}), -- Beast
        Achievement({id = 13271, criteria = 13, oneline = true}), -- Critter
        Achievement({id = 13272, criteria = 13, oneline = true}), -- Dragon
        Achievement({id = 13273, criteria = 13, oneline = true}), -- Elemental
        Achievement({id = 13274, criteria = 13, oneline = true}), -- Flying
        Achievement({id = 13275, criteria = 13, oneline = true}), -- Magic
        Achievement({id = 13277, criteria = 13, oneline = true}), -- Mechanical
        Achievement({id = 13278, criteria = 13, oneline = true}), -- Undead
        Achievement({id = 13280, criteria = 13, oneline = true}), -- Aquatic
        Achievement({id = 13281, criteria = 13, oneline = true}) -- Humanoid
    }
}) -- Accidental Dread (Korval Darkbeard)

map.nodes[72864859] = PetBattle({
    id = 141529,
    note = L['lozu_note'],
    rewards = {
        Achievement({id = 12936, criteria = 44221}), ns.reward.Spacer(),
        Achievement({id = 13270, criteria = 11, oneline = true}), -- Beast
        Achievement({id = 13271, criteria = 11, oneline = true}), -- Critter
        Achievement({id = 13272, criteria = 11, oneline = true}), -- Dragon
        Achievement({id = 13273, criteria = 11, oneline = true}), -- Elemental
        Achievement({id = 13274, criteria = 11, oneline = true}), -- Flying
        Achievement({id = 13275, criteria = 11, oneline = true}), -- Magic
        Achievement({id = 13277, criteria = 11, oneline = true}), -- Mechanical
        Achievement({id = 13278, criteria = 11, oneline = true}), -- Undead
        Achievement({id = 13280, criteria = 11, oneline = true}), -- Aquatic
        Achievement({id = 13281, criteria = 11, oneline = true}) -- Humanoid
    }
}) -- Marshdwellers (Lozu)

-------------------------------------------------------------------------------
------------------------------- A LOA OF A TALE -------------------------------
-------------------------------------------------------------------------------

map.nodes[39123865] = Collectible({
    quest = 53534,
    icon = 1875083,
    group = ns.groups.TALES_OF_DE_LOA,
    note = L['tales_bwonsamdi_note'],
    rewards = {Achievement({id = 13036, criteria = 41565})}
}) -- Tales of de Loa: Bwonsamdi

map.nodes[39575467] = Collectible({
    quest = 53537,
    icon = 1875083,
    group = ns.groups.TALES_OF_DE_LOA,
    note = L['tales_hireek_note'],
    rewards = {Achievement({id = 13036, criteria = 41568})}
}) -- Tales of de Loa: Hir'eek

map.nodes[58924865] = Collectible({
    quest = 53540,
    icon = 1875083,
    group = ns.groups.TALES_OF_DE_LOA,
    note = L['tales_kragwa_note'],
    rewards = {Achievement({id = 13036, criteria = 41571})}
}) -- Tales of de Loa: Krag'wa

map.nodes[72850760] = Collectible({
    quest = 53547,
    icon = 1875083,
    group = ns.groups.TALES_OF_DE_LOA,
    note = L['tales_torga_note'],
    rewards = {Achievement({id = 13036, criteria = 41579})}
}) -- Tales of de Loa: Torga

-------------------------------------------------------------------------------
----------------------------- BOW TO YOUR MASTERS -----------------------------
-------------------------------------------------------------------------------

map.nodes[39562460] = Collectible({
    id = 122688,
    icon = 1850548,
    sublabel = L['bow_to_your_masters_note'],
    group = ns.groups.BOW_TO_YOUR_MASTERS,
    rewards = {Achievement({id = 13020, criteria = 41525})}
}) -- Bwonsamdi

map.nodes[75495684] = Collectible({
    id = 120551,
    icon = 1850548,
    sublabel = L['bow_to_your_masters_note'],
    group = ns.groups.BOW_TO_YOUR_MASTERS,
    rewards = {Achievement({id = 13020, criteria = 41495})}
}) -- Krag'wa

-------------------------------------------------------------------------------
---------------------- CARVED IN STONE, WRITTEN IN BLOOD ----------------------
-------------------------------------------------------------------------------

local CarvedInStone = Class('CarvedInStone', Collectible,
    {icon = 134424, group = ns.groups.CARVED_IN_STONE})

map.nodes[56355736] = CarvedInStone({
    note = L['carved_in_stone_41860'],
    rewards = {Achievement({id = 13024, criteria = 41860})}
}) -- Ancient Nazmani Tablet

map.nodes[43354811] = CarvedInStone({
    note = L['carved_in_stone_41861'],
    rewards = {Achievement({id = 13024, criteria = 41861})}
}) -- Weathered Nazmani Tablet

map.nodes[51278510] = CarvedInStone({
    note = L['carved_in_stone_41862'],
    rewards = {Achievement({id = 13024, criteria = 41862})}
}) -- Cracked Tablet

map.nodes[42555710] = CarvedInStone({
    note = L['carved_in_stone_42116'],
    rewards = {Achievement({id = 13024, criteria = 42116})}
}) -- Fractured Tablet

-------------------------------------------------------------------------------
-------------------- EATING OUT OF THE PALM OF MY TINY HAND -------------------
-------------------------------------------------------------------------------

map.nodes[32403510] = Collectible({
    icon = 1881827,
    group = ns.groups.BRUTOSAURS,
    note = L['goramor_note'],
    rewards = {Achievement({id = 13029, criteria = 41575})},
    pois = {
        POI({34605494}) -- Blind Wunja Cave
    }
}) -- Goramor

-------------------------------------------------------------------------------
--------------------------------- HOPPIN' SAD ---------------------------------
-------------------------------------------------------------------------------

local HoppinSad = Class('HoppinSad', Collectible, {
    id = 143317,
    icon = 804969,
    group = ns.groups.HOPPIN_SAD,
    rewards = {Achievement({id = 13028, criteria = {id = 1, qty = true}})}
})

map.nodes[69575866] = HoppinSad({quest = 53417, note = L['in_water_cave']})
map.nodes[65575093] = HoppinSad({quest = 53418, note = L['in_water_cave']})
map.nodes[56026506] = HoppinSad({quest = 53419, note = L['hoppin_sad_53419']})
map.nodes[52834285] = HoppinSad({quest = 53420, note = L['hoppin_sad_53420']})
map.nodes[34156191] = HoppinSad({quest = 53421, note = L['in_small_cave']})
map.nodes[44629278] = HoppinSad({
    quest = 53422,
    note = L['in_waterfall_cave'],
    pois = {POI({45379127})}
})
map.nodes[28898316] = HoppinSad({quest = 53423, note = L['in_small_cave']})
map.nodes[24179172] = HoppinSad({quest = 53424, note = L['hoppin_sad_53424']})
map.nodes[21866934] = HoppinSad({quest = 53425, note = L['hoppin_sad_53425']})
map.nodes[25674057] = HoppinSad({quest = 53426, note = L['hoppin_sad_53426']})

-------------------------------------------------------------------------------
---------------------------------- GET HEK'D ----------------------------------
-------------------------------------------------------------------------------

map.nodes[68533283] = Collectible({
    quest = 50440,
    icon = 1604165,
    note = L['nazwathan_junk_note'],
    group = ns.groups.GET_HEKD,
    rewards = {Achievement({id = 12482, criteria = 40043})}
}) -- Naz'wathan Relic (157802)

map.nodes[34007510] = Collectible({
    quest = 50437,
    icon = 1604165,
    note = L['snapjaw_junk_note'],
    group = ns.groups.GET_HEKD,
    rewards = {Achievement({id = 12482, criteria = 40042})}
}) -- Snapjaw Tail (157801)

map.nodes[54007410] = Collectible({
    quest = 50444,
    icon = 1604165,
    note = L['loa_road_junk_note'],
    group = ns.groups.GET_HEKD,
    rewards = {Achievement({id = 12482, criteria = 40044})}
}) -- Taking the Loa Road

map.nodes[80904680] = Collectible({
    quest = 50435,
    icon = 1604165,
    note = L['vilescale_junk_note'],
    group = ns.groups.GET_HEKD,
    rewards = {Achievement({id = 12482, criteria = 40041})}
}) -- Vilescale Pearl (157797)

-------------------------------------------------------------------------------
------------------------- LIFE FINDS A WAY... TO DIE! -------------------------
-------------------------------------------------------------------------------

map.nodes[24507282] = Collectible({
    icon = 236192,
    group = ns.groups.LIFE_FINDS_A_WAY,
    id = 143898,
    rewards = {Achievement({id = 13048, criteria = 41683})},
    pois = {
        Path({
            23627079, 24507282, 25407490, 25977537, 26687500, 26577351,
            25797109, 25347037, 24436965, 23706943, 23496991, 23627079
        })
    }
}) -- Makatau

-------------------------------------------------------------------------------
------------------------------ MUSHROOM HARVEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[52367026] = Collectible({
    id = 143316,
    icon = 1869654,
    group = ns.groups.MUSHROOM_HARVEST,
    rewards = {Achievement({id = 13027, criteria = 41390})}
}) -- Skullcap

map.nodes[73634868] = Collectible({
    id = 143311,
    icon = 1869654,
    note = L['in_small_cave'],
    group = ns.groups.MUSHROOM_HARVEST,
    rewards = {Achievement({id = 13027, criteria = 41393})}
}) -- Toadcruel

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS I SET SAIL TO SEE --------------------
-------------------------------------------------------------------------------

map.nodes[40205880] = ns.node.Squirrel({
    id = 131017,
    rewards = {Achievement({id = 14730, criteria = 50244})},
    pois = {POI({42607180, 37206480, 36605180})}
}) -- Bloodfever Tarantula

map.nodes[49906630] = ns.node.Squirrel({
    id = 130217,
    rewards = {Achievement({id = 14730, criteria = 50245})},
    pois = {POI({47806760, 44006370, 44005450})}
}) -- Nazmani Weevil

-------------------------------------------------------------------------------
-------------------------------- BATTLE SAFARI --------------------------------
-------------------------------------------------------------------------------

map.nodes[35206120] = Safari.BloodfeverTarantula({
    pois = {
        POI({
            27405280, 27605240, 27605280, 27804540, 28206280, 29006100,
            29206300, 29404800, 29406880, 29604820, 29606680, 29606860,
            30406780, 30606780, 30806700, 31404120, 31404240, 31604120,
            31604200, 31606460, 33206540, 33206560, 33404140, 33404160,
            33804040, 34404500, 34405020, 34406240, 34604300, 34605040,
            34606240, 34606260, 34804380, 34804640, 34804660, 35005420,
            35005460, 35204940, 35206120, 35405980, 35406440, 35406480,
            35605980, 36005360, 36206520, 36404680, 36405200, 36604640,
            36605200, 36605400, 37006700, 37206480, 37404840, 37404860,
            37405520, 37405560, 37806200, 38406380, 38605180, 39206420,
            39404840, 39404860, 39805920, 40406700, 41005460, 42404960,
            42605960, 42607220, 43005020, 43206120, 43206860, 43207340,
            43207360, 43605760, 44005260, 44205220, 46006440, 46205400
        })
    }
}) -- Bloodfever Tarantula

map.nodes[31803960] = Safari.Boghopper({
    pois = {
        POI({
            27003920, 27204140, 27604320, 28403600, 28604060, 28604160,
            28803940, 28804260, 29403700, 29603780, 30204000, 30404100,
            30603980, 31204180, 31803940, 31803960, 43208640, 43208660,
            73004740, 73004760, 73404340, 73604320, 73604520, 73605040,
            73804620, 74604800, 74804740, 75204340, 75404580, 75405220,
            75604740, 75604760, 76405220, 76604200, 76804680, 77404080,
            77404360, 77604620, 77804820, 78404500, 78604220, 78604280,
            78604600, 78804100, 78804420, 78804460, 78804800, 79004940,
            80204300, 80204500, 80204740, 80204760, 80404600, 80604580
        })
    }
}) -- Boghopper

map.nodes[30803580] = Safari.CoastalBounder({
    pois = {
        POI({
            30203460, 30603440, 30803460, 30803580, 31203320, 31603440,
            31603460, 32803540, 32803560, 33403700
        })
    }
}) -- Coastal Bounder

map.nodes[42608060] = Safari.ElusiveSkimmer({
    pois = {
        POI({
            21606900, 21806980, 21807580, 22007120, 22407740, 26609320,
            27209380, 30807820, 30807860, 31408020, 31607980, 32607720,
            32607760, 34407400, 34607420, 36808120, 37008160, 37207940,
            38008320, 38208660, 38408640, 39408280, 39608560, 40408300,
            40408440, 40408460, 40608440, 40808460, 42007840, 42007860,
            42408080, 42607780, 42608060, 42808940, 43009000, 44008160,
            44407540, 44407560, 44408040, 44408080, 44607540, 44607560,
            45408740, 45408760, 46007740, 46007760, 46208040, 46208060,
            46608240, 46608260, 47808280, 47808780, 51408120, 53608660,
            53807600, 53807940, 54807400, 58007200, 59406700, 59606680,
            61406380, 61606380, 63006440, 63006460
        })
    }
}) -- Elusive Skimmer

map.nodes[50406640] = Safari.GluttedBleeder({
    pois = {
        POI({
            30404620, 30604740, 30604760, 30604860, 31204440, 31204460,
            31204580, 31204960, 31804520, 32204320, 32204360, 32204840,
            32204860, 32604460, 32804400, 32804620, 33204700, 47006080,
            47205980, 47206240, 47806340, 48005880, 48006420, 48405800,
            48805740, 48805760, 48806420, 49206460, 49405560, 49406600,
            49605480, 49806540, 50406640, 50406660, 51005380, 51006440,
            51006460, 51206640, 51206660, 52006700, 52206860, 52606780,
            52805740, 53007020, 53007140, 53007160, 53206940, 53405840,
            53405860, 53607080, 53805820, 53805940, 53807020, 54005700,
            54206120, 54405980
        })
    }
}) -- Glutted Bleeder

map.nodes[33205620] = Safari.ReturnedHatchling({
    pois = {
        POI({
            29605760, 30205560, 30405540, 30605900, 31205440, 31205460,
            31405600, 31605580, 31805880, 31806060, 31806160, 32006020,
            32405700, 32605740, 33205620, 33205780
        })
    }
}) -- Returned Hatchling

map.nodes[37802200] = Safari.SpectralRaven({
    pois = {POI({36002700, 37802200, 39803440, 42602520})}
}) -- Spectral Raven

map.nodes[23605840] = Safari.StickyOozeling({
    pois = {
        POI({
            18405060, 18605220, 19005100, 20005140, 20005160, 20805300,
            21005160, 22205440, 22405080, 22604420, 22605100, 22605440,
            22605460, 22605740, 22805920, 23005640, 23204820, 23405280,
            23405820, 23604500, 23605640, 23605840, 23605860, 23805400,
            23805960, 24004880, 24005180, 24204840, 24205660, 24604740,
            24604780, 24805140, 25204360, 25204880, 25605040, 26004700
        })
    }
}) -- Sticky Oozeling

map.nodes[77205240] = Safari.YoungSandSifter({
    pois = {
        POI({
            27603060, 28202720, 28203280, 28602880, 28802580, 29203160,
            29403100, 29403420, 29602640, 29602660, 29603160, 29802480,
            30402980, 30403320, 30403360, 30602300, 30602980, 30603320,
            30802740, 31202440, 31802800, 32203200, 32802560, 33002540,
            33003080, 33202780, 33602820, 34002300, 34402520, 48601100,
            49801200, 50202080, 50400760, 50401440, 50401460, 50401620,
            50402240, 50402260, 50602160, 50802140, 51001900, 51201020,
            51201060, 52001080, 52001960, 52201940, 52800960, 53800760,
            54400680, 54400980, 54600680, 55001080, 55801180, 56601100,
            57400980, 57800700, 60000940, 60000960, 60401140, 60401160,
            60601140, 66401180, 67200700, 67200920, 68201020, 68401820,
            68801420, 69000740, 69401300, 69600540, 69601300, 69801600,
            69801940, 69802240, 70001960, 70601040, 70601060, 71000780,
            71400600, 71600600, 72004160, 72204140, 74603900, 75003500,
            75006180, 76003460, 76006520, 76006560, 76206200, 76806120,
            77003700, 77205240, 77402500, 77405260, 77406640, 77602780,
            78003200, 78006040, 78203080, 78205160, 78402360, 78402620,
            78802640, 78805660, 79205480, 79205760, 79403640, 79405220,
            79405440, 79605200, 80002700, 80003620, 80403460, 80603140,
            80605200, 80803160, 80804300, 81003280, 81202500, 81205100,
            81402420, 81402700, 81402820, 81402900, 81404120, 81602340,
            81602420, 81602720, 81604100, 81604520, 81802900, 81803040,
            81803060, 81804560, 81805180, 81805980, 82202460, 82404400,
            82404700, 82602380, 82804160, 83002540, 83002560, 83805080
        })
    }
}) -- Young Sand Sifter
