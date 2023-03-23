-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local AncientStone = ns.node.AncientStone
local Dragonglyph = ns.node.Dragonglyph
local Dragonrace = ns.node.Dragonrace
local PT = ns.node.ProfessionTreasures

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog

local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 2133, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[56247389] = Rare({
    id = 203515,
    rewards = {
        Achievement({id = 17783, criteria = 59188}), -- Adventurer of Zaralek Cavern
        Transmog({item = 205097, slot = L['dagger']}), -- Zaralek Surveyor's Kriss
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Alcanon

map.nodes[48367509] = Rare({
    id = 203468,
    quest = 75547,
    rewards = {
        Achievement({id = 17783, criteria = 59185}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Aquifon

map.nodes[41518613] = Rare({
    id = 203621,
    quest = 75556,
    note = L['brulsef_the_stronk_note'],
    rewards = {
        Achievement({id = 17783, criteria = 59202}) -- Adventurer of Zaralek Cavern
    }
}) -- Brulsef the Stronk

map.nodes[48372384] = Rare({
    id = 204093,
    quest = 75572,
    rewards = {
        Achievement({id = 17783, criteria = 59212}), -- Adventurer of Zaralek Cavern
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Colassian

map.nodes[31805061] = Rare({
    id = 203664,
    rewards = {
       Achievement({id = 17783, criteria = 59209}) -- Adventurer of Zaralek Cavern
    }
}) -- Emberdusk

map.nodes[36324481] = Rare({
    id = 203660,
    quest = 75565,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59207}) -- Adventurer of Zaralek Cavern
    },
    pois = {
        POI({35924400}) -- Entrance
    }
}) -- Flowfy

map.nodes[41921857] = Rare({
    id = 203592,
    quest = 75552,
    rewards = {
        Achievement({id = 17783, criteria = 59190}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {
        POI({42491885}) -- Entrance
    }
}) -- General Zskorro

map.nodes[68734593] = Rare({
    id = 203477,
    quest = 75548,
    rewards = {
        Achievement({id = 17783, criteria = 59186}) -- Adventurer of Zaralek Cavern
    }
}) -- Goopal

map.nodes[45673327] = Rare({
    id = 203627,
    quest = 75558,
    rewards = {
        Achievement({id = 17783, criteria = 59200}) -- Adventurer of Zaralek Cavern
    }
}) -- Invohq

map.nodes[28515115] = Rare({
    id = 203646,
    rewards = {
        Achievement({id = 17783, criteria = 59206}) -- Adventurer of Zaralek Cavern
    }
}) -- Jrumm

map.nodes[42226524] = Rare({
    id = 203625,
    quest = 75557,
    rewards = {
        Achievement({id = 17783, criteria = 59199}), -- Adventurer of Zaralek Cavern
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}) -- Flightstones
    }
}) -- Kairoktra

map.nodes[59593949] = Rare({
    id = 203466,
    quest = 75546,
    rewards = {
        Achievement({id = 17783, criteria = 59184}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Kaprachu

map.nodes[54074162] = Rare({
    id = 203618,
    rewards = {
        Achievement({id = 17783, criteria = 59198}) -- Adventurer of Zaralek Cavern
    }
}) -- Klakatak

map.nodes[65435587] = Rare({
    id = 203462,
    quest = 75545,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59183}), -- Adventurer of Zaralek Cavern
    },
    pois = {
        POI({64785550}) -- Entrance
    }
}) -- Kob'rok

map.nodes[40753817] = Rare({
    id = 200111,
    quest = 75561,
    rewards = {
        Achievement({id = 17783, criteria = 59203}), -- Adventurer of Zaralek Cavern
        Transmog({item = 205070, slot = L['leather']}), -- Zaralek Surveyor's Bindings
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Item({item = 192055}), -- Dragon Isle Artifact
        Currency({id = 2245}) -- Flightstones
    }
}) -- Magmanesha

map.nodes[55841899] = Rare({
    id = 203521,
    quest = 75551,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59189}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {
        POI({52921886}) -- Entrance
    }
}) -- Professor Gastrinax

map.nodes[65875082] = Rare({
    id = 203643,
    quest = 75563,
    rewards = {
        Achievement({id = 17783, criteria = 59205}), -- Adventurer of Zaralek Cavern
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}) -- Flightstones
    }
}) -- Skornace

map.nodes[53106421] = Rare({
    id = 203480,
    quest = 75549,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59187}), -- Adventurer of Zaralek Cavern
        Transmog({item = 205067, slot = L['leather']}), -- Zaralek Surveyor's Helm
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {
        POI({54556605}) -- Entrance
    }
}) -- Spinmarrow

map.nodes[38424650] = Rare({
    id = 203662,
    quest = 75566,
    rewards = {
        Achievement({id = 17783, criteria = 59208}), -- Adventurer of Zaralek Cavern
        Item({item = 199906}) -- Titan Relic
    }
}) -- Subterrax

map.nodes[57806923] = Rare({
    id = 203593,
    quest = 75553,
    rewards = {
        Achievement({id = 17783, criteria = 59191}) -- Adventurer of Zaralek Cavern
    }
}) -- Underlight Queen

map.nodes[38867151] = Rare({
    id = 201029,
    rewards = {
        Achievement({id = 17783, criteria = 59210}) -- Adventurer of Zaralek Cavern
    }
}) -- Veridian King

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[36694883] = Treasure({
    label = L['ancient_zaqali_chest_label'],
    rewards = {
        Achievement({id = 17786, criteria = 59222}) -- Treasures of Zaralek Cavern
    }
}) -- Ancient Zaqali Chest

map.nodes[28544791] = Treasure({
    label = L['blazing_shadowflame_chest_label'],
    note = L['blazing_shadowflame_chest_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59220}) -- Treasures of Zaralek Cavern
    }
}) -- Blazing Shadowflame Chest

map.nodes[30044193] = Treasure({
    label = L['charred_egg_label'],
    quest = 73706,
    rewards = {
        Achievement({id = 17786, criteria = 59226}) -- Treasures of Zaralek Cavern
    }
}) -- Charred Egg

map.nodes[36397425] = Treasure({
    label = L['crystal_encased_chest_label'],
    note = L['crystal_encased_chest_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59228}) -- Treasures of Zaralek Cavern
    }
}) -- Crystal-Encased Chest
-- 'Attunement Crystal' @ 37756886 triggers quest 74987 and flys towards the chest
-- 'Attunement Crystal' @ 39417328 triggers quest 75559
-- when approaching the chest after you clicked both crystal quest 75601 triggers and the chest will be clickable
-- after opening the chest quest 73697 and 74986 get triggered

map.nodes[62715376] = Treasure({
    label = L['long_lost_cache_label'],
    quest = 75019,
    rewards = {
        Achievement({id = 17786, criteria = 59223}) -- Treasures of Zaralek Cavern
    }
}) -- Long-Lost Cache

map.nodes[43058256] = Treasure({
    label = L['old_trunk_label'],
    requires = ns.requirement.Item(204323), -- Old Trunk Key
    rewards = {
        Achievement({id = 17786, criteria = 59227}) -- Treasures of Zaralek Cavern
    }
}) -- Old Trunk

map.nodes[29774050] = Treasure({
    label = L['well_chewed_chest_label'],
    quest = 73395,
    note = L['well_chewed_chest_note'],
    requires = ns.requirement.Item(202869), -- Scorching Key
    rewards = {
        Achievement({id = 17786, criteria = 59219}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({30314121}), -- Entrance
        POI({color = 'Green', points = 30134076}) -- Scorching Key
    }
}) -- Well-Chewed Chest

-------------------------------------------------------------------------------

map.nodes[48411636] = Treasure({label = L['molten_hoard_label'], quest = 75515}) -- Molten Hoard

map.nodes[48451083] = Treasure({label = L['fealtys_reward_label']}) -- Fealty's Reward (currently seems not clickable)

map.nodes[56734868] = Treasure({
    label = L['moth_pilfered_pouch_label'],
    quest = 75320,
    note = L['moth_pilfered_pouch_note'],
    pois = {
        POI({56664934}) -- Struggling Mothling
    }
}) -- Moth-Pilfered Pouch

map.nodes[61735511] = Treasure({
    label = L['waterlogged_bundle_label'],
    quest = 75015
}) -- Waterlogged Bundle (currently no loot)

-------------------------------------------------------------------------------

local StolenStash = Class('StolenStash', Treasure,
    {label = L['stolen_stash_label']}) -- Stolen Stash

map.nodes[60664622] = StolenStash({quest = 75302})
map.nodes[63603861] = StolenStash({quest = 75303})

local RitualOffering = Class('RitualOffering', Treasure, {
    label = 'Ritual Offering',
    rewards = {
        Item({item = 199906}), -- Titan Relic
        Item({item = 204985}), -- Barter Brick
        Currency({id = 2245}) -- Flightstones
    }
}) -- Ritual Offering

map.nodes[26874611] = RitualOffering()
map.nodes[35145225] = RitualOffering({quest = 73552})
map.nodes[36034452] = RitualOffering()
map.nodes[41694457] = RitualOffering({quest = 73548})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[37825884] = PT.Engineering({id = 204475, quest = 75186}) -- Busted Wyrmhole Generator

map.nodes[48101659] = PT.Engineering({
    id = 204855,
    note = L['molten_scoutbot_note'],
    quest = 75433
}) -- Molten Scoutbot (Overclocked Determination Core)

map.nodes[48162790] = PT.Engineering({id = 204470, quest = 75183}) -- Haphazardly Discarded Bombs

map.nodes[48484868] = PT.Engineering({id = 204469, quest = 75180}) -- Misplace Aberrus Outflow Blueprints

map.nodes[49437901] = PT.Engineering({id = 204853, quest = 75431}) -- Discarded Dracothyst Drill

map.nodes[57657393] = PT.Engineering({
    id = 204850,
    note = L['bolts_and_brass_note'],
    quest = 75430
}) -- Bolts and Brass (Handful of Khaz'gorite Bolts)

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[30414530] = Dragonglyph({rewards = {Achievement({id = 17513})}}) -- Dragon Glyphs: Zaqali Caldera
map.nodes[41638037] = Dragonglyph({rewards = {Achievement({id = 17510})}}) -- Dragon Glyphs: Glimmerogg
map.nodes[47443702] = Dragonglyph({rewards = {Achievement({id = 17516})}}) -- Dragon Glphys: Sulfur Ravine
map.nodes[48060438] = Dragonglyph({rewards = {Achievement({id = 17517})}}) -- Dragon Glyphs: Brimstone Garrison
map.nodes[54735470] = Dragonglyph({rewards = {Achievement({id = 17512})}}) -- Dragon Glyphs: Loamm
map.nodes[55342771] = Dragonglyph({rewards = {Achievement({id = 17514})}}) -- Dragon Glyphs: Slitherdrake Roost
map.nodes[62567332] = Dragonglyph({rewards = {Achievement({id = 17511})}}) -- Dragon Glyphs: Nal Ks'kol
map.nodes[72114844] = Dragonglyph({rewards = {Achievement({id = 17515})}}) -- Dragon Glyphs: The Throughway

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[38756061] = Dragonrace({
    label = '{quest:74839}',
    normal = {2246, 68, 63},
    advanced = {2252, 60, 55},
    reverse = {2258, 57, 52},
    rewards = {
        Achievement({id = 17483, criteria = 1, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = 1, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = 1, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = 1, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = 1, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = 1, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = 1, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = 1, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = 1, oneline = true}) -- reverse gold
    }
}) -- Crystal Circuit

map.nodes[39054999] = Dragonrace({
    label = '{quest:74889}',
    normal = {2247, 80, 75},
    advanced = {2253, 73, 68},
    reverse = {2259, 73, 68},
    rewards = {
        Achievement({id = 17483, criteria = 2, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = 2, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = 2, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = 2, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = 2, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = 2, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = 2, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = 2, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = 2, oneline = true}) -- reverse gold
    }
}) -- Caldera Cruise

map.nodes[54502371] = Dragonrace({
    label = '{quest:74939}',
    normal = {2248, 72, 69},
    advanced = {2254, 69, 64},
    reverse = {2260, 69, 64},
    rewards = {
        Achievement({id = 17483, criteria = 3, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = 3, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = 3, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = 3, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = 3, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = 3, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = 3, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = 3, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = 3, oneline = true}) -- reverse gold
    }
}) -- Brimstone Scramble

map.nodes[58724503] = Dragonrace({
    label = '{quest:74951}',
    normal = {2249, 80, 75},
    advanced = {2255, 75, 70},
    reverse = {2261, 77, 42},
    rewards = {
        Achievement({id = 17483, criteria = 4, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = 4, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = 4, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = 4, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = 4, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = 4, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = 4, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = 4, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = 4, oneline = true}) -- reverse gold
    }
}) -- Shimmering Slalom

map.nodes[58155759] = Dragonrace({
    label = '{quest:74972}',
    normal = {2250, 60, 55},
    advanced = {2256, 55, 50},
    reverse = {2262, 53, 48},
    rewards = {
        Achievement({id = 17483, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = 5, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = 5, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = 5, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = 5, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = 5, oneline = true}) -- reverse gold
    }
}) -- Zaralek Zigzag

map.nodes[51204665] = Dragonrace({
    label = '{quest:75035}',
    normal = {2251, 67, 64},
    advanced = {2257, 62, 57},
    reverse = {2263, 62, 57},
    rewards = {
        Achievement({id = 17483, criteria = 6, oneline = true}), -- normal bronze
        Achievement({id = 17484, criteria = 6, oneline = true}), -- normal silver
        Achievement({id = 17485, criteria = 6, oneline = true}), -- normal gold
        Achievement({id = 17486, criteria = 6, oneline = true}), -- advanced bronze
        Achievement({id = 17487, criteria = 6, oneline = true}), -- advanced silver
        Achievement({id = 17488, criteria = 6, oneline = true}), -- advanced gold
        Achievement({id = 17489, criteria = 6, oneline = true}), -- reverse bronze
        Achievement({id = 17490, criteria = 6, oneline = true}), -- reverse silver
        Achievement({id = 17491, criteria = 6, oneline = true}) -- reverse gold
    }
}) -- Sulfur Sprint

-------------------------------------------------------------------------------
---------------------- ANCIENT STONES OF ZARALEK CAVERN -----------------------
-------------------------------------------------------------------------------

map.nodes[43282372] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58826})}
}) -- PH 01

map.nodes[61257181] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58827})}
}) -- PH 02

map.nodes[47384855] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58828})}
}) -- PH 03

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

------------------------ MOUNT: BIG SLICK IN THE CITY -------------------------

map.nodes[44257993] = Collectible({
    id = 201752,
    icon = 5003561,
    note = L['big_slick_note_1'],
    requires = {
        ns.requirement.Quest(74787), -- Come Snail Away
        ns.requirement.Quest(74514), -- The Slowest Fan Club
        ns.requirement.Quest(74786), -- Snailspiration: Shimmershell Snail
        ns.requirement.Quest(74517) -- All Terrain Snail
    },
    rewards = {
        Mount({item = 205155, id = 1729}) -- Big Slick in the City
    }
}) -- Briggul <Snail Trainer>

local darkshore = Map({id = 62, settings = false})

darkshore.nodes[47161853] = Collectible({
    id = 48182,
    icon = 442735,
    note = L['big_slick_note_1'],
    rewards = {
        Pet({id = 493}) -- Shimmershell Snail
    },
    pois = {
        POI({57941511, 57561701, 54761786, 53492013}), -- Shimmershell Snail
        Path({Circle({origin = 48652445, radius = 1.5})}) -- Zidormi
    }
}) -- Shimmershell Snail

----------------- ACHIEVEMENT: SLOW AND STEADY WINS THE RACE ------------------

map.nodes[44458040] = Collectible({
    label = '{npc:201099}',
    icon = 5003559,
    requires = {
        ns.requirement.Quest(75662) -- A Race to the Finish
    },
    rewards = {
        Achievement({
            id = 17741,
            criteria = {
                59148, -- Bashful wins
                59149, -- Tricky wins
                59150, -- Brulee wins
                59151 -- Roggy wins
            }
        }), -- Slow And Steady Wins The Race
        Pet({item = 205231, id = 3557}), -- Roggy
        Pet({item = 205119, id = 3536}), -- Bashful
        Pet({item = 205121, id = 3538}), -- Tricky
        Pet({item = 205123, id = 3540}) -- Brulee
    }
}) -- Grogul <Race Coordinator>

-------------------------------------------------------------------------------

map.nodes[55895537] = Collectible({
    id = 203615,
    icon = 'peg_bl',
    scale = 1.3,
    note = 'Exchange {item:204727} for a pet, mount, and more.',
    rewards = {
        Pet({item = , id = 3535, note = 'x50'}), -- Diamondshell
        -- Item({item = nil, note = 'x100'}), -- UNKNOWN
        Mount({item = 205205, id = 196, note = 'x400'}) -- Scoria-Clad Sporebat -- TODO: FIX ID
    }
}) -- Saccratos <Coveted Bauble Exchange>
