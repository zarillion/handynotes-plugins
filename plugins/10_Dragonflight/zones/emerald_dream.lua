-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Class = ns.Class

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Dragonglyph = ns.node.Dragonglyph
local PT = ns.node.ProfessionTreasures

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2200, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51253128] = Rare({
    id = 210050,
    quest = 77942,
    rewards = {
        Achievement({id = 19316, criteria = 62945}) -- Adventurer of the Emerald Dream
        -- https://wowhead.com/item=203311
    }
}) -- Bloodstripe Great Ray

map.nodes[64178399] = Rare({
    id = 209898,
    quest = 77867,
    rewards = {
        Achievement({id = 19316, criteria = 62931}) -- Adventurer of the Emerald Dream
    }
}) -- Reefbreaker Moruud (Cargnosh - renamed??)

map.nodes[66036318] = Rare({
    id = 209909,
    quest = 77862,
    rewards = {
        Achievement({id = 19316, criteria = 62937}) -- Adventurer of the Emerald Dream
    }
}) -- Crabtankerous

map.nodes[34716316] = Rare({ -- REVIEW
    id = 209929,
    quest = 77878,
    vignette = 5816,
    rewards = {
        Achievement({id = 19316, criteria = 62933}) -- Adventurer of the Emerald Dream
    }
    -- gather tribes https://wowhead.com/item=208881
}) -- Envoy of Winter

map.nodes[29862077] = Rare({ -- REVIEW
    id = 209893,
    quest = 78015,
    vignette = 5835,
    rewards = {
        Achievement({id = 19316, criteria = 62930}) -- Adventurer of the Emerald Dream
        -- https://wowhead.com/item=210172
    }
}) -- Firebrand Fystia

map.nodes[82004200] = Rare({ -- REVIEW
    id = 209913,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62938}) -- Adventurer of the Emerald Dream
    }
}) -- Fruitface

map.nodes[54034142] = Rare({ -- REVIEW
    id = 209936,
    quest = 77982,
    vignette = 5817,
    rewards = {
        Achievement({id = 19316, criteria = 62932}) -- Adventurer of the Emerald Dream
    }
}) -- Greedy Gessie

map.nodes[47062974] = Rare({
    id = 210075,
    quest = 77944,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62950}) -- Adventurer of the Emerald Dream
        -- item 201437
    }
}) -- Henri Snufftail

map.nodes[58775119] = Rare({
    id = 209620,
    quest = 77864,
    rewards = {
        Achievement({id = 19316, criteria = 62936}) -- Adventurer of the Emerald Dream
    }
}) -- Ignit the Firebranded

map.nodes[37433171] = Rare({
    id = 209919,
    quest = 77989,
    rewards = {
        Achievement({id = 19316, criteria = 62940}) -- Adventurer of the Emerald Dream
    }
}) -- Isaqa (Balboan)

map.nodes[40294916] = Rare({ -- REVIEW
    id = 210046,
    quest = 78211,
    rewards = {
        Achievement({id = 19316, criteria = 62943}) -- Adventurer of the Emerald Dream
        -- https://www.wowhead.com/ptr-2/item=210128
    },
    pois = {Path({40294916, 39214992, 39535168, 40865209, 40545087, 40294916})}
}) -- Keen-eyed Cian

map.nodes[41107328] = Rare({
    id = 210051,
    quest = 78213,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62946}) -- Adventurer of the Emerald Dream
    }
}) -- Matriarch Keevah

map.nodes[45781879] = Rare({
    id = 208658,
    quest = 77941,
    rewards = {
        Achievement({id = 19316, criteria = 62947}) -- Adventurer of the Emerald Dream
    }
}) -- Moltenbinder's Disciple

map.nodes[63793624] = Rare({
    id = 210064,
    quest = 77943,
    rewards = {
        Achievement({id = 19316, criteria = 62948}) -- Adventurer of the Emerald Dream
    }
}) -- Molten Leadspike

map.nodes[40467258] = Rare({
    id = 210045,
    quest = 78210,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62942}) -- Adventurer of the Emerald Dream
    },
    pois = {
        POI({38817158}) -- Entrance
    }
}) -- Moragh the Slothful

map.nodes[54953674] = Rare({
    id = 210070,
    quest = 77940,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62949}) -- Adventurer of the Emerald Dream
    }
}) -- Mosa Umbramane

map.nodes[61697214] = Rare({
    id = 209113,
    quest = 77570,
    vignette = 5786,
    rewards = {
        Achievement({id = 19316, criteria = 62929}) -- Adventurer of the Emerald Dream
    }
}) -- Nuoberon

map.nodes[44473929] = Rare({ -- REVIEW
    id = 210161,
    quest = 77890,
    note = L['in_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62951}) -- Adventurer of the Emerald Dream
    },
    pois = {
        POI({44923692, 44293595}) -- Entrance
    }
}) -- Ristar, the Rabid

map.nodes[43484697] = Rare({
    id = 210047,
    quest = 78212,
    rewards = {
        Achievement({id = 19316, criteria = 62944}) -- Adventurer of the Emerald Dream
    }
}) -- Somnambulant Ori

map.nodes[61755220] = Rare({
    id = 209365,
    quest = 77863,
    rewards = {
        Achievement({id = 19316, criteria = 62935}) -- Adventurer of the Emerald Dream
    }
}) -- Splinterlimb

map.nodes[88004200] = Rare({ -- REVIEW
    id = 210111,
    quest = nil,
    rewards = {
        Achievement({id = 19316, criteria = 62941}) -- Adventurer of the Emerald Dream
    }
}) -- Surging Lasher

map.nodes[35132264] = Rare({
    id = 209902,
    quest = 77994,
    rewards = {
        Achievement({id = 19316, criteria = 62934}) -- Adventurer of the Emerald Dream
    }
}) -- Talthonei Ashwisper

map.nodes[26022656] = Rare({
    id = 209911,
    quest = 77990,
    rewards = {
        Achievement({id = 19316, criteria = 62939}) -- Adventurer of the Emerald Dream
    }
}) -- The Apostle

-------------------------------------------------------------------------------

map.nodes[22743226] = Rare({
    id = 210559,
    quest = 78039,
    note = L['in_small_cave']
}) -- Balboan

map.nodes[38436213] = Rare({
    id = 210508,
    quest = 78214,
    note = L['in_small_cave']
}) -- Voracious Mikanji

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[82004600] = Treasure({ -- REVIEW
    quest = nil,
    note = 'PH',
    rewards = {
        Achievement({id = 19317, criteria = 62954}) -- Treasures of The Emerald Dream
    }
}) -- Crystalline Glowblossom

map.nodes[47493485] = Treasure({
    quest = nil,
    note = 'PH',
    rewards = {
        Achievement({id = 19317, criteria = 62953}) -- Treasures of The Emerald Dream
        -- REVIEW
    }
}) -- Hidden Podling Stash

map.nodes[61625960] = Treasure({
    quest = 78005,
    note = L['magical_bloom_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62960}) -- Treasures of The Emerald Dream
        -- REVIEW
    },
    pois = {
        POI({64346131}) -- Laughing Sprigling
    }
}) -- Magical Bloom

map.nodes[61406320] = Treasure({
    quest = 78006,
    note = L['odd_burl_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62961}) -- Treasures of The Emerald Dream
        -- REVIEW
    }
}) -- Odd Burl

map.nodes[37263069] = Treasure({
    quest = 78120,
    note = L['pineshrew_cache_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62956}) -- Treasures of The Emerald Dream
        -- REVIEW
    }
}) -- Pineshrew Cache

map.nodes[63437298] = Treasure({
    quest = 78359,
    note = L['in_cave'] .. '\n\n' .. L['reliquary_of_ashamane_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62958}), -- Treasures of The Emerald Dream
        Transmog({item = 210631, slot = L['cosmetic']}) -- Branch of Ashamane
    },
    pois = {
        POI({63457161}), -- Entrance
        POI({62087464, color = 'Green'}) -- Mark of Ashamane
    }
}) -- Reliquary of Ashamane

map.nodes[64231928] = Treasure({
    quest = 78360,
    note = L['reliquary_of_aviana_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62957}), -- Treasures of The Emerald Dream
        Transmog({item = 210659, slot = L['cosmetic']}) -- Branch of Aviana
    },
    pois = {
        POI({64532091}) -- Mark of Aviana
    }
}) -- Reliquary of Aviana

map.nodes[32938325] = Treasure({
    quest = 78361,
    note = L['in_small_cave'] .. '\n\n' .. L['reliquary_of_goldrinn_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62959}), -- Treasures of The Emerald Dream
        Transmog({item = 210660, slot = L['cosmetic']}) -- Claw of Lo'Gosh
    },
    pois = {
        POI({30828069}) -- Mark of Goldrinn
    }
}) -- Reliquary of Goldrinn

map.nodes[47055309] = Treasure({
    quest = 78107,
    note = L['reliquary_of_ursol_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62955}), -- Treasures of The Emerald Dream
        Transmog({item = 210434, slot = L['cosmetic']}) -- Visage of Ursoc
    },
    pois = {
        POI({48015246}) -- Mark of Ursol
    }
}) -- Reliquary of Ursol

map.nodes[80004600] = Treasure({ -- REVIEW
    quest = nil,
    note = 'PH',
    rewards = {
        Achievement({id = 19317, criteria = 62952}) -- Treasures of The Emerald Dream
    }
}) -- Triflesnatch's Roving Trove

-------------------------------------------------------------------------------

local UnwakingEcho = Class('Hatchling', Treasure, {
    icon = 'chest_gn',
    label = L['unwaking_echo_label'],
    note = L['unwaking_echo_note']
})

map.nodes[46408615] = UnwakingEcho({quest = 78552})
map.nodes[55672258] = UnwakingEcho({quest = 78547})
map.nodes[55324538] = UnwakingEcho({
    quest = 78551,
    sublabel = L['in_small_cave']
})
map.nodes[69575284] = UnwakingEcho({
    quest = 78550,
    sublabel = L['inside_building']
})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------
-- https://www.wowhead.com/ptr-2/items/quality:4?filter=168:99:82;2:11:2;0:0:100200

map.nodes[54043264] = PT.Alchemy({id = 210184, quest = 78264}) -- Experimental Decay Sample

map.nodes[36264653] = PT.Alchemy({id = 210185, quest = 78269}) -- Splash Potion of Narcolepsy

map.nodes[80004800] = PT.Alchemy({ -- REVIEW
    id = 210190,
    quest = nil
}) -- Blazeroot

map.nodes[46152058] = PT.Enchanting({id = 210231, quest = 78309}) -- Everburning Core

map.nodes[38373020] = PT.Enchanting({id = 210228, quest = 78308}) -- Pure Dream Water

map.nodes[92004800] = PT.Enchanting({ -- REVIEW
    id = 210234,
    quest = nil
}) -- Essence of Dreams

map.nodes[55642751] = PT.Inscription({id = 210458, quest = 78411}) -- Winnie's Notes on Flora and Fauna

map.nodes[86004800] = PT.Inscription({ -- REVIEW
    id = 210459,
    quest = nil
}) -- Grove Keeper's Pillar

map.nodes[36044664] = PT.Inscription({id = 210460, quest = 78413}) -- Primalist Shadowbinding Rune

map.nodes[37262292] = PT.Blacksmithing({id = 210466, quest = 78419}) -- Flamesworn Render

map.nodes[90004800] = PT.Blacksmithing({ -- REVIEW
    id = 210464,
    quest = nil
}) -- Amirdrassil Defender's Shield

map.nodes[36344680] = PT.Blacksmithing({id = 210465, quest = 78418}) -- Deathstalker Chasis

map.nodes[39575227] = PT.Engineering({
    id = 210193,
    quest = 78278,
    note = L['experimental_dreamcatcher_note']
}) -- Experimental Dreamcatcher

map.nodes[40498937] = PT.Engineering({
    id = 210194,
    quest = 78279,
    note = L['in_small_cave']
}) -- Insomniotron

map.nodes[62683626] = PT.Engineering({id = 210197, quest = 78281}) -- Unhatched Battery

map.nodes[86005000] = PT.Engineering({ -- REVIEW
    id = 210198,
    quest = nil
}) -- Depleted Battery

map.nodes[88005000] = PT.Tailoring({ -- REVIEW
    id = 210461,
    quest = nil
}) -- Exceedingly Soft Wildercloth

map.nodes[90005000] = PT.Tailoring({ -- REVIEW
    id = 210462,
    quest = nil
}) -- Plush Pillow

map.nodes[92005000] = PT.Tailoring({ -- REVIEW
    id = 210463,
    quest = nil
}) -- Snuggle Buddy

map.nodes[33204656] = PT.Jewelcrafting({
    id = 210200,
    quest = 78252,
    note = L['petrified_hope_note']
}) -- Petrified Hope

map.nodes[43513336] = PT.Jewelcrafting({
    id = 210201,
    quest = 78283,
    note = L['handful_of_pebbles_note']
}) -- Handful of Pebbles

map.nodes[58945389] = PT.Jewelcrafting({id = 210202, quest = 78285}) -- Coalesced Dreamstone

map.nodes[84005200] = PT.Leatherworking({ -- REVIEW
    id = 210208,
    quest = nil
}) -- Tuft of Dreamsaber Fur

map.nodes[86005200] = PT.Leatherworking({ -- REVIEW
    id = 210211,
    quest = nil
}) -- Molted Faerie Dragon Scales

map.nodes[88005200] = PT.Leatherworking({ -- REVIEW
    id = 210215,
    quest = nil
}) -- Dreamtalon Claw

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[60363011] = Dragonglyph({rewards = {Achievement({id = 19296})}}) -- Dragon Glyphs: Eye of Ysera
map.nodes[21212676] = Dragonglyph({rewards = {Achievement({id = 19297})}}) -- Dragon Glyphs: Smoldering Ascent
map.nodes[33794564] = Dragonglyph({rewards = {Achievement({id = 19298})}}) -- Dragon Glyphs: Smoldering Copse
map.nodes[29832121] = Dragonglyph({rewards = {Achievement({id = 19299})}}) -- Dragon Glyphs: Cinder Summit
map.nodes[45514581] = Dragonglyph({rewards = {Achievement({id = 19300})}}) -- Dragon Glyphs: Dreamsurge Basin
map.nodes[49996433] = Dragonglyph({rewards = {Achievement({id = 19301})}}) -- Dragon Glyphs: Amirdrassil
map.nodes[31888059] = Dragonglyph({rewards = {Achievement({id = 19302})}}) -- Dragon Glyphs: Whorlwing basin
map.nodes[61677548] = Dragonglyph({rewards = {Achievement({id = 19303})}}) -- Dragon Glyphs: Wakeful Vista

-------------------------------------------------------------------------------
----------------------------- FRIENDS IN FEATHERS -----------------------------
-------------------------------------------------------------------------------

local MoonkinHatchling = Class('Hatchling', Collectible, {
    icon = 467894,
    group = ns.groups.MOONKIN_HATCHLING,
    getters = {
        rewards = function(self)
            return {Achievement({id = 19293, criteria = self.criteriaID})}
        end
    }
})

map.nodes[37136593] = MoonkinHatchling({criteriaID = 62785}) -- Beaks

map.nodes[39096598] = MoonkinHatchling({criteriaID = 62776}) -- Bumbletweet

map.nodes[36457124] = MoonkinHatchling({
    criteriaID = 62788,
    pois = {
        POI({36147092}) -- Entrance
    }
}) -- Chickle

map.nodes[36386277] = MoonkinHatchling({
    criteriaID = 62790,
    note = L['in_small_cave']
}) -- Eugene

map.nodes[90005200] = MoonkinHatchling({ -- Review
    criteriaID = 62775
}) -- Feets

map.nodes[39347178] = MoonkinHatchling({
    criteriaID = 62779,
    note = L['in_cave'],
    pois = {
        POI({38817158}) -- Entrance
    }
}) -- Fruffles

map.nodes[38696352] = MoonkinHatchling({criteriaID = 62789}) -- Fuzz

map.nodes[92005200] = MoonkinHatchling({ -- Review
    criteriaID = 62773
}) -- Giblet

map.nodes[37767327] = MoonkinHatchling({criteriaID = 62784}) -- Hops

map.nodes[35566976] = MoonkinHatchling({
    criteriaID = 62783,
    note = L['in_small_cave']
}) -- Meep

map.nodes[36116968] = MoonkinHatchling({criteriaID = 62787}) -- Moonbeam

map.nodes[37427231] = MoonkinHatchling({criteriaID = 62782}) -- Owlington

map.nodes[38046901] = MoonkinHatchling({
    criteriaID = 62777,
    note = L['in_small_cave'],
    pois = {
        POI({37526855}) -- Entrance
    }
}) -- Peanut

map.nodes[40407150] = MoonkinHatchling({
    criteriaID = 62778,
    note = L['in_cave'],
    pois = {
        POI({38817158}) -- Entrance
    }
}) -- Snoozle

map.nodes[36357161] = MoonkinHatchling({
    criteriaID = 62780,
    pois = {
        POI({36147092}) -- Entrance
    }
}) -- Squawkle

map.nodes[38446930] = MoonkinHatchling({
    criteriaID = 62786,
    note = L['in_cave'],
    pois = {
        POI({37536964}) -- Entrance
    }
}) -- Squeaky

map.nodes[38757048] = MoonkinHatchling({
    criteriaID = 62791,
    note = L['in_cave'],
    pois = {
        POI({37536964}) -- Entrance
    }
}) -- Tickles

map.nodes[37757026] = MoonkinHatchling({
    criteriaID = 62781,
    note = L['in_cave'],
    pois = {
        POI({37536964}) -- Entrance
    }
}) -- Wingnut
