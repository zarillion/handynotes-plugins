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
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

-- local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2133, settings = true})

local deepflayerNest = Map({id = 2184, settings = false}) -- Deepflayer Nest

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[56247389] = Rare({
    id = 203515,
    vignette = 5643,
    quest = 75284,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59188}), -- Adventurer of Zaralek Cavern
        Transmog({item = 205097, slot = L['dagger']}), -- Zaralek Surveyor's Kriss
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Alcanon

map.nodes[48367509] = Rare({
    id = 203468,
    vignette = 5640,
    quest = 75270,
    rewards = {
        Achievement({id = 17783, criteria = 59185}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Aquifon

map.nodes[41518613] = Rare({
    id = 203621,
    vignette = 5652,
    quest = 75325,
    note = L['brulsef_the_stronk_note'],
    rewards = {
        Achievement({id = 17783, criteria = 59202}), -- Adventurer of Zaralek Cavern
        Recipe({item = 204847, profession = 185}) -- Recipe: Rocks on the Rocks
    }
}) -- Brulsef the Stronk or Brullo the Strong (wait retail release)

map.nodes[48372384] = Rare({
    id = 204093,
    vignette = 5646,
    quest = 75475,
    rewards = {
        Achievement({id = 17783, criteria = 59212}), -- Adventurer of Zaralek Cavern
        Item({item = 200071}) -- Sacred Tuskarr Totem
    }
}) -- Colossian

map.nodes[31805061] = Rare({
    id = 203664,
    vignette = 5663,
    quest = 75361,
    rewards = {
        Achievement({id = 17783, criteria = 59209}) -- Adventurer of Zaralek Cavern
    }
}) -- Emberdusk

map.nodes[36324481] = Rare({
    id = 203660,
    vignette = 5661,
    quest = 75357,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59207}) -- Adventurer of Zaralek Cavern
    },
    pois = {POI({35924400})} -- Entrance
}) -- Flowfy

map.nodes[41921857] = Rare({
    id = 203592,
    vignette = 5645,
    quest = 75295,
    rewards = {
        Achievement({id = 17783, criteria = 59190}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {POI({42491885})} -- Entrance
}) -- General Zskorro

map.nodes[68734593] = Rare({
    id = 203477,
    vignette = 5641,
    quest = 75273,
    rewards = {
        Achievement({id = 17783, criteria = 59186}) -- Adventurer of Zaralek Cavern
    }
}) -- Goopal

map.nodes[45673327] = Rare({
    id = 203627,
    vignette = 5654,
    quest = 75335,
    rewards = {
        Achievement({id = 17783, criteria = 59200}) -- Adventurer of Zaralek Cavern
    }
}) -- Invohq

map.nodes[28515115] = Rare({
    id = 203646,
    vignette = 5660,
    quest = 75352,
    rewards = {
        Achievement({id = 17783, criteria = 59206}), -- Adventurer of Zaralek Cavern
        Currency({id = 2245}) -- Flightstones
    }
}) -- Jrumm or Dinn <War Drummer> (wait retail release)

map.nodes[42226524] = Rare({
    id = 203625,
    vignette = 5653,
    quest = 75333,
    rewards = {
        Achievement({id = 17783, criteria = 59199}), -- Adventurer of Zaralek Cavern
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}) -- Flightstones
    }
}) -- Kairoktra or Karokta (wait retail release)

map.nodes[59593949] = Rare({
    id = 203466,
    vignette = 5639,
    quest = 75268,
    rewards = {
        Achievement({id = 17783, criteria = 59184}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    }
}) -- Kaprachu or Kapraku (wait retail release)

map.nodes[54074162] = Rare({
    id = 203618,
    vignette = 5651,
    quest = 75321,
    rewards = {
        Achievement({id = 17783, criteria = 59198}) -- Adventurer of Zaralek Cavern
    }
}) -- Klakatak

map.nodes[65435587] = Rare({
    id = 203462,
    vignette = 5638,
    quest = 75266,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59183}) -- Adventurer of Zaralek Cavern
    },
    pois = {POI({64785550})} -- Entrance
}) -- Kob'rok

map.nodes[40753817] = Rare({
    id = 200111,
    vignette = 5656,
    quest = 75339,
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
    vignette = 5644,
    quest = 75291,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59189}), -- Adventurer of Zaralek Cavern
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {POI({52921886})} -- Entrance
}) -- Professor Gastrinax

map.nodes[65875082] = Rare({
    id = 203643,
    vignette = 5659,
    quest = 75348,
    rewards = {
        Achievement({id = 17783, criteria = 59205}), -- Adventurer of Zaralek Cavern
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}) -- Flightstones
    }
}) -- Skornak

map.nodes[53106421] = Rare({
    id = 203480,
    vignette = 5642,
    quest = 75275,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 17783, criteria = 59187}), -- Adventurer of Zaralek Cavern
        Transmog({item = 205067, slot = L['leather']}), -- Zaralek Surveyor's Helm
        Item({item = 192055}) -- Dragon Isle Artifact
    },
    pois = {POI({54556605})} -- Entrance
}) -- Spinmarrow

map.nodes[38424650] = Rare({
    id = 203662,
    vignette = 5662,
    quest = 75359,
    rewards = {
        Achievement({id = 17783, criteria = 59208}), -- Adventurer of Zaralek Cavern
        Item({item = 199906}) -- Titan Relic
    }
}) -- Subterrax

map.nodes[57766910] = Rare({
    id = 203593,
    vignette = 5646,
    quest = 75297,
    rewards = {
        Achievement({id = 17783, criteria = 59191}) -- Adventurer of Zaralek Cavern
    }
}) -- Underlight Queen

map.nodes[38867151] = Rare({
    id = 201029,
    vignette = 5664,
    quest = 75365,
    rewards = {
        Achievement({id = 17783, criteria = 59210}) -- Adventurer of Zaralek Cavern
    }
}) -- Viridian King

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[36694883] = Treasure({
    quest = 73697,
    note = L['ancient_zaqali_chest_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59222}) -- Treasures of Zaralek Cavern
    },
    pois = {POI({36444822, 2883540})}
}) -- Ancient Zaqali Chest

map.nodes[28544791] = Treasure({
    quest = 72986,
    requires = ns.requirement.Item(15138),
    note = L['blazing_shadowflame_chest_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59220}), -- Treasures of Zaralek Cavern
        Toy({item = 205418}) -- Blazing Shadowflame Cinder
    }
}) -- Blazing Shadowflame Chest

map.nodes[42976040] = Treasure({
    quest = 75231, -- 75232
    requires = {
        ns.requirement.Quest(75145) -- In the Wake of the Ashes
    },
    rewards = {
        Achievement({id = 17786, criteria = 59225}) -- Treasures of Zaralek Cavern
    }
}) -- Bloody Body
-- coords and required quest from wowhead comments.
-- i completed the questline until "In the Wake of the Ashes" but the body is not there

map.nodes[30044193] = Treasure({
    quest = 73706,
    rewards = {
        Achievement({id = 17786, criteria = 59226}) -- Treasures of Zaralek Cavern
    }
}) -- Charred Egg

map.nodes[56040305] = Treasure({
    quest = 75187,
    note = L['chest_of_the_flights_treasure_note'] .. '\n\n' ..
        L['in_small_cave'],
    rewards = {
        Achievement({id = 17786, criteria = 59224}), -- Treasures of Zaralek Cavern
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Chest of the Flights

map.nodes[36397425] = Treasure({
    note = L['crystal_encased_chest_note'],
    quest = {74987, 75559, 75601, 73697, 74986},
    rewards = {
        Achievement({id = 17786, criteria = 59228}), -- Treasures of Zaralek Cavern
        Item({item = 204985}), -- Barter Brick
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {
        POI({color = 'Blue', points = {37756886}}), -- Attunement Crystal
        POI({color = 'Red', points = {39417328}}) -- Attunement Crystal
    }
}) -- Crystal-Encased Chest

map.nodes[62715376] = Treasure({
    quest = 75019,
    location = L['in_water'],
    rewards = {
        Achievement({id = 17786, criteria = 59223}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({62935317}), -- Water Entrance
        Path({62935317, 62605319, 62745362, 62715376}) -- Treasure Path
    }
}) -- Long-Lost Cache

map.nodes[43058256] = Treasure({
    requires = ns.requirement.Item(204323), -- Old Trunk Key
    quest = 74995,
    note = L['old_trunk_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59227}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({42988259, quest = 75526}), -- Mouse 1
        POI({42148016, quest = 75527, questDeps = 75526}), -- Mouse 2
        POI({41708145, quest = 75534, questDeps = 75527}), -- Mouse 3
        POI({42788221, quest = 75535, questDeps = 75534}), -- Mouse 4
        POI({43728385, questDeps = 75535}) -- Mouse 5
    }
}) -- Old Trunk

map.nodes[32333935] = Treasure({
    quest = 73410,
    note = L['seething_cache_treasure_note'],
    rewards = {
        Achievement({id = 17786, criteria = 59221}), -- Treasures of Zaralek Cavern
        Mount({item = 192779, id = 1623}) -- Seething Slug
    },
    pois = {
        POI({
            25244480, 26704700, 27704900, 27955121, 28755530, 29954797,
            30204000, 31185195, 34414571, 35634877, 36204401
        })
    }
}) -- Seething Cache

map.nodes[29774050] = Treasure({
    quest = 73395,
    note = L['well_chewed_chest_note'],
    requires = ns.requirement.Item(202869), -- Scorching Key
    rewards = {
        Achievement({id = 17786, criteria = 59219}) -- Treasures of Zaralek Cavern
    },
    pois = {
        POI({30314121}), -- Entrance
        POI({color = 'Green', points = {30134076}}) -- Scorching Key
    }
}) -- Well-Chewed Chest

-------------------------- NON-ACHIEVEMENT TREASURES --------------------------

map.nodes[48411636] = Treasure({
    label = L['molten_hoard_label'],
    quest = 75515,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 205981, slot = L['cosmetic']}) -- Molten Primal Fang
    },
    pois = {POI({48411819})}
}) -- Molten Hoard

map.nodes[48451083] = Treasure({
    label = L['fealtys_reward_label'],
    quest = 75514,
    note = L['fealtys_reward_note'],
    rewards = {
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {POI({43642300})} -- Dragon statue
}) -- Fealty's Reward

map.nodes[57956632] = Treasure({
    label = L['dreamers_bounty_label'],
    quest = 75762,
    note = L['dreamers_bounty_note']
}) -- Dreamer's Bounty

map.nodes[56734868] = Treasure({
    label = L['moth_pilfered_pouch_label'],
    quest = 75320,
    note = L['moth_pilfered_pouch_note'],
    rewards = {
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    pois = {POI({56664934})} -- Struggling Mothling
}) -- Moth-Pilfered Pouch

map.nodes[62055534] = Treasure({
    label = L['waterlogged_bundle_label'],
    quest = 75015,
    location = L['in_water'],
    rewards = {
        Item({item = 199906}), -- Titan Relic
        Item({item = 204985}), -- Barter Brick
        Currency({id = 2245}) -- Flightstones
    },
    pois = {
        POI({62485528}), -- Water Entrance
        Path({62485528, 62065530}) -- Treasure Path
    }
}) -- Waterlogged Bundle

map.nodes[64197495] = Treasure({
    label = L['nal_kskol_reliquary_label'],
    requires = {ns.requirement.Quest(72962)},
    quest = 75745,
    note = L['nal_kskol_reliquary_note'],
    pois = {POI({62577334})}
}) -- Nal ks'kol Reliquary

------------------------------ RANDOM TREASURES -------------------------------

map.nodes[60664622] = Treasure({
    label = L['stolen_stash_label'],
    quest = 75302,
    rewards = {
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Stolen Stash

deepflayerNest.nodes[63698291] = Treasure({
    label = L['stolen_stash_label'],
    quest = 75303,
    location = L['in_deepflayer_nest'],
    rewards = {
        Item({item = 204075}), -- Whelpling's Shadowflame Crest Fragment
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    },
    parent = {id = map.id, pois = {POI({61463864})}}
}) -- Stolen Stash

local RitualOffering = Class('RitualOffering', Treasure, {
    label = L['ritual_offering_label'],
    group = ns.groups.RITUAL_OFFERING,
    icon = 'chest_bn',
    rewards = {
        Item({item = 199906}), -- Titan Relic
        Item({item = 204985}), -- Barter Brick
        Currency({id = 2245}), -- Flightstones
        DC.RenewedProtoDrake.PlatedJaw
    }
}) -- Ritual Offering

map.nodes[26874611] = RitualOffering({quest = 73553})
map.nodes[27344217] = RitualOffering({quest = 73553})
map.nodes[28195157] = RitualOffering({quest = 73553})
map.nodes[28754415] = RitualOffering({quest = 73553})
map.nodes[28945491] = RitualOffering({quest = 73552})
map.nodes[30055140] = RitualOffering({quest = 73552})
map.nodes[30454365] = RitualOffering({quest = 73551})
map.nodes[31883961] = RitualOffering({quest = 73551})
map.nodes[31955275] = RitualOffering({quest = 73552})
map.nodes[32355045] = RitualOffering({quest = 73552})
map.nodes[32614416] = RitualOffering({quest = 73551})
map.nodes[33103990] = RitualOffering({quest = 73551})
map.nodes[35145225] = RitualOffering({quest = 73552})
map.nodes[35954450] = RitualOffering({quest = 73551})
map.nodes[36395236] = RitualOffering({quest = 73552})
map.nodes[38174991] = RitualOffering({quest = 73548})
map.nodes[40015127] = RitualOffering({quest = 73548})
map.nodes[41054876] = RitualOffering({quest = 73548})
map.nodes[41694457] = RitualOffering({quest = 73548})
map.nodes[41924712] = RitualOffering({quest = 73548}) -- 75814

local SmellyTrashPile = Class('SmellyTrashPile', ns.node.Node, {
    label = L['smelly_trash_pile_label'],
    icon = 'chest_gn',
    group = ns.groups.SMELLY_TRASH_PILE,
    rewards = {
        DC.WindingSlitherdrake.SpikedChin, --
        Currency({id = 2245}), -- Flightstones
        Item({item = 192055}), -- Dragon Isles Artifact
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Smelly Trash Pile
-- may require niffen renown level 2 or some quest to be completed.

map.nodes[31175207] = SmellyTrashPile()
map.nodes[35244459] = SmellyTrashPile()
map.nodes[35754907] = SmellyTrashPile()
map.nodes[42014541] = SmellyTrashPile()
map.nodes[37056988] = SmellyTrashPile()
map.nodes[37403969] = SmellyTrashPile()
map.nodes[37458125] = SmellyTrashPile()
map.nodes[39377663] = SmellyTrashPile()
map.nodes[40155751] = SmellyTrashPile()
map.nodes[40415197] = SmellyTrashPile()
map.nodes[40613568] = SmellyTrashPile()
map.nodes[43163817] = SmellyTrashPile()
map.nodes[43552886] = SmellyTrashPile()
map.nodes[44686196] = SmellyTrashPile()
map.nodes[45384348] = SmellyTrashPile()
map.nodes[59225178] = SmellyTrashPile()
map.nodes[45177786] = SmellyTrashPile()
map.nodes[45443717] = SmellyTrashPile()
map.nodes[46366109] = SmellyTrashPile()
map.nodes[46726819] = SmellyTrashPile()
map.nodes[47054134] = SmellyTrashPile()
map.nodes[47104296] = SmellyTrashPile()
map.nodes[49154325] = SmellyTrashPile()
map.nodes[50326091] = SmellyTrashPile()
map.nodes[51055710] = SmellyTrashPile()
map.nodes[51224089] = SmellyTrashPile()
map.nodes[51931544] = SmellyTrashPile()
map.nodes[52562740] = SmellyTrashPile()
map.nodes[57476456] = SmellyTrashPile()
map.nodes[60195755] = SmellyTrashPile()
map.nodes[62325600] = SmellyTrashPile()

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[40485918] = PT.Alchemy({id = 205213, quest = 75651}) -- Suspicious Mold
map.nodes[52631830] = PT.Alchemy({id = 205211, quest = 75646}) -- Nutrient Diluted Protofluid
map.nodes[62154115] = PT.Alchemy({id = 205212, quest = 75649}) -- Marrow-Ripened Slime

map.nodes[36674615] = PT.Inscription({id = 206031, quest = 76117}) -- Intricate Zaqali Runes
map.nodes[53007440] = PT.Inscription({id = 206034, quest = 76120}) -- Hissing Rune Draft
map.nodes[54472026] = PT.Inscription({
    id = 206035,
    quest = 76121,
    note = L['in_cave'],
    pois = {POI({52781885})}
}) -- Ancient Research

map.nodes[34504542] = PT.Jewelcrafting({id = 205216, quest = 75653}) -- Gently Jostled Jewels
map.nodes[40378070] = PT.Jewelcrafting({id = 205214, quest = 75652}) -- Snubbed Snail Shells
map.nodes[54413247] = PT.Jewelcrafting({id = 205219, quest = 75654}) -- Broken Barter Boulder

map.nodes[44521565] = PT.Tailoring({id = 206030, quest = 76116}) -- Exquisitely Embroidered Banner
map.nodes[47214855] = PT.Tailoring({id = 206019, quest = 76102}) -- Abandoned Reserve Chute
map.nodes[59117314] = PT.Tailoring({id = 206025, quest = 76110}) -- Used Medical Wrap Kit

map.nodes[36666933] = PT.Enchanting({id = 205001, quest = 75510}) -- Resonating Arcane Crystal
map.nodes[48251702] = PT.Enchanting({id = 204990, quest = 75508}) -- Lava-Drenched Shadow Crystal
map.nodes[62395380] = PT.Enchanting({id = 204999, quest = 75509}) -- Shimmering Aqueous Orb

map.nodes[50504790] = PT.Engineering({id = 204471, quest = 75184}) -- Defective Survival Pack
map.nodes[37825884] = PT.Engineering({id = 204475, quest = 75186}) -- Busted Wyrmhole Generator
map.nodes[48101659] = PT.Engineering({
    id = 204855,
    quest = 75433,
    location = L['in_small_cave'],
    note = L['molten_scoutbot_note']
}) -- Molten Scoutbot (Overclocked Determination Core)
map.nodes[48162790] = PT.Engineering({id = 204470, quest = 75183}) -- Haphazardly Discarded Bombs
map.nodes[48484868] = PT.Engineering({id = 204469, quest = 75180}) -- Misplace Aberrus Outflow Blueprints
map.nodes[49437901] = PT.Engineering({id = 204853, quest = 75431}) -- Discarded Dracothyst Drill
map.nodes[49875919] = PT.Engineering({id = 204471, quest = 75188}) -- Inconspicuous Data Miner
map.nodes[57657393] = PT.Engineering({
    id = 204850,
    quest = 75430,
    note = L['bolts_and_brass_note']
}) -- Bolts and Brass (Handful of Khaz'gorite Bolts)

map.nodes[27514286] = PT.Blacksmithing({id = 205988, quest = 76080}) -- Zaqali Elder Spear
map.nodes[48312201] = PT.Blacksmithing({id = 205987, quest = 76079}) -- Brimstone Rescue Ring
map.nodes[57155464] = PT.Blacksmithing({id = 205986, quest = 76078}) -- Well-Worn Kiln

map.nodes[41164881] = PT.Leatherworking({id = 204986, quest = 75495}) -- Flame-Infused Scale Oil
map.nodes[45252112] = PT.Leatherworking({id = 204987, quest = 75496}) -- Lava-Forged Leatherworker's "Knife"
map.nodes[49565480] = PT.Leatherworking({id = 204988, quest = 75502}) -- Sulfur-Soaked Skins

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[30414530] = Dragonglyph({rewards = {Achievement({id = 17513})}}) -- Dragon Glyphs: Zaqali Caldera
map.nodes[41638037] = Dragonglyph({rewards = {Achievement({id = 17510})}}) -- Dragon Glyphs: Glimmerogg
map.nodes[47443702] = Dragonglyph({rewards = {Achievement({id = 17516})}}) -- Dragon Glphys: Sulfur Ravine
map.nodes[48060438] = Dragonglyph({rewards = {Achievement({id = 17517})}}) -- Dragon Glyphs: Brimstone Garrison
map.nodes[54735470] = Dragonglyph({rewards = {Achievement({id = 17512})}}) -- Dragon Glyphs: Loamm
map.nodes[55342771] = Dragonglyph({rewards = {Achievement({id = 17514})}}) -- Dragon Glyphs: Slitherdrake Roost
map.nodes[62717036] = Dragonglyph({rewards = {Achievement({id = 17511})}}) -- Dragon Glyphs: Nal Ks'kol
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
}) -- Demanding Perfection

map.nodes[61257181] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58827})}
}) -- Binding Oaths

map.nodes[47384855] = AncientStone({
    rewards = {Achievement({id = 17567, criteria = 58828})}
}) -- Primal Power

-------------------------------------------------------------------------------
-------------------------------- SNIFFEN SAGE ---------------------------------
-------------------------------------------------------------------------------

map.nodes[55625745] = Collectible({
    id = 203773,
    icon = 5140835,
    requires = {
        ns.requirement.Quest(74876), -- The Buddy System
        -- TODO: These quests are stored just in case and we probably won't
        -- use then. I pulled them from the the PTR Wowhead page while I could.
        ns.requirement.Quest(75765), ns.requirement.Quest(75766),
        ns.requirement.Quest(75767), ns.requirement.Quest(75768),
        ns.requirement.Quest(75769), ns.requirement.Quest(75770),
        ns.requirement.Quest(75771), ns.requirement.Quest(75772),
        ns.requirement.Quest(75774)
    },
    rewards = {
        Achievement({
            id = 17833,
            criteria = {id = 1, qty = true, suffix = L['sniffen_sage_suffix']}
        }) -- Sniffen Sage
    }
}) -- Myrrit <Sniffenseeker>

-------------------------------------------------------------------------------
------------------------ SLOW AND STEADY WINS THE RACE ------------------------
-------------------------------------------------------------------------------

map.nodes[44458040] = Collectible({
    label = '{npc:201099}',
    icon = 5003559,
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
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

------------------------ MOUNT: BIG SLICK IN THE CITY -------------------------

local Briggul = Class('Briggul', Collectible, {
    id = 201752,
    icon = 5003561,
    requires = {
        ns.requirement.Quest(73708), -- Pay to Play
        ns.requirement.Quest(73709), -- Favor on the Side
        ns.requirement.Reputation(2564, 7, true) -- Loamm Niffen
    },
    rewards = {
        Mount({item = 205155, id = 1729}) -- Big Slick in the City
    }
}) -- Briggul <Snail Trainer>

function Briggul.getters:note()
    local function status(questID)
        if C_QuestLog.IsQuestFlaggedCompleted(questID) then
            return ns.status.Green(L['completed'])
        else
            return ns.status.Red(L['incomplete'])
        end
    end

    local note = L['big_slick_note'] .. '\n\n'
    local pets = { -- {quest, npc}
        {74948, 154836}, {74949, 184187}, {74950, 154718}, {74952, 184195},
        {74959, 98445}, {74960, 183292}, {74961, 154837}, {74962, 64352},
        {74963, 62313}, {74964, 51635}, {74965, 139450}, {74786, 62246},
        {74966, 63001}, {74967, 154716}, {74968, 107125}
    }
    for i in ipairs(pets) do
        note = note .. status(pets[i][1]) .. ' {npc:' .. pets[i][2] .. '}\n'
    end

    return note
end

map.nodes[44257993] = Briggul()

-- local darkshore = Map({id = 62, settings = false})

-- darkshore.nodes[47161853] = Collectible({
--     id = 48182,
--     icon = 442735,
--     note = L['big_slick_note'],
--     rewards = {
--         Pet({id = 493}) -- Shimmershell Snail
--     },
--     pois = {
--         POI({57941511, 57561701, 54761786, 53492013}), -- Shimmershell Snail
--         Path({Circle({origin = 48652445, radius = 1.5})}) -- Zidormi
--     }
-- }) -- Shimmershell Snail

-------------------------------------------------------------------------------

local LoammVendor = Class('LoammVendor', Collectible,
    {icon = 'peg_bl', scale = 1.3}) -- Loamm Vendor

map.nodes[55895537] = LoammVendor({
    id = 203615,
    note = L['saccratos_note'],
    rewards = {
        Pet({item = 205118, id = 3535, note = 'x50'}), -- Diamondshell
        Mount({item = 191838, id = 1603, note = 'x100'}), -- Subterranean Magmammoth
        Mount({item = 205197, id = 1730, note = 'x400'}) -- Igneous Shalewing
    }
}) -- Saccratos <Coveted Bauble Exchange>

map.nodes[58085381] = LoammVendor({
    id = 204693,
    note = L['ponzo_note'],
    rewards = {
        DC.SetNote(DC.WindingSlitherdrake.HairyBrow, 'x55'),
        DC.SetNote(DC.WindingSlitherdrake.ClusterChinHorn, 'x55'),
        DC.SetNote(DC.WindingSlitherdrake.CurledNose, 'x55'),
        Pet({item = 205120, id = 3537, note = 'x85'}), -- Thimblerig
        Mount({item = 205209, id = 1736, note = 'x170'}) -- Boulder Hauler
    }
}) -- Ponzo <Barterer Extraordinaire>
