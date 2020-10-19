-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=895, settings=true })
local bor = Map({ id=1161 })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[74917894] = Rare({
    id=132182,
    quest=50156,
    rewards={
        Achievement({id=12939, criteria=41793})
    }
}) -- Auditor Dolp

map.nodes[76098287] = Rare({
    id=129181,
    quest=50233,
    rewards={
        Achievement({id=12939, criteria=41795}),
        Achievement({id=13057, criteria=41544}),
        Transmog({item=160451, slot=L["dagger"]}), -- Barman Skewer
        Item({item=163717}) -- Forbidden Sea Shanty of Josephus
    }
}) -- Barman Bill

map.nodes[34503035] = Rare({
    id=132068,
    quest=50094,
    rewards={
        Achievement({id=12939, criteria=41796}),
        Transmog({item=160467, slot=L["mail"]}) -- Hydra-Hunter Legguards
    }
}) -- Bashmu

map.nodes[56296997] = Rare({
    id=132086,
    quest=50096,
    rewards={
        Achievement({id=12939, criteria=41797}),
        Achievement({id=13057, criteria=41545}),
        Transmog({item=158650, slot=L["2h_sword"]}), -- Sea-Scourge Greatblade
        Item({item=163718}) -- Forbidden Sea Shanty of the Black Sphere
    }
}) -- Black-Eyed Bart

map.nodes[85267342] = Rare({
    id=139145,
    quest=51808,
    rewards={
        Achievement({id=12939, criteria=41798}),
        Transmog({item=154411, slot=L["gun"]}) -- Vlaros Corps Rifle
    }
}) -- Blackthorne

map.nodes[83544482] = Rare({
    id=130508,
    quest=49999,
    rewards={
        Achievement({id=12939, criteria=41800}),
        Transmog({item=160460, slot=L["leather"]}) -- Thick Sauroskin Gloves
    }
}) -- Broodmother Razora

map.nodes[38442070] = Rare({
    id=132088,
    quest=50097,
    note=L["in_cave"]..' '..L["wintersail_note"],
    rewards={
        Achievement({id=12939, criteria=41806}),
        Transmog({item=155422, slot=L["crossbow"]}) -- Pirate Chief's Speargun
    }
}) -- Captain Wintersail

map.nodes[72498104] = Rare({
    id=139152,
    quest=51809,
    rewards={
        Achievement({id=12939, criteria=41812}),
        Transmog({item=155271, slot=L["1h_axe"]}) -- Monkey's Paw Chopper
    }
}) -- Carla Smirk

map.nodes[90507736] = Rare({
    id=132211,
    quest=50155,
    rewards={
        Achievement({id=12939, criteria=41813}),
        Transmog({item=154467, slot=L["leather"]}) -- Parrot-Trainer Mantle
    }
}) -- Fowlmouth

map.nodes[60102220] = Rare({
    id=132127,
    quest=50137,
    rewards={
        Achievement({id=12939, criteria=41814}),
        Transmog({item=160454, slot=L["cloth"]}) -- Foxhollow Falconer's Bracers
    }
}) -- Foxhollow Skyterror

map.nodes[61705154] = Rare({
    id=130350,
    quest=49963, -- 49983 (ride)
    note=L["hay_covered_chest_note"],
    rewards={
        Achievement({id=12852, criteria=41012}),
        Transmog({item=155571, slot=L["cloak"]}) -- Garyl's Riding Blanket
    },
    pois={
        Path({
            61705154, 62145219, 62805261, 63395202, 64025146, 64755138,
            65465164, 66235200, 67005203, 67365163
        }) -- Path to the treasure
    }
}) -- Guardian of the Spring

map.nodes[57845590] = Rare({
    id=139233,
    quest=53373,
    rewards={
        Achievement({id=12939, criteria=41819}),
        Transmog({item=158338, slot=L["cloth"]}) -- Swift-Travel Gloves
    }
}) -- Gulliver

map.nodes[64301936] = Rare({
    id=137183,
    quest=51321,
    note=L["honey_slitherer_note"],
    rewards={
        Achievement({id=12939, criteria=41823}),
        Transmog({item=160472, slot=L["plate"]}) -- Honey-Glazed Gauntlets
    }
}) -- Honey-Coated Slitherer

map.nodes[47832223] = Rare({
    id=131520,
    quest=49984,
    rewards={
        Achievement({id=12939, criteria=41820}),
        Transmog({item=158597, slot=L["shield"]}) -- Silvershell Defender
    }
}) -- Kulett the Ornery

map.nodes[67951999] = Rare({
    id=134106,
    quest=50525,
    rewards={
        Achievement({id=12939, criteria=41821}),
        Transmog({item=155524, slot=L["1h_axe"]}) -- Cursetouched Lumberjack's Axe
    }
}) -- Lumbergrasp Sentinel

map.nodes[58164931] = Rare({
    id=139290,
    quest=51880,
    rewards={
        Achievement({id=12939, criteria=41822}),
        Transmog({item=154458, slot=L["plate"]}) -- Shellbreaker Warhelm
    }
}) -- Maison the Portable

map.nodes[43031675] = Rare({
    id=131252,
    quest=49921,
    note=L["in_waterfall_cave"],
    rewards={
        Achievement({id=12939, criteria=41824}),
        Transmog({item=160461, slot=L["leather"]}) -- Thick Sauroskin Pants
    }
}) -- Merianae

map.nodes[64316330] = Rare({
    id=139205,
    quest=51833,
    rewards={
        Achievement({id=12939, criteria=41825}),
        Transmog({item=161599, slot=L["fist"]}) -- Mechano-Cat Claw
    }
}) -- P4-N73R4

map.nodes[38891530] = Rare({
    id=131262,
    quest=49923,
    note=L["in_cave"],
    rewards={
        Achievement({id=12939, criteria=41826}),
        Item({item=160263, note=L["trinket"]}) -- Snowpelt Mangler
    },
    pois={
        POI({39851491}) -- Cave entrance
    }
}) -- Pack Leader Asenya

map.nodes[64765863] = Rare({
    id=132179,
    quest=50148,
    rewards={
        Achievement({id=12939, criteria=41827}),
        Item({item=161446, note=L["ring"]}) -- Blistering Seawater Seal
    }
}) -- Raging Swell

map.nodes[68306356] = Rare({
    id=139278,
    quest=51872,
    rewards={
        Achievement({id=12939, criteria=41828}),
        Transmog({item=154478, slot=L["leather"]}) -- Ranja-Hide Bracers
    }
}) -- Ranja

map.nodes[58651480] = Rare({
    id=127290,
    quest=48806,
    rewards={
        Achievement({id=12939, criteria=41829}),
        Transmog({item=154416, slot=L["2h_mace"]}) -- Trogg Saurolisk-Breaker
    }
}) -- Saurolisk Tamer Mugg

local sawtooth = Rare({
    id=139287,
    quest=51877,
    rewards={
        Achievement({id=12939, criteria=41830}),
        Transmog({item=155273, slot=L["1h_axe"]}) -- Sharktooth Hatchet
    }
}) -- Sawtooth

map.nodes[76773045] = sawtooth
bor.nodes[80594456] = ns.Clone(sawtooth, {
    pois={
        Path({
            76143832, 78343810, 79844112, 80594456, 80394854, 78485012,
            76764657, 76024247, 76143832
        })
    }
})

map.nodes[55123241] = Rare({
    id=139285,
    quest=51876,
    rewards={
        Achievement({id=12939, criteria=41831}),
        Transmog({item=155278, slot=L["dagger"]}) -- Shiverscale Spellknife
    }
}) -- Shiverscale the Toxic

map.nodes[80918284] = Rare({
    id=132280,
    quest=50160,
    rewards={
        Achievement({id=12939, criteria=41832}),
        Transmog({item=160455, slot=L["cloth"]}) -- Parrot-Trainer Sash
    }
}) -- Squacks

map.nodes[48883702] = Rare({
    id=139135,
    quest=51807,
    rewards={
        Achievement({id=12939, criteria=41833}),
        Transmog({item=155551, slot=L["wand"]}) -- Squirgle's Deepstone Wand
    }
}) -- Squirgle of the Depths

map.nodes[66611382] = Rare({
    id=139280,
    quest=51873,
    rewards={
        Achievement({id=12939, criteria=41834}),
        Transmog({item=154474, slot=L["leather"]}) -- Sythian Swiftbelt
    }
}) -- Sythian the Swift

map.nodes[60521753] = Rare({
    id=133356,
    quest=50301,
    note=L["tempestria_note"],
    rewards={
        Achievement({id=12939, criteria=41835}),
        Transmog({item=160466, slot=L["mail"]}) -- Saurolisk Broodmother Boots
    }
}) -- Tempestria

map.nodes[55315156] = Rare({
    id=139289,
    quest=51879,
    rewards={
        Achievement({id=12939, criteria=41836}),
        Transmog({item=154448, slot=L["mail"]}) -- Medusa-Drifter's Chainmail
    }
}) -- Tentulos the Drifter

map.nodes[63655035] = Rare({
    id=131389,
    quest=49942,
    rewards={
        Achievement({id=12939, criteria=41837}),
        Item({item=158556, note=L["trinket"]}) -- Siren's Tongue
    }
}) -- Teres

map.nodes[70405573] = Rare({
    id=139235,
    quest=51835,
    rewards={
        Achievement({id=12939, criteria=41838}),
        Transmog({item=159349, slot=L["mail"]}) -- Dragon Turtle Handlers
    }
}) -- Tort Jaw

map.nodes[46842064] = Rare({
    id=132076,
    quest=50095,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12939, criteria=41839}),
        Item({item=160452, note=L["bag"]}) -- Goat's Tote
    }
}) -- Totes

map.nodes[70331248] = Rare({
    id=131984,
    quest=50073,
    note=L["twin_hearted_note"],
    rewards={
        Achievement({id=12939, criteria=41840}),
        Transmog({item=160473, slot=L["plate"]}) -- Wickerthorn Stompers
    }
}) -- Twin-hearted Construct

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- 36983061 48598 Small Treasure Chest
-- 66941635 48619 Small Treasure Chest
-- 66698023 50952 Small Treasure Chest
-- 67346402 48609 Small Treasure Chest
-- 73328244 48596 Small Treasure Chest
-- 76106733 48608 Small Treasure Chest
-- 76368091 48595 Small Treasure Chest

-------------------------------------------------------------------------------

map.nodes[72495814] = Treasure({
    quest=50442,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12852, criteria=41013}),
        Item({item=155381, note=L["ring"]}) -- Cutwater-Captain's Sapphire Ring
    }
}) -- Cutwater Treasure Chest

map.nodes[61786275] = Treasure({
    quest=52867,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12852, criteria=41015})
    }
}) -- Forgotten Smuggler's Stash

map.nodes[67365163] = Treasure({
    quest=49963,
    note=L["hay_covered_chest_note"],
    rewards={
        Achievement({id=12852, criteria=41012}),
        Transmog({item=155571, slot=L["cloak"]}) -- Garyl's Riding Blanket
    },
    pois={
        Path({
            61705154, 62145219, 62805261, 63395202, 64025146, 64755138,
            65465164, 66235200, 67005203, 67365163
        }) -- Path to the treasure
    }
}) -- Hay Covered Chest

map.nodes[56033319] = Treasure({
    quest=52866,
    rewards={
        Achievement({id=12852, criteria=41014})
    }
}) -- Precarious Noble Cache

local scrimshaw = Treasure({
    quest=52870,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12852, criteria=41016})
    }
}) -- Scrimshaw Cache

bor.nodes[63270617] = scrimshaw
map.nodes[72642132] = scrimshaw

-------------------------------- TREASURE MAPS --------------------------------

map.nodes[29222534] = Treasure({
    quest=52833,
    note=L["pirate_treasure_note"],
    rewards={
        Achievement({id=12852, criteria=41019}),
        Item({item=162580, quest=52854})
    }
}) -- Fading Treasure Map

map.nodes[48983759] = Treasure({
    quest=52845,
    note=L["pirate_treasure_note"],
    rewards={
        Achievement({id=12852, criteria=41021}),
        Item({item=162584, quest=52860})
    }
}) -- Singed Treasure Map

map.nodes[54994608] = Treasure({
    quest=52807,
    note=L["pirate_treasure_note"],
    rewards={
        Achievement({id=12852, criteria=41018}),
        Item({item=162571, quest=52853})
    }
}) -- Soggy Treasure Map

map.nodes[90507551] = Treasure({
    quest=52836,
    note=L["pirate_treasure_note"],
    rewards={
        Achievement({id=12852, criteria=41020}),
        Item({item=162581, quest=52859})
    }
}) -- Yellowed Treasure Map

---------------------------- SECRET OF THE DEPTHS -----------------------------

local Scroll = Class('Scroll', Treasure, {
    icon='scroll',
    label=L["damp_scroll"],
    rewards={
        Achievement({id=12852, criteria=41017}),
        Toy({item=161342}) -- Gem of Acquiescence
    }
})

bor.nodes[55989130] = Scroll({
    quest=52134,
    note=L["in_water_cave"]..' '..L["damp_scroll_note_1"],
    pois={
        POI({61258420}) -- Cave entrance
    }
}) -- A Damp Scroll

bor.nodes[61177788] = Scroll({quest=52135, note=L["damp_scroll_note_2"]}) -- A Damp Scroll
bor.nodes[63078186] = Scroll({quest=52136, note=L["damp_scroll_note_3"]}) -- A Damp Scroll
bor.nodes[70328576] = Scroll({quest=52137, note=L["damp_scroll_note_4"]}) -- A Damp Scroll
bor.nodes[67147982] = Scroll({quest=52138, note=L["damp_scroll_note_5"]}) -- A Damp Scroll

bor.nodes[55699108] = Treasure({
    quest=52195,
    questDeps={52134, 52135, 52136, 52137, 52138},
    label=L["ominous_altar"],
    note=L["in_water_cave"]..' '..L["ominous_altar_note"],
    rewards=Scroll.rewards,
    pois={
        POI({61258420}) -- Cave entrance
    }
}) -- Ominous Altar

map.nodes[73103950] = Treasure({
    quest=52195,
    note=L["secret_of_the_depths_note"],
    rewards=Scroll.rewards
}) -- Secret of the Depths
