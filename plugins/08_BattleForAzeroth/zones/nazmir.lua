-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=863, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[67792946] = Rare({
    id=125250,
    quest=48063,
    rewards={
        Achievement({id=12942, criteria=41440}),
        Item({item=161113, note=L["trinket"]}) -- Incessently Ticking Clock
    }
}) -- Ancient Jawbreaker

map.nodes[54128110] = Rare({
    id=134298,
    quest=50569,
    rewards={
        Achievement({id=12942, criteria=41444})
    }
}) -- Azerite-Infused Elemental

map.nodes[33122699] = Rare({
    id=134293,
    quest=50563,
    rewards={
        Achievement({id=12942, criteria=41447}),
        Transmog({item=161100, slot=L["mail"]}) -- Fused-Slag Girdle
    }
}) -- Azerite-Infused Slag

map.nodes[42836053] = Rare({
    id=126142,
    quest=48439,
    rewards={
        Achievement({id=12942, criteria=41466}),
        Transmog({item=161093, slot=L["leather"]}) -- Clutch Mother Wristwraps
    }
}) -- Bajiatha

map.nodes[43199131] = Rare({
    id=126635,
    quest=48541,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12942, criteria=41448}),
        Transmog({item=161217, slot=L["mail"]}) -- Tainted Blood Vambraces
    }
}) -- Blood Priest Xak'lar

map.nodes[81833057] = Rare({
    id=125232,
    quest=48057,
    note=L["captain_mukala_note"],
    rewards={
        Achievement({id=12942, criteria=41454}),
        Item({item=161115, note=L["trinket"]}) -- Cursed Captain's Charm
    }
}) -- Captain Mu'kala

map.nodes[41315343] = Rare({
    id=126187,
    quest=48462,
    rewards={
        Achievement({id=12942, criteria=41453}),
        Transmog({item=161102, slot=L["mail"]}) -- Corpseblood Belt
    }
}) -- Corpse Bringer Yal'kar

map.nodes[81696105] = Rare({
    id=134294,
    quest=50565,
    note=L["enraged_water_note"],
    rewards={
        Achievement({id=12942, criteria=41464}),
        Transmog({item=161045, slot=L["cloth"]}) -- Scrollbound Hurricane Slippers
    }
}) -- Enraged Water Elemental

map.nodes[68595720] = Rare({
    id=121242,
    quest=50361,
    rewards={
        Achievement({id=12942, criteria=41456}),
        Item({item=160985, note=L["ring"]}) -- Glompmaw's Ring
    }
}) -- Glompmaw

map.nodes[32754304] = Rare({
    id=128426,
    quest=49231,
    rewards={
        Achievement({id=12942, criteria=41457}),
        Transmog({item=161041, slot=L["plate"]}) -- Gutrip's Tramplers
    }
}) -- Gutrip

map.nodes[33788600] = Rare({
    id=127001,
    quest=48638,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12942, criteria=41455}),
        Transmog({item=162614, slot=L["cloth"]}) -- Gwugnug's Cursed Wraps
    }
}) -- Gwugnug the Cursed

map.nodes[24407796] = Rare({
    id=124399,
    quest=47877,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12942, criteria=41459}),
        Transmog({item=161218, slot=L["leather"]}) -- Direhorn Studded Belt
    }
}) -- Infected Direhorn

map.nodes[45185189] = Rare({
    id=133373,
    quest=50307,
    rewards={
        Achievement({id=12942, criteria=41460}),
        Transmog({item=160969, slot=L["1h_sword"]}) -- Reanimated Necromancer's Blade
    }
}) -- Jax'teb the Reanimated

map.nodes[28103401] = Rare({
    id=133527,
    quest=50342,
    rewards={
        Achievement({id=12942, criteria=41461}),
        Transmog({item=160950, slot=L["2h_axe"]}) -- Nicked Nazmani Greataxe
    }
}) -- Juba the Scarred

map.nodes[52921315] = Rare({
    id=124397,
    quest=47843,
    rewards={
        Achievement({id=12942, criteria=41462}),
        Transmog({item=161018, slot=L["cloth"]}) -- Winged Terror Wristwraps
    }
}) -- Kal'draxa

map.nodes[53414283] = Rare({
    id=129005,
    quest=49317,
    rewards={
        Achievement({id=12942, criteria=41451}),
        Transmog({item=161221, slot=L["leather"]}) -- Jungle King Mudtossers
    }
}) -- King Kooba

map.nodes[75703593] = Rare({
    id=125214,
    quest=48052,
    rewards={
        Achievement({id=12942, criteria=41463}),
        Transmog({item=161110, slot=L["plate"]}) -- Crusty Chitin Armguards
    }
}) -- Krubbs

map.nodes[77754508] = Rare({
    id=133539,
    quest=50355,
    rewards={
        Achievement({id=12942, criteria=41478}),
        Transmog({item=161111, slot=L["plate"]}) -- Marshqueen's Crushers
    }
}) -- Lo'kuno

map.nodes[68102023] = Rare({
    id=134296,
    quest=50567,
    note=L["lucille_note"],
    rewards={
        Achievement({id=12942, criteria=41452}),
        Transmog({item=161046, slot=L["cloth"]}) -- Scrollbound Arachnid Gloves
    }
}) -- Lucille

map.nodes[53125429] = Rare({
    id=128930,
    label='{npc:128935} and {npc:128930}',
    quest=50040,
    rewards={
        Achievement({id=12942, criteria=41479}),
        Item({item=163703, note=L["trinket"]}) -- Crawg Gnawed Femur
    }
}) -- Mala'kili and Rohnkor

map.nodes[57726770] = Rare({
    id=128974,
    quest=49312,
    rewards={
        Achievement({id=12942, criteria=41458}),
        Transmog({item=160963, slot=L["polearm"]}) -- Blood Jungle Stinger
    }
}) -- Queen Tzxi'kik

map.nodes[59133878] = Rare({
    id=127820,
    quest=48972,
    rewards={
        Achievement({id=12942, criteria=41467}),
        Transmog({item=160951, slot=L["bow"]}) -- Evergreen Scout's Bow
    }
}) -- Scout Skrasniss

map.nodes[58070893] = Rare({
    id=127873,
    quest=48980,
    rewards={
        Achievement({id=12942, criteria=41468}),
        Transmog({item=161219, slot=L["leather"]}) -- Raptor Patriarch Gloves
    }
}) -- Scrounger Patriarch

map.nodes[29165577] = Rare({
    id=124475,
    quest=47878,
    note=L["shambling_ambusher_note"]
}) -- Shambling Ambusher

map.nodes[31443815] = Rare({
    id=126460,
    quest=48508,
    rewards={
        Achievement({id=12942, criteria=41469}),
        Transmog({item=162621, slot=L["plate"]}) -- Nazmani Golem's Greathelm
    }
}) -- Tainted Guardian

map.nodes[49423768] = Rare({
    id=126056,
    quest=48406,
    rewards={
        Achievement({id=12942, criteria=41470}),
        Transmog({item=162618, slot=L["mail"]}) -- Totem Matriarch's Headdress
    }
}) -- Totem Maker Jash'ga

map.nodes[38095768] = Rare({
    id=135565,
    quest=50888,
    rewards={
        Achievement({id=12942, criteria=41472})
    }
}) -- Urn of Agussu

map.nodes[44224873] = Rare({
    id=128965,
    quest=49305,
    rewards={
        Achievement({id=12942, criteria=41450}),
        Transmog({item=161094, slot=L["leather"]}) -- Voodoo-Bound Handwraps
    }
}) -- Uroku the Bound

map.nodes[29535070] = Rare({
    id=126926,
    quest=48626,
    rewards={
        Achievement({id=12942, criteria=41473}),
        Transmog({item=161028, slot=L["leather"]}) -- Noxious Crocolisk Trousers
    }
}) -- Venomjaw

map.nodes[48985082] = Rare({
    id=126907,
    quest=48623,
    rewards={
        Achievement({id=12942, criteria=41474}),
        Transmog({item=160961, slot=L["2h_mace"]}) -- Warmother's Mace
    }
}) -- Wardrummer Zurula

map.nodes[36555053] = Rare({
    id=133531,
    quest=50348,
    rewards={
        Achievement({id=12942, criteria=41475}),
        Transmog({item=162619, slot=L["mail"]}) -- Bone Collector's Chestcage
    }
}) -- Xu'ba

map.nodes[38782676] = Rare({
    id=129657,
    quest=49469,
    note=L["zaamar_note"],
    rewards={
        Achievement({id=12942, criteria=41476}),
        Transmog({item=161095, slot=L["leather"]}) -- Queensguard Specter Legwraps
    },
    pois={
        POI({38772885}) -- Entrance
    }
}) -- Za'amar the Queen's Blade

map.nodes[38737146] = Rare({
    id=133812,
    quest=50423,
    rewards={
        Achievement({id=12942, criteria=41477}),
        Transmog({item=161092, slot=L["leather"]}) -- Rivermarsh Quickclaw Buckle
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
    quest=49885,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12771, criteria=40860})
    }
}) -- "Cleverly" Disguised Chest

map.nodes[43065078] = Treasure({
    quest=49979,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12771, criteria=40859})
    }
}) -- Cursed Nazmani Chest

map.nodes[62103487] = Treasure({
    quest=49891,
    note=L["in_water_cave"],
    rewards={
        Achievement({id=12771, criteria=40861})
    }
}) -- Lost Nazmani Treasure

map.nodes[77683613] = Treasure({
    quest=49867,
    rewards={
        Achievement({id=12771, criteria=40857})
    }
}) -- Lucky Horace's Lucky Chest

map.nodes[42772620] = Treasure({
    quest=49484,
    note=L["offering_to_bwonsamdi_note"],
    rewards={
        Achievement({id=12771, criteria=40862})
    }
}) -- Offering to Bwonsamdi

map.nodes[77884635] = Treasure({
    quest=50061,
    rewards={
        Achievement({id=12771, criteria=40858})
    }
}) -- Partially-Digested Treasure

map.nodes[66791735] = Treasure({
    quest=49483,
    rewards={
        Achievement({id=12771, criteria=40863})
    }
}) -- Shipwrecked Chest

map.nodes[76876214] = Treasure({
    quest=50045,
    rewards={
        Achievement({id=12771, criteria=40865})
    }
}) -- Swallowed Naga Chest

map.nodes[46228295] = Treasure({
    quest=49889,
    rewards={
        Achievement({id=12771, criteria=40864})
    }
}) -- Venomous Seal

map.nodes[35455498] = Treasure({
    quest=49313,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12771, criteria=40866})
    }
}) -- Wunja's Trove

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[46657384] = PetBattle({
    id=141588,
    rewards={
        Achievement({id=12936, criteria=44222})
    }
}) -- Crawg in the Bog (Bloodtusk)

map.nodes[35935460] = PetBattle({
    id=141799,
    note=L["grady_prett_note"],
    rewards={
        Achievement({id=12936, criteria=44223}),
        ns.reward.Spacer(),
        Achievement({id=13270, criteria=12, oneline=true}), -- Beast
        Achievement({id=13271, criteria=12, oneline=true}), -- Critter
        Achievement({id=13272, criteria=12, oneline=true}), -- Dragon
        Achievement({id=13273, criteria=12, oneline=true}), -- Elemental
        Achievement({id=13274, criteria=12, oneline=true}), -- Flying
        Achievement({id=13275, criteria=12, oneline=true}), -- Magic
        Achievement({id=13277, criteria=12, oneline=true}), -- Mechanical
        Achievement({id=13278, criteria=12, oneline=true}), -- Undead
        Achievement({id=13280, criteria=12, oneline=true}), -- Aquatic
        Achievement({id=13281, criteria=12, oneline=true})  -- Humanoid
    }
}) -- Pack Leader (Grady Prett)

map.nodes[43003880] = PetBattle({
    id=141814,
    note=L["korval_dark_note"],
    rewards={
        Achievement({id=12936, criteria=44224}),
        ns.reward.Spacer(),
        Achievement({id=13270, criteria=13, oneline=true}), -- Beast
        Achievement({id=13271, criteria=13, oneline=true}), -- Critter
        Achievement({id=13272, criteria=13, oneline=true}), -- Dragon
        Achievement({id=13273, criteria=13, oneline=true}), -- Elemental
        Achievement({id=13274, criteria=13, oneline=true}), -- Flying
        Achievement({id=13275, criteria=13, oneline=true}), -- Magic
        Achievement({id=13277, criteria=13, oneline=true}), -- Mechanical
        Achievement({id=13278, criteria=13, oneline=true}), -- Undead
        Achievement({id=13280, criteria=13, oneline=true}), -- Aquatic
        Achievement({id=13281, criteria=13, oneline=true})  -- Humanoid
    }
}) -- Accidental Dread (Korval Darkbeard)

map.nodes[72864859] = PetBattle({
    id=141529,
    note=L["lozu_note"],
    rewards={
        Achievement({id=12936, criteria=44221}),
        ns.reward.Spacer(),
        Achievement({id=13270, criteria=11, oneline=true}), -- Beast
        Achievement({id=13271, criteria=11, oneline=true}), -- Critter
        Achievement({id=13272, criteria=11, oneline=true}), -- Dragon
        Achievement({id=13273, criteria=11, oneline=true}), -- Elemental
        Achievement({id=13274, criteria=11, oneline=true}), -- Flying
        Achievement({id=13275, criteria=11, oneline=true}), -- Magic
        Achievement({id=13277, criteria=11, oneline=true}), -- Mechanical
        Achievement({id=13278, criteria=11, oneline=true}), -- Undead
        Achievement({id=13280, criteria=11, oneline=true}), -- Aquatic
        Achievement({id=13281, criteria=11, oneline=true})  -- Humanoid
    }
}) -- Marshdwellers (Lozu)

-------------------------------------------------------------------------------
------------------------------- A LOA OF A TALE -------------------------------
-------------------------------------------------------------------------------

local TalesOfTheLoa = Class('TalesOfTheLoa', Treasure, {
    icon=1875083,
    group=ns.groups.TALES_OF_DE_LOA,
--    IsCompleted = function (self) return self:IsCollected() end
})

map.nodes[39123865] = TalesOfTheLoa({
    quest=53534,
    note=L["tales_bwonsamdi_note"],
    rewards={
        Achievement({id=13036, criteria=41565})
    }
}) -- Tales of de Loa: Bwonsamdi

map.nodes[39575467] = TalesOfTheLoa({
    quest=53537,
    note=L["tales_hireek_note"],
    rewards={
        Achievement({id=13036, criteria=41568})
    }
}) -- Tales of de Loa: Hir'eek

map.nodes[58924865] = TalesOfTheLoa({
    quest=53540,
    note=L["tales_kragwa_note"],
    rewards={
        Achievement({id=13036, criteria=41571})
    }
}) -- Tales of de Loa: Krag'wa

map.nodes[72850760] = TalesOfTheLoa({
    quest=53547,
    note= L["tales_torga_note"],
    rewards={
        Achievement({id=13036, criteria=41579})
    }
}) -- Tales of de Loa: Torga

-------------------------------------------------------------------------------
---------------------- CARVED IN STONE, WRITTEN IN BLOOD ----------------------
-------------------------------------------------------------------------------

local CarvedInStone = Class('CarvedInStone', Treasure, {
    icon=134424,
    group=ns.groups.CARVED_IN_STONE,
    IsCompleted = function (self) return self:IsCollected() end
})

map.nodes[56355736] = CarvedInStone({
    note=L["carved_in_stone_41860"],
    rewards={
        Achievement({id=13024, criteria=41860})
    }
})  -- Ancient Nazmani Tablet

map.nodes[43354811] = CarvedInStone({
    note=L["carved_in_stone_41861"],
    rewards={
        Achievement({id=13024, criteria=41861})
    }
})  -- Weathered Nazmani Tablet

map.nodes[51278510] = CarvedInStone({
    note=L["carved_in_stone_41862"],
    rewards={
        Achievement({id=13024, criteria=41862})
    }
})  -- Cracked Tablet

map.nodes[42555710] = CarvedInStone({
    note=L["carved_in_stone_42116"],
    rewards={
        Achievement({id=13024, criteria=42116})
    }
})  -- Fractured Tablet

-------------------------------------------------------------------------------
--------------------------------- HOPPIN' SAD ---------------------------------
-------------------------------------------------------------------------------

local HoppinSad = Class('HoppinSad', Rare, {
    id=143317,
    icon=804969,
    group=ns.groups.HOPPIN_SAD,
    rewards={
        Achievement({id=13028, criteria={{id=1, qty=true}}})
    },
    IsCompleted = function (self)
        if self:IsCollected() then return true end
        return Rare.IsCompleted(self)
    end
})

map.nodes[69575866] = HoppinSad({quest=53417, note=L["in_water_cave"]})
map.nodes[65575093] = HoppinSad({quest=53418, note=L["in_water_cave"]})
map.nodes[56026506] = HoppinSad({quest=53419, note=L["hoppin_sad_53419"]})
map.nodes[52834285] = HoppinSad({quest=53420, note=L["hoppin_sad_53420"]})
map.nodes[34156191] = HoppinSad({quest=53421, note=L["in_small_cave"]})
map.nodes[44629278] = HoppinSad({quest=53422, note=L["in_waterfall_cave"], pois={POI({45379127})}})
map.nodes[28898316] = HoppinSad({quest=53423, note=L["in_small_cave"]})
map.nodes[24179172] = HoppinSad({quest=53424, note=L["hoppin_sad_53424"]})
map.nodes[21866934] = HoppinSad({quest=53425, note=L["hoppin_sad_53425"]})
map.nodes[25674057] = HoppinSad({quest=53426, note=L["hoppin_sad_53426"]})

-------------------------------------------------------------------------------
------------------------------ MUSHROOM HARVEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[52367026] = NPC({
    id=143316,
    icon=1869654,
    group=ns.groups.MUSHROOM_HARVEST,
    rewards={
        Achievement({id=13027, criteria=41390})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Skullcap

map.nodes[73634868] = NPC({
    id=143311,
    icon=1869654,
    note=L["in_small_cave"],
    group=ns.groups.MUSHROOM_HARVEST,
    rewards={
        Achievement({id=13027, criteria=41393})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- Toadcruel
