-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
--local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog
local Reputation = ns.reward.Reputation

local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2413, settings = true}) -- or 2480
local den = Map({id = 2576, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51164535] = Rare({
    id = 248741,
    quest = 91832, -- 94712/91832
    rewards = {
        Achievement({id = 61264, criteria = 109039}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Rhazul

map.nodes[68714070] = Rare({
    id = 249844,
    quest = 92137, -- 92137 94713
    rewards = {
        Achievement({id = 61264, criteria = 109040}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Chironex

map.nodes[69175986] = Rare({
    id = 249849,
    quest = 92142, -- 92142/94714
    rewards = {
        Achievement({id = 61264, criteria = 109041}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }, -- [Ha'kalawe's Flawless Wing] clock
    pois = {
        Path({
            69546295, 68806295, 68146280, 67696231, 67476167, 67466099,
            68076071, 68636028, 69175986, 69666044, 70076098, 70226166,
            70196238, 69546295
        })
    }
}) -- Ha'kalawe

map.nodes[72636928] = Rare({
    id = 249902,
    quest = 92148, -- 94715
    rewards = {
        Achievement({id = 61264, criteria = 109042}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Tallcap the Truthspreader

map.nodes[59934684] = Rare({
    id = 249962,
    quest = 92154, -- 92154
    rewards = {
        Achievement({id = 61264, criteria = 109043}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Queen Lashtongue

map.nodes[64574794] = Rare({
    id = 249997,
    quest = 92161, -- 94717
    rewards = {
        Achievement({id = 61264, criteria = 109044}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Chlorokyll

map.nodes[65553269] = Rare({
    id = 250086,
    quest = 92168, -- 94718
    rewards = {
        Achievement({id = 61264, criteria = 109045}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Stumpy

map.nodes[56383299] = Rare({
    id = 250180,
    quest = 92170, -- 92170
    rewards = {
        Achievement({id = 61264, criteria = 109046}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Serrasa

map.nodes[45933134] = Rare({
    id = 250226,
    quest = 92172, -- 92720
    rewards = {
        Achievement({id = 61264, criteria = 109047}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    },
    pois = {Path({45422935, 45762998, 46033063, 45933134, 45803201, 46143260})}
}) -- Mindrot

map.nodes[40654299] = Rare({
    id = 250231,
    quest = 92176, -- 92176
    rewards = {
        Achievement({id = 61264, criteria = 109048}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Dracaena

map.nodes[36597516] = Rare({
    id = 250246,
    quest = 92183, -- 94722/92183
    rewards = {
        Achievement({id = 61264, criteria = 109049}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Treetop

map.nodes[28118181] = Rare({ -- review
    id = 250317,
    quest = 92190, -- 94723
    rewards = {
        Achievement({id = 61264, criteria = 109050}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Oro'ohna

map.nodes[27277032] = Rare({
    id = 250321,
    quest = 92191, -- 94724, -- 92191
    rewards = {
        Achievement({id = 61264, criteria = 109051}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Pterrock

map.nodes[39696070] = Rare({
    id = 250347,
    quest = 92193, -- 92193/94725
    rewards = {
        Achievement({id = 61264, criteria = 109052}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Ahl'ua'huhi

map.nodes[44201658] = Rare({
    id = 250358,
    quest = 92194, -- 92194
    rewards = {
        Achievement({id = 61264, criteria = 109053}),
        Section(L['shared_drops']), Mount({item = 246735, id = 2615}), -- Rootstalker Grimlynx
        Mount({item = 252012, id = 2708}) -- Vibrant Petalwing
    }
}) -- Annulus the Worldshaker

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[71683100] = Treasure({
    quest = 92424,
    rewards = {
        Achievement({id = 61263, criteria = 109033}), Toy({item = 258963})
    }
}) -- Failed Shroom Jumper's Satchel

map.nodes[47065025] = Treasure({
    quest = 92426,
    rewards = {Achievement({id = 61263, criteria = 109034})}
}) -- Burning Branch of the World Tree

map.nodes[73656535] = Treasure({
    quest = 92427,
    rewards = {
        Achievement({id = 61263, criteria = 109035}),
        Transmog({item = 263289, type = L['cosmetic']})
    }
}) -- Sporelord's Fight Prize

map.nodes[62905124] = Treasure({
    quest = 92431,
    rewards = {
        Achievement({id = 61263, criteria = 109036}),
        Transmog({item = 263287, type = L['cosmetic']}) -- [Reliquary-Keeper's Lost Shortbow]
    }
}) -- Reliquary's Lost Paintbrush

map.nodes[55693943] = Treasure({
    quest = 92436,
    rewards = {
        Achievement({id = 61263, criteria = 109037}),
        Pet({item = 258903, id = 4927}) -- [Percival]

    }
}) -- Kemet's Simmering Cauldron

map.nodes[20003500] = Treasure({
    quest = 93144,
    rewards = {Achievement({id = 61263, criteria = 110254})}
}) -- Gift of the Cycle

map.nodes[26736759] = Treasure({
    quest = 93508,
    rewards = {
        Achievement({id = 61263, criteria = 110255}),
        Pet({item = 260730, id = 4948}) -- [Perturbed Sporebat]
    }
}) -- Impenatrably Sealed Gourd
-- Loot [Mysterious Red Fluid] (260251) from the nearby {object:Dangling Jug}
-- loot [Mysterious Purple Fluid] (260250) from the nearby {object:Hanging Flask}
-- click on {object:Durable Vase} and add the fluids to get [Fizzing Fluid] (260266) then loot the treasure from the Sealed Gourd

map.nodes[20004500] = Treasure({
    quest = 93650,
    rewards = {
        Achievement({id = 61263, criteria = 110256}),
        Mount({item = 256423, id = 2747}) -- Untained Grove Crawler
    }
}) -- Sporespawned Cache

map.nodes[40642802] = Treasure({
    requires = ns.requirement.Item(260531, 150), -- Crystalized Resin Fragment
    quest = 93587,
    rewards = {
        Achievement({id = 61263, criteria = 110257}),
        Mount({item = 252017, id = 2713}) -- Ruddy Sporeglider
    }
}) -- Peculiar Cauldron
-- Flame Harded Sap of Teldrassil (loots 2-7x Crystalized Resin Fragment) - item:260531
-- found in the river from approx 39682090 to 49925115

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------
map.nodes[34772469] = PT.Alchemy({quest = 89113, id = 238534}) -- Vial of Rootlands Oddities
map.nodes[66345085] = PT.Blacksmithing({quest = 89182, id = 238545}) -- Rutaani Floratender's Sword
map.nodes[37756522] = PT.Enchanting({quest = 89104, id = 238552}) -- Entropic Shard
map.nodes[65725022] = PT.Enchanting({quest = 89105, id = 238553}) -- Primal Essence Orb
map.nodes[68004981] = PT.Engineering({quest = 89136, id = 238559}) -- Expeditious Pylon
map.nodes[51115571] = PT.Herbalism({quest = 89155, id = 238475}) -- Planting Shovel
map.nodes[38326704] = PT.Herbalism({quest = 89162, id = 238468}) -- Bloomed Bud
map.nodes[76135105] = PT.Herbalism({quest = 89157, id = 238473}) -- Harvester's Sickle (dupe spawn in Zul aman???)
map.nodes[36662506] = PT.Herbalism({quest = 89159, id = 238471}) -- Lightbloom Root
map.nodes[52754998] = PT.Inscription({quest = 89071, id = 238576}) -- Leftover Sanguithorn Pigment
map.nodes[52435261] = PT.Inscription({quest = 89070, id = 238575}) -- Intrepid Explorer's Marker
map.nodes[36102517] = PT.Leatherworking({quest = 89095, id = 238594}) -- Haranir Leatherworking Knife
map.nodes[51695132] = PT.Leatherworking({quest = 89094, id = 238593}) -- Haranir Leatherworking Mallet
map.nodes[38836586] = PT.Mining({quest = 89151, id = 238603}) -- Spare Expedition Torch
map.nodes[69524917] = PT.Skinning({quest = 89168, id = 238630}) -- Primal Hide
map.nodes[76095108] = PT.Skinning({quest = 89166, id = 238628}) -- Lightbloom Afflicted Hide
map.nodes[70565090] = PT.Tailoring({quest = 89078, id = 238612}) -- A Child's Stuffy
map.nodes[69765105] = PT.Tailoring({quest = 89081, id = 238615}) -- Wooden Weaving Sword

-------------------------------------------------------------------------------
----------------------------- HARANDAR GLYPH HUNTER ---------------------------
-------------------------------------------------------------------------------
map.nodes[60244436] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110364})}
}) -- Blossoming Terrace, Harandar

map.nodes[47075321] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110365})}
}) -- The Cradle, Harandar

map.nodes[69304593] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110367})}
}) -- Roots of Amirdrassil, Harandar

map.nodes[54123558] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110368})}
}) -- Blooming Lattice, Harandar

map.nodes[73012599] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110369})}
}) -- Roots of Nordrassil, Harandar

map.nodes[44546280] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110370})}
}) -- Fungara Village, Harandar

map.nodes[26536139] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110366})}
}) -- Roots of Shaladrassil, Harandar

map.nodes[61866750] = SkyridingGlyph({
    rewards = {Achievement({id = 61582, criteria = 110371})}
}) -- Rift of Aln, Harandar

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

map.nodes[49407592] = Telescope({
    quest = 94548,
    achievement = 62290,
    criteria = 111585,
    repfaction = 2704
})
map.nodes[53495855] = Telescope({
    quest = 94550,
    achievement = 62290,
    criteria = 111587,
    repfaction = 2704
})
map.nodes[69174638] = Telescope({
    quest = 94546,
    achievement = 62290,
    criteria = 111583,
    repfaction = 2704
})
map.nodes[69406339] = Telescope({
    quest = 94549,
    achievement = 62290,
    criteria = 111586,
    repfaction = 2704
})
map.nodes[68162597] = Telescope({
    quest = 94547,
    achievement = 62290,
    criteria = 111584,
    repfaction = 2704
})
---------------------------- MIDNIGHT LORE HUNTER -----------------------------

map.nodes[33336084] = LoreObject({
    quest = 93556,
    rewards = {
        Achievement({id = 62104, criteria = 111824}),
        Reputation({id = 2704, gain = 275, quest = 93556})
    }
}) -- Ancient Runestone

map.nodes[47604723] = LoreObject({
    quest = 93559,
    rewards = {
        Achievement({id = 62104, criteria = 111827}),
        Reputation({id = 2704, gain = 275, quest = 93559})
    }
}) -- A Frayed Scroll

map.nodes[55665402] = LoreObject({
    quest = 93554,
    rewards = {
        Achievement({id = 62104, criteria = 111823}),
        Reputation({id = 2704, gain = 275, quest = 93554})
    }
}) -- Tarnished Mural

map.nodes[72443809] = LoreObject({
    quest = 93557,
    rewards = {
        Achievement({id = 62104, criteria = 111825}),
        Reputation({id = 2704, gain = 275, quest = 93557})
    }
}) -- Derelict Mural

map.nodes[68212379] = LoreObject({
    quest = 93558,
    rewards = {
        Achievement({id = 62104, criteria = 111826}),
        Reputation({id = 2704, gain = 275, quest = 93558})
    }
}) -- Forgotten Mural

-------------------------------- GLOWING MOTHS --------------------------------

-- Glowing Moth, first moth triggered quest 92231 and gives item 251881 which starts quest 92448
-- moths give 1x currency 3385 (Luminous Dust)
-- 120 in total to find

local Moth = Class('Moth', ns.node.Collectible, {
    label = L['glowing_moth'],
    icon = 1003597,
    group = ns.groups.GLOWING_MOTH,
    rewards = {
        Achievement({id = 61052, criteria = {id = 1, qty = true}}),
        ns.reward.Currency({id = 3385}) -- Luminous Dust
    }
})

function Moth.getters:requires()
    return ns.requirement.Reputation(2704, self.renown, true)
end

map.nodes[36354839] = Moth({quest = 92196, renown = 1}) -- Group 1
map.nodes[36112639] = Moth({quest = 92197, renown = 1}) -- Group 1
map.nodes[49882551] = Moth({quest = 92198, renown = 1})
map.nodes[55002755] = Moth({quest = 92199, renown = 1})
map.nodes[66306282] = Moth({quest = 92200, renown = 1})
map.nodes[33376349] = Moth({quest = 92201, renown = 1})
map.nodes[33377561] = Moth({quest = 92202, renown = 1})
map.nodes[31848176] = Moth({quest = 92203, renown = 1})
map.nodes[42196651] = Moth({quest = 92204, renown = 1})
map.nodes[52418078] = Moth({quest = 92205, renown = 1})
map.nodes[59445433] = Moth({quest = 92206, renown = 1})
map.nodes[38334744] = Moth({quest = 92207, renown = 1})
map.nodes[33954404] = Moth({quest = 92208, renown = 1})
map.nodes[60344858] = Moth({quest = 92209, renown = 1})
map.nodes[43215365] = Moth({quest = 92210, renown = 1})
map.nodes[30317339] = Moth({quest = 92211, renown = 1})
map.nodes[32628477] = Moth({quest = 92212, renown = 1})
map.nodes[32066708] = Moth({quest = 92213, renown = 1})
map.nodes[52935065] = Moth({quest = 92214, renown = 1})
map.nodes[71385863] = Moth({quest = 92215, renown = 1})
map.nodes[63744145] = Moth({quest = 92216, renown = 4})
map.nodes[61283517] = Moth({quest = 92217, renown = 4, location = L['in_cave']})
map.nodes[55796664] = Moth({quest = 92218, renown = 4})
map.nodes[55616429] = Moth({quest = 92219, renown = 4})
map.nodes[74005723] = Moth({quest = 92220, renown = 4, location = L['in_cave']})
map.nodes[71715882] = Moth({quest = 92221, renown = 4})
map.nodes[60341777] = Moth({quest = 92222, renown = 4, location = L['in_cave']})
map.nodes[44023812] = Moth({quest = 92223, renown = 4})
map.nodes[43063945] = Moth({quest = 92224, renown = 4})
map.nodes[46382488] = Moth({quest = 92225, renown = 1})
map.nodes[62343714] = Moth({quest = 92226, renown = 1})
map.nodes[55143288] = Moth({quest = 92227, renown = 1})
map.nodes[66965657] = Moth({quest = 92228, renown = 1})
map.nodes[53765910] = Moth({quest = 92229, renown = 1})
map.nodes[41614012] = Moth({quest = 92230, renown = 1})
map.nodes[47634696] = Moth({quest = 92231, renown = 1})
map.nodes[50353360] = Moth({quest = 92232, renown = 1})
map.nodes[68693633] = Moth({quest = 92233, renown = 1})
map.nodes[50266966] = Moth({quest = 92234, renown = 1})
map.nodes[49267552] = Moth({quest = 92235, renown = 1})
map.nodes[44783569] = Moth({quest = 92236, renown = 4})
map.nodes[51382032] = Moth({quest = 92237, renown = 4, location = L['in_cave']})
map.nodes[58673020] = Moth({quest = 92238, renown = 4})
map.nodes[73716830] = Moth({quest = 92239, renown = 4})
map.nodes[73716173] = Moth({quest = 92240, renown = 4})
map.nodes[41953772] = Moth({quest = 92241, renown = 4})
map.nodes[43264035] = Moth({quest = 92242, renown = 4})
map.nodes[46864847] = Moth({quest = 92243, renown = 4})
map.nodes[61423712] = Moth({quest = 92244, renown = 4, location = L['in_cave']})
map.nodes[62434085] = Moth({quest = 92245, renown = 4})
map.nodes[41346613] = Moth({quest = 92246, renown = 4})
map.nodes[35897426] = Moth({quest = 92247, renown = 4})
map.nodes[30806365] = Moth({quest = 92248, renown = 4})
map.nodes[36098144] = Moth({quest = 92249, renown = 4})
map.nodes[51887662] = Moth({quest = 92250, renown = 4})
map.nodes[48275058] = Moth({quest = 92251, renown = 4})
map.nodes[61245046] = Moth({quest = 92252, renown = 4})
map.nodes[60724540] = Moth({
    quest = 92253,
    renown = 4,
    location = L['in_waterfall_cave']
})
map.nodes[62494432] = Moth({quest = 92254, renown = 4})
map.nodes[54493885] = Moth({quest = 92255, renown = 4})
map.nodes[36974830] = Moth({quest = 92256, renown = 4})
map.nodes[67971999] = Moth({quest = 92257, renown = 4, location = L['in_cave']})
map.nodes[54495206] = Moth({quest = 92258, renown = 4})
map.nodes[42192226] = Moth({quest = 92259, renown = 4})
map.nodes[72873719] = Moth({quest = 92260, renown = 4})
map.nodes[65894471] = Moth({quest = 92261, renown = 4})
map.nodes[63994863] = Moth({quest = 92262, renown = 4})
map.nodes[62495867] = Moth({quest = 92263, renown = 4})
map.nodes[65305774] = Moth({quest = 92264, renown = 4, location = L['in_cave']})
map.nodes[41346807] = Moth({quest = 92265, renown = 4})
map.nodes[39095510] = Moth({quest = 92266, renown = 4})
map.nodes[47246610] = Moth({quest = 92267, renown = 9})
map.nodes[47733285] = Moth({quest = 92268, renown = 9})
map.nodes[52422921] = Moth({quest = 92269, renown = 9})
map.nodes[54543176] = Moth({quest = 92270, renown = 9})
map.nodes[71173910] = Moth({quest = 92271, renown = 9})
map.nodes[67044839] = Moth({quest = 92272, renown = 9})
map.nodes[45015808] = Moth({quest = 92273, renown = 9})
map.nodes[54007303] = Moth({quest = 92274, renown = 9})
map.nodes[50108017] = Moth({quest = 92275, renown = 9, location = L['in_cave']})
map.nodes[46107184] = Moth({quest = 92276, renown = 9})
den.nodes[61757488] = Moth({quest = 92277, renown = 9, parent = map.id})
map.nodes[43182734] = Moth({quest = 92278, renown = 9})
map.nodes[66503310] = Moth({quest = 92279, renown = 9})
map.nodes[72043314] = Moth({quest = 92280, renown = 9})
map.nodes[68252778] = Moth({quest = 92281, renown = 9})
map.nodes[56022452] = Moth({quest = 92282, renown = 9})
map.nodes[48492827] = Moth({quest = 92283, renown = 9})
map.nodes[47762338] = Moth({quest = 92284, renown = 9})
map.nodes[34632422] = Moth({quest = 92285, renown = 9})
map.nodes[44434518] = Moth({quest = 92286, renown = 9})
map.nodes[27397032] = Moth({quest = 92287, renown = 9, location = L['in_cave']})
map.nodes[29848765] = Moth({quest = 92288, renown = 9})
map.nodes[65145085] = Moth({quest = 92289, renown = 9})
map.nodes[62576463] = Moth({quest = 92290, renown = 9})
map.nodes[71736745] = Moth({quest = 92291, renown = 9})
map.nodes[69356294] = Moth({quest = 92292, renown = 9})
map.nodes[48552623] = Moth({quest = 92293, renown = 9})
map.nodes[49047069] = Moth({quest = 92294, renown = 9})
map.nodes[34614854] = Moth({quest = 92295, renown = 9})
map.nodes[34486899] = Moth({quest = 92296, renown = 9})
map.nodes[39211835] = Moth({quest = 92297, renown = 9})
map.nodes[56584765] = Moth({quest = 92299, renown = 1})
map.nodes[40443446] = Moth({quest = 92300, renown = 1})
map.nodes[41592744] = Moth({quest = 92301, renown = 1})
map.nodes[50634062] = Moth({quest = 92302, renown = 1})
map.nodes[65432712] = Moth({quest = 92303, renown = 1})
map.nodes[69033120] = Moth({quest = 92304, renown = 1})
map.nodes[59984305] = Moth({quest = 92305, renown = 1})
map.nodes[67736886] = Moth({quest = 92306, renown = 1})
map.nodes[48545535] = Moth({quest = 92307, renown = 1})
map.nodes[39366137] = Moth({quest = 92308, renown = 9})
map.nodes[56585716] = Moth({quest = 92309, renown = 9})
map.nodes[74095339] = Moth({quest = 92310, renown = 9})
map.nodes[62515375] = Moth({quest = 92311, renown = 9, location = L['in_cave']})
map.nodes[28836691] = Moth({quest = 92312, renown = 9})
map.nodes[40885152] = Moth({quest = 92313, renown = 9})
map.nodes[41066735] = Moth({quest = 92314, renown = 9})
map.nodes[69444898] = Moth({quest = 92315, renown = 9, location = L['in_cave']})
map.nodes[75835015] = Moth({quest = 92316, renown = 9})

-------------------------------------------------------------------------------

map.nodes[66166169] = ns.node.NPC({
    icon = 1670851,
    id = 247220,
    rewards = {
        Achievement({id = 61939, criteria = {id = 1, qty = true}}),
        ns.reward.Spacer(),
        Achievement({id = 61943, criteria = 111433, oneline = true}),
        Achievement({id = 62325, criteria = 112532, oneline = true}),
        Achievement({id = 62326, criteria = 112536, oneline = true}),
        Achievement({id = 62329, criteria = 112540, oneline = true}),
        Achievement({id = 62330, criteria = 112544, oneline = true}),
        Achievement({id = 62331, criteria = 112548, oneline = true})
    }
})

--[[ MIDNIGHT: Chronicler of the Harani - https://www.wowhead.com/beta/achievement=61344/chronicler-of-the-haranir

Requires "THe Cauldron of Echoes" https://www.wowhead.com/beta/quest=88994/the-cauldron-of-echoes
[59982090] = {vignette=7372, label="Echoes of Our Past: Fading History"}, 93475
[59711852] = {vignette=7373, label="Echoes of Our Past: Alndust"}, 93474
[61141595] = {vignette=7374, label="Echoes of Our Past: Dangerous Memories"},  93473

https://www.wowhead.com/beta/quest=88993/weynans-ward
[41563588] = {vignette=7370, label="Laments of Wey'nan: Hunting Purpose"}, 93471
[43233732] = {vignette=7369, label="Laments of Wey'nan: Finding Hope"}, 93470
[42303547] = {vignette=7371, label="Laments of Wey'nan: There Must Be More"}, 93472
]] --
