-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 882, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[27203000] = Rare({
    id = 126869,
    quest = 48707,
    rewards = {Achievement({id = 12078, criteria = 37631})}
}) -- Captain Faruq

map.nodes[30104020] = Rare({
    id = 126887,
    quest = 48709,
    rewards = {
        Achievement({id = 12078, criteria = 37629}),
        Pet({item = 153056, id = 2120}), -- Grasping Manifestation
        Item({item = 153034}) -- Technique: Glyph of the Voidling
    }
}) -- Ataxon

map.nodes[33704780] = Rare({
    id = 126867,
    quest = 48705,
    rewards = {
        Achievement({id = 12078, criteria = 37633}),
        Mount({item = 152844, id = 973}) -- Lambent Mana Ray
    }
}) -- Venomtail Skyfin

map.nodes[35003710] = Rare({
    id = 126885,
    quest = 48708,
    rewards = {Achievement({id = 12078, criteria = 37630})}
}) -- Umbraliss

map.nodes[36005900] = Rare({
    id = 126896,
    quest = 48711,
    rewards = {Achievement({id = 12078, criteria = 37627})}
}) -- Herald of Chaos

map.nodes[36702390] = Rare({
    id = 126865,
    quest = 48703,
    rewards = {
        Achievement({id = 12078, criteria = 37635}), Toy({item = 153183}), -- Barrier Generator
        Transmog({item = 153322, slot = L['shield']}) -- Eredath Vigilant's Shield
    }
}) -- Vigilant Thanos

map.nodes[38705570] = Rare({
    id = 126860,
    quest = 48697,
    note = L['kaara_the_pale_note'],
    rewards = {Achievement({id = 12078, criteria = 37638})},
    pois = {POI({38615559})}
}) -- Kaara the Pale

map.nodes[39106660] = Rare({
    id = 126868,
    quest = 48706,
    note = L['turek_the_lucid_note'],
    rewards = {
        Achievement({id = 12078, criteria = 37632}),
        Transmog({item = 153306, slot = L['1h_axe']}) -- Oronaar Miner's Piercer
    },
    pois = {POI({39106665})}
}) -- Turek the Lucid

map.nodes[41101150] = Rare({
    id = 126864,
    quest = 48702,
    rewards = {Achievement({id = 12078, criteria = 37636})}
}) -- Feasel the Muffin Thief

map.nodes[43004810] = Rare({
    id = 126898,
    quest = 48712,
    note = L['drops_fel_spotted_egg'],
    rewards = {
        Achievement({id = 12078, criteria = 37626}),
        Section(L['fel_spotted_egg_contains']),
        Mount({item = 152840, id = 976}), -- Scintillating Mana Ray
        Mount({item = 152841, id = 975}), -- Felglow Mana Ray
        Mount({item = 152842, id = 974}), -- Vibrant Mana Ray
        Mount({item = 152843, id = 906}), -- Darkspore Mana Ray
        Pet({item = 153054, id = 2118}), -- Docile Skyfin
        Pet({item = 153055, id = 2119}) -- Fel-Afflicted Skyfin
    }
}) -- Sabuul

map.nodes[43806040] = Rare({
    id = 126862,
    quest = 48700,
    rewards = {
        Achievement({id = 12078, criteria = 37637}), Toy({item = 153193}) -- Baarut the Brisk
    }
}) -- Baruut the Bloodthirsty

map.nodes[44507170] = Rare({
    id = 122838,
    quest = 48692,
    rewards = {
        Achievement({id = 12078, criteria = 37654}),
        Transmog({item = 153296, slot = L['1h_sword']}) -- Spectral Consul's Cutter
    }
}) -- Shadowcaster Voruun

map.nodes[48104060] = Rare({
    id = 126899,
    quest = 48713,
    rewards = {
        Achievement({id = 12078, criteria = 37625}),
        Transmog({item = 153302, slot = L['1h_sword']}) -- Honed Jed'hin Scimitar
    }
}) -- Jed'hin Champion Vorusk

map.nodes[48805200] = Rare({
    id = 126913,
    quest = 48935,
    rewards = {
        Achievement({id = 12078, criteria = 37617}), Item({item = 153203}) -- Ancient Fishing Line
    }
}) -- Slithon the Last

map.nodes[49800930] = Rare({
    id = 126912,
    quest = 48721,
    rewards = {
        Achievement({id = 12078, criteria = 37618}),
        Mount({item = 152904, id = 980}) -- Acid Belcher
    }
}) -- Skreeg the Devourer

map.nodes[52906760] = Rare({
    id = 126815,
    quest = 48693,
    rewards = {Achievement({id = 12078, criteria = 37640})}
}) -- Soultwisted Monstrosity

map.nodes[63806460] = Rare({
    id = 126866,
    quest = 48704,
    rewards = {
        Achievement({id = 12078, criteria = 37634}), Toy({item = 153183}), -- Barrier Generator
        Transmog({item = 153323, slot = L['shield']}) -- Eredath Vigilant's Crest
    }
}) -- Vigilant Kuro

map.nodes[55506010] = Rare({
    id = 126852,
    quest = 48695,
    rewards = {
        Achievement({id = 12078, criteria = 37639}),
        Mount({item = 152814, id = 970}), -- Maddened Chaosrunner
        Transmog({item = 153269, slot = L['1h_axe']}) -- Enclave Aspirant's Waraxe
    }
}) -- Wrangler Kravos

map.nodes[56901460] = Rare({
    id = 126910,
    quest = 48720,
    rewards = {Achievement({id = 12078, criteria = 37619})}
}) -- Commander Xethgar

map.nodes[57002780] = Rare({
    id = 125497,
    quest = 48716,
    rewards = {
        Achievement({id = 12078, criteria = 37623}),
        Transmog({item = 153269, slot = L['1h_axe']}) -- Enclave Aspirant's Axe
    }
}) -- Overseer Y'Sorna

map.nodes[58903760] = Rare({
    id = 124440,
    quest = 48714,
    rewards = {
        Achievement({id = 12078, criteria = 37624}),
        Transmog({item = 153315, slot = L['2h_sword']}) -- Praetor's Ornamental Warblade
    }
}) -- Overseer Y'Beda

map.nodes[61002980] = Rare({
    id = 125498,
    quest = 48717,
    rewards = {
        Achievement({id = 12078, criteria = 37622}),
        Transmog({item = 153257, slot = L['1h_mace']}) -- Isolon Anchorite's Gavel
    }
}) -- Overseer Y'Morna

map.nodes[61405040] = Rare({
    id = 126900,
    quest = 48718,
    rewards = {
        Achievement({id = 12078, criteria = 37621}), Toy({item = 153179}), -- Blue Conservatory Scroll
        Toy({item = 153181}), -- Red Conservatory Scroll
        Toy({item = 153180}), -- Yellow Conservatory Scroll
        Transmog({item = 153309, slot = L['1h_mace']}) -- Unyielding Peacekeeper's Mace
    }
}) -- Instructor Tarahna

map.nodes[66812841] = Rare({
    id = 126908,
    quest = 48719,
    rewards = {Achievement({id = 12078, criteria = 37620})},
    pois = {POI({63912958})}
}) -- Zul'tan the Numerous

map.nodes[70204600] = Rare({
    id = 126889,
    quest = 48710,
    rewards = {
        Achievement({id = 12078, criteria = 37628}),
        Transmog({item = 153292, slot = L['staff']}) -- Spectral Censorite's Spire
    }
}) -- Sorolis the Ill-Fated

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40205140] = Treasure({
    quest = 48747,
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37598}),
        Transmog({item = 153328, slot = L['dagger']}) -- Mystic Wakener's Shiv
    }
}) -- Void-Tinged Chest

map.nodes[43400450] = Treasure({
    quest = 48743,
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37595})}
}) -- Eredar Treasure Cache

map.nodes[50603840] = Treasure({
    quest = 48744,
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37596}),
        Transmog({item = 153325, slot = L['shield']}) -- Eredath Vigilant's Redoubt
    }
}) -- Chest of Ill-Gotten Gains

map.nodes[62207120] = Treasure({
    quest = 48745,
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37597}),
        Transmog({item = 153286, slot = L['cloth']}) -- Augari Wakener's Cuffs
    }
}) -- Student's Surprising Surplus

map.nodes[40806980] = Treasure({
    quest = 49153,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37957}),
        Transmog({item = 153281, slot = L['cloth']}) -- Augari Wakener's Handwraps
    }
}) -- Augari Goods

map.nodes[62202240] = Treasure({
    quest = 49151,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37956}),
        Transmog({item = 153282, slot = L['cloth']}) -- Augari Wakener's Leggings
    }
}) -- Secret Augari Chest

map.nodes[70602730] = Treasure({
    quest = 49129,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37955}),
        Transmog({item = 153280, slot = L['cloth']}) -- Augari Wakener's Circlet
    }
}) -- Augari-Runed Chest

map.nodes[27304010] = Treasure({
    quest = 48750,
    note = L['goblin_glider_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37601})},
    pois = {POI({30204400}), Path({30204400, 27304010})}
}) -- Shattered House Chest

map.nodes[43395443] = Treasure({
    quest = 48751,
    note = L['goblin_glider_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37602}),
        Transmog({item = 153313, slot = L['2h_sword']}) -- Praetor's Ornamental Claymore
    },
    pois = {POI({45105310}), Path({45105310, 43395443})}
}) -- Doomseeker's Treasure

map.nodes[70305976] = Treasure({
    quest = 48748,
    note = L['goblin_glider_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37599}),
        Transmog({item = 153279, slot = L['cloth']}) -- Augari Wakener's Cord
    },
    pois = {POI({68075723}), Path({68075723, 70305976})}
}) -- Augari Secret Stash

map.nodes[57027686] = Treasure({
    quest = 48749,
    rewards = {
        Achievement({id = 12074, criteria = 37600}),
        Transmog({item = 153267, slot = L['2h_sword']}) -- Enclave Aspirant's Hatchet
    },
    pois = {POI({57087407}), Path({57087407, 57117525, 57627617, 57027686})}
}) -- Desperate Eredar's Cache

-------------------------------------------------------------------------------
------------------------------ DAILY CHESTS -----------------------------------
-------------------------------------------------------------------------------

local AECache = Class('AECache', Treasure, {
    group = ns.groups.ANCIENT_EREDAR_CACHE,
    label = L['ancient_eredar_cache'],
    note = L['ancient_eredar_cache_note'],
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening
    rewards = {
        Transmog({item = 153331, slot = L['plate']}), -- Eredath Lightseeker's Helmet
        Transmog({item = 153334, slot = L['plate']}), -- Eredath Lightseeker's Spaulders
        Transmog({item = 153332, slot = L['plate']}), -- Eredath Lightseeker's Chestpiece
        Transmog({item = 153333, slot = L['plate']}), -- Eredath Lightseeker's Waistplate
        Transmog({item = 153330, slot = L['plate']}), -- Eredath Lightseeker's Greaves
        Transmog({item = 153337, slot = L['plate']}), -- Eredath Lightseeker's Treads
        Transmog({item = 153336, slot = L['plate']}), -- Eredath Lightseeker's Armguards
        Transmog({item = 153335, slot = L['plate']}), -- Eredath Lightseeker's Handguards
        Transmog({item = 153271, slot = L['cloth']}), -- Forgotten Conservatory Helm
        Transmog({item = 153276, slot = L['cloth']}), -- Forgotten Conservatory Amice
        Transmog({item = 153288, slot = L['cloth']}), -- Forgotten Conservatory Robes
        Transmog({item = 153270, slot = L['cloth']}), -- Forgotten Conservatory Sash
        Transmog({item = 153273, slot = L['cloth']}), -- Forgotten Conservatory Leggings
        Transmog({item = 153275, slot = L['cloth']}), -- Forgotten Conservatory Slippers
        Transmog({item = 153277, slot = L['cloth']}), -- Forgotten Conservatory Wristwraps
        Transmog({item = 153272, slot = L['cloth']}) -- Forgotten Conservatory Gloves
    }
})

local AEC1 = AECache({quest = 48346, icon = 'chest_pp'})
local AEC2 = AECache({quest = 48350, icon = 'chest_yw'})
local AEC3 = AECache({quest = 48351, icon = 'chest_bl'})
local AEC4 = AECache({quest = 48362, icon = 'chest_rd'})
local AEC5 = AECache({quest = 48357, icon = 'chest_gn'})
local AEC6 = AECache({quest = 48371, icon = 'chest_tl'})

map.nodes[47106250] = AEC1
map.nodes[54905770] = AEC1
map.nodes[52706180] = AEC1
map.nodes[57506160] = AEC1
map.nodes[59506390] = AEC1
map.nodes[50906720] = AEC1
map.nodes[54706690] = AEC1
map.nodes[60907060] = AEC1
map.nodes[51807140] = AEC1
map.nodes[50107600] = AEC1
map.nodes[52908250] = AEC1
map.nodes[57507510] = AEC1
map.nodes[55207790] = AEC1
map.nodes[58704070] = AEC2
map.nodes[53603420] = AEC2
map.nodes[60603340] = AEC2
map.nodes[53502750] = AEC2
map.nodes[62202650] = AEC2
map.nodes[53902320] = AEC2
map.nodes[59502090] = AEC2
map.nodes[63301990] = AEC2
map.nodes[47707330] = AEC3
map.nodes[44606860] = AEC3
map.nodes[41106890] = AEC3
map.nodes[38506690] = AEC3
map.nodes[36406630] = AEC3
map.nodes[34206560] = AEC3
map.nodes[37106260] = AEC3
map.nodes[41606340] = AEC3
map.nodes[43506010] = AEC3
map.nodes[42605380] = AEC3
map.nodes[40505550] = AEC3
map.nodes[37905870] = AEC3
map.nodes[37305550] = AEC3
map.nodes[34105730] = AEC3
map.nodes[66502890] = AEC4
map.nodes[67903190] = AEC4
map.nodes[70103380] = AEC4
map.nodes[68803710] = AEC4
map.nodes[65303560] = AEC4
map.nodes[62203270] = AEC4
map.nodes[68504150] = AEC4
map.nodes[65504190] = AEC4
map.nodes[61904270] = AEC4
map.nodes[59804660] = AEC4
map.nodes[63804530] = AEC4
map.nodes[67204620] = AEC4
map.nodes[69504490] = AEC4
map.nodes[69704940] = AEC4
map.nodes[62705060] = AEC4
map.nodes[61505550] = AEC4
map.nodes[64605590] = AEC4
map.nodes[65906010] = AEC4
map.nodes[68505310] = AEC4
map.nodes[58701330] = AEC5
map.nodes[58001060] = AEC5
map.nodes[53300860] = AEC5
map.nodes[53501300] = AEC5
map.nodes[53001690] = AEC5
map.nodes[54901740] = AEC5
map.nodes[50001420] = AEC5
map.nodes[48401290] = AEC5
map.nodes[45101350] = AEC5
map.nodes[44701850] = AEC5
map.nodes[42601780] = AEC5
map.nodes[48602100] = AEC5
map.nodes[45102480] = AEC5
map.nodes[49902930] = AEC5
map.nodes[51702870] = AEC5
map.nodes[19704210] = AEC6
map.nodes[24603860] = AEC6
map.nodes[25503000] = AEC6
map.nodes[29003380] = AEC6
map.nodes[32604700] = AEC6
map.nodes[47103660] = AEC6
map.nodes[49503580] = AEC6
map.nodes[49804160] = AEC6
map.nodes[53604200] = AEC6
map.nodes[54704480] = AEC6
map.nodes[51004780] = AEC6
map.nodes[48704980] = AEC6
map.nodes[50605580] = AEC6
map.nodes[59305870] = AEC6

-------------------------------------------------------------------------------

local VSCache = Class('VSCache', Treasure, {
    group = ns.groups.VOID_SEEPED_CACHE,
    label = L['void_seeped_cache'],
    note = L['void_seeped_cache_note'],
    requires = ns.requirement.Quest(48107) -- The Sigil of Awakening
})

local VSC1 = VSCache({quest = 48361, icon = 'chest_pk'})
local VSC2 = VSCache({quest = 49264, icon = 'chest_nv'})

map.nodes[35403600] = VSC1
map.nodes[37704230] = VSC1
map.nodes[40504810] = VSC1
map.nodes[37804840] = VSC1
map.nodes[35404690] = VSC1
map.nodes[33304350] = VSC1
map.nodes[29605030] = VSC1
map.nodes[28904420] = VSC1
map.nodes[29503990] = VSC1
map.nodes[27503950] = VSC1
map.nodes[25403490] = VSC1
map.nodes[24804150] = VSC1
map.nodes[25904460] = VSC1
map.nodes[26604880] = VSC1
map.nodes[26505190] = VSC1
map.nodes[24305670] = VSC1
map.nodes[22604470] = VSC1
map.nodes[19904650] = VSC1
map.nodes[20804050] = VSC1
map.nodes[18904140] = VSC1
map.nodes[37002010] = VSC2
map.nodes[37902350] = VSC2
map.nodes[37603630] = VSC2
map.nodes[38103990] = VSC2
map.nodes[35303860] = VSC2
map.nodes[34503570] = VSC2
map.nodes[33202960] = VSC2
map.nodes[31602540] = VSC2
map.nodes[33602380] = VSC2
map.nodes[34102070] = VSC2
map.nodes[32502140] = VSC2
