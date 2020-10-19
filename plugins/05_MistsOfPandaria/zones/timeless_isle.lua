-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local Map = ns.Map
local L = ns.locale

local Node = ns.node.Node
local NPC = ns.node.NPC
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local Rare = Class('TimelessRare', ns.node.Rare)

function Rare:Render(tooltip)
    ns.node.Rare.Render(self, tooltip)

    -- If two quests are given, the first is flipped the first time you ever
    -- loot the rare and the second is the daily tracker. On the first day, you
    -- can loot each rare twice.
    if self.quest and #self.quest == 2 then
        if not C_QuestLog.IsQuestFlaggedCompleted(self.quest[1]) then
            tooltip:AddLine(' ')
            tooltip:AddLine(ns.color.Orange(L["looted_twice"]), 1, 1, 1, true)
        end
    end
end

-------------------------------------------------------------------------------

local map = Map({ id=554, settings=true })
local lostspirits = Map({ id=555 }) -- Cavern of Lost Spirits

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[34403250] = Rare({
    id=73666,
    quest={33288, 33312},
    note=L["archiereus_note"],
    rewards={
        Achievement({id=8714, criteria=31})
    },
    pois={
        POI({42805480}) -- Mistweaver Ku
    }
}) -- Archiereus of Flame

map.nodes[62097715] = Rare({
    id=72775,
    quest={33276, 33301},
    rewards={
        Achievement({id=8714, criteria=23986}),
        Achievement({id=8728, criteria=24034}), -- Gulp Froglet
        Pet({id=1338, item=104169}) -- Gulp Froglet
    },
    pois={
        POI({62097715, 63607260, 64807460, 65606980, 66806660}) -- Spawns
    }
}) -- Bufo

map.nodes[25063598] = Rare({
    id=72045,
    quest={33318, 32966},
    note=L["chelon_note"],
    rewards={
        Achievement({id=8714, criteria=23974}),
        Achievement({id=8728, criteria=24072}), -- Hardened Shell
        Toy({item=86584}) -- Hardened Shell
    }
}) -- Chelon

map.nodes[62384384] = Rare({
    id=73171,
    quest={33274, 33299},
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
    quest={33286, 33310},
    rewards={
        Achievement({id=8714, criteria=23981}),
        Achievement({id=8728, criteria={24054, 24038}}), -- Falling Flame, Glowing Blue Ash
        Item({item=104299}), -- Falling Flame
        Item({item=104261}) -- Glowing Blue Ash
    }
}) -- Cinderfall

map.nodes[43896989] = Rare({
    id=72049,
    quest={33319, 32967},
    note=L["cranegnasher_note"],
    rewards={
        Achievement({id=8714, criteria=23976}),
        Achievement({id=8728, criteria=24041}), -- Pristine Stalker Hide
        Item({item=104268}) -- Pristine Stalker Hide
    },
    pois={
        POI({45238400}) -- Fishgorged Cranes
    }
}) -- Cranegnasher

map.nodes[26082283] = Rare({
    id=73281,
    quest={33290, 33314},
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

map.nodes[30535067] = Rare({
    id=73158,
    quest={33261, 33295},
    note=L["emerald_gander_note"],
    rewards={
        Achievement({id=8714, criteria=23967})
    },
    pois={
        POI({
            29465012, 30076178, 30185857, 30535067, 30584364, 31286682,
            31386563, 31493965, 31517989, 31766262, 31958040, 32055222,
            32424870, 36224036, 36638408, 38334073, 39476853, 40594355,
            41074082, 42176766, 42706996, 44306167, 44755486, 45095358
        })
    }
}) -- Emerald Gander

map.nodes[14215240] = Rare({
    id=73279,
    quest={33289, 33313},
    note=L["evermaw_note"],
    rewards={
        Achievement({id=8714, criteria=23990}),
        Item({item=104115}) -- Mist-Filled Spirit Lantern
    },
    pois={
        Path({
            33019113, 30568918, 28068714, 25608463, 23658160, 22107833,
            20617473, 19057094, 17566721, 16116356, 14855997, 14375586,
            14255183, 14174775, 14094376, 14003959, 13923549, 14083139,
            15012764, 16212413, 17582050, 18941689, 20321337, 21931006,
            24860678, 27530425, 30750261, 34290222, 37810248, 42060284,
            45270305, 48090364, 51040433, 53980511, 56580581, 58950612,
            61680640, 64120704, 64140707, 66320848, 68531052, 70571266,
            72521474, 74181725, 75552016, 76852319, 78152623, 79212939,
            80083238, 80963554, 81603881, 81664251, 81514619, 81384975,
            81255324, 81035661, 80826003, 80626356, 80406708, 79597027,
            78627337, 77667631, 76607942, 75448221, 73748450, 72078649,
            70138864, 68099073, 66159267, 64269456, 62259625, 59859709,
            57379739, 55019758, 52569771, 49929782, 47529798, 45119807,
            42599776, 40289655, 38019499, 35819325, 33019113
        })
    }
}) -- Evermaw

map.nodes[44003400] = Rare({
    id=73172,
    quest={33285, 33309},
    rewards={
        Achievement({id=8714, criteria=23995}),
        Achievement({id=8728, criteria=24053}), -- Ordon Death Chime
        Item({item=104298, note=L["trinket"]}) -- Ordon Death Chime
    }
}) -- Flintlord Gairan

map.nodes[64002700] = Rare({
    id=73282,
    quest={33275, 33300},
    rewards={
        Achievement({id=8714, criteria=23982}),
        Achievement({id=8728, criteria=24027}), -- Ruby Droplet
        Pet({id=1328, item=104159}) -- Ruby Droplet
    }
}) -- Garnia

map.nodes[62086372] = Rare({
    id=72970,
    quest={33291, 33315},
    rewards={
        Achievement({id=8714, criteria=23988}),
        Achievement({id=8728, criteria={24039, 24040}}), -- Odd Polished Stone, Glinting Pile of Stone
        Toy({item=104262}), -- Odd Polished Stone
        Item({item=104263}) -- Glinting Pile of Stone
    }
}) -- Golganarr

map.nodes[24805500] = Rare({
    id=73161,
    quest={33272, 33297},
    note=L["great_turtle_furyshell_note"],
    rewards={
        Achievement({id=8714, criteria=23969}),
        Achievement({id=8728, criteria=24072}), -- Hardened Shell
        Toy({item=86584}) -- Hardened Shell
    },
    pois={
        Path({24134948, 23174726, 22024583, 21494263}),
        Path({24807031, 23146803, 22816508, 22856185}),
        POI({
            20724295, 21966163, 22096756, 22286598, 22354287, 22355353,
            22456783, 23155999, 23455775, 23584919, 23606338, 23665353,
            24565808, 24785905, 25165270, 25605832, 25645600, 25765788,
            25867230, 26045024
        }) -- Stationary spawns
    }
}) -- Great Turtle Furyshell

map.nodes[42387523] = Rare({
    id=72909,
    quest={33260, 33294},
    rewards={
        Achievement({id=8714, criteria=23970}),
        Achievement({id=8728, criteria={24047, 24046}}), -- Swarmling of Gu'chi, Sticky Silkworm Goo
        Pet({id=1345, item=104291}), -- Swarmling of Gu'chi
        Item({item=104290}) -- Sticky Silkworm Goo
    },
    pois={
        Path({
            41467211, 40916989, 38847014, 36256953, 34197060, 31987059,
            29937174, 31417454, 32287785, 33918004, 35928119, 38018272,
            40198236, 40647913, 42387523, 41467211
        })
    }
}) -- Gu'chi the Swarmbringer

map.nodes[65875660] = Rare({
    id=73167,
    quest={33287, 33311},
    rewards={
        Achievement({id=8714, criteria=23984}),
        Achievement({id=8728, criteria=24081}), -- Reins of the Thundering Onyx Cloud Serpent
        Mount({item=104269, id=561}) -- Thundering Onyx Cloud Serpent
    }
}) -- Huolon

map.nodes[28764361] = Rare({
    id=73163,
    quest={33278, 33303},
    note=L["imperial_python_note"],
    rewards={
        Achievement({id=8714, criteria=23989}),
        Achievement({id=8728, criteria=24029}), -- Death Adder Hatchling
        Pet({item=104161, id=1330}) -- Death Adder Hatchling
    },
    pois={
        POI({
            25914618, 27056896, 27656178, 28764361, 28916409, 29337383,
            30563630, 30907608, 33674610, 34057420, 36397405, 44316581,
            50684582, 53325823
        })
    }
}) -- Imperial Python

map.nodes[34046916] = Rare({
    id=73160,
    quest={33270, 33296},
    note=L["ironfur_steelhorn_note"],
    rewards={
        Achievement({id=8714, criteria=23968})
    },
    pois={
        POI({
            27024610, 27564009, 29937026, 32044588, 32564426, 33236147,
            33976228, 34046774, 34046916, 35026757, 35736952, 39976625,
            41046615, 41203741, 43905468, 44785287, 46046378
        })
    }
}) -- Ironfur Steelhorn

map.nodes[53298314] = Rare({
    id=73169,
    quest={33281, 33306},
    rewards={
        Achievement({id=8714, criteria=23994}),
        Achievement({id=8728, criteria=24068}), -- Warning Sign
        Toy({item=104331}) -- Warning Sign
    }
}) -- Jakur of Ordon

map.nodes[34088384] = Rare({
    id=72193,
    quest={33258, 33292},
    note=L["karkanos_note"],
    rewards={
        Achievement({id=8714, criteria=23973}),
        Achievement({id=8728, criteria=24079}), -- Giant Purse of Timeless Coins
        Item({item=104035}) -- Giant Purse of Timeless Coins
    }
}) -- Karkanos

map.nodes[67614423] = Rare({
    id=73277,
    quest={33273, 33298},
    rewards={
        Achievement({id=8714, criteria=23979}),
        Achievement({id=8728, criteria=24025}), -- Ashleaf Spriteling
        Pet({id=1323, item=104156}) -- Ashleaf Spriteling
    }
}) -- Leafmender

map.nodes[18036202] = Rare({
    id=73166,
    quest={33277, 33302},
    note=L["monstrous_spineclaw_note"],
    rewards={
        Achievement({id=8714, criteria=23985}),
        Achievement({id=8728, criteria=24033}), -- Spineclaw Crab
        Pet({item=104168, id=1337}) -- Spineclaw Crab
    },
    pois={
        POI({
            16103654, 16306071, 17377226, 17735384, 18036202, 18255509,
            18355853, 18767563, 20394765, 20717747, 20797142, 21053567,
            21153248, 21156353, 21913600, 22383043, 22793512, 23502794,
            23713527, 24727504, 25357482, 27517472, 27768033, 29368443,
            30743114, 33188564, 36068786, 40749101, 44778961, 52368699,
            62138293, 62508013, 65707822, 67937803, 68907404, 69947106,
            70466704, 71396302
        })
    }
}) -- Monstrous Spineclaw

map.nodes[60768795] = Rare({
    id=72048,
    quest=nil,
    note=L["rattleskew_note"],
    rewards={
        Achievement({id=8714, criteria=23977}),
        Achievement({id=8728, criteria=24065}), -- Captain Zvezdan's Lost Leg
        Item({item=104321, note=L["trinket"]}) -- Captain Zvezdan's Lost Leg
    }
}) -- Rattleskew

local rockmoss = Rare({
    id=73157,
    quest={33283, 33307},
    note=L["cavern_of_lost_spirits"],
    rewards={
        Achievement({id=8714, criteria=23980}),
        Achievement({id=8728, criteria=24063}), -- Golden Moss
        Item({item=104313, note=L["trinket"]}) -- Golden Moss
    }
}) -- Rock Moss

map.nodes[44843838] = ns.Clone(rockmoss, {pois={POI({43624055})}})
lostspirits.nodes[42153233] = rockmoss

map.nodes[59004880] = Rare({
    id=71864,
    quest=32960, -- 33164
    note=L["spelurk_note"],
    rewards={
        Achievement({id=8714, criteria=23975}),
        Achievement({id=8728, criteria=24064}), -- Cursed Talisman
        Item({item=104320}) -- Cursed Talisman
    },
    pois={
        POI({
            22403870, 25007190, 32006150, 32603280, 33805450, 37704110,
            39607780, 42805540, 47308080, 48005120, 50407170, 52206260,
            55107290, 55305030, 55605930, 63104530, 64507230, 65405170,
            68406040
        }) -- Lost Artifact locations
    }
}) -- Spelurk

local spirit = Rare({
    id=72769,
    quest={33259, 33293},
    note=L["cavern_of_lost_spirits"],
    rewards={
        Achievement({id=8714, criteria=23978}),
        Achievement({id=8728, criteria={24060, 24037}}), -- Jadefire Spirit, Glowing Green Ash
        Pet({id=1348, item=104307}), -- Jadefire Spirit
        Item({item=104258}) -- Glowing Green Ash
    },
    pois={
        POI({
            48006094, 54797178, 55633192, 62283465, 65236484, 70776311,
            74443334
        }) -- Caverns spawns
    }
}) -- Spirit of Jadefire

map.nodes[42923838] = ns.Clone(spirit, {pois={POI({43624055})}})
lostspirits.nodes[48116069] = spirit

map.nodes[71348293] = Rare({
    id=73704,
    quest={33280, 33305},
    rewards={
        Achievement({id=8714, criteria=24144})
    }
}) -- Stinkbraid

map.nodes[54094240] = Rare({
    id=72808,
    quest={33279, 33304},
    note=L["in_small_cave"],
    rewards={
        Achievement({id=8714, criteria=23983}),
        Achievement({id=8728, criteria=24041}), -- Pristine Stalker Hide
        Item({item=104268}) -- Pristine Stalker Hide
    }
}) -- Tsavo'ka

map.nodes[43002500] = Rare({
    id=73173,
    quest={33284, 33308},
    rewards={
        Achievement({id=8714, criteria=23993}),
        Achievement({id=8728, criteria=24059}), -- Sunset Stone
        Item({item=104306}) -- Sunset Stone
    }
}) -- Urdur the Cauterizer

map.nodes[57617660] = Rare({
    id=73170,
    quest={33321, 33322}, -- 44696
    rewards={
        Achievement({id=8714, criteria=23992}),
        Achievement({id=8728, criteria=24058}), -- Ashen Stone
        Item({item=104305}) -- Ashen Stone
    }
}) -- Watcher Osu

map.nodes[47008700] = Rare({
    id=72245,
    quest={32997, 33316},
    rewards={
        Achievement({id=8714, criteria=23971}),
        Achievement({id=8728, criteria=24056}), -- Rain Stone
        Item({item=104303}) -- Rain Stone
    }
}) -- Zesqua

map.nodes[37797773] = Rare({
    id=71919,
    quest={33317, 32959},
    note=L["zhugon_note"],
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
    note=L["cavern_of_lost_spirits"],
    rewards={
        Achievement({id=8729, criteria=2})
    }
}) -- Skull-Covered Chest

map.nodes[41674049] = ns.Clone(skullchest, {pois={POI({43624055})}})
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
    note=L["spelurk_cave"],
    icon="chest_bn",
    rewards={
        Achievement({id=8729, criteria=4})
    },
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
--------------------------- EXTREME TREASURE HUNTER ---------------------------
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
-------------------- WHERE THERE'S PIRATES, THERE'S BOOTY ---------------------
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

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[46177088] = Node({
    quest=32961,
    icon=132781,
    label=L["neverending_spritewood"],
    note=L["neverending_spritewood_note"],
    rewards={
        Achievement({id=8728, criteria=24028}), -- Dandelion Frolicker
        Pet({item=104160, id=1329}) -- Dandelion Frolicker
    }
})

local zarhym = NPC({
    id=71876,
    icon=133730,
    quest=32962,
    note=L["cavern_of_lost_spirits"]..' '..L["zarhym_note"],
    rewards={
        Achievement({id=8743}) -- Zarhym Altogether
    }
}) -- Zarhym

map.nodes[46004049] = ns.Clone(zarhym, {pois={POI({43624055})}})
lostspirits.nodes[53395699] = zarhym