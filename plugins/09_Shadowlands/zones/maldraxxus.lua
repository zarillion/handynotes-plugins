-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local isinstance = ns.isinstance

local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------

local NECROLORD = ns.covenants.NEC

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1536 })
local nodes = map.nodes

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_maldraxxus'] = true
defaults['treasure_maldraxxus'] = true
defaults['kitten_maldraxxus'] = true

options.groupMaldraxxus = {
    type = "header",
    name = C_Map.GetMapInfo(map.id).name,
    order = 20,
}

options.rareMaldraxxus = {
    type = "toggle",
    arg = "rare_maldraxxus",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 21,
    width = "normal",
}

options.treasureMaldraxxus = {
    type = "toggle",
    arg = "treasure_maldraxxus",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 22,
    width = "normal",
}

options.kittenMaldraxxus = {
    type = "toggle",
    arg = "kitten_maldraxxus",
    name = L["options_toggle_kittens"],
    desc = L["options_toggle_kittens_desc"],
    order = 23,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[52663542] = Rare({
    id=162727,
    quest=58870,
    rewards={
        Achievement({id=14308, criteria=48876})
    }
}) -- Bubbleblood

nodes[49012351] = Rare({
    id=159105,
    quest=58005,
    rewards={
        Achievement({id=14308, criteria=48866})
    }
}) -- Collector Kash

nodes[26392633] = Rare({
    id=157058,
    quest=58335,
    rewards={
        Achievement({id=14308, criteria=48872})
    }
}) -- Corpsecutter (Bonebreaker) Moroc

nodes[76835707] = Rare({
    id=162711,
    quest=58868,
    rewards={
        Achievement({id=14308, criteria=48851}),
        Pet({id=2953, item=181263}) -- Shy Melvin
    }
}) -- Deadly Dapperling

nodes[46734550] = Rare({
    id=162797,
    quest=58878,
    note=L["deepscar_note"],
    rewards={
        Achievement({id=14308, criteria=48852}),
        Transmog({item=182191, slot=L["1h_mace"]}) -- Slobber-Soaked Chew Toy
    },
    pois={
        POI({48125190, 53974548})
    }
}) -- Deepscar

nodes[45052842] = Rare({
    id=162669,
    quest=58835,
    rewards={
        Achievement({id=14308, criteria=48855})
    }
}) -- Devour'us

nodes[31603540] = Rare({
    id=162741,
    quest=58872,
    covenant=NECROLORD,
    note=L["gieger_note"],
    rewards={
        Achievement({id=14308, criteria=48871}),
        Mount({item=182080, id=1411}) -- Predatory Bonejowl
    }
}) -- Gieger

nodes[57795155] = Rare({
    id=162588,
    quest=58837,
    note=L["gristlebeak_note"],
    rewards={
        Achievement({id=14308, criteria=48853}),
        Transmog({item=182196, slot=L["crossbow"]}) -- Arbalest of the Colossal Predator
    }
}) -- Gristlebeak

nodes[38794333] = Rare({
    id=161105,
    quest=58332,
    note=L["schmitd_note"],
    rewards={
        Achievement({id=14308, criteria=48848}),
        Transmog({item=182192, slot=L["plate"]}) -- Knee-Obstructing Legguards
    }
}) -- Indomitable Schmitd

nodes[72872891] = Rare({
    id=174108,
    quest=62369,
    rewards={
        Achievement({id=14308, criteria=49724})
    }
}) -- Necromantic Anomaly

nodes[66023532] = Rare({
    id=162690,
    quest=58851,
    rewards={
        Achievement({id=14308, criteria=49723})
    }
}) -- Nerissa Heartless

nodes[53726132] = Rare({
    id=162767,
    quest=58875,
    rewards={
        Achievement({id=14308, criteria=48849}),
        Transmog({item=182205, slot=L["mail"]}) -- Scarab-Shell Faceguard
    }
}) -- Nirvaska the Summoner

nodes[50346328] = Rare({
    id=161857,
    quest=58629,
    rewards={
        Achievement({id=14308, criteria=48868})
    }
}) -- Pesticide

nodes[53841877] = Rare({
    id=159753,
    quest=58004,
    rewards={
        Achievement({id=14308, criteria=48865}),
        Pet({item=181283, id=2964}) -- Foulwing Hatchling
    }
}) -- Ravenomous

nodes[50354728] = Rare({
    id=168147,
    quest=nil,
    note=L["activation_unknown"],
    rewards={
        Achievement({id=14308, criteria=48874})
    }
}) -- Sabreil the Bonecleaver

nodes[62107580] = Rare({
    id=158406,
    quest=58006,
    rewards={
        Achievement({id=14308, criteria=48857}),
        Pet({item=181267, id=2957}) -- Writhing Spine
    }
}) -- Scunner

nodes[55502361] = Rare({
    id=159886,
    quest=58003,
    note=L["chelicerae_note"],
    rewards={
        Achievement({id=14308, criteria=48873}),
        Pet({item=181172, id=2948}) -- Boneweave Hatchling
    }
}) -- Sister Chelicerae

nodes[42465345] = Rare({
    id=162528,
    quest=58768,
    rewards={
        Achievement({id=14308, criteria=48869}),
        Pet({item=181266, id=2956}), -- Bloodlouse Hatchling
        Pet({item=181265, id=2955}) -- Corpselouse Hatchling
    }
}) -- Smorgas the Feaster

nodes[44215132] = Rare({
    id=162586,
    quest=58783,
    rewards={
        Achievement({id=14308, criteria=48850}),
        Transmog({item=182190, slot=L["leather"]}) -- Tauralus Hide Collar
    }
}) -- Tahonta

-- nodes[] = Rare({
--     id=160059,
--     quest=nil,
--     rewards={
--         Achievement({id=14308, criteria=48867})
--     }
-- }) -- Taskmaster Xox

-- nodes[] = Rare({
--     id=162180,
--     quest=nil,
--     rewards={
--         Achievement({id=14308, criteria=48870})
--     }
-- }) -- Thread Mistress Leeda

nodes[33538086] = Rare({
    id=162819,
    quest=nil,
    note=L["malkorak_note"],
    rewards={
        Achievement({id=14308, criteria=48875})
    }
}) -- Warbringer Mal'Korak

-- nodes[] = Rare({
--     id=157125,
--     quest=nil,
--     rewards={
--         Achievement({id=14308, criteria=48864})
--     }
-- }) -- Zargox the Reborn

------------------------- POOL OF MIXED MONSTROSITIES -------------------------

local MISCIBLE_OOZE = "|T646670:0|t"
local MEPHITIC_GOO = "|T136007:0|t"
local VISCOUS_OIL = "|T136124:0|t"

nodes[58197421] = Rare({
    id=157226,
    quest={61718, 61719, 61720, 61721, 61722, 61723, 61724},
    questCount=true,
    note=L["mixed_pool_note"],
    rewards = {
        Achievement({id=14721, criteria={
            {id=48858, quest=61721, note=MISCIBLE_OOZE..' > '..MEPHITIC_GOO..' '..VISCOUS_OIL}, -- Gelloh
            {id=48863, quest=61719, note=MEPHITIC_GOO..' > '..MISCIBLE_OOZE..' '..VISCOUS_OIL}, -- Corrupted Sediment
            {id=48854, quest=61718, note=VISCOUS_OIL..' > '..MISCIBLE_OOZE..' '..MEPHITIC_GOO}, -- Pulsing Leech
            {id=48860, quest=61722, note='('..MISCIBLE_OOZE..' = '..MEPHITIC_GOO..') > '..VISCOUS_OIL}, -- Boneslurp
            {id=48862, quest=61723, note='('..MISCIBLE_OOZE..' = '..VISCOUS_OIL..') > '..MEPHITIC_GOO}, -- Burnblister
            {id=48861, quest=61720, note='('..MEPHITIC_GOO..' = '..VISCOUS_OIL..') > '..MISCIBLE_OOZE}, -- Violet Mistake
            {id=48859, quest=61724, note=MISCIBLE_OOZE..' = '..MEPHITIC_GOO..' = '..VISCOUS_OIL}, -- Oily Invertebrate
        }}),
        Pet({item=181270, id=2960}) -- Decaying Oozewalker
    }
})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[44083989] = Treasure({
    quest=60368,
    label=L["blackhound_cache"]
}) -- Blackhound Cache

nodes[36797862] = Treasure({
    label=L["bladesworn_supply_cache"]
}) -- Bladesworn Supply Cache

nodes[49441509] = Treasure({
    quest=59244,
    rewards={
        Achievement({id=14312, criteria=50070}),
        Item({item=183696}) -- Sp-eye-glass
    }
}) -- Chest of Eyes

nodes[22503030] = Treasure({
    quest=nil,
    rewards={
        Achievement({id=14312, criteria=50069})
    }
}) -- Forgotten Mementos

nodes[41511953] = Treasure({
    quest=62602,
    label=L["giant_cache_of_epic_treasure"],
    note=L["spinebug_note"],
    rewards={
        Pet({id=3047}) -- Spinebug
    }
}) -- Giant Cache of Epic Treasure

nodes[72895365] = Treasure({
    quest=61484,
    note=L["glutharns_note"],
    rewards={
        Achievement({id=14312, criteria=50072})
    }
}) -- Glutharn's Stash

nodes[30792874] = Treasure({
    quest=60730,
    rewards={
        Achievement({id=14312, criteria=50065})
    }
}) -- Halis's Lunch Pail

nodes[32742127] = Treasure({
    quest=60587,
    note=L["kyrian_keepsake_note"],
    rewards={
        Achievement({id=14312, criteria=50064}),
        Item({item=180085}),
        Item({item=175708, note=L["neck"]})
    }
}) -- Kyrian Keepsake

nodes[62505990] = Treasure({
    quest=59245,
    note=L["misplaced_supplies"],
    rewards={
        Achievement({id=14312, criteria=50071}),
    },
    pois={
        POI({61925851, scale=0.75}) -- Way up
    }
}) -- Misplaced Supplies

nodes[42382333] = Treasure({
    quest=61470,
    note=L["necro_tome_note"],
    rewards={
        Achievement({id=14312, criteria=50068}),
        Toy({item=182732}) -- The Necronom-i-nom
    },
    pois={
        POI({40693305, scale=0.75}) -- NPC location
    }
}) -- Necro Tome

nodes[47236216] = Treasure({
    quest=59358,
    rewards={
        Achievement({id=14312, criteria=50063}),
        Transmog({item=180749, slot=L["shield"]}) -- Hauk's Battle-Scarred Bulwark
    }
}) -- Ornate Bone Shield

nodes[57667581] = Treasure({
    quest=61474,
    note=L["plaguefallen_chest_note"],
    rewards={
        Achievement({id=14312, criteria=50074}),
        Pet({item=183515, id=3045}) -- Reanimated Plague
    },
    pois={
        POI({62487656, scale=0.75})
    }
}) -- Plaguefallen Chest

nodes[64672475] = Treasure({
    quest=nil,
    note=L["activation_unknown"],
    rewards={
        Achievement({id=14312, criteria=50075})
    }
}) -- Ritualist's Cache

nodes[31737004] = Treasure({
    quest=nil,
    requires="{item:181777}",
    note=L["requirement_not_found"],
    rewards={
        Achievement({id=14312, criteria=50073})
    }
}) -- Runespeaker's Trove

nodes[73564986] = Treasure({
    quest=61451,
    note=L["stolen_jar_note"],
    rewards={
        Achievement({id=14312, criteria=50067}),
        Item({item=182618, quest=62085}) -- ... Why Me?
    }
}) -- Stolen Jar

nodes[55893897] = Treasure({
    quest={59428,59429},
    label='unit:Creature-0-0-0-0-165037',
    note=L["strange_growth_note"],
    rewards={
        --Item({item=182607}), -- Hairy Egg
        Pet({item=182606, id=3013}) -- Bloodlouse Larva
    }
}) -- Strange Growth

-- nodes[] = Treasure({
--     quest=,
--     note=L[""],
--     rewards={
--         Achievement({id=14312, criteria=49436}),
--     }
-- }) -- Sword of Oonar

nodes[59867906] = Treasure({
    quest=61444,
    note=L["vat_of_slime_note"],
    rewards={
        Achievement({id=14312, criteria=50066}),
        Toy({item=181825}) -- Phial of Ravenous Slime
    }
}) -- Vat of Conspicuous Slime

nodes[51444848] = Treasure({
--    quest=61127, -- Oonar's Arm / Sorrowbane questid missing
    note=L["oonar_sorrowbane_note"],
    rewards={
        Achievement({id=14626, criteria=0}),
        Pet({item=181164, id=2944}), -- Oonar's Arm
        Transmog({item=180273, slot=L["2h_sword"]}), --Sorrowbane
    },
    pois={
        POI({50945317, 37114699, 53634792, 76445672, scale=0.75})
    }
}) -- Oonar's Arm and Sorrowbane /Oornas Arm und Kummerfluch

-------------------------------------------------------------------------------
------------------------------- NINE AFTERLIVES -------------------------------
-------------------------------------------------------------------------------

local Kitten = Class('Kitten', NPC, {
    icon = 3732497, -- inv_catslime
    sublabel = L["pet_cat"]
})

function Kitten:enabled (map, coord, minimap)
    -- Stop showing the node once the achievement criteria is completed
    if self:done() then return false end
    return NPC.enabled(self, map, coord, minimap)
end

nodes[65225065] = Kitten({id=174224, rewards={
    Achievement({id=14634, criteria=49428})
}}) -- Envy

nodes[51002750] = Kitten({id=174230, rewards={
    Achievement({id=14634, criteria=49430})
}, note=L["lime"]}) -- Lime

nodes[49461761] = Kitten({id=174234, rewards={
    Achievement({id=14634, criteria=49431})
}}) -- Mayhem

nodes[34305310] = Kitten({id=174237, rewards={
    Achievement({id=14634, criteria=49433})
}}) -- Meowmalade

nodes[47533375] = Kitten({id=174236, rewards={
    Achievement({id=14634, criteria=49432})
}, note=L["moldstopheles"]}) -- Moldstopheles

nodes[64802240] = Kitten({id=174226, rewards={
    Achievement({id=14634, criteria=49429})
}}) -- Mr. Jigglesworth

nodes[50246027] = Kitten({id=174223, rewards={
    Achievement({id=14634, criteria=49427})
}, note=L["pus_in_boots"]}) -- Pus-In-Boots

nodes[32005700] = Kitten({id=174221, rewards={
    Achievement({id=14634, criteria=49426})
}}) -- Snots

local HAIRBALL = Kitten({id=174195, rewards={
    Achievement({id=14634, criteria=49425})
}, note=L["hairball"]}) -- Hairball

-- Add Hairball to the dungeon map
local festering_sanctum = Map({ id=1697 })
festering_sanctum.nodes[45203680] = HAIRBALL
ns.maps[festering_sanctum.id] = festering_sanctum

-- Add Hairball to the world map
nodes[68108620] = HAIRBALL

-------------------------------------------------------------------------------

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    -- add rlabel and warning if covenant doesn't match
    ns.processCovenant(node)

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_maldraxxus end
    if isinstance(node, Treasure) then return profile.treasure_maldraxxus end
    if isinstance(node, Kitten) then return profile.kitten_maldraxxus end
    return true
end

ns.maps[map.id] = map
