-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Class = ns.Class

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Dragonglyph = ns.node.Dragonglyph
local PT = ns.node.ProfessionTreasures

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2200, settings = true})

-------------------------------------------------------------------------------

local Dragonblight = ns.maps[115] or Map({id = 115, settings = true})
local Dreamgrove = ns.maps[747] or Map({id = 747, settings = true})
local Duskwood = ns.maps[47] or Map({id = 47, settings = true})
local Moonglade = ns.maps[80] or Map({id = 80, settings = true})
local Stormshield = ns.maps[622] or Map({id = 622, settings = true})
local TerokkarForest = ns.maps[108] or Map({id = 108, settings = true})
local Warspear = ns.maps[624] or Map({id = 624, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51253128] = Rare({
    id = 210050,
    quest = 77942,
    rewards = {
        Achievement({id = 19316, criteria = 62945}), -- Adventurer of the Emerald Dream
        Item({item = 201437}), -- Slumbering Dream Fragment
        DC.WindingSlitherdrake.HairyChin
    }
}) -- Bloodstripe Great Ray

map.nodes[64178399] = Rare({
    id = 209898,
    quest = 77867,
    note = L['reefbreaker_moruud_note'],
    rewards = {
        Achievement({id = 19316, criteria = 62931}), -- Adventurer of the Emerald Dream
        Transmog({item = 208327, slot = L['leather']}) -- Maruud's Piercing Hands
    }
}) -- Reefbreaker Moruud (Cragnosh)

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
    note = L['envoy_of_winter_note'],
    rewards = {
        Achievement({id = 19316, criteria = 62933}) -- Adventurer of the Emerald Dream
    }
}) -- Envoy of Winter

map.nodes[29862077] = Rare({ -- REVIEW
    id = 209893,
    quest = 78015,
    vignette = 5835,
    rewards = {
        Achievement({id = 19316, criteria = 62930}), -- Adventurer of the Emerald Dream
        Recipe({item = 210172, profession = 333}) -- Formula: Enchanted Wyrm's Dreaming Crest
    }
}) -- Firebrand Fystia

map.nodes[62907302] = Rare({
    id = 209913,
    quest = 77846,
    location = L['in_cave'],
    note = L['fruitface_note'],
    rewards = {
        Achievement({id = 19316, criteria = 62938}), -- Adventurer of the Emerald Dream
        Transmog({item = 208372, slot = L['leather']}), -- Trickster's Tip Toers
        Recipe({item = 210171, profession = 333}) -- Formula: Enchanted Aspect's Dreaming Crest
    },
    pois = {
        POI({63447159}) -- Entrance
    }
}) -- Fruitface

map.nodes[54034142] = Rare({ -- REVIEW
    id = 209936,
    quest = 77982,
    vignette = 5817,
    note = L['greedy_gessie_note'],
    rewards = {
        Achievement({id = 19316, criteria = 62932}), -- Adventurer of the Emerald Dream
        Item({item = 201437}) -- Slumbering Dream Fragment
    }
}) -- Greedy Gessie

map.nodes[47062974] = Rare({
    id = 210075,
    quest = 77944,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62950}), -- Adventurer of the Emerald Dream
        Transmog({item = 208357, slot = L['cloak']}), -- Henri's Warm Coat
        Item({item = 201437}) -- Slumbering Dream Fragment
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
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62940}) -- Adventurer of the Emerald Dream
    },
    pois = {POI({38113211})} -- Entrance
}) -- Isaqa

map.nodes[40294916] = Rare({
    id = 210046,
    quest = 78211,
    rewards = {
        Achievement({id = 19316, criteria = 62943}), -- Adventurer of the Emerald Dream
        Transmog({item = 210128, slot = L['2h_sword']}), -- Autumn Defender's Claymore
        Recipe({item = 210173, profession = 333}), -- Formula: Enchanted Whelpling's Dreaming Crest
        Item({item = 210650, quest = nil, class = 'DRUID'}) -- Mark of the Keen-Eyed Dreamsaber
    },
    pois = {Path({40294916, 39214992, 39535168, 40865209, 40545087, 40294916})}
}) -- Keen-eyed Cian

map.nodes[41107328] = Rare({
    id = 210051,
    quest = 78213,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62946}), -- Adventurer of the Emerald Dream
        Item({item = 210683, quest = 78513, class = 'DRUID'}) -- Mark of the Dreamtalon Matriarch
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
    location = L['in_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62942}), -- Adventurer of the Emerald Dream
        Item({item = 210729, quest = nil, class = 'DRUID'}), -- Mark of the Verdant Bristlebruin
        Item({item = 201437}) -- Slumbering Dream Fragment
    },
    pois = {POI({38817158})} -- Entrance
}) -- Moragh the Slothful

map.nodes[54953674] = Rare({
    id = 210070,
    quest = 77940,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62949}), -- Adventurer of the Emerald Dream
        Item({item = 210647, quest = nil, class = 'DRUID'}) -- Mark of the Umbramane
    }
}) -- Mosa Umbramane

map.nodes[61747187] = Rare({
    id = 209113,
    quest = 77570,
    note = L['nuoberon_note'],
    vignette = 5786,
    rewards = {
        Achievement({id = 19316, criteria = 62929}) -- Adventurer of the Emerald Dream
    }
}) -- Nuoberon

map.nodes[44473929] = Rare({
    id = 210161,
    quest = 77890,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62951}), -- Adventurer of the Emerald Dream
        Item({item = 210674, quest = nil, class = 'DRUID'}), -- Mark of the Sable Dreamtalon
        Item({item = 201437}) -- Slumbering Dream Fragment
    },
    pois = {
        POI({44923692, 44293595}) -- Entrance
    }
}) -- Ristar, the Rabid

map.nodes[43484697] = Rare({
    id = 210047,
    quest = 78212,
    rewards = {
        Achievement({id = 19316, criteria = 62944}), -- Adventurer of the Emerald Dream
        Item({item = 201437}) -- Slumbering Dream Fragment
    }
}) -- Somnambulant Ori

map.nodes[61755220] = Rare({
    id = 209365,
    quest = 77863,
    rewards = {
        Achievement({id = 19316, criteria = 62935}) -- Adventurer of the Emerald Dream
    }
}) -- Splinterlimb

local SurgingLasher = Class('SurgingLasher', Rare, {
    id = 210111,
    quest = 78263,
    note = L['surging_lasher_note'],
    fgroup = 'SurgingLasher',
    rewards = {
        Achievement({id = 19316, criteria = 62941}) -- Adventurer of the Emerald Dream
    }
}) -- Surging Lasher

map.nodes[57015167] = SurgingLasher()
map.nodes[58967188] = SurgingLasher()

local Talthonei = Class('Talthonei', Rare, {
    id = 209902,
    quest = 77994,
    fgroup = 'talthonei',
    rewards = {
        Achievement({id = 19316, criteria = 62934}), -- Adventurer of the Emerald Dream
        Transmog({item = 208374, slot = L['staff']}) -- Talthornei's Wrath
    }
}) -- Talthonei Ashwisper

map.nodes[35132264] = Talthonei()
map.nodes[36922240] = Talthonei()
map.nodes[61426741] = Talthonei()
map.nodes[63877009] = Talthonei()
map.nodes[64446660] = Talthonei()

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
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 210105, slot = L['leather']}) -- Autumn Druid Belt
    }
}) -- Balboan

map.nodes[38436213] = Rare({
    id = 210508,
    quest = 78214,
    location = L['in_small_cave'],
    rewards = {
        Item({item = 201437}) -- Slumbering Dream Fragment
    },
    pois = {POI({38176157})} -- Entrance
}) -- Voracious Mikanji

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[85004600] = Treasure({ -- REVIEW
    quest = nil,
    note = 'PH',
    rewards = {
        Achievement({id = 19317, criteria = 62954}) -- Treasures of The Emerald Dream
    }
}) -- Crystalline Glowblossom

map.nodes[83004600] = Treasure({ -- REVIEW
    quest = nil,
    note = 'PH',
    rewards = {
        Achievement({id = 19317, criteria = 62953}) -- Treasures of The Emerald Dream
    }
}) -- Hidden Podling Stash

map.nodes[61625960] = Treasure({
    quest = 78005,
    note = L['magical_bloom_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62960}) -- Treasures of The Emerald Dream
        -- REVIEW
    },
    pois = {POI({64346131})} -- Laughing Sprigling
}) -- Magical Bloom

map.nodes[55275726] = Treasure({
    quest = 78006,
    location = L['in_a_tree'],
    rewards = {
        Achievement({id = 19317, criteria = 62961}) -- Treasures of The Emerald Dream
        -- REVIEW
    }
}) -- Odd Burl

map.nodes[37263069] = Treasure({
    quest = 78120,
    location = L['pineshrew_cache_note'],
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
        POI({64532091, color = 'Green'}) -- Mark of Aviana
    }
}) -- Reliquary of Aviana

map.nodes[32938325] = Treasure({
    quest = 78361, -- 78368 trigged for Wyldclaw?
    location = L['in_small_cave'],
    note = L['reliquary_of_goldrinn_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62959}), -- Treasures of The Emerald Dream
        Transmog({item = 210660, slot = L['cosmetic']}) -- Claw of Lo'Gosh
    },
    pois = {
        POI({33108240}), -- Entrance
        POI({30828069, color = 'Green'}) -- Mark of Goldrinn
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
        POI({48015246, color = 'Green'}) -- Mark of Ursol
    }
}) -- Reliquary of Ursol

map.nodes[35075519] = Treasure({
    label = '{npc:210060}',
    note = L['triflesnatchs_roving_trove_note'],
    quest = {
        77855, -- Perch 1
        77857, -- Perch 2
        77860, -- Perch 3
        77872 -- Exhausted Triflesnatcher
    },
    rewards = {
        Achievement({id = 19317, criteria = 62952}) -- Treasures of The Emerald Dream
    },
    pois = {
        POI({39715215, 42225630, 41756256}), -- Perched locations
        Path({39715215, 42225630, 41756256, 35075519}) -- Flight path
    }
}) -- Triflesnatch's Roving Trove

-------------------------------------------------------------------------------

map.nodes[47493485] = Treasure({
    label = L['hidden_moonkin_stash_label'],
    quest = 77858,
    location = L['in_a_tree'],
    rewards = {Toy({item = 210725})} -- Owl Post
}) -- Hidden Moonkin Stash

local UnwakingEcho = Class('UnwakingEcho', Treasure, {
    icon = 'chest_gn',
    label = L['unwaking_echo_label'],
    note = L['unwaking_echo_note']
}) -- Unwaking Echo

map.nodes[46408615] = UnwakingEcho({
    quest = 78552,
    rewards = {
        Transmog({item = 210682, slot = L['cosmetic']}) -- Camper's Knife
    }
})

map.nodes[55672258] = UnwakingEcho({
    quest = 78547,
    rewards = {
        Transmog({item = 210675, slot = L['cosmetic']}) -- Gardener's Lightstaff
    }
})

map.nodes[55324538] = UnwakingEcho({
    quest = 78551,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 210678, slot = L['cosmetic']}) -- Verdant Glearner's Scythe
    },
    pois = {POI({54774452})} -- Entrance
})

map.nodes[69575284] = UnwakingEcho({
    quest = 78550,
    location = L['inside_building'],
    rewards = {
        Transmog({item = 210686, slot = L['shield']}) -- Grovekeeper's Barrier
    }
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

map.nodes[66367419] = PT.Enchanting({
    id = 210234,
    quest = 78310,
    note = L['essence_of_dreams_note']
}) -- Essence of Dreams

map.nodes[55642751] = PT.Inscription({id = 210458, quest = 78411}) -- Winnie's Notes on Flora and Fauna

map.nodes[63507151] = PT.Inscription({
    id = 210459,
    quest = 78412,
    note = L['grove_keepers_pillar_note']
}) -- Grove Keeper's Pillar

map.nodes[36044664] = PT.Inscription({id = 210460, quest = 78413}) -- Primalist Shadowbinding Rune

map.nodes[37262292] = PT.Blacksmithing({id = 210466, quest = 78419}) -- Flamesworn Render

map.nodes[49836299] = PT.Blacksmithing({
    id = 210464,
    quest = 78417,
    note = L['amirdrassil_defenders_shield_note']
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
    location = L['in_small_cave']
}) -- Insomniotron

map.nodes[62683626] = PT.Engineering({
    id = 210197,
    quest = 78281
    --  turns into Depleted Battery (210198) after 3 days
}) -- Unhatched Battery

map.nodes[53272791] = PT.Tailoring({
    id = 210461,
    quest = 78414,
    note = L['exceedingly_soft_wildercloth_note']
}) -- Exceedingly Soft Wildercloth

map.nodes[49826149] = PT.Tailoring({
    id = 210462,
    quest = 78415,
    note = L['plush_pillow_note']
}) -- Plush Pillow

map.nodes[40708615] = PT.Tailoring({
    id = 210463,
    quest = 78416,
    note = L['snuggle_buddy_note']
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

map.nodes[41766650] = PT.Leatherworking({id = 210208, quest = 78298}) -- Tuft of Dreamsaber Fur

map.nodes[37467101] = PT.Leatherworking({
    id = 210211,
    quest = 78299,
    note = L['molted_faerie_dragon_scales_note']
}) -- Molted Faerie Dragon Scales

map.nodes[33992968] = PT.Leatherworking({
    id = 210215,
    quest = 78305,
    note = L['dreamtalon_claw_note']
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
    pois = {POI({36147092})} -- Entrance
}) -- Chickle

map.nodes[36386277] = MoonkinHatchling({
    criteriaID = 62790,
    location = L['in_small_cave']
}) -- Eugene

map.nodes[38436958] = MoonkinHatchling({criteriaID = 62775}) -- Feets

map.nodes[39347178] = MoonkinHatchling({
    criteriaID = 62779,
    location = L['in_cave'],
    pois = {POI({38817158})} -- Entrance
}) -- Fruffles

map.nodes[38696352] = MoonkinHatchling({criteriaID = 62789}) -- Fuzz

map.nodes[35756700] = MoonkinHatchling({
    criteriaID = 62773,
    location = L['in_small_cave']
}) -- Giblet

map.nodes[37767327] = MoonkinHatchling({criteriaID = 62784}) -- Hops

map.nodes[35566976] = MoonkinHatchling({
    criteriaID = 62783,
    location = L['in_small_cave']
}) -- Meep

map.nodes[36116968] = MoonkinHatchling({criteriaID = 62787}) -- Moonbeam

map.nodes[37427231] = MoonkinHatchling({criteriaID = 62782}) -- Owlington

map.nodes[38046901] = MoonkinHatchling({
    criteriaID = 62777,
    location = L['in_small_cave'],
    pois = {POI({37526855})} -- Entrance
}) -- Peanut

map.nodes[40407150] = MoonkinHatchling({
    criteriaID = 62778,
    location = L['in_cave'],
    pois = {POI({38817158})} -- Entrance
}) -- Snoozle

map.nodes[36357161] = MoonkinHatchling({
    criteriaID = 62780,
    pois = {POI({36147092})} -- Entrance
}) -- Squawkle

map.nodes[38446930] = MoonkinHatchling({
    criteriaID = 62786,
    location = L['in_cave'],
    pois = {POI({37536964})} -- Entrance
}) -- Squeaky

map.nodes[38757048] = MoonkinHatchling({
    criteriaID = 62791,
    location = L['in_cave'],
    pois = {POI({37536964})} -- Entrance
}) -- Tickles

map.nodes[37757026] = MoonkinHatchling({
    criteriaID = 62781,
    location = L['in_cave'],
    pois = {POI({37536964})} -- Entrance
}) -- Wingnut

-------------------------------------------------------------------------------
------------------------------- DREAMSEED SOIL --------------------------------
-------------------------------------------------------------------------------

local EmeraldBounty = Class('EmeraldBounty', ns.node.Node, {
    label = L['dreamseed_soil_label'],
    requires = {
        ns.requirement.Item(208066) -- Small Dreamseed
    },
    icon = 464030,
    group = ns.groups.DREAM_OF_SEEDS,
    getters = {
        rewards = function(self)
            return {
                Achievement({id = 19013, criteria = self.criteriaID}), -- I Dream of Seeds
                Achievement({id = 19198, criteria = {id = 1, qty = true}}), -- The Seeds I Sow
                Currency({id = 2651, note = 20}), -- Seedbloom -- Spawned after the timer of the plant ran out, triggered hidden quest 77396 when looting
                Transmog({item = 209990, slot = L['cosmetic']}), -- Overgrown Freyan Handguards
                Transmog({item = 209971, slot = L['cosmetic']}) -- Clogs of the Dreamfused Skull
            }
        end
    }
}) -- Emerald Bounty

-- After planting the seed Enroaching Growth (npc:208492) will spawn around. They give you Emerald Dewdrop (currency:2650) after pulling them out.
-- Running over Destructive Weevil (npc:208498) also give Dewdrops
-- You can Loot the Dreamseed Cache from one Bounte multiple times per day.

-- Small Dreamseeds give 20 Seedbloom (with low contribution)
-- Gigantic Dreamseeds give 350 Seedbloom

-- map.nodes[] = EmeraldBounty({criteriaID = 62396}) -- Ageless Blossom                  -- Dew Contribution -- Looting Dreamseed Cache
map.nodes[38455920] = EmeraldBounty({criteriaID = 62185, quest = 77519}) -- Comfy Chamomile         -- 77515 -- 77517 Cache
map.nodes[40025268] = EmeraldBounty({criteriaID = 62035}) -- Viridescent Sprout                     --       --
map.nodes[40672478] = EmeraldBounty({criteriaID = 62027, quest = 77496}) -- Lavatouched Lilies      -- 77492 -- 77494
map.nodes[40744348] = EmeraldBounty({criteriaID = 62036, quest = 77511}) -- Glade Goldenrod         -- 77507 --
map.nodes[42647405] = EmeraldBounty({criteriaID = 62186, quest = 77531}) -- Moon Tulip              -- 77527 -- 77529
map.nodes[46384049] = EmeraldBounty({criteriaID = 62037, quest = 77274}) -- Dreamer's Daisy         -- 77390 -- 77393 -- I Planted a Gigantic Seed here, quests may be different?
map.nodes[48738045] = EmeraldBounty({criteriaID = 62189, quest = 77538}) -- Flourishing Scurfpea    -- 77536 --
map.nodes[49174806] = EmeraldBounty({criteriaID = 62038, quest = 77387}) -- Ringing Rose            -- 77388 -- 77389
map.nodes[49903543] = EmeraldBounty({criteriaID = 62041, quest = 77359}) -- Belligerent Begonias    -- 77363 -- 77360
map.nodes[51145866] = EmeraldBounty({criteriaID = 62397}) -- Whisperbloom Sapling                   --       --
map.nodes[54596763] = EmeraldBounty({criteriaID = 62029, quest = 77222}) -- Chiming Foxglove        --       -- 77211 (looting Dreamseed Cache)
map.nodes[56513767] = EmeraldBounty({criteriaID = 62040, quest = 77503}) -- Lullaby Lavender        --       -- 77501
map.nodes[56654487] = EmeraldBounty({criteriaID = 62039, quest = 77384}) -- Lofty Lupin             --       -- 77385
map.nodes[59235875] = EmeraldBounty({criteriaID = 62028, quest = 77216}) -- Ysera's Clover          --       -- 77210
map.nodes[63025282] = EmeraldBounty({criteriaID = 62031}) -- Singing Weedling                       --       --
map.nodes[63504710] = EmeraldBounty({criteriaID = 62032, quest = 77380}) -- Fuzzy Licorice          --       --
map.nodes[63956483] = EmeraldBounty({criteriaID = 62030, quest = 77224}) -- Dragon's Daffodil       --       --

-------------------------------------------------------------------------------
--------------------------------- DREAMFRUIT ----------------------------------
-------------------------------------------------------------------------------

-- https://us.forums.blizzard.com/en/wow/t/new-public-events-superbloom-and-emerald-bounty/1674596
-- There will be up to the total of four available Dreamfruit.
-- Each individual Dreamfruit during the Superbloom has its own,
-- unique pool of blessings it can bestow.

local Dreamfruit = Class('Dreamfruit', Collectible, {
    icon = 5390643,
    label = L['dreamfruit_label'],
    note = L['dreamfruit_note']
})

map.nodes[51265990] = Dreamfruit({
    rewards = {
        Achievement({
            id = 19310,
            criteria = {
                -- 62910, -- Basket of Explosive Acorns
                -- 62911, -- Bubble Blowgun
                -- 62912, -- Dream Gatherer
                62913, -- Feral Overflow
                -- 62914, -- Flower Trail
                62915, -- Lifesurger
                -- 62916, -- Memory of L'ghorek
                -- 62917, -- Memory of Ursoc
                -- 62918, -- Mighty Roar
                -- 62919, -- Moonkin Jump
                62920, -- Moonkin Mayhem
                -- 62921, -- Potent Lullaby
                -- 62922, -- Putrid Propulsion
                62923 -- Sack of Talontreats
                -- 62924, -- Star Shower
                -- 62925, -- The Superb Loom
                -- 62926 -- Wake Up!
            }
        })
    }
})

-------------------------------------------------------------------------------
-------------------------------- DRUID GLYPHS ---------------------------------
------------------------------------------------------------------------------

-- BLANCE DRUID FORMS
-- [ ] ??

-- FERAL DRUID FORMS
-- [X] Mark of the Evergreen Dreamsaber (Silent Mark of the Dreamsaber)
-- [X] Mark of the Keen-Eyed Dreamsaber
-- [X] Moon-Blessed Claw

-- [ ] Fire kitty form (Fandral's Seed Pouch (Toy))

-- GUARDIAN DRUID FORMS
-- [X] Mark of the Umbramane
-- [ ] Mark of the Snowy Umbraclaw
-- [X] Mark of the Lamy Umbraclaw (Silent Mark of the Umbraclaw)

-- [ ] Mark of the Hibernating Runebear (Aurostor, the Hibernating?)

-- [X] Pollenfused Bristlebruin Fur Sample
-- [X] Mark of the Verdant Bristlebruin

-- DRUID TRAVEL FORMS
-- [X] Mark of the Thriving Dreamtalon (Silent Mark of the Dreamtalon)
-- [X] Mark of the Sable Dreamtalon
-- [X] Mark of the Dreamtalon Matriarch

-- [ ] Mark of the Smoldering Dreamstag
-- [ ] Mark of the Auric Dreamstag
-- [X] Mark of the Lush Dreamstag (Silent Mark of the Dreamstag)

-- DRUID FLIGHT FORMS
-- [ ] Mark of the Slumbering Somnowl
-- [ ] Soft Somnowl Feathers
-- [ ] Feather of Friends (![The Answers You've Earned]?)
-- [ ] Feather of the Blazing Somnowl (Tindral Sagswift, Seer of the Flame?)

-- [X] Whiskerfish (Dreamfish Egg?)

map.nodes[60341694] = NPC({
    id = 212903,
    icon = 'peg_bl',
    scale = 2.0,
    class = 'DRUID',
    note = L['thaelishar_vendor_note'],
    rewards = {
        Item({item = 210764, note = '500', quest = nil, class = 'DRUID'}), -- Silent Mark of the Dreamtalon
        Item({item = 210767, note = '500', quest = nil, class = 'DRUID'}), -- Silent Mark of the Dreamstag
        Item({item = 210755, note = '500', quest = nil, class = 'DRUID'}), -- Silent Mark of the Dreamsaber
        Item({item = 210766, note = '500', quest = nil, class = 'DRUID'}) -- Silent Mark of the Umbraclaw
    }
}) -- Thaelishar Groveheard <Fauna Specialist>

map.nodes[63743916] = Collectible({
    label = '{item:210727}',
    icon = 237422,
    note = L['pollenfused_bristlebruin_fur_sample_note'],
    class = 'DRUID',
    rewards = {
        Item({item = 210727, quest = 78518, class = 'DRUID'}) -- Pollenfused Bristlebruin Fur Sample
    }
}) -- Pollenfused Bristlebruin Fur Sample

map.nodes[40519008] = Collectible({
    label = '{npc:211300}',
    icon = 4559240,
    class = 'DRUID',
    note = 'PH',
    rewards = {
        Item({item = 210753, quest = nil, class = 'DRUID'}) -- Scale of the Prismatic Whiskerfish
    },
    IsEnabled = function() return true end
}) -- Dreamfish Egg

local EMPTY_VIALS = {
    [1] = {
        coordinates = 49143328,
        location = L['mbc_vial_e_location'],
        rlabel = L['mbc_vial_e'],
        map = Duskwood,
        parentMapID = 13,
        parent = {13}, -- Eastern Kingdoms
        vialEmptyID = 210836,
        vialFilledID = 210875
    },
    [2] = {
        coordinates = 68016022,
        location = L['mbc_vial_k_location'],
        rlabel = L['mbc_vial_k'],
        map = Moonglade,
        parentMapID = 12,
        parent = {12}, -- Kalimdor
        vialEmptyID = 210835,
        vialFilledID = 210874
    },
    [3] = {
        coordinates = 45132359,
        location = L['mbc_vial_o_location'],
        rlabel = L['mbc_vial_o'],
        map = TerokkarForest,
        parentMapID = 101,
        parent = {101}, -- Outland
        vialEmptyID = 210837,
        vialFilledID = 210876
    },
    [4] = {
        coordinates = 29385567,
        location = L['mbc_vial_n_location'],
        map = Dragonblight,
        parentMapID = 113,
        parent = {113}, -- Northrend
        rlabel = L['mbc_vial_n'],
        vialEmptyID = 210838,
        vialFilledID = 210877
    },
    [5] = {
        coordinates = 65735980,
        faction = 'Alliance',
        location = C_Map.GetMapInfo(Stormshield.id).name,
        map = Stormshield,
        parentMapID = 572,
        zoneID = 588,
        parent = {572, 588}, -- Draenor, Ashran
        rlabel = L['mbc_vial_d'],
        vialEmptyID = 210839,
        vialFilledID = 210879
    },
    [6] = {
        coordinates = 50005000, -- TODO: GET HORDE COORDINATES
        faction = 'Horde',
        location = C_Map.GetMapInfo(Warspear.id).name,
        map = Warspear,
        parentMapID = 572,
        zoneID = 588,
        parent = {572, 588}, -- Draenor, Ashran
        rlabel = L['mbc_vial_d'],
        vialEmptyID = 210839,
        vialFilledID = 210879
    },
    [7] = {
        coordinates = 35162469,
        location = C_Map.GetMapInfo(Dreamgrove.id).name,
        map = Dreamgrove,
        parentMapID = 619,
        zoneID = 641,
        parent = {619, 641}, -- Broken Isles, Val'Sharah
        rlabel = L['mbc_vial_b'],
        vialEmptyID = 210840,
        vialFilledID = 210880
    }
}

local MoonBlessedClaw = Class('MoonBlessedClaw', Collectible, {
    icon = 1508486,
    class = 'DRUID',
    quest = 78528, -- hidden
    rewards = {
        Item({item = 210977, note = '1x', class = 'DRUID'}), -- Coalesced Moonlight
        Item({item = 210728, quest = 78521, class = 'DRUID'}) -- Moon-Blessed Claw
    }
}) -- Small Box of Vials

function MoonBlessedClaw.getters:note()
    local function complete(rlabel, vialFilledID)
        if ns.PlayerHasItem(vialFilledID) or ns.PlayerHasItem(210977) then
            return ns.status.Green(rlabel)
        end
        return ns.status.Red(rlabel)
    end

    local note = L['mbc_note_start'] .. '\n'
    for _, vial in ipairs(EMPTY_VIALS) do
        if not vial.faction or vial.faction == ns.faction then
            local mName = C_Map.GetMapInfo(vial.map.id).name
            local pName = C_Map.GetMapInfo(vial.parentMapID).name
            local iDone = complete(vial.rlabel, vial.vialFilledID)
            note = note .. format('\n%s %s (%s)', iDone, mName, pName)
        end
    end
    return note .. '\n\n' .. L['mbc_note_end']
end

map.nodes[54922542] = MoonBlessedClaw({
    label = '{item:210991}',
    pois = {POI({41566694}), Path({41566694, 54922542})}
}) -- Small Box of Vials

map.nodes[41566694] = MoonBlessedClaw({
    label = L['mbc_feral_dreamstone_label'],
    pois = {POI({54922542}), Path({54922542, 41566694})}
}) -- Feral Moonstone

for num, vial in ipairs(EMPTY_VIALS) do
    local e = vial.vialEmptyID
    local f = vial.vialFilledID
    local l = vial.location
    local z = C_Map.GetMapInfo(vial.map.id).name
    if vial.zoneID then z = C_Map.GetMapInfo(vial.zoneID).name end
    local c = C_Map.GetMapInfo(vial.parentMapID).name
    vial.map.nodes[vial.coordinates] = Collectible({
        label = L['mbc_moonwell_label'],
        icon = 134800,
        location = format(L['mbc_vial_location'], e, l, z, c, f),
        class = 'DRUID',
        faction = vial.faction or nil,
        rlabel = ns.status.Gray('"' .. vial.rlabel .. '"'),
        parent = vial.parent,
        playerHasItem = {vial.vialFilledID, 210977},
        rewards = {
            Item({item = vial.vialFilledID, note = '1x'}) -- Filled Vial
        },
        IsCompleted = function(self)
            if self.playerHasItem then
                for i, v in ipairs(self.playerHasItem) do
                    if ns.PlayerHasItem(v) then return true end
                end
            end
            return ns.node.Node.IsCompleted(self)
        end
    })
end

-------------------------------------------------------------------------------
-------------------------------- SMALL SOMNUTS --------------------------------
-------------------------------------------------------------------------------

local SmallSomnut = Class('SmallSomnut', ns.node.Node, {
    label = L['small_somnut'],
    icon = 656681,
    group = ns.groups.SMALL_SOMNUT,
    rewards = {
        Transmog({item = 210132, type = L['2h_sword']}), -- Wildleaf Greatsword
        Item({item = 208066}), -- Small Dreamseed
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Currency({id = 2706}), -- Whelpling's Dreaming Crest
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}), -- Dragon Isles Supplies
        DC.WindingSlitherdrake.SpikedHorns, DC.WindingSlitherdrake.SpikedTail,
        DC.WindingSlitherdrake.SmallSpikedChest
    }
})

map.nodes[26213140] = SmallSomnut()
map.nodes[32936562] = SmallSomnut({location = L['in_a_tree']})
map.nodes[34566935] = SmallSomnut()
map.nodes[37735019] = SmallSomnut()
map.nodes[38073268] = SmallSomnut()
map.nodes[38512516] = SmallSomnut()
map.nodes[39315799] = SmallSomnut()
map.nodes[40384207] = SmallSomnut()
map.nodes[40883180] = SmallSomnut()
map.nodes[42236677] = SmallSomnut({location = L['in_a_tree']})
map.nodes[42284821] = SmallSomnut()
map.nodes[43107190] = SmallSomnut({location = L['in_a_tree']})
map.nodes[44633492] = SmallSomnut()
map.nodes[47743551] = SmallSomnut()
map.nodes[48292228] = SmallSomnut({location = L['in_a_tree']}) -- ontop of the burning tree
map.nodes[54101937] = SmallSomnut()
map.nodes[55324272] = SmallSomnut()
map.nodes[55733714] = SmallSomnut()
map.nodes[55915818] = SmallSomnut()
map.nodes[60134204] = SmallSomnut() -- Bugged inside the Branch/Root. only lootable with interact key.
map.nodes[63457357] = SmallSomnut()
map.nodes[65985217] = SmallSomnut() -- On a Branch/Root

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[59761689] = NPC({
    id = 211265,
    icon = 'peg_bl',
    scale = 2.0,
    note = L['sylvia_vendor_note'],
    rewards = {
        Pet({item = 210689, id = 4305, note = '800'}), -- Snoots
        Pet({item = 210690, id = 4306, note = '800'}), -- Elmer
        Pet({item = 210571, id = 4296, note = '800'}), -- Snoozles
        Pet({item = 210570, id = 4295, note = '800'}), -- Napps
        Pet({item = 210651, id = 4299, note = '800'}), -- Dustite
        Pet({item = 210648, id = 4298, note = '800'}), -- Seedle
        Mount({item = 209950, id = 1810, note = '2500'}), -- Reins of the Rekindled Dreamstag
        Mount({item = 209947, id = 1808, note = '2500'}), -- Reins of the Blossoming Dreamstag
        Mount({item = 210775, id = 1835, note = '2500'}), -- Reins of the Snowfluff Dreamtalon
        Mount({item = 210769, id = 1833, note = '2500'}), -- Reins of the Springtide Dreamtalon
        Mount({item = 210057, id = 1817, note = '2500'}), -- Reins of the Morning Flourish Dreamsaber
        Mount({item = 210058, id = 1816, note = '2500'}) -- Reins of the Evening Sun Dreamsaber
    }
}) -- Sylvia Whisperbloom <Dreamseed Botanist>

map.nodes[50226180] = NPC({
    id = 211209,
    icon = 'peg_bl',
    scale = 2.0,
    note = L['elianna_vendor_note'],
    rewards = {
        Pet({item = 210785, id = 4310, note = '1'}), -- Snorr
        Pet({item = 210553, id = 4289, note = '1'}), -- Dreamborne Scarab
        Pet({item = 210555, id = 4290, note = '1'}), -- Dreamhoof
        Pet({item = 210567, id = 4292, note = '1'}), -- Memorie
        Pet({item = 210652, id = 4300, note = '1'}), -- Somnolet
        Pet({item = 210505, id = 4287, note = '1'}), -- Reverie
        Pet({item = 210777, id = 4309, note = '1'}), -- Drowsey
        Mount({item = 210831, id = 1837, note = '1'}), -- Delugen
        Mount({item = 210948, id = 1939, note = '1'}), -- Imagiwing
        Mount({item = 210946, id = 1938, note = '1'}), -- Mammyth
        Mount({item = 210969, id = 1940, note = '1'}), -- Salatrancer
        Mount({item = 210945, id = 1839, note = '1'}), -- Stargrazer
        Mount({item = 210833, id = 1838, note = '1'}) -- Talont
    }
}) -- Elianna <Dream Infuser>
