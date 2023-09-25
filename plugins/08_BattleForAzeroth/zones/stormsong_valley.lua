-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Safari = ns.node.Safari
local Supply = ns.node.Supply
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Spell = ns.reward.Spell
local Transmog = ns.reward.Transmog

local Arrow = ns.poi.Arrow
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 942, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[29466960] = Rare({
    id = 137025,
    quest = 51298,
    note = L['in_basement'],
    rewards = {
        Achievement({id = 12940, criteria = 41760}),
        Transmog({item = 160470, slot = L['mail']}) -- Broodcrawler Wristguards
    }
}) -- Broodmother

map.nodes[47316566] = Rare({
    id = 130897,
    quest = 50170,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 12940, criteria = 41818}),
        Transmog({item = 155287, slot = L['2h_mace']}) -- Razorspine's Greatmace
    }
}) -- Captain Razorspine

map.nodes[67045019] = Rare({
    id = 139968,
    quest = 52121,
    rewards = {
        Achievement({id = 12940, criteria = 41777}),
        Transmog({item = 154183, slot = L['mail']}), -- Boralus-Captain's Chain Boots
        Item({item = 162028}) -- Technique: Glyph of the Tideskipper
    },
    pois = {Path({68484774, 67045019, 66405078, 65965167})}
}) -- Corrupted Tideskipper

map.nodes[62923283] = Rare({
    id = 140938,
    quest = 52303,
    rewards = {
        Achievement({id = 12940, criteria = 41776}),
        Transmog({item = 154460, slot = L['mail']}) -- Treasure-Seeker's Diving Helmet
    }
}) -- Croaker

map.nodes[51245553] = Rare({
    id = 136183,
    quest = 52466,
    rewards = {Achievement({id = 12940, criteria = 41778})}
}) -- Crushtacean

map.nodes[67863982] = Rare({
    id = 134897,
    quest = 50731,
    rewards = {
        Achievement({id = 12940, criteria = 43470}),
        Transmog({item = 160476, slot = L['plate']}) -- Fogtide Warboots
    }
}) -- Dagrus the Scorned

map.nodes[52725161] = Rare({
    id = 139385,
    quest = 50692,
    rewards = {
        Achievement({id = 12940, criteria = 41775}),
        Transmog({item = 160464, slot = L['leather']}) -- Dire Hill Wolfsteppers
    },
    pois = {Path({52725161, 53035099, 53055058, 53365060})}
}) -- Deepfang

map.nodes[53446443] = Rare({
    id = 140925,
    quest = 52323,
    note = L['in_basement'],
    faction = 'Horde',
    rewards = {
        Achievement({id = 12940, criteria = 34}),
        Transmog({item = 154453, slot = L['leather']}) -- Doc's Air-Cushioned Boots
    }
}) -- Doc Marrtens

map.nodes[64426592] = Rare({
    id = 131404,
    quest = 49951,
    rewards = {
        Achievement({id = 12940, criteria = 41765}),
        Transmog({item = 160471, slot = L['mail']}) -- Foreman's Stability Belt
    }
}) -- Foreman Scripps

map.nodes[71445435] = Rare({
    id = 132007,
    quest = 50075,
    rewards = {Achievement({id = 12940, criteria = 41761})}
}) -- Galestorm

map.nodes[62067386] = Rare({
    id = 141059,
    quest = 52329,
    rewards = {
        Achievement({id = 12940, criteria = 41774}),
        Transmog({item = 155572, slot = L['cloak']}) -- Yeti-Rager's Cloak
    }
}) -- Grimscowl the Harebrained

map.nodes[35207780] = Rare({
    id = 141226,
    quest = 52460,
    rewards = {
        Achievement({id = 12940, criteria = 41815}),
        Transmog({item = 154273, slot = L['plate']}) -- Rockstopper Breastplate
    }
}) -- Haegol the Hammer

map.nodes[60651775] = Rare({
    id = 154154,
    quest = 57674, -- 57726
    rewards = {
        Pet({id = 2794, item = 172493}), -- Snarling Butterfly Crate
        Spell({item = 172405, spell = 309328, class = 'SHAMAN'}) -- Tome of Hex: Living Honey
    },
    pois = {
        Path({
            60651775, 61051679, 61571590, 61961535, 62471589, 62761672,
            61921703, 61381769, 60871816, 60651775, 60001753, 59321683,
            59201758, 59161817, 59641817, 60401874, 60941896, 61011843, 60871816
        })
    }
}) -- Honey Smasher

map.nodes[63538357] = Rare({
    id = 141039,
    quest = 52327,
    rewards = {
        Achievement({id = 12940, criteria = 41817}),
        Transmog({item = 154464, slot = L['mail']}) -- Frozen Heart Legguards
    }
}) -- Ice Sickle

map.nodes[53606420] = Rare({
    id = 141043,
    quest = 52324,
    note = L['in_basement'] .. ' ' .. L['jakala_note'],
    faction = 'Alliance',
    rewards = {
        Achievement({id = 12940, criteria = 34}),
        Transmog({item = 159179, slot = L['leather']}) -- Headtaker's Helm
    }
}) -- Jakala the Cruel

map.nodes[31266167] = Rare({
    id = 141029,
    quest = 52318,
    rewards = {
        Achievement({id = 12940, criteria = 41763}),
        Transmog({item = 154475, slot = L['cloth']}) -- Goathair Bindings
    }
}) -- Kickers

map.nodes[43454499] = Rare({
    id = 138963,
    quest = 51762,
    note = L['nestmother_acada_note'],
    rewards = {
        Achievement({id = 12940, criteria = 41844}),
        Transmog({item = 160458, slot = L['cloth']}) -- Ancient Featherlight Slippers
    }
}) -- Nestmother Acada

map.nodes[42266324] = Rare({
    id = 141239,
    quest = 52461,
    rewards = {
        Achievement({id = 12940, criteria = 41845}),
        Transmog({item = 159169, slot = L['leather']}) -- Bloody Bearhide Pants
    }
}) -- Osca the Bloodied

map.nodes[38815101] = Rare({
    id = 139298,
    quest = 51959,
    rewards = {
        Achievement({id = 12940, criteria = 41772}),
        Transmog({item = 163678, slot = L['polearm']}) -- Pinku'shon's Impaler
    },
    pois = {Path({38815101, 38485089, 38105120, 38095160})}
}) -- Pinku'shon

map.nodes[34656797] = Rare({
    id = 141286,
    quest = 52469,
    rewards = {
        Achievement({id = 12940, criteria = 41769}),
        Item({item = 163036, note = '10x'}) -- Polished Pet Charm
    }
}) -- Poacher Zane

map.nodes[41577419] = Rare({
    id = 134884,
    quest = 50725,
    rewards = {
        Achievement({id = 12940, criteria = 41758}),
        Transmog({item = 160465, slot = L['leather']}) -- Raging-Earth Wranglers
    }
}) -- Ragna

map.nodes[34013199] = Rare({
    id = 139328,
    quest = 51956,
    note = L['in_small_cave'] .. ' ' .. L['sabertron_note'],
    rewards = {
        Achievement({id = 12940, criteria = 41756}), Achievement({
            id = 13054,
            criteria = {
                41420, -- red
                41421, -- yellow
                41422, -- orange
                41423, -- green
                41424 -- copper
            }
        }), Transmog({item = 154664, slot = L['2h_sword']}), -- Lionsight Omensword
        Item({item = 168152}) -- Miniaturized Power Core
    }
}) -- Sabertron

map.nodes[73506064] = Rare({
    id = 139988,
    quest = 52125,
    rewards = {
        Achievement({id = 12940, criteria = 41846}),
        Transmog({item = 154389, slot = L['plate']}) -- Abyssal-Serpent Pauldrons
    }
}) -- Sandfang

map.nodes[33613817] = Rare({
    id = 138938,
    quest = 51757,
    rewards = {
        Achievement({id = 12940, criteria = 41755}),
        Transmog({item = 160477, slot = L['plate']}) -- Skoloth's Anchorplate Greaves
    },
    pois = {Path({33153739, 33613817, 34053889})}
}) -- Seabreaker Skoloth

map.nodes[22577321] = Rare({
    id = 140997,
    quest = 50938,
    rewards = {
        Achievement({id = 12940, criteria = 41754}),
        Transmog({item = 163679, slot = L['cloth']}) -- Severus' Bindings
    }
}) -- Severus the Outcast

map.nodes[61575705] = Rare({
    id = 141143,
    quest = 52441,
    rewards = {
        Achievement({id = 12940, criteria = 41842}),
        Transmog({item = 155164, slot = L['cloak']}) -- Beryl-Tide Greatcloak
    }
}) -- Sister Absinthe

map.nodes[41832843] = Rare({
    id = 139319,
    quest = 51958,
    rewards = {Achievement({id = 12940, criteria = 41759})}
}) -- Slickspill

map.nodes[70863222] = Rare({
    id = 141175,
    quest = 52448,
    rewards = {Achievement({id = 12940, criteria = 41753})}
}) -- Song Mistress Dadalea

map.nodes[57037585] = Rare({
    id = 141088,
    quest = 52433,
    rewards = {Achievement({id = 12940, criteria = 41816})}
}) -- Squall

map.nodes[53066908] = Rare({
    id = 135947,
    quest = 50024,
    note = L['in_cave'],
    rewards = {Achievement({id = 12940, criteria = 41787})},
    pois = {
        POI({53837222}) -- Cave Entrance
    }
}) -- Strange Mushroom Ring

map.nodes[59974585] = Rare({
    id = 139980,
    quest = 52123,
    rewards = {
        Achievement({id = 12940, criteria = 41847}),
        Transmog({item = 154449, slot = L['leather']}) -- Tidebound Chestguard
    }
}) -- Taja the Tidehowler

map.nodes[51787979] = Rare({
    id = 136189,
    quest = 50974,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 12940, criteria = 41757}),
        Transmog({item = 150909, slot = L['plate']}) -- Morel Coils
    }
}) -- The Lichen King

map.nodes[49616806] = Rare({
    id = 135939,
    quest = 50037,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 12940, criteria = 41782}),
        Transmog({item = 158299, slot = L['1h_mace']}) -- Ratha's Thornscepter
    },
    pois = {
        POI({51086866, 51636771}) -- Cave Entrance
    }
}) -- Vinespeaker Ratha

Map({id = 1183}).nodes[12002845] = Rare({
    id = 130079,
    quest = 50819,
    note = L['in_cave'],
    parent = {
        id = map.id,
        pois = {
            POI({43537598}) -- Cave Entrance
        }
    },
    rewards = {
        Achievement({id = 12940, criteria = 41843}),
        Transmog({item = 154431, slot = L['offhand']}) -- Earthshaker's Flame
    }
}) -- Wagga Snarltusk

map.nodes[47206580] = Rare({
    id = 129803,
    quest = 52296,
    note = L['in_small_cave'] .. ' ' .. L['whiplash_note'],
    rewards = {Achievement({id = 12940, criteria = 41841})}
}) -- Whiplash

map.nodes[46774242] = Rare({
    id = 142088,
    quest = 52457,
    rewards = {Achievement({id = 12940, criteria = 41762})}
}) -- Whirlwing

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[44447353] = Treasure({
    quest = 52429,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 12853, criteria = 41068}), Item({item = 162000}) -- Pig Nose
    },
    pois = {
        POI({44367536}) -- Cave Entrance
    }
}) -- Carved Wooden Chest

map.nodes[32156623] = Treasure({quest = 53635, label = L['curious_grain_sack']}) -- Curious Grain Sack

map.nodes[32886964] = Treasure({quest = 53652, label = L['curious_grain_sack']}) -- Curious Grain Sack

map.nodes[58216368] = Treasure({
    quest = 52326,
    note = L['discarded_lunchbox_note'],
    rewards = {
        Achievement({id = 12853, criteria = 41067}), Item({item = 160485}) -- An Unforgettable Luncheon
    }
}) -- Discarded Lunchbox

map.nodes[46003069] = Treasure({
    quest = 52980,
    rewards = {Achievement({id = 12853, criteria = 41070})}
}) -- Forgotten Chest

map.nodes[48968407] = Treasure({
    quest = 50526,
    rewards = {Achievement({id = 12853, criteria = 41063})}
}) -- Frosty Treasure Chest

map.nodes[59913907] = Treasure({
    quest = 50937,
    note = L['hidden_scholars_chest_note'],
    rewards = {Achievement({id = 12853, criteria = 41065})}
}) -- Hidden Scholar's Chest

map.nodes[66557112] = Treasure({
    quest = 50576,
    label = L['honey_vat'],
    reward = {
        Transmog({item = 154476, slot = L['plate']}) -- Honey-Glazed Vambraces
    }
}) -- Honey Vat

map.nodes[42854723] = Treasure({
    quest = 50089,
    note = L['in_cave'],
    rewards = {Achievement({id = 12853, criteria = 41062})},
    pois = {
        POI({43664836}) -- Cave Entrance
    }
}) -- Old Ironbound Chest

map.nodes[58608388] = Treasure({
    quest = 49811,
    note = L['smugglers_stash_note'],
    rewards = {Achievement({id = 12853, criteria = 41066})}
}) -- Smuggler's Stash

map.nodes[67224321] = Treasure({
    quest = 50734,
    note = L['sunken_strongbox_note'],
    rewards = {
        Achievement({id = 12853, criteria = 41064}),
        Item({item = 163036, note = '5x'}) -- Polished Pet Charm
    }
}) -- Sunken Strongbox

map.nodes[36692323] = Treasure({
    quest = 52976,
    note = L['venture_co_supply_chest_note'],
    rewards = {Achievement({id = 12853, criteria = 41069})}
}) -- Venture Co. Supply Chest

map.nodes[66921206] = Treasure({
    quest = 51449,
    note = L['weathered_treasure_chest_note'],
    rewards = {Achievement({id = 12853, criteria = 41061})},
    pois = {
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
----------------------------- SECRET SUPPLY CHESTS ----------------------------
-------------------------------------------------------------------------------

local SECRET_CHEST = ns.node.SecretSupply({
    quest = 55388,
    rewards = {Achievement({id = 13317, criteria = 43933})}
}) -- quest = 54716 (looted ever) 55388 (looted today)

map.nodes[40206250] = SECRET_CHEST
map.nodes[43104690] = SECRET_CHEST
map.nodes[46635657] = SECRET_CHEST

-------------------------------------------------------------------------------
------------------------------ WAR SUPPLY CHESTS ------------------------------
-------------------------------------------------------------------------------

map.nodes[54406340] = Supply({
    quest = 55410,
    fgroup = 'supply_path_1',
    pois = {Arrow({58008350, 50003883})}
})
map.nodes[55707069] = Supply({quest = 55410, fgroup = 'supply_path_1'})
map.nodes[56767681] = Supply({quest = 55410, fgroup = 'supply_path_1'})

map.nodes[59197136] = Supply({
    quest = 55410,
    fgroup = 'supply_path_2',
    pois = {Arrow({75009005, 40004867})}
})
map.nodes[65287856] = Supply({quest = 55410, fgroup = 'supply_path_2'})
map.nodes[70808500] = Supply({quest = 55410, fgroup = 'supply_path_2'})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[42537678] = PetBattle({
    id = 139987,
    rewards = {Achievement({id = 12936, criteria = 44209})}
}) -- This Little Piggy Has Sharp Tusks (Bristlespine)

map.nodes[36533365] = PetBattle({
    id = 140315,
    note = L['eddie_fixit_note'],
    rewards = {
        Achievement({id = 12936, criteria = 44211}), ns.reward.Spacer(),
        Achievement({id = 13270, criteria = 2, oneline = true}), -- Beast
        Achievement({id = 13271, criteria = 2, oneline = true}), -- Critter
        Achievement({id = 13272, criteria = 2, oneline = true}), -- Dragon
        Achievement({id = 13273, criteria = 2, oneline = true}), -- Elemental
        Achievement({id = 13274, criteria = 2, oneline = true}), -- Flying
        Achievement({id = 13275, criteria = 2, oneline = true}), -- Magic
        Achievement({id = 13277, criteria = 2, oneline = true}), -- Mechanical
        Achievement({id = 13278, criteria = 2, oneline = true}), -- Undead
        Achievement({id = 13280, criteria = 2, oneline = true}), -- Aquatic
        Achievement({id = 13281, criteria = 2, oneline = true}) -- Humanoid
    }
}) -- Automated Chaos (Eddie Fixit)

map.nodes[65035082] = PetBattle({
    id = 141002,
    note = L['ellie_vern_note'],
    rewards = {
        Achievement({id = 12936, criteria = 44215}), ns.reward.Spacer(),
        Achievement({id = 13270, criteria = 6, oneline = true}), -- Beast
        Achievement({id = 13271, criteria = 6, oneline = true}), -- Critter
        Achievement({id = 13272, criteria = 6, oneline = true}), -- Dragon
        Achievement({id = 13273, criteria = 6, oneline = true}), -- Elemental
        Achievement({id = 13274, criteria = 6, oneline = true}), -- Flying
        Achievement({id = 13275, criteria = 6, oneline = true}), -- Magic
        Achievement({id = 13277, criteria = 6, oneline = true}), -- Mechanical
        Achievement({id = 13278, criteria = 6, oneline = true}), -- Undead
        Achievement({id = 13280, criteria = 6, oneline = true}), -- Aquatic
        Achievement({id = 13281, criteria = 6, oneline = true}) -- Humanoid
    }
}) -- Sea Creatures Are Weird (Ellie Vern)

map.nodes[77182915] = PetBattle({
    id = 141046,
    note = L['leana_darkwind_note'],
    rewards = {
        Achievement({id = 12936, criteria = 44216}), ns.reward.Spacer(),
        Achievement({id = 13270, criteria = 7, oneline = true}), -- Beast
        Achievement({id = 13271, criteria = 7, oneline = true}), -- Critter
        Achievement({id = 13272, criteria = 7, oneline = true}), -- Dragon
        Achievement({id = 13273, criteria = 7, oneline = true}), -- Elemental
        Achievement({id = 13274, criteria = 7, oneline = true}), -- Flying
        Achievement({id = 13275, criteria = 7, oneline = true}), -- Magic
        Achievement({id = 13277, criteria = 7, oneline = true}), -- Mechanical
        Achievement({id = 13278, criteria = 7, oneline = true}), -- Undead
        Achievement({id = 13280, criteria = 7, oneline = true}), -- Aquatic
        Achievement({id = 13281, criteria = 7, oneline = true}) -- Humanoid
    }
}) -- Captured Evil (Leana Darkwind)

-------------------------------------------------------------------------------
-------------------------- HONEYBACK HARVESTER EVENTS -------------------------
-------------------------------------------------------------------------------

-- quest 56413 start
-- quest 56414, 57703 honeycomb loot

local honeyback = Class('Honeyback', NPC, {
    id = 155193,
    icon = 2066005,
    group = ns.groups.HONEYBACKS,
    note = L['honeyback_harvester_note'],
    getters = {
        rlabel = function(self)
            local completed = C_QuestLog.IsQuestFlaggedCompleted(56414)
            local color = completed and ns.status.Green or ns.status.Gray
            return color(L['hourly'])
        end
    }
})()

map.nodes[25667224] = honeyback
map.nodes[33053243] = honeyback
map.nodes[40936214] = honeyback
map.nodes[43003300] = honeyback
map.nodes[47453212] = honeyback
map.nodes[57175125] = honeyback
map.nodes[61893195] = honeyback
map.nodes[63012131] = honeyback
map.nodes[66307000] = honeyback
map.nodes[69007000] = honeyback
map.nodes[72105230] = honeyback

-------------------------------------------------------------------------------
--------------------------- LEGENDS OF THE TIDESAGES --------------------------
-------------------------------------------------------------------------------

local AncientScroll = Class('AncientScroll', Collectible, {
    icon = 1500881,
    label = L['ancient_tidesage_scroll'],
    note = L['ancient_tidesage_scroll_note'],
    group = ns.groups.TIDESAGE_LEGENDS
})

map.nodes[49518090] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41425})}
}) -- Part 1 (Near the waterfall)

map.nodes[59025954] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41426})}
}) -- Part 2 (On top of the hill)

map.nodes[31957291] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41427})}
}) -- Part 3 (Near the lake)

map.nodes[33813323] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41428})}
}) -- Part 4 (On top of the island)

map.nodes[56023853] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41429})}
}) -- Part 5 (Up the mountain right of Warfang Hold)

map.nodes[44183660] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41430})}
}) -- Part 6 (Up the mountain left of Warfang Hold)

map.nodes[62083022] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41431})}
}) -- Part 7

map.nodes[75073113] = AncientScroll({
    rewards = {Achievement({id = 13051, criteria = 41432})}
}) -- Part 8 (Near the Shrine of the Storm entrance)

-------------------------------------------------------------------------------
--------------------------- THREE SHEETS TO THE WIND --------------------------
-------------------------------------------------------------------------------

map.nodes[41215020] = Collectible({
    id = 141853,
    icon = 135999,
    note = L['three_sheets_note'],
    group = ns.groups.THREE_SHEETS,
    faction = 'Alliance',
    rewards = {
        Achievement({
            id = 13061,
            criteria = {
                41401, -- Brennadam Apple Brandy
                41403 -- Dark and Stormy
            }
        })
    }
}) -- Rebecca Barnes

map.nodes[44455419] = Collectible({
    id = 135600,
    icon = 135999,
    note = L['three_sheets_note'],
    group = ns.groups.THREE_SHEETS,
    faction = 'Alliance',
    rewards = {
        Achievement({id = 13061, criteria = 41405}) -- Foaming Turtle Broth
    }
}) -- Emma Haribull

map.nodes[50883354] = Collectible({
    id = 138905,
    icon = 135999,
    note = L['three_sheets_note'],
    group = ns.groups.THREE_SHEETS,
    faction = 'Horde',
    rewards = {
        Achievement({
            id = 13061,
            criteria = {
                41396, -- "Aurora Borealis"
                41401, -- Brennadam Apple Brandy
                41403, -- Dark and Stormy
                41410 -- Mildenhall Mead
            }
        })
    }
}) -- Rusty Blade Waitress

map.nodes[58637025] = Collectible({
    id = 138221,
    icon = 135999,
    note = L['three_sheets_note'],
    group = ns.groups.THREE_SHEETS,
    faction = 'Alliance',
    rewards = {
        Achievement({
            id = 13061,
            criteria = {
                41396, -- "Aurora Borealis"
                41401, -- Brennadam Apple Brandy
                41410 -- Mildenhall Mead
            }
        })
    }
}) -- "Nasty" Buck

map.nodes[49075722] = Collectible({
    icon = 135999,
    faction = 'Alliance',
    note = L['three_sheets_note'] .. '\n\n' .. L['long_forgotten_rum_note'],
    group = ns.groups.THREE_SHEETS,
    rewards = {
        Achievement({id = 13061, criteria = 41409}) -- Long Forgotten Rum
    }
}) -- Long Forgotten Rum

-------------------------------------------------------------------------------
------------------------------ LET'S BEE FRIENDS ------------------------------
-------------------------------------------------------------------------------

map.nodes[71106917] = Class('Bumbles', Collectible, {
    id = 143658,
    icon = 2027853,
    faction = 'Alliance',
    rewards = {
        Achievement({id = 13062, criteria = {id = 1, qty = true}}),
        Pet({item = 163776, id = 2442}) -- Large Honeycomb Cluster
    },
    getters = {
        note = function(self)
            local function qstep(step, quest)
                if C_QuestLog.IsQuestFlaggedCompleted(quest) then
                    return ns.status.Green(step)
                else
                    return ns.status.Red(step)
                end
            end
            local function istep(step, item, quest)
                if ns.PlayerHasItem(item) or
                    C_QuestLog.IsQuestFlaggedCompleted(quest) then
                    return ns.status.Green(step)
                else
                    return ns.status.Red(step)
                end
            end

            local note = L['lets_bee_friends_note']
            note = note .. '\n\n' .. qstep(1, 50553) .. ' ' ..
                       L['lets_bee_friends_step_1']
            note = note .. '\n\n' .. istep(2, 163699, 53111) .. ' ' ..
                       L['lets_bee_friends_step_2']
            note = note .. '\n\n' .. qstep(3, 53111) .. ' ' ..
                       L['lets_bee_friends_step_3']
            note = note .. '\n\n' .. qstep(4, 53200) .. ' ' ..
                       L['lets_bee_friends_step_4']
            note = note .. '\n\n' .. qstep(5, 53347) .. ' ' ..
                       L['lets_bee_friends_step_5']
            return note
        end,
        rlabel = function(self)
            return ns.status.Gray(
                select(9, GetAchievementCriteriaInfo(13062, 1)))
        end
    }
})()

-------------------------------------------------------------------------------
------------------------------- THESE HILLS SING ------------------------------
-------------------------------------------------------------------------------

map.nodes[41256950] = Collectible({
    label = '{achievement:13046}',
    note = L['these_hills_sing_note'],
    requires = ns.requirement.Item(160485), -- An Unforgettable Luncheon
    icon = 2065627,
    rewards = {Achievement({id = 13046})}
}) -- These Hills Sing

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS I SET SAIL TO SEE --------------------
-------------------------------------------------------------------------------

map.nodes[72806720] = ns.node.Squirrel({
    id = 131376,
    rewards = {Achievement({id = 14730, criteria = 50236})},
    pois = {POI({71206800, 74207260})}
}) -- Honey Bee

map.nodes[70906670] = ns.node.Squirrel({
    id = 143220,
    rewards = {Achievement({id = 14730, criteria = 50237})},
    pois = {POI({66407020, 68406880, 72806860})}
}) -- Olivewing

-------------------------------------------------------------------------------
-------------------------------- BATTLE SAFARI --------------------------------
-------------------------------------------------------------------------------

map.nodes[65406740] = Safari.FreshwaterCrawler({
    pois = {
        POI({
            63006580, 63806740, 63806760, 65206640, 65406740, 65606720,
            66006540, 66006560
        })
    }
}) -- Freshwater Crawler

map.nodes[71404960] = Safari.HermitCrab({
    pois = {
        POI({
            62805520, 64001400, 64405240, 64605240, 65005120, 65201600,
            65404980, 70401000, 71404960, 71604940, 72205000
        })
    }
}) -- Hermit Crab

map.nodes[73406780] = Safari.HoneyBee({
    pois = {
        POI({
            42406220, 43406180, 43606260, 44205960, 44806040, 44806060,
            45206200, 45606120, 47206140, 47403940, 49804960, 50405060,
            50605040, 63604420, 65204920, 71206800, 72206640, 72406960,
            72806700, 73006900, 73007020, 73406780, 73407240, 73407260,
            73606780, 73807080, 74206940, 74206960, 74807140
        })
    }
}) -- Honey Bee

map.nodes[63403320] = Safari.RiverFrog({
    pois = {
        POI({
            29806460, 30406400, 30606400, 30806480, 31407160, 32006040,
            32006060, 32207280, 32405880, 32606000, 32607100, 49403360,
            50003400, 50403340, 50803400, 51403540, 55403200, 56003100,
            56403040, 56602920, 56603020, 57603020, 58403120, 58602900,
            59203040, 59203060, 59603160, 60003080, 60803120, 60803700,
            61003040, 61803040, 62203080, 62603760, 62603860, 62803380,
            63002900, 63203000, 63203120, 63203500, 63203720, 63403320,
            63603380, 63603840, 63603980, 63803500, 63803920, 64004120,
            64004160, 64004280, 64404460, 64603420, 64604440, 64604460,
            64804280, 65203300, 66004580, 66203380, 66203600, 66204660
        })
    }
}) -- River Frog

map.nodes[58603020] = Safari.RiverOtter({
    pois = {
        POI({
            32407140, 32407200, 34407200, 34607240, 36007340, 36007380,
            36807340, 49803340, 50003360, 50603420, 50803500, 55803180,
            58002960, 58603020, 59203080, 60403640, 60403660, 60603640,
            61802940, 61803700, 62602940, 62803020, 63003120, 63003780,
            63203440, 63803920, 64004180, 64603500, 64604420, 64804300,
            65403360, 65604520, 66203580
        })
    }
}) -- River Otter

map.nodes[65405700] = Safari.SandybackCrawler({
    pois = {
        POI({
            49002360, 49602460, 50002440, 50602440, 51002460, 51602480,
            51802400, 52202600, 53002360, 53202500, 53402560, 60805860,
            60806040, 60806120, 61206180, 62405620, 62605560, 64605280,
            64805200, 65005100, 65404960, 65405700, 65604980, 65605700,
            66004900, 66005580, 66404840, 66405400, 67804620, 70404880,
            71004860, 71804980, 72204940, 72605020, 73005060
        })
    }
}) -- Sandyback Crawler

map.nodes[21602880] = Safari.ShackCrab({
    pois = {POI({23805480, 24605420, 26405400, 26805460, 28005440, 28005480})}
}) -- ShackCrab

map.nodes[70403180] = Safari.ShadowbackCrawler({
    pois = {
        POI({
            70202940, 70203060, 70403000, 70403180, 70602860, 70603200,
            71003300, 74403920, 74603940, 75003960, 75603960
        })
    }
}) -- Shadowback Crawler

map.nodes[49403600] = Safari.ValeMarmot({
    pois = {
        POI({
            29206100, 29406160, 30006400, 30406220, 30606160, 30806340,
            30806360, 31405980, 31406100, 31606400, 32006700, 32206220,
            32206340, 32406100, 32406820, 32606840, 32606860, 32806660,
            33003240, 33206580, 33606840, 33606860, 33803240, 34003260,
            34206480, 34803160, 40603540, 40603560, 40604400, 41004460,
            41203820, 41205040, 41405060, 42605440, 44006300, 44604880,
            44805060, 45004620, 45005040, 45006620, 45604900, 46005980,
            46006440, 46006460, 46006580, 47204080, 47403940, 48003840,
            48404460, 48603700, 49003980, 49403600, 49404900, 49604880,
            49803640, 50003660, 50003880, 50203840, 50204980, 50206140,
            51005220, 51206180, 51807800, 52807800, 53207620, 54603160,
            54604220, 54607500, 55007800, 55807840, 56204340, 56607960,
            57004440, 58603180, 60202820, 60402860, 60602960, 61202820,
            61603140, 61803440, 62202840, 62206160, 62606100, 62803480,
            63006200, 63202820, 63604300, 63802980, 63803120, 63804720,
            63806320, 63806480, 64403720, 64404600, 64806380, 64806560,
            65204580, 65204900, 65406480, 65606400, 65606500, 66004820,
            66806440, 67006320, 67006460, 67405660, 67605640, 67605660,
            67806100, 68005860, 68205840, 68405380, 68405540, 68605380,
            68806080, 68806180, 69005960, 69205940, 70405380, 71405100,
            71605260, 72405220
        })
    }
}) -- Vale Marmot

map.nodes[45606460] = Safari.ValleyChicken({
    pois = {
        POI({
            43006200, 43806260, 43806540, 44006420, 44806580, 45206080,
            45206160, 45606240, 45606440, 45606460, 45806320, 45806560,
            46206120, 47006100, 48006160, 58207040, 58407060
        })
    }
}) -- Valley Chicken
