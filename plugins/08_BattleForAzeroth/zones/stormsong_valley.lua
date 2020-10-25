-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local Node = ns.node.Node
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Spell = ns.reward.Spell
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({ id=942, settings=true })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[29466960] = Rare({
    id=137025,
    quest=51298,
    note=L["in_basement"],
    rewards={
        Achievement({id=12940, criteria=41760}),
        Transmog({item=160470, slot=L["mail"]}) -- Broodcrawler Wristguards
    }
}) -- Broodmother

map.nodes[47316566] = Rare({
    id=130897,
    quest=50170,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12940, criteria=41818}),
        Transmog({item=155287, slot=L["2h_mace"]}) -- Razorspine's Greatmace
    }
}) -- Captain Razorspine

map.nodes[67045019] = Rare({
    id=139968,
    quest=52121,
    rewards={
        Achievement({id=12940, criteria=41777}),
        Transmog({item=154183, slot=L["mail"]}), -- Boralus-Captain's Chain Boots
        Item({item=162028}) -- Technique: Glyph of the Tideskipper
    },
    pois={
        Path({68484774, 67045019, 66405078, 65965167})
    }
}) -- Corrupted Tideskipper

map.nodes[62923283] = Rare({
    id=140938,
    quest=52303,
    rewards={
        Achievement({id=12940, criteria=41776}),
        Transmog({item=154460, slot=L["mail"]}) -- Treasure-Seeker's Diving Helmet
    }
}) -- Croaker

map.nodes[51245553] = Rare({
    id=136183,
    quest=52466,
    rewards={
        Achievement({id=12940, criteria=41778}),
        Item({item=154857, note=L["ring"]}) -- Bonesplinter Band
    }
}) -- Crushtacean

map.nodes[67863982] = Rare({
    id=134897,
    quest=50731,
    rewards={
        Achievement({id=12940, criteria=43470}),
        Transmog({item=160476, slot=L["plate"]}) -- Fogtide Warboots
    }
}) -- Dagrus the Scorned

map.nodes[52725161] = Rare({
    id=139385,
    quest=50692,
    rewards={
        Achievement({id=12940, criteria=41775}),
        Transmog({item=160464, slot=L["leather"]}) -- Dire Hill Wolfsteppers
    },
    pois={
        Path({52725161, 53035099, 53055058, 53365060})
    }
}) -- Deepfang

map.nodes[53446443] = Rare({
    id=140925,
    quest=52323,
    note=L["in_basement"],
    faction='Horde',
    rewards={
        Achievement({id=12940, criteria=34}),
        Transmog({item=154453, slot=L["leather"]}) -- Doc's Air-Cushioned Boots
    }
}) -- Doc Marrtens

map.nodes[64426592] = Rare({
    id=131404,
    quest=49951,
    rewards={
        Achievement({id=12940, criteria=41765}),
        Transmog({item=160471, slot=L["mail"]}) -- Foreman's Stability Belt
    }
}) -- Foreman Scripps

map.nodes[71445435] = Rare({
    id=132007,
    quest=50075,
    rewards={
        Achievement({id=12940, criteria=41761}),
        Item({item=155568, note=L["trinket"]}) -- Galewind Chimes
    }
}) -- Galestorm

map.nodes[62067386] = Rare({
    id=141059,
    quest=52329,
    rewards={
        Achievement({id=12940, criteria=41774}),
        Transmog({item=155572, slot=L["cloak"]}) -- Yeti-Rager's Cloak
    }
}) -- Grimscowl the Harebrained

map.nodes[35207780] = Rare({
    id=141226,
    quest=52460,
    rewards={
        Achievement({id=12940, criteria=41815}),
        Transmog({item=154273, slot=L["plate"]}) -- Rockstopper Breastplate
    }
}) -- Haegol the Hammer

map.nodes[60651775] = Rare({
    id=154154,
    quest=57674, -- 57726
    rewards={
        Pet({id=2794, item=172493}), -- Snarling Butterfly Crate
        Spell({item=172405, spell=309328, class='SHAMAN'}) -- Tome of Hex: Living Honey
    },
    pois={
        Path({
            60651775, 61051679, 61571590, 61961535, 62471589, 62761672,
            61921703, 61381769, 60871816, 60651775, 60001753, 59321683,
            59201758, 59161817, 59641817, 60401874, 60941896, 61011843,
            60871816
        })
    }
}) -- Honey Smasher

map.nodes[63538357] = Rare({
    id=141039,
    quest=52327,
    rewards={
        Achievement({id=12940, criteria=41817}),
        Transmog({item=154464, slot=L["mail"]}) -- Frozen Heart Legguards
    }
}) -- Ice Sickle

map.nodes[53606420] = Rare({
    id=141043,
    quest=52324,
    note=L["in_basement"]..' '..L["jakala_note"],
    faction='Alliance',
    rewards={
        Achievement({id=12940, criteria=34}),
        Transmog({item=159179, slot=L["leather"]}) -- Headtaker's Helm
    }
}) -- Jakala the Cruel

map.nodes[31266167] = Rare({
    id=141029,
    quest=52318,
    rewards={
        Achievement({id=12940, criteria=41763}),
        Transmog({item=154475, slot=L["cloth"]}) -- Goathair Bindings
    }
}) -- Kickers

map.nodes[43454499] = Rare({
    id=138963,
    quest=51762,
    note=L["nestmother_acada_note"],
    rewards={
        Achievement({id=12940, criteria=41844}),
        Transmog({item=160458, slot=L["cloth"]}) -- Ancient Featherlight Slippers
    }
}) -- Nestmother Acada

map.nodes[42266324] = Rare({
    id=141239,
    quest=52461,
    rewards={
        Achievement({id=12940, criteria=41845}),
        Transmog({item=159169, slot=L["leather"]}) -- Bloody Bearhide Pants
    }
}) -- Osca the Bloodied

map.nodes[38815101] = Rare({
    id=139298,
    quest=51959,
    rewards={
        Achievement({id=12940, criteria=41772}),
        Transmog({item=163678, slot=L["polearm"]}) -- Pinku'shon's Impaler
    },
    pois={
        Path({38815101, 38485089, 38105120, 38095160})
    }
}) -- Pinku'shon

map.nodes[34656797] = Rare({
    id=141286,
    quest=52469,
    rewards={
        Achievement({id=12940, criteria=41769}),
        Item({item=163036, note="x10"}) -- Polished Pet Charm
    }
}) -- Poacher Zane

map.nodes[41577419] = Rare({
    id=134884,
    quest=50725,
    rewards={
        Achievement({id=12940, criteria=41758}),
        Transmog({item=160465, slot=L["leather"]}) -- Raging-Earth Wranglers
    }
}) -- Ragna

map.nodes[34013199] = Rare({
    id=139328,
    quest=51956,
    note=L["in_small_cave"]..' '..L["sabertron_note"],
    rewards={
        Achievement({id=12940, criteria=41756}),
        Achievement({id=13054, criteria={
            41420, -- red
            41421, -- yellow
            41422, -- orange
            41423, -- green
            41424  -- copper
        }}),
        Transmog({item=154664, slot=L["2h_sword"]}), -- Lionsight Omensword
        Item({item=168152}) -- Miniaturized Power Core
    }
}) -- Sabertron

map.nodes[73506064] = Rare({
    id=139988,
    quest=52125,
    rewards={
        Achievement({id=12940, criteria=41846}),
        Transmog({item=154389, slot=L["plate"]}) -- Abyssal-Serpent Pauldrons
    }
}) -- Sandfang

map.nodes[33613817] = Rare({
    id=138938,
    quest=51757,
    rewards={
        Achievement({id=12940, criteria=41755}),
        Transmog({item=160477, slot=L["plate"]}) -- Skoloth's Anchorplate Greaves
    },
    pois={
        Path({33153739, 33613817, 34053889})
    }
}) -- Seabreaker Skoloth

map.nodes[22577321] = Rare({
    id=140997,
    quest=50938,
    rewards={
        Achievement({id=12940, criteria=41754}),
        Transmog({item=163679, slot=L["cloth"]}) -- Severus' Bindings
    }
}) -- Severus the Outcast

map.nodes[61575705] = Rare({
    id=141143,
    quest=52441,
    rewards={
        Achievement({id=12940, criteria=41842}),
        Transmog({item=155164, slot=L["cloak"]}) -- Beryl-Tide Greatcloak
    }
}) -- Sister Absinthe

map.nodes[41832843] = Rare({
    id=139319,
    quest=51958,
    rewards={
        Achievement({id=12940, criteria=41759}),
        Item({item=158216, note=L["trinket"]}) -- Living Oil Canister
    }
}) -- Slickspill

map.nodes[70863222] = Rare({
    id=141175,
    quest=52448,
    rewards={
        Achievement({id=12940, criteria=41753}),
        Item({item=158218, note=L["trinket"]}) -- Dadalea's Wing
    }
}) -- Song Mistress Dadalea

map.nodes[57037585] = Rare({
    id=141088,
    quest=52433,
    rewards={
        Achievement({id=12940, criteria=41816}),
        Item({item=158224, note=L["trinket"]}) -- Vial of Storms
    }
}) -- Squall

map.nodes[53066908] = Rare({
    id=135947,
    quest=50024,
    note=L["in_cave"],
    rewards={
        Achievement({id=12940, criteria=41787}),
    },
    pois={
        POI({53837222}) -- Cave Entrance
    }
}) -- Strange Mushroom Ring

map.nodes[59974585] = Rare({
    id=139980,
    quest=52123,
    rewards={
        Achievement({id=12940, criteria=41847}),
        Transmog({item=154449, slot=L["leather"]}) -- Tidebound Chestguard
    }
}) -- Taja the Tidehowler

map.nodes[51787979] = Rare({
    id=136189,
    quest=50974,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12940, criteria=41757}),
        Transmog({item=150909, slot=L["plate"]}) -- Morel Coils
    }
}) -- The Lichen King

map.nodes[49616806] = Rare({
    id=135939,
    quest=50037,
    note=L["in_cave"],
    rewards={
        Achievement({id=12940, criteria=41782}),
        Transmog({item=158299, slot=L["1h_mace"]}) -- Ratha's Thornscepter
    },
    pois={
        POI({51086866, 51636771}) -- Cave Entrance
    }
}) -- Vinespeaker Ratha

local wagga = Rare({
    id=130079,
    quest=50819,
    note=L["in_cave"],
    rewards={
        Achievement({id=12940, criteria=41843}),
        Transmog({item=154431, slot=L["offhand"]}) -- Earthshaker's Flame
    },
    pois={
        POI({43537598}) -- Cave Entrance
    }
}) -- Wagga Snarltusk

map.nodes[41997466] = wagga
Map({id=1183}).nodes[12002845] = wagga

map.nodes[47206580] = Rare({
    id=129803,
    quest=52296,
    note=L["in_small_cave"]..' '..L["whiplash_note"],
    rewards={
        Achievement({id=12940, criteria=41841}),
    }
}) -- Whiplash

map.nodes[46774242] = Rare({
    id=142088,
    quest=52457,
    rewards={
        Achievement({id=12940, criteria=41762}),
        Item({item=158215, note=L["trinket"]}) -- Whirlwing's Plumage
    }
}) -- Whirlwing

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[44447353] = Treasure({
    quest=52429,
    note=L["in_cave"],
    rewards={
        Achievement({id=12853, criteria=41068}),
        Item({item=162000}) -- Pig Nose
    },
    pois={
        POI({44367536}) -- Cave Entrance
    }
}) -- Carved Wooden Chest

map.nodes[32156623] = Treasure({
    quest=53635,
    label=L["curious_grain_sack"]
}) -- Curious Grain Sack

map.nodes[32886964] = Treasure({
    quest=53652,
    label=L["curious_grain_sack"]
}) -- Curious Grain Sack

map.nodes[58216368] = Treasure({
    quest=52326,
    note=L["discarded_lunchbox_note"],
    rewards={
        Achievement({id=12853, criteria=41067}),
        Item({item=160485}) -- An Unforgettable Luncheon
    }
}) -- Discarded Lunchbox

map.nodes[46003069] = Treasure({
    quest=52980,
    rewards={
        Achievement({id=12853, criteria=41070})
    }
}) -- Forgotten Chest

map.nodes[48968407] = Treasure({
    quest=50526,
    rewards={
        Achievement({id=12853, criteria=41063})
    }
}) -- Frosty Treasure Chest

map.nodes[59913907] = Treasure({
    quest=50937,
    note=L["hidden_scholars_chest_note"],
    rewards={
        Achievement({id=12853, criteria=41065})
    }
}) -- Hidden Scholar's Chest

map.nodes[66557112] = Treasure({
    quest=50576,
    label=L["honey_vat"],
    reward={
        Transmog({item=154476, slot=L["plate"]}) -- Honey-Glazed Vambraces
    }
}) -- Honey Vat

map.nodes[42854723] = Treasure({
    quest=50089,
    note=L["in_cave"],
    rewards={
        Achievement({id=12853, criteria=41062})
    },
    pois={
        POI({43664836}) -- Cave Entrance
    }
}) -- Old Ironbound Chest

map.nodes[58608388] = Treasure({
    quest=49811,
    note=L["smugglers_stash_note"],
    rewards={
        Achievement({id=12853, criteria=41066})
    }
}) -- Smuggler's Stash

map.nodes[67224321] = Treasure({
    quest=50734,
    note=L["sunken_strongbox_note"],
    rewards={
        Achievement({id=12853, criteria=41064}),
        Item({item=163036, note="x5"}) -- Polished Pet Charm
    }
}) -- Sunken Strongbox

map.nodes[36692323] = Treasure({
    quest=52976,
    note=L["venture_co_supply_chest_note"],
    rewards={
        Achievement({id=12853, criteria=41069})
    }
}) -- Venture Co. Supply Chest

map.nodes[66921206] = Treasure({
    quest=51449,
    note=L["weathered_treasure_chest_note"],
    rewards={
        Achievement({id=12853, criteria=41061})
    },
    pois={
        POI({65421178, 68351078, 66831475}) -- Cave Entrances
    }
}) -- Weathered Treasure Chest

-------------------------------------------------------------------------------
------------------------------- SMALL TREASURES -------------------------------
-------------------------------------------------------------------------------

-- local SmallTreasure = Class('SmallTreasure', Treasure)

-- SmallTreasure.label = L["small_treasure_chest"]
-- SmallTreasure.icon = "chest_bn"

-- map.nodes[62056563] = SmallTreasure({quest=51184})
-- map.nodes[51796523] = SmallTreasure({quest=51184})
-- map.nodes[70265958] = SmallTreasure({quest=51927, note=L["small_treasure_51927"]})
-- map.nodes[75103513] = SmallTreasure({quest=51938})
-- map.nodes[73093558] = SmallTreasure({quest=51938})
-- map.nodes[64366899] = SmallTreasure({quest=51939})
-- map.nodes[64317023] = SmallTreasure({quest=51939})
-- map.nodes[69536809] = SmallTreasure({quest=51939})
-- map.nodes[48406562] = SmallTreasure({quest=51940, note=L["small_treasure_51940"]})
-- map.nodes[41956069] = SmallTreasure({quest=51941})
-- map.nodes[44107300] = SmallTreasure({quest=51942})
-- map.nodes[42876992] = SmallTreasure({quest=51942})
-- map.nodes[29776948] = SmallTreasure({quest=51943})
-- map.nodes[30914548] = SmallTreasure({quest=51944})
-- map.nodes[36272737] = SmallTreasure({quest=51945})
-- map.nodes[57645092] = SmallTreasure({quest=51946})
-- map.nodes[60865118] = SmallTreasure({quest=51946})
-- map.nodes[46915393] = SmallTreasure({quest=51949})

-------------------------------------------------------------------------------
--------------------------- LEGENDS OF THE TIDESAGES --------------------------
-------------------------------------------------------------------------------

local AncientScroll = Class('AncientScroll', Node, {
    icon=1500881,
    label=L["ancient_tidesage_scroll"],
    note=L["ancient_tidesage_scroll_note"],
    group=ns.groups.TIDESAGE_LEGENDS,
    IsCompleted = function (self) return self:IsCollected() end
})

map.nodes[49518090] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41425})
    }
}) -- Part 1 (Near the waterfall)

map.nodes[59025954] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41426})
    }
}) -- Part 2 (On top of the hill)

map.nodes[31957291] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41427})
    }
}) -- Part 3 (Near the lake)

map.nodes[33813323] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41428})
    }
}) -- Part 4 (On top of the island)

map.nodes[56023853] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41429})
    }
}) -- Part 5 (Up the mountain right of Warfang Hold)

map.nodes[44183660] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41430})
    }
}) -- Part 6 (Up the mountain left of Warfang Hold)

map.nodes[62083022] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41431})
    }
}) -- Part 7

map.nodes[75073113] = AncientScroll({
    rewards={
        Achievement({id=13051, criteria=41432})
    }
}) -- Part 8 (Near the Shrine of the Storm entrance)

-------------------------------------------------------------------------------
------------------------------- THESE HILLS SING ------------------------------
-------------------------------------------------------------------------------

map.nodes[41256950] = Node({
    label="{achievement:13046}",
    note=L["these_hills_sing_note"],
    requires=ns.requirement.Item(160485), -- An Unforgettable Luncheon
    icon=2065627,
    rewards={
        Achievement({id=13046})
    },
    IsCompleted = function (self) return self:IsCollected() end
}) -- These Hills Sing
