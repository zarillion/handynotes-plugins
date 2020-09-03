-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map
local isinstance = ns.isinstance

local Node = ns.node.Node
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------

local KYRIAN = ns.covenants.KYR

------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1533 })
local nodes = map.nodes

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['rare_bastion'] = true
defaults['treasure_bastion'] = true
defaults['anima_shard_bastion'] = false

options.groupBastion = {
    type = "header",
    name = C_Map.GetMapInfo(map.id).name,
    order = 10,
}

options.rareBastion = {
    type = "toggle",
    arg = "rare_bastion",
    name = L["options_toggle_rares"],
    desc = L["options_toggle_rares_desc"],
    order = 11,
    width = "normal",
}

options.treasureBastion = {
    type = "toggle",
    arg = "treasure_bastion",
    name = L["options_toggle_treasures"],
    desc = L["options_toggle_treasures_desc"],
    order = 12,
    width = "normal",
}

options.animaShardBastion = {
    type = "toggle",
    arg = "anima_shard_bastion",
    name = L["options_toggle_anima_shards"],
    desc = L["options_toggle_anima_shards_desc"],
    order = 13,
    width = "normal",
}

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[32592336] = Rare({
    id=171211,
    quest=61083,
    requires='{item:180613}',
    note=L["aspirant_eolis_note"],
    rewards={
        Achievement({id=14307, criteria=48844}),
        Transmog({item=183607, slot=L["polearm"]}) -- Uncertain Aspirant's Spear
    },
    pois={
        POI({32322113, 32762034}) -- Fragile Humility Scroll
    }
}) -- Aspirant Eolis

nodes[51344080] = Rare({
    id=160629,
    quest=nil,
    note=L["activation_unknown"],
    rewards={
        Achievement({id=14307, criteria=48828})
    }
}) -- Baedos

nodes[48985031] = Rare({
    id=170659,
    quest={60897,62158},
    note=L["basilofos_note"],
    rewards={
        Achievement({id=14307, criteria=48833}),
        Toy({item=182655}) -- Hill King's Roarbox
    }
}) -- Basilofos, King of the Hill

nodes[55358024] = Rare({
    id=161527,
    label=L["beasts_of_bastion"],
    note=L["beasts_of_bastion_note"],
    quest={60570, 60571, 60569, 58526},
    questCount=true,
    rewards = {
        Achievement({id=14307, criteria={
            {id=48825, quest=60570}, -- Sigilback
            {id=48826, quest=60571}, -- Cloudtail (shows as Sigilback -_-)
            {id=48827, quest=60569}, -- Nemaeus
            -- {id=nil, quest=58526}, -- Aethon (no criteria ...)
        }}),
        Toy({item=174445}), -- Glimmerfly Cocoon
        Transmog({item=179485, slot=L["dagger"]}), -- Fang of Nemaeus
        Transmog({item=179486, slot=L["1h_mace"]}), -- Sigilback's Smashshell
        Transmog({item=179487, slot=L["warglaive"]}), -- Aethon's Horn
        Transmog({item=179488, slot=L["fist"]}), -- Cloudtail's Paw
    }
}) -- Beasts of Bastion

nodes[55826249] = Rare({
    id=171189,
    quest={59022,62167},
    note=L["bookkeeper_mnemis_note"],
    rewards={
        Achievement({id=14307, criteria=48843}),
        Item({item=182682, note=L["trinket"]}) -- Book-Borrower Identification
    }
}) -- Bookkeeper Mnemis

nodes[50435804] = Rare({
    id=170932,
    quest={60978,62191},
    note=L["cloudfeather_patriarch_note"],
    rewards={
        Achievement({id=14307, criteria=48835}),
        Pet({item=180812, id=2925}) -- Golden Teroclaw
    }
}) -- Cloudfeather Patriarch

nodes[66004367] = Rare({
    id=171014,
    quest=61002,
    note=L["collector_astor_note"],
    rewards={
        Achievement({id=14307, criteria=48841})
    },
    pois={
        POI({
            -- 66194411, Mercia's Legacy: Chapter One
            -- 65904411, Mercia's Legacy: Chapter Two
            -- 65734396, Mercia's Legacy: Chapter Three
            -- 65734345, Mercia's Legacy: Chapter Four
            -- 65934316, Mercia's Legacy: Chapter Five
            -- 66204327, Mercia's Legacy: Chapter Six
            64174218 -- Mercia's Legacy: Chapter Seven
        })
    }
}) -- Collector Astorestes

nodes[56904778] = Rare({
    id=171010,
    quest=60999,
    requires="{item:180651}",
    note=L["corrupted_clawguard_note"],
    rewards={
        Achievement({id=14307, criteria=48846})
    },
    pois={
        POI({55004125}) -- Forgefire Outpost
    }
}) -- Corrupted Clawguard

nodes[27823014] = Rare({
    id=170623,
    quest=60883,
    note=L["dark_watcher_note"],
    rewards={
        Achievement({id=14307, criteria=48834})
        -- also dropped class-specific finesse conduits
    }
}) -- Dark Watcher

nodes[37004180] = Rare({
    id=171011,
    quest={61069,61000},
    note=L["demi_hoarder_note"],
    rewards={
        Achievement({id=14307, criteria=48842})
    },
    pois={
        Path({
            37004180, 37714171, 37944069, 38484042, 39004077, 39354145,
            39854155, 40334106, 40424024, 40733931, 41233883
        })
    }
}) -- Demi the Relic Hoarder

nodes[41354887] = Rare({
    id=163460,
    quest=62650,
    note=L["in_small_cave"]..' '..L["dionae_note"],
    rewards={
        Achievement({id=14307, criteria=48831})
    }
}) -- Dionae

nodes[45546459] = Rare({
    id=171255,
    quest={61082,61091,62251},
    rewards={
        Achievement({id=14307, criteria=48845}),
        Item({item=180062}) -- Heavenly Drum
    },
    pois={
        Path({45546459, 44656486, 44766596, 45366670, 45866643, 45616562})
    }
}) -- Echo of Aella <Hand of Courage>

nodes[56111447] = Rare({
    id=171013,
    quest=nil,
    rewards={
        Achievement({id=14307, criteria=48838})
    }
}) -- Embodied Hunger

nodes[51151953] = Rare({
    id=171009,
    quest=60998,
    rewards={
        Achievement({id=14307, criteria=48836})
    },
    pois={
        Path({
            51151953, 50761914, 50681837, 50731769, 50931703, 51351673,
            51881686, 52251724, 52451799, 52351868, 52051918, 51651962,
            51151953
        })
    }
}) -- Enforcer Aegeon

nodes[60427305] = Rare({
    id=160721,
    quest=58222,
    rewards={
        Achievement({id=14307, criteria=48824}),
        Transmog({item=180444, slot=L["leather"]}) -- Harmonia's Chosen Belt
    },
    pois={
        Path({60137285, 60427305, 60597376})
    }
}) -- Fallen Acolyte Erisne

nodes[42908265] = Rare({
    id=158659,
    quest={57705,57708},
    note=L["herculon_note"],
    requires="{item:172451} x10",
    rewards={
        Achievement({id=14307, criteria=48823})
    }
}) -- Herculon

nodes[51456859] = Rare({
    id=160882,
    quest=58319,
    note=L["nikara_note"],
    rewards={
        Achievement({id=14307, criteria=48830}),
        Transmog({item=183608, slot=L["offhand"]}) -- Evernote Vesper
    }
}) -- Nikara Blackheart

nodes[30365517] = Rare({
    id=171327,
    quest=nil,
    note=L["activation_unknown"]
}) -- Reekmonger

nodes[61409050] = Rare({
    id=170548,
    quest=nil,
    note=L["activation_unknown"],
    rewards={
        Achievement({id=14307, criteria=48832})
    },
    pois={
        Path({
            58209700, 61009560, 61609340, 61409050,
            61708710, 62808430, 62508060, 61107910
        }),
        POI({60049398}) -- Buff?
    }
}) -- Sundancer

nodes[43482524] = Rare({
    id=171008,
    quest=60997,
    note=L["unstable_memory_note"],
    rewards={
        Achievement({id=14307, criteria=48837})
    }
}) -- Unstable Memory

nodes[40705290] = Rare({
    id=167078,
    quest=nil,
    note=L["activation_unknown"],
    rewards={
        Achievement({id=14307, criteria=48829}),
        Item({item=182749}) -- Regurgitated Kyrian Wings
    },
    pois={
        POI({41635452})
    }
}) -- Wingflayer the Cruel

nodes[48004290] = Rare({
    id=171041,
    quest=61047,
    rewards={
        Achievement({id=14307, criteria=48840}),
        Transmog({item=183605, slot=L["warglaive"]}) -- Devourer Wrought Warglaive
    },
    pois={
        POI({48004290, 52013263, 56111447})
    }
}) -- Worldfeaster Chronn

nodes[63503590] = Rare({
    id=171040,
    quest=61046,
    rewards={
        Achievement({id=14307, criteria=48839}),
        Transmog({item=183605, slot=L["warglaive"]}) -- Devourer Wrought Warglaive
    }
}) -- Xixin the Ravening

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Treasure of Courage (27051932)
-- Treasure of Purity (26852473)
-- Treasure of Humility (24662039)
-- Treasure of Wisdom (23652548)

nodes[46114536] = Treasure({
    quest=61006,
    note=L["in_cave"],
    rewards={
        Achievement({id=14311, criteria=50053})
    }
}) -- Abandoned Stockpile

nodes[35834811] = Treasure({
    quest=61053,
    requires="{item:180536}",
    note=L["broken_flute"],
    rewards={
        Achievement({id=14311, criteria=50055}),
        Item({item=180064}) -- Ascended Flute
    }
}) -- Broken Flute

nodes[51471795] = Treasure({
    quest=61052,
    requires="{item:180534}",
    note=L["experimental_construct_part"],
    rewards={
        Achievement({id=14311, criteria=50054}),
        Transmog({item=183609, slot=L["fist"]}) -- Re-Powered Golliath Fists
    },
    pois={
        POI({53541715, 53141903}) -- Unstable Anima Core
    }
}) -- Experimental Construct Part

nodes[35085805] = Treasure({
    quest=60893,
    requires="{spell:333063}",
    note=L["gift_of_agthia"],
    rewards={
        Achievement({id=14311, criteria=50058}),
        Item({item=180063}) -- Unearthly Chime
    },
    pois={
        Path({39085448, 38455706, 37405674, 37115684, 35165822})
    }
}) -- Gift of Agthia

nodes[70473645] = Treasure({
    quest=60892,
    requires="{spell:333045}",
    note=L["gift_of_chyrus"],
    rewards={
        Achievement({id=14311, criteria=50060})
    },
    pois={
        POI({69374031, scale=0.75})
    }
}) -- Gift of Chyrus

nodes[27602179] = Treasure({
    quest=60895,
    requires="{spell:333070}",
    note=L["gift_of_devos"],
    rewards={
        Achievement({id=14311, criteria=50062}),
        Item({item=179977}) -- Benevolent Gong
    },
    pois={
        Path({
            23932482, 24712512, 25232402, 25832329, 25792226, 25192140,
            25732097, 26552137, 27122130, 27102031, 27452003, 27702102,
            27602179
        }) -- Suggested path
    }
}) -- Gift of Devos

nodes[40601890] = Treasure({
    quest=60894,
    requires="{spell:333068}",
    note=L["gift_of_thenios"],
    rewards={
        Achievement({id=14311, criteria=50061})
    }
}) -- Gift of Thenios

nodes[64877114] = Treasure({
    quest=60890,
    requires="{spell:332785}",
    note=L["gift_of_vesiphone"],
    rewards={
        Achievement({id=14311, criteria=50059}),
        Pet({item=180859, id=2935}) -- White Vulpin
    }
}) -- Gift of Vesiphone

nodes[58233999] = Treasure({
    quest=61049,
    note=L["larion_harness"],
    rewards={
        Achievement({id=14311, criteria=50051}),
        Item({item=182652})
    }
}) -- Larion Tamer's Harness

nodes[59336092] = Treasure({
    quest=61048,
    rewards={
        Achievement({id=14311, criteria=50050}),
        Item({item=182693, quest=62170}) -- You'll Never Walk Alone
    }
}) -- Lost Disciple's Notes

nodes[56481714] = Treasure({
    quest=61150,
    requires="{item:180797}",
    note=L["memorial_offering"],
    rewards={
        Achievement({id=14311, criteria=50056})
    },
    pois={
        POI({
            56851899, -- Drink Tray
        })
    }
}) -- Memorial Offering
--Kobri coordinate 47967389

nodes[52038607] = Treasure({
    quest=58329,
    rewards={
        Achievement({id=14311, criteria=50049}),
        Item({item=174007})
    }
}) -- Purifying Draught

-- 58292 (purians), 58294 (first offer), 58293 (second offer)
nodes[53508037] = Treasure({
    quest=58298,
    note=L["scroll_of_aeons"],
    rewards={
        Achievement({id=14311, criteria=50047}),
        Toy({item=173984}) -- Scroll of Aeons
    },
    pois={
        POI({54428387, 56168305})
    }
}) -- Scroll of Aeons

nodes[40504980] = Treasure({
    quest=61044,
    rewards={
        Achievement({id=14311, criteria=50052}),
        Transmog({item=182561, slot=L["cloak"]}) -- Fallen Disciple's Cloak
    }
}) -- Stolen Equipment

nodes[36012652] = Treasure({
    quest=nil,
    requires="{item:180858}",
    note=L["requirement_not_found"],
    rewards={
        Achievement({id=14311, criteria=50057})
    }
}) -- Vesper of the Silver Wind

nodes[58667135] = Treasure({
    quest=60478,
    rewards={
        Achievement({id=14311, criteria=50048}),
        Item({item=179982}) -- Kyrian Bell
    }
}) -- Vesper of Virtues

-------------------------------------------------------------------------------
----------------------------- ANIMA CRYSTAL SHARDS ----------------------------
-------------------------------------------------------------------------------

local AnimaShard = Class('AnimaShard', Node, {
    label=L["anima_shard"],
    icon='anima_crystal',
    scale=1.5,
    rewards={
        Achievement({id=14339, criteria={
            {id=0, qty=true, suffix=" "..L["anima_shard"]}
        }})
    }
})

nodes[39057704] = AnimaShard({quest=61225, note=L["anima_shard_61225"]})
-- 61226 https://shadowlands.wowhead.com/quest=61226/extra-limbs
-- 61227 https://shadowlands.wowhead.com/quest=61227/the-other-foot
-- 61228 https://shadowlands.wowhead.com/quest=61228/dugs-missing-shovel
-- 61229 Vestibule of Eternity?
-- 61230 https://shadowlands.wowhead.com/quest=61230/outside-influence
-- 61231 Vestibule of Eternity?
-- 61232 Vestibule of Eternity?
-- 61233 Vestibule of Eternity?
-- 61234 https://shadowlands.wowhead.com/quest=61234/stonehucks-sinstone
nodes[43637622] = AnimaShard({quest=61235, note=L["anima_shard_61235"]})
nodes[48427273] = AnimaShard({quest=61236, note=L["anima_shard_61236"]})
nodes[52677555] = AnimaShard({quest=61237, note=L["anima_shard_61237"]})
nodes[53317362] = AnimaShard({quest=61238, note=L["anima_shard_61238"]})
nodes[53498060] = AnimaShard({quest=61239, note=L["anima_shard_61239"]})
-- 61240 Aspirant's Crucible?
nodes[55968666] = AnimaShard({quest=61241, note=L["anima_shard_61241"]})
-- 61242 Sundancer area?
-- 61243 https://shadowlands.wowhead.com/quest=61243/thelas-memory-stone
nodes[61048566] = AnimaShard({quest=61244, note=L["anima_shard_61244"]})
nodes[58108008] = AnimaShard({quest=61245, note=L["anima_shard_61245"]})
-- 61246 https://shadowlands.wowhead.com/quest=61246/power-of-the-chosen
nodes[56877498] = AnimaShard({quest=61247, note=L["anima_shard_61247"]})
-- 61248 https://shadowlands.wowhead.com/quest=61248/kaletars-freedom
nodes[65527192] = AnimaShard({quest=61249, note=L["anima_shard_61249"]})
nodes[58156391] = AnimaShard({quest=61250, note=L["anima_shard_61250"]})
nodes[54005970] = AnimaShard({quest=61251, note=L["anima_shard_61251"]})
-- 61252 https://shadowlands.wowhead.com/quest=61252/call-in-a-favor
nodes[46706595] = AnimaShard({quest=61253, note=L["anima_shard_61253"]})
nodes[50685614] = AnimaShard({quest=61254, note=L["anima_shard_61254"]})
-- 61255 https://shadowlands.wowhead.com/quest=61255/rsvp-alexandros-mograine
-- 61256 https://shadowlands.wowhead.com/quest=61256/rsvp-kleia-and-pelagos
nodes[34846578] = AnimaShard({quest=61257, note=L["anima_shard_61257"]})
nodes[51674802] = AnimaShard({quest=61258, note=L["anima_shard_61258"]})
-- 61259 https://shadowlands.wowhead.com/quest=61259/ayeleths-hunger
nodes[47084923] = AnimaShard({quest=61260, note=L["anima_shard_61260"]})
nodes[41394663] = AnimaShard({quest=61261, note=L["anima_shard_61261"]})
-- 61262 https://shadowlands.wowhead.com/quest=61262/neriths-vengeance
nodes[40045912] = AnimaShard({quest=61263, note=L["anima_shard_61263"]})
-- 61264 ???
-- 61265 https://shadowlands.wowhead.com/quest=61265/blueprint-charm-of-alacrity
-- 61266 ???
-- 61267 ???
-- 61268 ???
-- 61269 https://shadowlands.wowhead.com/quest=61269/ph-charm-of-perserverance
nodes[57645567] = AnimaShard({quest=61270, note=L["anima_shard_61270"]})
nodes[65254288] = AnimaShard({quest=61271, note=L["anima_shard_61271"]})
-- 61272 https://shadowlands.wowhead.com/quest=61272/blueprint-charm-of-discord
nodes[72384029] = AnimaShard({quest=61273, note=L["anima_shard_61273"]})
nodes[66892692] = AnimaShard({quest=61274, note=L["anima_shard_61274"]})
nodes[57553827] = AnimaShard({quest=61275, note=L["anima_shard_61275"]})
-- 61276 Firstborne's Bounty?
nodes[52163939] = AnimaShard({quest=61277, note=L["anima_shard_61277"]})
nodes[49993826] = AnimaShard({quest=61278, note=L["anima_shard_61278"]})
nodes[48483491] = AnimaShard({quest=61279, note=L["anima_shard_61279"]})
nodes[56722884] = AnimaShard({quest=61280, note=L["anima_shard_61280"]})
nodes[56201731] = AnimaShard({quest=61281, note=L["anima_shard_61281"]})
nodes[60451288] = AnimaShard({quest=61282, note=L["anima_shard_61282"]})
nodes[52440942] = AnimaShard({quest=61283, note=L["anima_shard_61283"]})
nodes[46691804] = AnimaShard({quest=61284, note=L["anima_shard_61284"]})
nodes[44942845] = AnimaShard({quest=61285, note=L["anima_shard_61285"]})
nodes[42302402] = AnimaShard({quest=61286, note=L["anima_shard_61286"]})
nodes[37102468] = AnimaShard({quest=61287, note=L["anima_shard_61287"]})
nodes[42813321] = AnimaShard({quest=61288, note=L["anima_shard_61288"]})
nodes[42713940] = AnimaShard({quest=61289, note=L["anima_shard_61289"]})
nodes[33033762] = AnimaShard({quest=61290, note=L["anima_shard_61290"]})
nodes[31002747] = AnimaShard({quest=61291, note=L["anima_shard_61291"]})
nodes[30612373] = AnimaShard({quest=61292, note=L["anima_shard_61292"]})
nodes[24642298] = AnimaShard({quest=61293, note=L["anima_shard_61293"]})
nodes[26152262] = AnimaShard({quest=61294, note=L["anima_shard_61294"]})
nodes[24371821] = AnimaShard({quest=61295, note=L["anima_shard_61295"]})

-------------------------------------------------------------------------------

local gardens = Map({id=1693})
local font = Map({id=1694})
local wake = Map({id=1666})

-- 61296 Necrotic Wake
wake.nodes[36202280] = AnimaShard({quest=61297, note=L["anima_shard_61297"]})
gardens.nodes[46605310] = AnimaShard({quest=61298, note=L["anima_shard_61298"]})
gardens.nodes[69403870] = AnimaShard({quest=61299, note=L["anima_shard_61299"]})
font.nodes[49804690] = AnimaShard({quest=61300, note=L["anima_shard_61300"]})

function dungeonEnabled (self, node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end
    ns.processCovenant(node)
    local profile = ns.addon.db.profile
    if isinstance(node, AnimaShard) then return profile.anima_shard_bastion end
    return true
end

gardens.enabled = dungeonEnabled
font.enabled = dungeonEnabled
wake.enabled = dungeonEnabled

ns.maps[gardens.id] = gardens
ns.maps[font.id] = font
ns.maps[wake.id] = wake

-------------------------------------------------------------------------------

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    -- add rlabel and warning if covenant doesn't match
    ns.processCovenant(node)

    local profile = ns.addon.db.profile
    if isinstance(node, Rare) then return profile.rare_bastion end
    if isinstance(node, Treasure) then return profile.treasure_bastion end
    if isinstance(node, AnimaShard) then return profile.anima_shard_bastion end
    return true
end

ns.maps[map.id] = map