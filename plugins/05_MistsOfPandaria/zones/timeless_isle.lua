-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=554, settings=true })
local lostspirits = Map({ id=555 }) -- Cavern of Lost Spirits

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[34403250] = Rare({
    id=73666,
    rewards={
        Achievement({id=8714, criteria=31})
    }
}) -- Archiereus of Flame

map.nodes[64817465] = Rare({
    id=72775,
    rewards={
        Achievement({id=8714, criteria=23986}),
        Achievement({id=8728, criteria=24034}), -- Gulp Froglet
        Pet({id=1338, item=104169}) -- Gulp Froglet
    }
}) -- Bufo

map.nodes[25063598] = Rare({
    id=72045,
    note=L["chelon_note"],
    rewards={
        Achievement({id=8714, criteria=23974}),
        Achievement({id=8728, criteria=24072}), -- Hardened Shell
        Toy({item=86584}) -- Hardened Shell
    }
}) -- Chelon

map.nodes[65426021] = Rare({
    id=73171,
    rewards={
        Achievement({id=8714, criteria=23996}),
        Achievement({id=8728, criteria={24055, 24074}}), -- Blackflame Daggers, Big Bag of Herbs
        Toy({item=104302}), -- Blackflame Daggers
        Item({item=106130}) -- Big Bag of Herbs
    },
    pois={
        Path({
            65426021, 67235734, 68225690, 69635427, 70635181, 71014722,
            69814461, 69044288, 66614262, 64434227, 62384384, 60624841
        })
    }
}) -- Champion of the Black Flame

map.nodes[52954988] = Rare({
    id=73175,
    rewards={
        Achievement({id=8714, criteria=23981}),
        Achievement({id=8728, criteria={24054, 24038}}), -- Falling Flame, Glowing Blue Ash
        Item({item=104299}), -- Falling Flame
        Item({item=104261}) -- Glowing Blue Ash
    }
}) -- Cinderfall

map.nodes[43896989] = Rare({
    id=72049,
    rewards={
        Achievement({id=8714, criteria=23976}),
        Achievement({id=8728, criteria=24041}), -- Pristine Stalker Hide
        Item({item=104268}) -- Pristine Stalker Hide
    }
}) -- Cranegnasher

map.nodes[26082283] = Rare({
    id=73281,
    requires=ns.requirement.Item(104115),
    note=L["dread_ship_note"],
    rewards={
        Achievement({id=8714, criteria=23987}),
        Achievement({id=8728, criteria=24050}), -- Rime of the Time-Lost Mariner
        Toy({item=104294}) -- Rime of the Time-Lost Mariner
    },
    pois={
        POI({26322792}) -- Cursed Gravestone
    }
}) -- Dread Ship Vazuvius

map.nodes[40704140] = Rare({
    id=73158,
    note=L["emerald_gander_note"],
    rewards={
        Achievement({id=8714, criteria=23967})
    }
}) -- Emerald Gander

map.nodes[14215240] = Rare({
    id=73279,
    rewards={
        Achievement({id=8714, criteria=23990}),
        Item({item=104115}) -- Mist-Filled Spirit Lantern
    },
    pois={
        Path({
            71018760, 59419760, 44619760, 24008281, 17606761, 14215240, 14013760,
            19601481, 28810381, 45810321, 57810641, 66570900, 74411780, 80603421
        })
    }
}) -- Evermaw

map.nodes[44003400] = Rare({
    id=73172,
    rewards={
        Achievement({id=8714, criteria=23995}),
        Achievement({id=8728, criteria=24053}), -- Ordon Death Chime
        Item({item=104298, note=L["trinket"]}) -- Ordon Death Chime
    }
}) -- Flintlord Gairan

map.nodes[64002700] = Rare({
    id=73282,
    rewards={
        Achievement({id=8714, criteria=23982}),
        Achievement({id=8728, criteria=24027}), -- Ruby Droplet
        Pet({id=1328, item=104159}) -- Ruby Droplet
    }
}) -- Garnia

map.nodes[62506350] = Rare({
    id=72970,
    rewards={
        Achievement({id=8714, criteria=23988}),
        Achievement({id=8728, criteria={24039, 24040}}), -- Odd Polished Stone, Glinting Pile of Stone
        Toy({item=104262}), -- Odd Polished Stone
        Item({item=104263}) -- Glinting Pile of Stone
    }
}) -- Golganarr

map.nodes[24805500] = Rare({
    id=73161,
    note=L["great_turtle_furyshell_note"],
    rewards={
        Achievement({id=8714, criteria=23969}),
        Achievement({id=8728, criteria=24072}), -- Hardened Shell
        Toy({item=86584}) -- Hardened Shell
    },
    pois={
        Path({26617241, 22416720, 23606281, 25376059, 25815741, 24805500, 24205050, 22014420})
    }
}) -- Great Turtle Furyshell

map.nodes[38007500] = Rare({
    id=72909,
    rewards={
        Achievement({id=8714, criteria=23970}),
        Achievement({id=8728, criteria={24047, 24046}}), -- Swarmling of Gu'chi, Sticky Silkworm Goo
        Pet({id=1345, item=104291}), -- Swarmling of Gu'chi
        Item({item=104290}) -- Sticky Silkworm Goo
    }
}) -- Gu'chi the Swarmbringer

map.nodes[65875660] = Rare({
    id=73167,
    quest=33311,
    rewards={
        Achievement({id=8714, criteria=23984}),
        Achievement({id=8728, criteria=24081}), -- Reins of the Thundering Onyx Cloud Serpent
        Mount({item=104269, id=561}) -- Thundering Onyx Cloud Serpent
    }
}) -- Huolon

map.nodes[38704140] = Rare({
    id=73163,
    note=L["imperial_python_note"],
    rewards={
        Achievement({id=8714, criteria=23989}),
        Achievement({id=8728, criteria=24029}), -- Death Adder Hatchling
        Pet({item=104161, id=1330}) -- Death Adder Hatchling
    }
}) -- Imperial Python

map.nodes[36704140] = Rare({
    id=73160,
    note=L["ironfur_steelhorn_note"],
    rewards={
        Achievement({id=8714, criteria=23968})
    }
}) -- Ironfur Steelhorn

map.nodes[52008100] = Rare({
    id=73169,
    rewards={
        Achievement({id=8714, criteria=23994}),
        Achievement({id=8728, criteria=24068}), -- Warning Sign
        Toy({item=104331}) -- Warning Sign
    }
}) -- Jakur of Ordon

map.nodes[34088384] = Rare({
    id=72193,
    rewards={
        Achievement({id=8714, criteria=23973}),
        Achievement({id=8728, criteria=24079}), -- Giant Purse of Timeless Coins
        Item({item=104035}) -- Giant Purse of Timeless Coins
    }
}) -- Karkanos

map.nodes[67614423] = Rare({
    id=73277,
    rewards={
        Achievement({id=8714, criteria=23979}),
        Achievement({id=8728, criteria=24025}), -- Ashleaf Spriteling
        Pet({id=1323, item=104156}) -- Ashleaf Spriteling
    }
}) -- Leafmender

map.nodes[28027961] = Rare({
    id=73166,
    note=L["monstrous_spineclaw_note"],
    rewards={
        Achievement({id=8714, criteria=23985}),
        Achievement({id=8728, criteria=24033}), -- Spineclaw Crab
        Pet({item=104168, id=1337}) -- Spineclaw Crab
    },
    pois={
        Path({
            68017423, 63217981, 61038492, 52328842, 44808961, 40419021, 35408701,
            28027961, 25617460, 21817668, 19596572, 19074819, 19073855, 22613081
        })
    }
}) -- Monstrous Spineclaw

map.nodes[61008860] = Rare({
    id=72048,
    rewards={
        Achievement({id=8714, criteria=23977}),
        Achievement({id=8728, criteria=24065}), -- Captain Zvezdan's Lost Leg
        Item({item=104321, note=L["trinket"]}) -- Captain Zvezdan's Lost Leg
    }
}) -- Rattleskew

local rockmoss = Rare({
    id=73157,
    note=L["in_cave"],
    rewards={
        Achievement({id=8714, criteria=23980}),
        Achievement({id=8728, criteria=24063}), -- Golden Moss
        Item({item=104313, note=L["trinket"]}) -- Golden Moss
    },
    pois={
        POI({43624055}) -- Cave Entrance
    }
}) -- Rock Moss

map.nodes[46003800] = rockmoss
lostspirits.nodes[42153233] = rockmoss

map.nodes[59004880] = Rare({
    id=71864,
    note=L["in_small_cave"].."\n"..L["spelurk_note"],
    rewards={
        Achievement({id=8714, criteria=23975}),
        Achievement({id=8728, criteria=24064}), -- Cursed Talisman
        Item({item=104320}) -- Cursed Talisman
    }
}) -- Spelurk

local spirit = Rare({
    id=72769,
    note=L["in_cave"],
    rewards={
        Achievement({id=8714, criteria=23978}),
        Achievement({id=8728, criteria={24060, 24037}}), -- Jadefire Spirit, Glowing Green Ash
        Pet({id=1348, item=104307}), -- Jadefire Spirit
        Item({item=104258}) -- Glowing Green Ash
    },
    pois={
        POI({43624055}) -- Cave Entrance
    }
}) -- Spirit of Jadefire

map.nodes[44003800] = spirit
lostspirits.nodes[48116069] = spirit

map.nodes[71588185] = Rare({
    id=73704,
    rewards={
        Achievement({id=8714, criteria=24144})
    }
}) -- Stinkbraid

map.nodes[54094240] = Rare({
    id=72808,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=8714, criteria=23983}),
        Achievement({id=8728, criteria=24041}), -- Pristine Stalker Hide
        Item({item=104268}) -- Pristine Stalker Hide
    }
}) -- Tsavo'ka

map.nodes[43002500] = Rare({
    id=73173,
    rewards={
        Achievement({id=8714, criteria=23993}),
        Achievement({id=8728, criteria=24059}), -- Sunset Stone
        Item({item=104306}) -- Sunset Stone
    }
}) -- Urdur the Cauterizer

map.nodes[57617660] = Rare({
    id=73170,
    rewards={
        Achievement({id=8714, criteria=23992}),
        Achievement({id=8728, criteria=24058}), -- Ashen Stone
        Item({item=104305}) -- Ashen Stone
    }
}) -- Watcher Osu

local zarhym = Rare({
    id=71876,
    note=L["in_cave"],
    rewards={
        Achievement({id=8743, criteria=0}) -- review this
    },
    pois={
        POI({43624055}) -- Cave Entrance
    }
}) -- Zarhym

map.nodes[46004000] = zarhym
lostspirits.nodes[53395699] = zarhym

map.nodes[47008700] = Rare({
    id=72245,
    rewards={
        Achievement({id=8714, criteria=23971}),
        Achievement({id=8728, criteria=24056}), -- Rain Stone
        Item({item=104303}) -- Rain Stone
    }
}) -- Zesqua

map.nodes[37557731] = Rare({
    id=71919,
    rewards={
        Achievement({id=8714, criteria=23972}),
        Achievement({id=8728, criteria=24032}), -- Skunky Alemental
        Pet({item=104167, id=1336}) -- Skunky Alemental
    }
}) -- Zhu-Gon Sour

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

local MossCoveredChest = Class('MossCoveredChest', Treasure)

MossCoveredChest.label = L["moss_covered_chest"]
MossCoveredChest.icon = "chest_gn"
MossCoveredChest.rewards = {
    Achievement({id=8729, criteria=1})
}

map.nodes[36703410] = MossCoveredChest({ quest=33170 })
map.nodes[25502720] = MossCoveredChest({ quest=33171 })
map.nodes[27403910] = MossCoveredChest({ quest=33172 })
map.nodes[30703650] = MossCoveredChest({ quest=33173 })
map.nodes[22403540] = MossCoveredChest({ quest=33174 })
map.nodes[22104930] = MossCoveredChest({ quest=33175 })
map.nodes[24805300] = MossCoveredChest({ quest=33176 })
map.nodes[25704580] = MossCoveredChest({ quest=33177 })
map.nodes[22306810] = MossCoveredChest({ quest=33178 })
map.nodes[26806870] = MossCoveredChest({ quest=33179 })
map.nodes[31007630] = MossCoveredChest({ quest=33180 })
map.nodes[35307640] = MossCoveredChest({ quest=33181 })
map.nodes[38707160] = MossCoveredChest({ quest=33182 })
map.nodes[39807950] = MossCoveredChest({ quest=33183 })
map.nodes[34808420] = MossCoveredChest({ quest=33184 })
map.nodes[43608410] = MossCoveredChest({ quest=33185 })
map.nodes[47005370] = MossCoveredChest({ quest=33186 })
map.nodes[46704670] = MossCoveredChest({ quest=33187 })
map.nodes[51204570] = MossCoveredChest({ quest=33188 })
map.nodes[55504430] = MossCoveredChest({ quest=33189 })
map.nodes[58005070] = MossCoveredChest({ quest=33190 })
map.nodes[65704780] = MossCoveredChest({ quest=33191 })
map.nodes[63805920] = MossCoveredChest({ quest=33192 })
map.nodes[64907560] = MossCoveredChest({ quest=33193 })
map.nodes[60206600] = MossCoveredChest({ quest=33194 })
map.nodes[49706570] = MossCoveredChest({ quest=33195 })
map.nodes[53107080] = MossCoveredChest({ quest=33196 })
map.nodes[52706270] = MossCoveredChest({ quest=33197 })
map.nodes[61708850] = MossCoveredChest({ quest=33227 })
map.nodes[44206530] = MossCoveredChest({ quest=33198 })
map.nodes[26006140] = MossCoveredChest({ quest=33199 })
map.nodes[24603850] = MossCoveredChest({ quest=33200 })
map.nodes[59903130] = MossCoveredChest({ quest=33201 })
map.nodes[29703180] = MossCoveredChest({ quest=33202 })

local skullchest = Treasure({
    quest=33203,
    label=L["skull_covered_chest"],
    note=L["in_cave"],
    rewards={
        Achievement({id=8729, criteria=2})
    },
    pois={
        POI({43624055}) -- Cave Entrance
    }
}) -- Skull-Covered Chest

map.nodes[42003800] = skullchest
lostspirits.nodes[62853535] = skullchest

map.nodes[47602760] = Treasure({
    quest=33210,
    label=L["blazing_chest"],
    icon='chest_rd',
    rewards={
        Achievement({id=8729, criteria=24118})
    }
}) -- Blazing Chest

map.nodes[28203520] = Treasure({
    quest=33204,
    label=L["sturdy_chest"],
    note=L["sturdy_chest_note"],
    icon="chest_bn",
    rewards={
        Achievement({id=8729, criteria=4})
    }
}) -- Sturdy Chest

map.nodes[26806490] = Treasure({
    quest=33205,
    label=L["sturdy_chest"],
    note=L["sturdy_chest_note"],
    icon="chest_bn",
    rewards={
        Achievement({id=8729, criteria=4})
    }
}) -- Sturdy Chest

map.nodes[64607040] = Treasure({
    quest=33206,
    label=L["sturdy_chest"],
    icon="chest_bn",
    rewards={
        Achievement({id=8729, criteria=4})
    }
}) -- Sturdy Chest

map.nodes[59204950] = Treasure({
    quest=33207,
    label=L["sturdy_chest"],
    note=L["in_small_cave"].."\n"..L["spelurk_note"],
    icon="chest_bn",
    rewards={
        Achievement({id=8729, criteria=4})
    }
}) -- Sturdy Chest

map.nodes[69503290] = Treasure({
    quest=33208,
    label=L["smoldering_chest"],
    icon='chest_yw',
    rewards={
        Achievement({id=8729, criteria=5})
    }
}) -- Smoldering Chest

map.nodes[54007820] = Treasure({
    quest=33209,
    label=L["smoldering_chest"],
    icon='chest_yw',
    rewards={
        Achievement({id=8729, criteria=5})
    }
}) -- Smoldering Chest

-------------------------------------------------------------------------------
--------------------------- Extreme Treasure Hunter ---------------------------
-------------------------------------------------------------------------------

map.nodes[49676941] = Treasure({
    quest=32969, 
    note=L["gleaming_treasure_chest_note"],
    icon="star_chest_g",
    scale=1.5,
    rewards={
        Achievement({id=8726, criteria=24018})
    },
    pois={
        POI({51607460}),
        Path({51607460, 51157221, 51067103, 50596978, 49676941})
    }
}) -- Gleaming Treasure Chest

map.nodes[53934723] = Treasure({
    quest=32968,
    note=L["ropebound_treasure_chest_note"],
    icon="star_chest_g",
    scale=1.5,
    rewards={
        Achievement({id=8726, criteria=24019})
    },
    pois={
        POI({60204590}),
        Path({60204590, 57804728, 55144409, 53934723})
    }
}) -- Rope-Bound Treasure Chest

map.nodes[58506010] = Treasure({
    quest=32971,
    note=L["mist_covered_treasure_chest_note"],
    icon="star_chest_g",
    scale=1.5,
    rewards={
        Achievement({id=8726, criteria=24020})
    }
}) -- Mist-Covered Treasure Chest

-------------------------------------------------------------------------------
-------------------- Where There's Pirates, There's Booty ---------------------
-------------------------------------------------------------------------------

map.nodes[22705890] = Treasure({
    quest=32956,
    note=L["in_water_cave"],
    icon="star_chest_g",
    scale=1.5,
    rewards={
        Achievement({id=8727, criteria=24022})
    },
    pois={
        POI({16905710}) -- Cave Entrance
    }
}) -- Blackguard's Jetsam

map.nodes[70608090] = Treasure({
    quest=32970,
    icon="star_chest_g",
    scale=1.5,
    note=L["gleaming_treasure_satchel_note"],
    rewards={
        Achievement({id=8727, criteria=24023})
    }
}) -- Gleaming Treasure Satchel

map.nodes[40409300] = Treasure({
    quest=32957,
    requires=ns.requirement.Item(104015),
    icon="star_chest_g",
    scale=1.5,
    note=L["sunken_treasure_note"],
    rewards={
        Achievement({id=8727, criteria=24021}),
        Achievement({id=8728, criteria=24024}), -- Cursed Swabby Helmet
        Toy({item=134024}) -- Cursed Swabby Helmet
    }
}) -- Sunken Treasure
