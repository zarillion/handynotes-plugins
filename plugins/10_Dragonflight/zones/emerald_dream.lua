-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Dragonglyph = ns.node.Dragonglyph
local ElusiveCreature = ns.node.ElusiveCreature
local Node = ns.node.Node
local NPC = ns.node.NPC
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local Achievement = ns.reward.Achievement
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI
local Circle = ns.poi.Circle

local ItemStatus = ns.tooltip.ItemStatus
local QuestStatus = ns.tooltip.QuestStatus

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2200, settings = true})
local bor = Map({id = 2254, settings = false}) -- Barrows of Reverie

-------------------------------------------------------------------------------
-------------------------------- DRUID GLYPHS ---------------------------------
-------------------------------------------------------------------------------

local DRUID_GLYPH = Class('DRUID_GLYPH', Item, {class = 'DRUID'})

function DRUID_GLYPH:Count(count)
    return DRUID_GLYPH({item = self.item, quest = self.quest, count = count})
end

function DRUID_GLYPH:Note(note)
    return DRUID_GLYPH({item = self.item, quest = self.quest, note = note})
end

ns.DRUID_GLYPHS = {
    Moonkin = {FireMoonkin = DRUID_GLYPH({item = 211280, quest = 78525})},
    Feral = {
        EvergreenDreamsaber = DRUID_GLYPH({item = 210669, quest = 78507}),
        KeenEyedDreamsaber = DRUID_GLYPH({item = 210650, quest = 78503}),
        MoonBlessedDreamsaber = DRUID_GLYPH({item = 210728, quest = 78521})
    },
    Guardian = {
        AshenBristlebruin = DRUID_GLYPH({item = 210727, quest = 78518}),
        DarkUmbraclaw = DRUID_GLYPH({item = 210647, quest = 78481}),
        HibernatingRunebear = DRUID_GLYPH({item = 210751, quest = 78528}),
        LoamyUmbraclaw = DRUID_GLYPH({item = 210738, quest = 78519}),
        SnowyUmbraclaw = DRUID_GLYPH({item = 210739, quest = 78520}),
        VerdantBristlebruin = DRUID_GLYPH({item = 210729, quest = 78517})
    },
    Travel = {
        AuricDreamstag = DRUID_GLYPH({item = 210735, quest = 78523}),
        AuroralDreamtalon = DRUID_GLYPH({item = 211081, quest = 78514}),
        BorealDreamtalon = DRUID_GLYPH({item = 211080, quest = 78512}),
        DreamtalonMatriarch = DRUID_GLYPH({item = 210683, quest = 78513}),
        LushDreamstag = DRUID_GLYPH({item = 210731, quest = 78522}),
        SableDreamtalon = DRUID_GLYPH({item = 210674, quest = 78511}),
        SmolderingDreamstag = DRUID_GLYPH({item = 210736, quest = 78524}),
        ThrivingDreamtalon = DRUID_GLYPH({item = 210684, quest = 78515})
    },
    Flight = {
        AzureSomnowl = DRUID_GLYPH({item = 210645, quest = 78479}),
        BlazingSomnowl = DRUID_GLYPH({item = 210754, quest = 78527}),
        SlumberingSomnowl = DRUID_GLYPH({item = 210535, quest = 78448})
    },
    Aquatic = {
        PrismaticWhiskerfish = DRUID_GLYPH({item = 210753, quest = 78516})
    }
}

local DG = ns.DRUID_GLYPHS

local DruidSpacer = Class('DruidSpacer', Spacer, {
    IsEnabled = function() return ns.class == 'DRUID' end
})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51253128] = Rare({
    id = 210050,
    quest = 77942,
    rewards = {
        Achievement({id = 19316, criteria = 62945}), -- Adventurer of the Emerald Dream
        Transmog({item = 208376, type = L['bow']}), -- Great Ray's Longbow
        Transmog({item = 208347, type = L['plate']}), -- Stone Wolf's Cuffs
        Transmog({item = 208326, type = L['leather']}) -- Vest of the Flametide
    }
}) -- Bloodstripe Great Ray

map.nodes[64178399] = Rare({
    id = 209898,
    quest = 77867,
    vignette = {5806, 5814},
    note = L['reefbreaker_moruud_note'],
    rlabel = ns.status.LightBlue('+50 ' .. L['rep']),
    rewards = {
        Achievement({id = 19316, criteria = 62931}), -- Adventurer of the Emerald Dream
        Transmog({item = 208334, type = L['plate']}), -- Legplates of the Krakken
        Transmog({item = 208327, type = L['leather']}) -- Maruud's Piercing Hands
    }
}) -- Reefbreaker Moruud

map.nodes[66036318] = Rare({
    id = 209909,
    quest = 77862,
    rewards = {
        Achievement({id = 19316, criteria = 62937}), -- Adventurer of the Emerald Dream
        Transmog({item = 208364, type = L['1h_sword']}), -- Falling Leaf Saber
        Transmog({item = 208341, type = L['mail']}), -- Fire-Runed Spaulders
        Transmog({item = 208333, type = L['leather']}) -- Fallen Flame's Crown
    }
}) -- Crabtankerous

map.nodes[34716316] = Rare({
    id = 209929,
    quest = 77878,
    vignette = 5816,
    note = L['envoy_of_winter_note'],
    rlabel = ns.status.LightBlue('+50 ' .. L['rep']),
    rewards = {
        Achievement({id = 19316, criteria = 62933}), -- Adventurer of the Emerald Dream
        Transmog({item = 208365, type = L['polearm']}), -- Winter's Stand
        Transmog({item = 208332, type = L['mail']}), -- Horns of the Envoy
        Transmog({item = 208337, type = L['leather']}), -- Leaf Steward's Leggings
        Transmog({item = 208340, type = L['cloth']}) -- Stag's Flourishing Mantle
    }
}) -- Envoy of Winter

map.nodes[29862077] = Rare({
    id = 209893,
    quest = 78015,
    vignette = 5835,
    rlabel = ns.status.LightBlue('+50 ' .. L['rep']),
    rewards = {
        Achievement({id = 19316, criteria = 62930}), -- Adventurer of the Emerald Dream
        Transmog({item = 209881, type = L['dagger']}), -- Fystia's Fiery Kris
        Transmog({item = 208328, type = L['plate']}), -- Fystia's Deft Hands
        Transmog({item = 208371, type = L['mail']}), -- Fire Assassin's Boots
        Transmog({item = 208331, type = L['cloth']}) -- Cowl of the Flame
    }
}) -- Firebrand Fystia

bor.nodes[54153685] = Rare({
    id = 209913,
    quest = 77846,
    location = L['in_cave'],
    note = L['fruitface_note'],
    parent = {
        id = map.id,
        pois = {POI({63457161})} -- Entrance
    },
    rewards = {
        Achievement({id = 19316, criteria = 62938}), -- Adventurer of the Emerald Dream
        Transmog({item = 208388, type = L['wand']}), -- Leafster's Magic Wand
        Transmog({item = 208344, type = L['mail']}), -- Sash of the Fruit Thief
        Transmog({item = 208372, type = L['leather']}) -- Trickster's Tip Toers
    },
    pois = {
        POI({66641549}), -- Entrance
        POI({60236869, color = 'Pink'}), -- Mylune
        POI({37824463, color = 'Yellow'}), -- Thieving Podling
        POI({54394037, color = 'Red'}) -- Pool
    }
}) -- Fruitface

map.nodes[54034142] = Rare({
    id = 209936,
    quest = 77982,
    vignette = {5817, 5969},
    note = L['greedy_gessie_note'],
    rlabel = ns.status.LightBlue('+50 ' .. L['rep']),
    rewards = {
        Achievement({id = 19316, criteria = 62932}) -- Adventurer of the Emerald Dream
    }
}) -- Greedy Gessie

map.nodes[47062974] = Rare({
    id = 210075,
    quest = 77944,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62950}), -- Adventurer of the Emerald Dream
        Transmog({item = 208357, type = L['cloak']}) -- Henri's Warm Coat
    }
}) -- Henri Snufftail

map.nodes[58775119] = Rare({
    id = 209620,
    quest = 77864,
    rewards = {
        Achievement({id = 19316, criteria = 62936}), -- Adventurer of the Emerald Dream
        Transmog({item = 208383, type = L['1h_mace']}), -- Pommel of Fire
        Transmog({item = 208325, type = L['mail']}), -- Ignit's Fiery Heart
        Transmog({item = 208338, type = L['leather']}) -- Furious Flame's Shoulders
    }
}) -- Ignit the Firebranded

map.nodes[37433171] = Rare({
    id = 209919,
    quest = 77989,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62940}), -- Adventurer of the Emerald Dream
        Transmog({item = 208385, type = L['2h_sword']}), -- Flame Endowed Blade
        Transmog({item = 208348, type = L['mail']}), -- Binds of the Shatterer
        Transmog({item = 208345, type = L['leather']}) -- Forgebreaker's Belt
    },
    pois = {POI({38113211})} -- Entrance
}) -- Isaqa

map.nodes[40685084] = Rare({
    id = 210046,
    quest = 78211,
    rewards = {
        Achievement({id = 19316, criteria = 62943}), -- Adventurer of the Emerald Dream
        Transmog({item = 208363, type = L['warglaive']}), -- Twinfang of the  Clan
        Transmog({item = 208342, type = L['plate']}), -- Girdle of Nature's Fury
        Transmog({item = 208336, type = L['mail']}), -- Legguards of the Dreamsaber
        DG.Feral.KeenEyedDreamsaber -- Mark of the Keen-Eyed Dreamsaber
    },
    pois = {
        Path({
            40685084, 40735079, 40795045, 40644967, 40424961, 39724906,
            39424984, 39325061, 39505117, 39865164, 40215183, 40615183,
            40825162, 40655100, 40685084
        })
    }
}) -- Keen-eyed Cian

map.nodes[41107328] = Rare({
    id = 210051,
    quest = 78213,
    location = L['in_small_cave'],
    rewards = {
        -- Achievement({id = 19316, criteria = 62946}), -- Adventurer of the Emerald Dream
        Transmog({item = 208379, type = L['1h_axe']}), -- Keevah's Extended Claw
        Transmog({item = 208339, type = L['plate']}), -- Saber's Stone Pauldrons
        Transmog({item = 208343, type = L['cloth']}), -- Matriarch's Flowery Band
        DG.Travel.DreamtalonMatriarch -- Mark of the Dreamtalon Matriarch
    }
}) -- Matriarch Keevah

map.nodes[45781879] = Rare({
    id = 208658,
    quest = 77941,
    rewards = {
        Achievement({id = 19316, criteria = 62947}), -- Adventurer of the Emerald Dream
        Toy({item = 205463}) -- Molten Lava Ball
    }
}) -- Moltenbinder's Disciple

map.nodes[63793624] = Rare({
    id = 210064,
    quest = 77943,
    rewards = {
        Achievement({id = 19316, criteria = 62948}), -- Adventurer of the Emerald Dream
        Transmog({item = 208358, type = L['shield']}), -- Sunset's Bulwark
        Transmog({item = 208349, type = L['leather']}), -- Burning Leather Cuffs
        Transmog({item = 208323, type = L['cloth']}) -- Nature's Firebathed Robes
    }
}) -- Molten Leadspike

map.nodes[40467258] = Rare({
    id = 210045,
    quest = 78210,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62942}), -- Adventurer of the Emerald Dream
        Transmog({item = 208380, type = L['1h_axe']}), -- Moragh's Kneading Claw
        Transmog({item = 208329, type = L['cloth']}), -- Warm Grasp of the Dream
        DG.Guardian.VerdantBristlebruin -- Mark of the Verdant Bristlebruin
    },
    pois = {POI({38817158})} -- Entrance
}) -- Moragh the Slothful

map.nodes[54953674] = Rare({
    id = 210070,
    quest = 77940,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62949}), -- Adventurer of the Emerald Dream
        Transmog({item = 208375, type = L['1h_mace']}), -- Owlbear's Decisive Strike
        DG.Guardian.DarkUmbraclaw -- Mark of the Umbramane
    }
}) -- Mosa Umbramane

map.nodes[61747187] = Rare({
    id = 209113,
    quest = 77570,
    note = L['nuoberon_note'],
    vignette = 5786,
    rlabel = ns.status.LightBlue('+50 ' .. L['rep']),
    rewards = {
        Achievement({id = 19316, criteria = 62929}), -- Adventurer of the Emerald Dream
        Transmog({item = 209880, type = L['bow']}) -- Curve of Starry Dusks
    }
}) -- Nuoberon

map.nodes[44473929] = Rare({
    id = 210161,
    quest = 77890,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 62951}), -- Adventurer of the Emerald Dream
        Transmog({item = 208359, type = L['offhand']}), -- Nightclaw's Bauble
        Transmog({item = 208322, type = L['plate']}), -- Treads of the Nightclaw
        DG.Travel.SableDreamtalon -- Mark of the Sable Dreamtalon
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
        Transmog({item = 208381, type = L['1h_mace']}) -- Scepter of Still Waters
    },
    pois = {
        Path({
            43784798, 43544739, 43134649, 40734753, 40304814, 40344908,
            40874937, 42474934, 43504896, 43784798
        })
    }
}) -- Somnambulant Ori

map.nodes[61755220] = Rare({
    id = 209365,
    quest = 77863,
    note = L['splinterlimb_note'],
    rewards = {
        Achievement({id = 19316, criteria = 62935}), -- Adventurer of the Emerald Dream
        Transmog({item = 208361, type = L['staff']}), -- Splinterlimb's Branch
        Transmog({item = 208346, type = L['cloth']}) -- Singed Barkbands
    }
}) -- Splinterlimb

local SurgingLasher = Class('SurgingLasher', Rare, {
    id = 210111,
    quest = 78263,
    note = L['surging_lasher_note'],
    fgroup = 'SurgingLasher',
    rewards = {
        Achievement({id = 19316, criteria = 62941}), -- Adventurer of the Emerald Dream
        Transmog({item = 208367, type = L['dagger']}), -- Lasher's Red Thorn
        Transmog({item = 208330, type = L['mail']}), -- Piercing Touch of the Vine
        Transmog({item = 208335, type = L['cloth']}) -- Vibrant Fall Leggings
    }
}) -- Surging Lasher

map.nodes[42413092] = SurgingLasher()
map.nodes[57015167] = SurgingLasher({vignette = 5859})
map.nodes[58967188] = SurgingLasher()
map.nodes[59896202] = SurgingLasher()

local Talthonei = Class('Talthonei', Rare, {
    id = 209902,
    quest = 77994,
    note = L['talthonei_ashwisper_note'],
    fgroup = 'talthonei',
    rewards = {
        Achievement({id = 19316, criteria = 62934}), -- Adventurer of the Emerald Dream
        Transmog({item = 208374, type = L['staff']}), -- Talthornei's Wrath
        Transmog({item = 208369, type = L['plate']}), -- Druid's Vengeful Gaze
        DG.Travel.SmolderingDreamstag -- Mark of the Smoldering Dreamstag
    }
}) -- Talthonei Ashwisper

map.nodes[34775492] = Talthonei({sublabel = L['talthonei_ashwisper_wq_note']})
map.nodes[35132264] = Talthonei()
map.nodes[36922240] = Talthonei()
map.nodes[59204360] = Talthonei() -- wowhead
map.nodes[61426741] = Talthonei()
map.nodes[61604500] = Talthonei() -- wowhead
map.nodes[61804140] = Talthonei() -- wowhead
map.nodes[62805220] = Talthonei() -- wowhead
map.nodes[62805520] = Talthonei() -- wowhead
map.nodes[63877009] = Talthonei()
map.nodes[64446660] = Talthonei()

map.nodes[26022656] = Rare({
    id = 209911,
    quest = 77990,
    rewards = {
        Achievement({id = 19316, criteria = 62939}), -- Adventurer of the Emerald Dream
        Transmog({item = 208389, type = L['polearm']}), -- Spear of the Wilds
        Transmog({item = 208324, type = L['plate']}), -- Scorching Dryad's Chestpiece
        Transmog({item = 208370, type = L['cloth']}) -- The Apostle's Steps
    }
}) -- The Apostle

map.nodes[38436213] = Rare({
    id = 210508,
    quest = 78214,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 19316, criteria = 64492}) -- Adventurer of the Emerald Dream
    },
    pois = {POI({38176157})} -- Entrance
}) -- Voracious Mikanji

-------------------------------------------------------------------------------

map.nodes[22743226] = Rare({
    id = 210559,
    quest = 78039,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 208356, type = L['cloak']}) -- Earthbound Furbolg's Shroud
    }
}) -- Balboan

local Raszageth = Class('Raszageth', Rare, {
    id = 209912,
    quest = 77859,
    vignette = 5808,
    fgroup = 'raszageth'
    -- note = L['raszageths_note'],
    -- rlabel = ns.status.LightBlue('+50 ' .. L['rep']), -- NOT confirm yet
    -- rewards = {}
}) -- Raszageth's Last Breath

map.nodes[24203240] = Raszageth() -- wowhead coords
map.nodes[26402800] = Raszageth() -- wowhead coords
map.nodes[39965108] = Raszageth()
map.nodes[46203560] = Raszageth() -- wowhead coords
map.nodes[47081991] = Raszageth()
map.nodes[50603820] = Raszageth() -- wowhead coords
map.nodes[63593476] = Raszageth()
map.nodes[65604320] = Raszageth() -- wowhead coords
map.nodes[67606620] = Raszageth() -- wowhead coords

local Amalgamation = Class('Amalgamation', Rare, {
    id = 209915,
    quest = 77856,
    vignette = 5807, -- Coagulating Dreams
    fgroup = 'amalgamation'
    -- note = L['amalgamation_note'],
    -- rlabel = ns.status.LightBlue('+50 ' .. L['rep']), -- NOT confirm yet
    -- rewards = {}
}) -- Amalgamation of Dreams

map.nodes[39615386] = Amalgamation()
map.nodes[41202620] = Amalgamation() -- Review
map.nodes[48404880] = Amalgamation() -- wowhead coords
map.nodes[51805740] = Amalgamation() -- wowhead coords
map.nodes[58004560] = Amalgamation() -- wowhead coords
map.nodes[58806700] = Amalgamation()
map.nodes[59005860] = Amalgamation() -- wowhead coords
map.nodes[62805200] = Amalgamation() -- wowhead coords
map.nodes[63806380] = Amalgamation() -- wowhead coords

---------------------------------- ZONE DROPS ---------------------------------

map.nodes[72002700] = Node({
    icon = 5390645,
    label = L['zone_drops_label'],
    scale = 1.5,
    note = L['zone_drops_note'],
    rewards = {
        Item({item = 208066}), -- Small Dreamseed
        Item({item = 208067}), -- Plump Dreamseed
        Item({item = 208047}), -- Gigantic Dreamseed
        Spacer(),
        Recipe({item = 191578, profession = ns.professions.ALCHEMY.skillID}), -- Recipe: Transmute: Awakened Fire
        Recipe({item = 210171, profession = ns.professions.ENCHANTING.skillID}), -- Formula: Enchanted Aspect's Dreaming Crest
        Recipe({item = 210172, profession = ns.professions.ENCHANTING.skillID}), -- Formula: Enchanted Wyrm's Dreaming Crest
        Recipe({item = 210173, profession = ns.professions.ENCHANTING.skillID}), -- Formula: Enchanted Whelpling's Dreaming Crest
        Recipe({item = 210491, profession = ns.professions.INSCRIPTION.skillID}), -- Technique: Winding Slitherdrake: Hairy Chin
        Recipe({item = 210492, profession = ns.professions.INSCRIPTION.skillID}), -- Technique: Grotto Netherwing Drake: Chin Tendrils
        Recipe({item = 210493, profession = ns.professions.INSCRIPTION.skillID}), -- Technique: Grotto Netherwing Drake: Spiked Jaw
        DC.GrottoNetherwingDrake.BarbedTail,
        DC.GrottoNetherwingDrake.ShortHorns,
        DC.GrottoNetherwingDrake.TripleSpikedCrest, Spacer(),
        Currency({id = 2245}), -- Flightstones
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
})

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[39146553] = Treasure({
    quest = 77950,
    location = L['in_a_tree'],
    rlabel = ns.status.LightBlue('+200 ' .. L['rep']),
    rewards = {
        Achievement({id = 19317, criteria = 62954}), -- Treasures of The Emerald Dream
        Item({item = 208047, note = '50%'}) -- Gigantic Dreamseed
    }
}) -- Crystalline Glowblossom

map.nodes[47493485] = Treasure({
    label = L['hidden_moonkin_stash_label'],
    quest = 77858,
    location = L['in_a_tree'],
    rlabel = ns.status.LightBlue('+200 ' .. L['rep']),
    rewards = {
        Achievement({id = 19317, criteria = 62953}), -- Treasures of The Emerald Dream
        Toy({item = 210725}) -- Owl Post
    }
}) -- Hidden Moonkin Stash

map.nodes[61625960] = Treasure({
    quest = 78005,
    note = L['magical_bloom_note'],
    rlabel = ns.status.LightBlue('+200 ' .. L['rep']),
    rewards = {
        Achievement({id = 19317, criteria = 62960}), -- Treasures of The Emerald Dream
        Item({item = 208047}) -- Gigantic Dreamseed
    },
    pois = {POI({64346131})} -- Laughing Sprigling
}) -- Magical Bloom

map.nodes[55275726] = Treasure({
    quest = 78006,
    location = L['in_a_tree'],
    rlabel = ns.status.LightBlue('+200 ' .. L['rep']),
    rewards = {
        Achievement({id = 19317, criteria = 62961}), -- Treasures of The Emerald Dream
        Item({item = 208067}) -- Plump Dreamseed
    }
}) -- Odd Burl

map.nodes[37263069] = Treasure({
    quest = 78120,
    location = L['pineshrew_cache_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62956}), -- Treasures of The Emerald Dream
        Toy({item = 210411}) -- Fast Growing Seed
    }
}) -- Pineshrew Cache

bor.nodes[63863509] = Treasure({
    quest = 78359,
    location = L['in_cave'],
    note = L['reliquary_of_ashamane_note'],
    parent = {
        id = map.id,
        pois = {POI({63457161})} -- Entrance
    },
    rewards = {
        Achievement({id = 19317, criteria = 62958}), -- Treasures of The Emerald Dream
        Transmog({item = 210631, type = L['cosmetic']}) -- Branch of Ashamane
    },
    pois = {
        POI({66641549}), -- Entrance
        POI({38686649, color = 'Green'}) -- Mark of Ashamane
    }
}) -- Reliquary of Ashamane

map.nodes[64231928] = Treasure({
    quest = 78360,
    note = L['reliquary_of_aviana_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62957}), -- Treasures of The Emerald Dream
        Transmog({item = 210659, type = L['cosmetic']}) -- Branch of Aviana
    },
    pois = {POI({64532091, color = 'Green'})} -- Mark of Aviana
}) -- Reliquary of Aviana

map.nodes[32938325] = Treasure({
    quest = 78361,
    location = L['in_small_cave'],
    note = L['reliquary_of_goldrinn_note'],
    rewards = {
        Achievement({id = 19317, criteria = 62959}), -- Treasures of The Emerald Dream
        Transmog({item = 210660, type = L['cosmetic']}) -- Claw of Lo'Gosh
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
        Transmog({item = 210434, type = L['cosmetic']}) -- Visage of Ursoc
    },
    pois = {POI({48015246, color = 'Green'})} -- Mark of Ursol
}) -- Reliquary of Ursol

map.nodes[34105633] = Treasure({
    label = '{npc:210060}',
    note = L['triflesnatchs_roving_trove_note'],
    quest = {77855, 77857, 77860, 77872},
    rewards = {
        Achievement({id = 19317, criteria = 62952}), -- Treasures of The Emerald Dream
        Item({item = 208067}) -- Plump Dreamseed
    },
    pois = {
        POI({39715215, 42225630, 41756256}), -- Perched locations
        Path({39715215, 42225630, 41756256, 34105633}) -- Flight path
    }
}) -- Triflesnatch's Roving Trove

-------------------------------------------------------------------------------

local Book = Class('Book', ns.node.Item, {icon = 133741})

map.nodes[49816171] = Book({
    id = 210049,
    quest = 78831,
    location = L['inside_building']
}) -- The Legend of Elun'Ahir

map.nodes[54462464] = Book({id = 208649, quest = 78833}) -- On the Nature of the Dream

map.nodes[59641910] = Book({id = 210346, quest = 78834}) -- Self-Baking Herb Based Cookies

map.nodes[53712395] = Book({
    id = 208619,
    quest = 78835,
    location = L['inside_building']
}) -- The Tragedy of Erinethria

map.nodes[60834489] = Book({id = 210737, quest = 78911}) -- Ashwood Research Binder

-------------------------------------------------------------------------------

local UnwakingEcho = Class('UnwakingEcho', Treasure, {
    icon = 'chest_gn',
    label = L['unwaking_echo_label'],
    note = L['unwaking_echo_note'],
    requires = ns.requirement.Spell(421216), -- Dreaming
    rlabel = ns.status.LightBlue('+200 ' .. L['rep'])
}) -- Unwaking Echo

map.nodes[46408615] = UnwakingEcho({
    quest = 78552,
    rewards = {Transmog({item = 210682, type = L['cosmetic']})} -- Camper's Knife
})

map.nodes[55672258] = UnwakingEcho({
    quest = 78547,
    rewards = {Transmog({item = 210675, type = L['cosmetic']})} -- Gardener's Lightstaff
})

map.nodes[55324538] = UnwakingEcho({
    quest = 78551,
    location = L['in_small_cave'],
    rewards = {Transmog({item = 210678, type = L['cosmetic']})}, -- Verdant Glearner's Scythe
    pois = {POI({54774452})} -- Entrance
})

map.nodes[69575284] = UnwakingEcho({
    quest = 78550,
    location = L['inside_building'],
    rewards = {Transmog({item = 210686, type = L['shield']})} -- Grovekeeper's Barrier
})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------
-- https://www.wowhead.com/ptr-2/items/quality:4?filter=168:99:82;2:11:2;0:0:100200

map.nodes[54043264] = PT.Alchemy({id = 210184, quest = 78264}) -- Half-Filled Dreamless Sleep Potion

bor.nodes[50934991] = PT.Alchemy({
    id = 210185,
    quest = 78269,
    parent = {
        id = map.id,
        note = L['in_cave'],
        pois = {POI({63457161})} -- Entrance
    }
}) -- Splash Potion of Narcolepsy

map.nodes[36264653] = PT.Alchemy({id = 210190, quest = 78275}) -- Blazeroot

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

bor.nodes[49486918] = PT.Engineering({
    id = 210194,
    quest = 78279,
    location = L['in_cave'],
    parent = map.id
}) -- Insomniotron

map.nodes[62683626] = PT.Engineering({id = 210197, quest = 78281}) -- Unhatched Battery

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
    quest = 78282,
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
    note = L['moonkin_hatchling_note'],
    getters = {
        rewards = function(self)
            return {
                Achievement({id = 19293, criteria = self.criteriaID}), -- Friends in Feathers
                Pet({item = 210522, id = 4288}) -- Blueloo
            }
        end
    }
})

function MoonkinHatchling:IsCollected()
    local _, _, completed = GetAchievementCriteriaInfoByID(19293,
        self.criteriaID)
    if not completed then return false end
    return true
end

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

map.nodes[35686969] = MoonkinHatchling({
    criteriaID = 62783,
    location = L['in_small_cave']
}) -- Meep

map.nodes[35656941] = MoonkinHatchling({
    criteriaID = 62787,
    location = L['in_small_cave']
}) -- Moonbeam

map.nodes[37427231] = MoonkinHatchling({criteriaID = 62782}) -- Owlington

map.nodes[37846926] = MoonkinHatchling({
    criteriaID = 62777,
    location = L['in_small_cave'],
    pois = {POI({37526855})} -- Entrance
}) -- Peanut

map.nodes[40317156] = MoonkinHatchling({
    criteriaID = 62778,
    location = L['in_cave'],
    pois = {POI({38817158})} -- Entrance
}) -- Snoozle

map.nodes[36357161] = MoonkinHatchling({
    criteriaID = 62780,
    pois = {POI({36147092})} -- Entrance
}) -- Squawkle

map.nodes[38446932] = MoonkinHatchling({
    criteriaID = 62786,
    location = L['in_cave'],
    pois = {POI({37536964})} -- Entrance
}) -- Squeaky

map.nodes[38757048] = MoonkinHatchling({
    criteriaID = 62791,
    location = L['in_cave'],
    pois = {POI({37536964})} -- Entrance
}) -- Tickles

map.nodes[37777028] = MoonkinHatchling({
    criteriaID = 62781,
    location = L['in_cave'],
    pois = {POI({37536964})} -- Entrance
}) -- Wingnut

-------------------------------------------------------------------------------
------------------------------- DREAMSEED SOIL --------------------------------
-------------------------------------------------------------------------------

local AgelessBlossom = Class('AgelessBlossom', Collectible, {
    requires = ns.requirement.Quest(78172), -- ![Mysterious Seeds]
    icon = 464030,
    group = ns.groups.DREAM_OF_SEEDS,
    rewards = {
        Achievement({id = 19013, criteria = 62396}) -- I Dream of Seeds
    },
    label = format('%s - %s', L['dreamseed_soil_label'],
        GetAchievementCriteriaInfoByID(19013, 62396))
}) -- Emerald Bounty

map.nodes[59201737] = AgelessBlossom()
map.nodes[59731584] = AgelessBlossom()
map.nodes[60101818] = AgelessBlossom()

local EmeraldBounty = Class('EmeraldBounty', Node, {
    note = L['dreamseed_soil_note'],
    requires = {
        ns.requirement.Item(208066) -- Small Dreamseed
    },
    icon = 464030,
    group = ns.groups.DREAM_OF_SEEDS,
    getters = {
        label = function(self)
            local id = self.criteriaID
            local name = GetAchievementCriteriaInfoByID(19013, id)
            return format('%s - %s', L['dreamseed_soil_label'], name)
        end,
        rewards = function(self)
            return {
                Achievement({id = 19013, criteria = self.criteriaID}), -- I Dream of Seeds
                Achievement({
                    id = 19198,
                    criteria = {
                        id = 1,
                        qty = true,
                        suffix = L['the_seeds_i_sow_suffix']
                    }
                }), -- The Seeds I Sow
                Section(L['dreamseed_cache']),
                Mount({item = 210059, id = 1815}), -- Reins of the Winter Night Dreamsaber
                DC.GrottoNetherwingDrake.HeadSpike, -- Gigantic Dreamseed by myself
                DC.GrottoNetherwingDrake.OutcastPattern,
                DC.GrottoNetherwingDrake.LongHorns,
                DC.GrottoNetherwingDrake.ClusterSpikedBack,
                Recipe({item = 211065, profession = 773}), -- Technique: Mark of the Auric Dreamstag -- Cache Drop
                Recipe({item = 210490, profession = 773}), -- Technique: Vantus Rune: Amirdrassil, the Dream's Hope -- Cache Drop
                Spacer(), Section('{item:208047}'),
                Recipe({item = 210242, profession = 185, note = '{item:208067}'}), -- Recipe: Slumbering Peacebloom Tea -- Plump Dreamseed
                Recipe({item = 210174, profession = 333, note = '{item:208067}'}), -- Formula: Illusory Adornment: Dreams -- Plump Dreamseed
                Recipe({item = 210241, profession = 171, note = '{item:208067}'}), -- Recipe: Dreamwalker's Healing Potion -- Plump Dreamseed
                Mount({item = 209950, id = 1810}), -- Reins of the Rekindled Dreamstag
                Mount({item = 209947, id = 1808}), -- Reins of the Blossoming Dreamstag
                Mount({item = 210775, id = 1835}), -- Reins of the Snowfluff Dreamtalon
                Mount({item = 210769, id = 1833}), -- Reins of the Springtide Dreamtalon
                Mount({item = 210057, id = 1817}), -- Reins of the Morning Flourish Dreamsaber
                Mount({item = 210058, id = 1816}) -- Reins of the Evening Sun Dreamsaber
            }
        end
    }
}) -- Emerald Bounty

map.nodes[38455920] = EmeraldBounty({criteriaID = 62185}) -- Comfy Chamomile
map.nodes[40025269] = EmeraldBounty({criteriaID = 62035}) -- Viridescent Sprout
map.nodes[40682478] = EmeraldBounty({criteriaID = 62027}) -- Lavatouched Lilies
map.nodes[40744348] = EmeraldBounty({criteriaID = 62036}) -- Glade Goldenrod
map.nodes[42647404] = EmeraldBounty({criteriaID = 62186}) -- Moon Tulip
map.nodes[46384049] = EmeraldBounty({criteriaID = 62037}) -- Dreamer's Daisy
map.nodes[48738046] = EmeraldBounty({criteriaID = 62189}) -- Flourishing Scurfpea
map.nodes[49164807] = EmeraldBounty({criteriaID = 62038}) -- Ringing Rose
map.nodes[49903544] = EmeraldBounty({criteriaID = 62041}) -- Belligerent Begonias
map.nodes[51155864] = EmeraldBounty({criteriaID = 62397}) -- Whisperbloom Sapling
map.nodes[54596763] = EmeraldBounty({criteriaID = 62029}) -- Chiming Foxglove
map.nodes[56513767] = EmeraldBounty({criteriaID = 62040}) -- Lullaby Lavender
map.nodes[56664489] = EmeraldBounty({criteriaID = 62039}) -- Lofty Lupin
map.nodes[59245876] = EmeraldBounty({criteriaID = 62028}) -- Ysera's Clover
map.nodes[63035284] = EmeraldBounty({criteriaID = 62031}) -- Singing Weedling
map.nodes[63504710] = EmeraldBounty({criteriaID = 62032}) -- Fuzzy Licorice
map.nodes[63966484] = EmeraldBounty({criteriaID = 62030}) -- Dragon's Daffodil

hooksecurefunc(VignettePinMixin, 'DisplayNormalTooltip', function(self)
    if self.vignetteID ~= 5971 then return end

    local mapID = self:GetMap().mapID
    local group = ns.groups.DREAM_OF_SEEDS
    if not ns.maps[mapID] or not group:GetDisplay(mapID) then return end

    local x, y =
        C_VignetteInfo.GetVignettePosition(self.vignetteGUID, mapID):GetXY()
    local node = ns.maps[mapID].nodes[HandyNotes:getCoord(x, y)]
    if not node then return end

    -- GameTooltip:AddLine(node.requires, true, 1, 1, 1)
    if ns:GetOpt('show_notes') then
        GameTooltip:AddLine(' ')
        GameTooltip:AddLine(ns.RenderLinks(node.note), 1, 1, 1, true)
    end
    if ns:GetOpt('show_loot') then node:RenderRewards(GameTooltip) end

    GameTooltip:Show()
end)

-------------------------------------------------------------------------------
--------------------------------- SUPERBLOOM ----------------------------------
-------------------------------------------------------------------------------

map.nodes[51555972] = Collectible({
    icon = 3939983,
    label = '{quest:78319}',
    vignette = 5813,
    rlabel = ns.status.LightBlue('+50 ' .. L['rep']),
    rewards = {
        Achievement({id = 19312}), -- Super Duper Bloom
        Achievement({
            id = 19313,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['bloom_man_group_suffix']
            }
        }), -- Bloom Man Group
        Achievement({
            id = 19315,
            criteria = {id = 1, qty = true, suffix = L['dream_chaser_suffix']}
        }), -- Dream Chaser
        Section(PVP_PROGRESS_REWARDS_HEADER .. ': 2600/8000'),
        Item({item = 211411}), -- Sprouting Dreamtrove
        Currency({id = 2650}), -- Emerald Dewdrop
        Spacer(), --
        Section(PVP_PROGRESS_REWARDS_HEADER .. ': 5300/8000'),
        Item({item = 211413}), -- Budding Dreamtrove
        DC.RenewedProtoDrake.GreenHair, --
        DC.WindingSlitherdrake.ClusterJawHorns, --
        DC.WindingSlitherdrake.HeavyHorns, --
        DC.WindingSlitherdrake.SingleJawHorn, --
        DC.GrottoNetherwingDrake.SingleHornedCrest, --
        DC.GrottoNetherwingDrake.ChinSpike, --
        DC.GrottoNetherwingDrake.FinnedJaw, --
        DC.GrottoNetherwingDrake.TempestuousPattern, --
        Spacer(), --
        Section(PVP_PROGRESS_REWARDS_HEADER .. ': 8000/8000'),
        Item({item = 211414}), -- Blossoming Dreamtrove
        Item({item = 208047}), -- Gigantic Dreamseed
        Item({item = 208067}), -- Plump Dreamseed
        Item({item = 208066}), -- Small Dreamseed
        Spacer(), Section('{npc:207554}' .. '  ' .. _G.LOOT), -- Verlann Timbercrush
        Transmog({item = 210661, slot = L['cosmetic']}), -- Dreamcatcher's Crescent
        Transmog({item = 210662, slot = L['cosmetic']}), -- Ochre Ornament of the Grove
        Transmog({item = 210663, slot = L['cosmetic']}), -- Circlet of the Mother Tree
        Transmog({item = 210664, slot = L['cosmetic']}), -- Frost Sapling's Adornment
        Transmog({item = 210666, slot = L['cosmetic']}) -- Crest of the Seething Flamekeeper
    }
})

-------------------------------------------------------------------------------
----------------------------- FRUIT OF THE BLOOM ------------------------------
-------------------------------------------------------------------------------

local Dreamfruit = Class('Dreamfruit', Collectible, {
    icon = 5390643,
    label = L['dreamfruit_label'],
    group = ns.groups.DREAMFRUIT
})

map.nodes[51265990] = Dreamfruit({
    note = L['dreamfruit_note_1'],
    requires = {
        ns.requirement.Reputation(2574, 1, true),
        ns.requirement.Reputation(2574, 4, true)
    },
    rewards = {
        Achievement({
            id = 19310,
            criteria = {
                62910, -- Basket of Explosive Acorns
                62911, -- Bubble Blowgun
                62912, -- Dream Gatherer
                62913, -- Feral Overflow
                -- 62914, -- Flower Trail
                62915, -- Lifesurger
                -- 62916, -- Memory of L'ghorek
                -- 62917, -- Memory of Ursoc
                -- 62918, -- Mighty Roar
                62919, -- Moonkin Jump
                62920, -- Moonkin Mayhem
                62921, -- Potent Lullaby
                62922, -- Putrid Propulsion
                62923 -- Sack of Talontreats
                -- 62924, -- Star Shower
                -- 62925, -- The Superb Loom
                -- 62926, -- Wake Up!
                -- 63414, -- Nae'dra Nibbles
                -- 63415, -- Fae Lens
                -- 63438-- Arachnid Annihilation
            }
        })
    }
})

map.nodes[52847357] = Dreamfruit({
    note = L['dreamfruit_note_2'],
    requires = {
        ns.requirement.Reputation(2574, 8, true),
        ns.requirement.Reputation(2574, 12, true)
    },
    rewards = {
        Achievement({
            id = 19310,
            criteria = {
                -- 62910, -- Basket of Explosive Acorns
                -- 62911, -- Bubble Blowgun
                -- 62912, -- Dream Gatherer
                -- 62913, -- Feral Overflow
                62914, -- Flower Trail
                -- 62915, -- Lifesurger
                62916, -- Memory of L'ghorek
                62917, -- Memory of Ursoc
                62918, -- Mighty Roar
                -- 62919, -- Moonkin Jump
                -- 62920, -- Moonkin Mayhem
                -- 62921, -- Potent Lullaby
                -- 62922, -- Putrid Propulsion
                -- 62923, -- Sack of Talontreats
                62924, -- Star Shower
                62925, -- The Superb Loom
                62926, -- Wake Up!
                63414, -- Nae'dra Nibbles
                63415, -- Fae Lens
                63438 -- Arachnid Annihilation
            }
        })
    }
})

map.nodes[46276304] = Dreamfruit({
    note = L['dreamfruit_note_2'],
    requires = {
        ns.requirement.Reputation(2574, 8, true),
        ns.requirement.Reputation(2574, 12, true)
    },
    rewards = {
        Achievement({
            id = 19310,
            criteria = {
                -- 62910, -- Basket of Explosive Acorns
                -- 62911, -- Bubble Blowgun
                -- 62912, -- Dream Gatherer
                -- 62913, -- Feral Overflow
                62914, -- Flower Trail
                -- 62915, -- Lifesurger
                62916, -- Memory of L'ghorek
                62917, -- Memory of Ursoc
                62918, -- Mighty Roar
                -- 62919, -- Moonkin Jump
                -- 62920, -- Moonkin Mayhem
                -- 62921, -- Potent Lullaby
                -- 62922, -- Putrid Propulsion
                -- 62923, -- Sack of Talontreats
                62924, -- Star Shower
                62925, -- The Superb Loom
                62926, -- Wake Up!
                63414, -- Nae'dra Nibbles
                63415, -- Fae Lens
                63438 -- Arachnid Annihilation
            }
        })
    }
})

-------------------------------------------------------------------------------
-------------------------------- DRUID GLYPHS ---------------------------------
-------------------------------------------------------------------------------

local DruidGlyph = Class('DruidGlyph', Collectible, {
    icon = 625999,
    group = ns.groups.DRUID_GLYPH,
    class = 'DRUID'
}) -- Druid Glyph

map.nodes[70002700] = DruidGlyph({
    label = L['druid_glyphs_label'],
    sublabel = L['druid_glyphs_sublabel'],
    note = L['druid_glyphs_note'],
    rewards = {
        -- LuaFormatter off
        Section('{spell:24858}'), -- Moonkin
        DG.Moonkin.FireMoonkin:Note('{npc:210601}'),
        Spacer(),
        Section('{spell:768}'), -- Feral
        DG.Feral.EvergreenDreamsaber:Note('{npc:212903}'),
        DG.Feral.KeenEyedDreamsaber:Note('{npc:210046}'),
        DG.Feral.MoonBlessedDreamsaber:Note('{item:210991}'),
        Spacer(),
        Section('{spell:5487}'), -- Guardian
        DG.Guardian.AshenBristlebruin:Note('{item:210727}'),
        DG.Guardian.DarkUmbraclaw:Note('{npc:210070}'),
        DG.Guardian.HibernatingRunebear:Note('{npc:209574}'),
        DG.Guardian.LoamyUmbraclaw:Note('{npc:212903}'),
        DG.Guardian.SnowyUmbraclaw:Note('{npc:211265}'),
        DG.Guardian.VerdantBristlebruin:Note('{npc:210045}'),
        Spacer(),
        Section('{spell:783}'), -- Travel
        DG.Travel.AuricDreamstag:Note('{spell:45357}'),
        DG.Travel.AuroralDreamtalon:Note('{npc:211265}'),
        DG.Travel.BorealDreamtalon:Note('{npc:211265}'),
        DG.Travel.DreamtalonMatriarch:Note('{npc:210051}'),
        DG.Travel.LushDreamstag:Note('{npc:212903}'),
        DG.Travel.SableDreamtalon:Note('{npc:210161}'),
        DG.Travel.SmolderingDreamstag:Note('{npc:209902}'),
        DG.Travel.ThrivingDreamtalon:Note('{npc:212903}'),
        Spacer(),
        Section('{spell:276029}'), -- Flight
        DG.Flight.AzureSomnowl:Note('{quest:78066}'),
        DG.Flight.BlazingSomnowl:Note('{item:210061}'),
        DG.Flight.SlumberingSomnowl:Note('{spell:2637}, {spell:426183}'),
        Spacer(),
        Section('{spell:276012}'),
        DG.Aquatic.PrismaticWhiskerfish:Note('{spell:51294}, '..L['amirdrassil'])
        -- LuaFormatter on
    }
}) -- Druid Glyph List

map.nodes[60341694] = DruidGlyph({
    id = 212903,
    note = L['thaelishar_vendor_note'] .. '\n\n' .. L['silent_mark_note'],
    rewards = {
        Item({item = 210764, count = '500', quest = 78515}), -- Silent Mark of the Dreamtalon
        Item({item = 210767, count = '500', quest = 78522}), -- Silent Mark of the Dreamstag
        Item({item = 210755, count = '500', quest = 78507}), -- Silent Mark of the Dreamsaber
        Item({item = 210766, count = '500', quest = 78519}) -- Silent Mark of the Umbraclaw
    },
    pois = {POI({50054897}), Path({60341694, 50054897})}
}) -- Thaelishar Groveheard <Fauna Specialist>

map.nodes[50054897] = DruidGlyph({
    label = L['silent_mark_label'],
    note = L['silent_mark_note'],
    rewards = {
        DG.Travel.ThrivingDreamtalon, -- Silent Mark of the Dreamtalon
        DG.Travel.LushDreamstag, -- Silent Mark of the Dreamstag
        DG.Feral.EvergreenDreamsaber, --  Silent Mark of the Dreamsaber
        DG.Guardian.LoamyUmbraclaw -- Silent Mark of the Umbraclaw
    },
    pois = {
        Path({Circle({origin = 50054897, radius = 4})}),
        Path({Circle({origin = 42886656, radius = 3})}),
        Path({Circle({origin = 38007100, radius = 2})})
    }
})

map.nodes[63743916] = DruidGlyph({
    label = '{item:210727}',
    note = L['pollenfused_bristlebruin_fur_sample_note'],
    rewards = {DG.Guardian.AshenBristlebruin} -- Pollenfused Bristlebruin Fur Sample
}) -- Pollenfused Bristlebruin Fur Sample

map.nodes[34656926] = DruidGlyph({
    label = '{npc:210524}',
    note = L['azure_somnowl_note'],
    requires = ns.requirement.Quest(77178), -- Tactical Withdrawal
    rewards = {DG.Flight.AzureSomnowl}, -- Feather of Friends
    pois = {POI({50786208})} -- Cenarius
}) -- Q'onzu

--------------------- DRUID GLYPH: PRISTMATIC WHISKERFISH ---------------------

local PrismaticWhiskerfish = Class('PrismaticWhiskerfish', DruidGlyph, {
    label = '{item:210753}',
    location = L['prismatic_location'],
    rewards = {DG.Aquatic.PrismaticWhiskerfish}
}) -- Prismatic Whiskerfish

function PrismaticWhiskerfish.getters:note()
    local note = L['prismatic_note_1']
    note = note .. '\n\n' .. L['prismatic_note_2']
    note = note .. '\n\n' .. L['prismatic_note_3']
    note = note .. '\n\n' .. L['prismatic_note_4']
    return note .. '\n\n' .. L['prismatic_note_5']
end

map.nodes[29703103] = PrismaticWhiskerfish()

local wel = ns.maps[2232] or Map({id = 2232, settings = false}) -- Wellspring Atrium

wel.nodes[50706200] = PrismaticWhiskerfish({
    pois = {
        POI({50705700}), -- Fishing location
        Path({Circle({origin = 50706200, radius = 4})}), -- Fishing pool
        Path({Circle({origin = 43002000, radius = 3})}) -- The Scorched Hall entrance
    }
})

local tsh = ns.maps[2244] or Map({id = 2244, settings = false}) -- The Scorched Hall

tsh.nodes[55006800] = PrismaticWhiskerfish({
    pois = {
        Path({Circle({origin = 55005900, radius = 7})}), -- Fishing pool
        Path({Circle({origin = 78008900, radius = 3})}) -- The Scorched Hall entrance
    }
})

----------------------- DRUID GLYPH: SLUMBERING SOMNOWL -----------------------

local SlumberingSomnowl = Class('SlumberingSomnowl', DruidGlyph, {
    label = '{item:210535}',
    rewards = {DG.Flight.SlumberingSomnowl} -- Mark of the Slumbering Somnowl
})

function SlumberingSomnowl.getters:note()
    local note = ''
    note = note .. ItemStatus(210565, 5, L['slumbering_somnowl_note_a'], false)
    note = note .. ItemStatus(4291, 1, L['slumbering_somnowl_note_b'])
    note = note .. ItemStatus(210566, 1, L['slumbering_somnowl_note_c'])
    note = note .. ItemStatus(194864, 1, L['slumbering_somnowl_note_d'])
    return note .. '\n\n' .. L['slumbering_somnowl_note_e']
end

map.nodes[54507698] = SlumberingSomnowl({
    pois = {
        POI({
            55357645, 54627720, 71455417, 34205882, 43887115, 68425147,
            59634116, 60424151, 61473978, 59534241
        })
    }
})

-------------------- DRUID GLYPH: MOON-BLESSED DREAMSABER ---------------------

local Dragonblight = ns.maps[115] or Map({id = 115, settings = true})
local Dreamgrove = ns.maps[747] or Map({id = 747, settings = true})
local Duskwood = ns.maps[47] or Map({id = 47, settings = true})
local Moonglade = ns.maps[80] or Map({id = 80, settings = true})
local ShadowmoonValley = ns.maps[539] or Map({id = 539, settings = true})
local TerokkarForest = ns.maps[108] or Map({id = 108, settings = true})

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
        coordinates = 29512426,
        location = L['mbc_vial_d_location'],
        map = ShadowmoonValley,
        parent = {572}, -- Draenor
        parentMapID = 572,
        rlabel = L['mbc_vial_d'],
        vialEmptyID = 210839,
        vialFilledID = 210879
    },
    [6] = {
        coordinates = 35162469,
        location = C_Map.GetMapInfo(Dreamgrove.id).name,
        map = Dreamgrove,
        parent = {619, 641}, -- Broken Isles, Val'Sharah
        parentMapID = 619,
        rlabel = L['mbc_vial_b'],
        vialEmptyID = 210840,
        vialFilledID = 210880,
        zoneID = 641
    }
}

local MoonBlessedClaw = Class('MoonBlessedClaw', DruidGlyph, {
    quest = 78521,
    rewards = {DG.Feral.MoonBlessedDreamsaber} -- Moon-Blessed Claw
})

function MoonBlessedClaw.getters:note()
    local function complete(rlabel, vialFilledID)
        if ns.PlayerHasItem(vialFilledID) or ns.PlayerHasItem(210977) then
            return ns.status.Green(rlabel)
        end
        return ns.status.Red(rlabel)
    end

    local note = L['mbc_note_start'] .. '\n'
    for _, vial in ipairs(EMPTY_VIALS) do
        local mName = C_Map.GetMapInfo(vial.map.id).name
        local pName = C_Map.GetMapInfo(vial.parentMapID).name
        local iDone = complete(vial.rlabel, vial.vialFilledID)
        note = note .. format('\n%s %s (%s)', iDone, mName, pName)
    end
    return note .. '\n\n' .. L['mbc_note_end']
end

map.nodes[54922542] = MoonBlessedClaw({
    label = '{item:210991}',
    pois = {POI({41566694}), Path({41566694, 54922542})}
}) -- Small Box of Vials

map.nodes[41756694] = MoonBlessedClaw({
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
    vial.map.nodes[vial.coordinates] = DruidGlyph({
        label = L['mbc_moonwell_label'],
        location = format(L['mbc_vial_location'], e, l, z, c, f),
        rlabel = ns.status.Gray(format('"%s"', vial.rlabel)),
        parent = vial.parent,
        playerHasItem = {vial.vialFilledID, 210977},
        rewards = {Item({item = vial.vialFilledID, count = '1'})},
        IsCompleted = function(self)
            if C_QuestLog.IsQuestFlaggedCompleted(78521) then
                return true
            end
            if self.playerHasItem then
                for i, v in ipairs(self.playerHasItem) do
                    if ns.PlayerHasItem(v) then return true end
                end
            end
            return Node.IsCompleted(self)
        end
    })
end

-------------------------------------------------------------------------------
-------------------------------- SMALL SOMNUTS --------------------------------
-------------------------------------------------------------------------------
-- Laden Somnut -- Renown 11 --Review what's difference between Laden and small

local Somnut = Class('Somnut', Node, {
    label = L['somnut'],
    icon = 656681,
    group = ns.groups.SOMNUT,
    requires = {ns.requirement.Reputation(2574, 2, true)}, -- review required? i can loot them at renown 1
    rewards = {
        ns.reward.Quest({id = 78172}), -- Mysterious Seeds
        Item({item = 208066}), -- Small Dreamseed
        DC.WindingSlitherdrake.SpikedHorns, --
        DC.WindingSlitherdrake.SpikedTail, --
        DC.WindingSlitherdrake.SmallSpikedCrest --
    }
})

map.nodes[26213140] = Somnut()
map.nodes[28553410] = Somnut()
map.nodes[32936562] = Somnut({location = L['in_a_tree']})
map.nodes[34566935] = Somnut()
map.nodes[35176611] = Somnut({location = L['in_a_tree']})
map.nodes[36704600] = Somnut()
map.nodes[36804405] = Somnut()
map.nodes[37735019] = Somnut()
map.nodes[38073268] = Somnut()
map.nodes[38476184] = Somnut({location = L['in_small_cave']})
map.nodes[38512516] = Somnut()
map.nodes[39184365] = Somnut()
map.nodes[39315799] = Somnut()
map.nodes[39552298] = Somnut()
map.nodes[39705235] = Somnut()
map.nodes[40082431] = Somnut()
map.nodes[40384207] = Somnut()
map.nodes[40883180] = Somnut()
map.nodes[41012758] = Somnut()
map.nodes[41285450] = Somnut()
map.nodes[41454593] = Somnut()
map.nodes[42236677] = Somnut({location = L['in_a_tree']})
map.nodes[42284821] = Somnut()
map.nodes[43107190] = Somnut({location = L['in_a_tree']})
map.nodes[44572452] = Somnut()
map.nodes[44633492] = Somnut()
map.nodes[45532594] = Somnut()
map.nodes[46913522] = Somnut()
map.nodes[47743551] = Somnut()
map.nodes[48292228] = Somnut({location = L['in_a_tree']}) -- ontop of the burning tree
map.nodes[48703449] = Somnut()
map.nodes[49083517] = Somnut()
map.nodes[51271460] = Somnut()
map.nodes[51622974] = Somnut({location = L['in_water']})
map.nodes[51782620] = Somnut()
map.nodes[52973369] = Somnut({location = L['in_water']})
map.nodes[53284339] = Somnut()
map.nodes[53995564] = Somnut({location = L['in_small_cave']})
map.nodes[54101937] = Somnut()
map.nodes[54191511] = Somnut({location = L['in_a_tree']}) -- Bugged flying in the air
map.nodes[54223219] = Somnut({location = L['in_a_tree']})
map.nodes[54652938] = Somnut()
map.nodes[54924044] = Somnut()
map.nodes[54933912] = Somnut()
map.nodes[55002530] = Somnut({location = L['in_a_tree']}) -- bugged floating in the tree, hard to reach
map.nodes[55324272] = Somnut()
map.nodes[55575494] = Somnut({location = L['in_water']})
map.nodes[55733714] = Somnut()
map.nodes[55915818] = Somnut()
map.nodes[57185350] = Somnut() -- flying in the air, but reachable
map.nodes[58933803] = Somnut()
map.nodes[59002516] = Somnut()
map.nodes[59425365] = Somnut()
map.nodes[59566338] = Somnut() -- Bugged inside the Branch/Root. only lootable with interact key.
map.nodes[60134204] = Somnut() -- Bugged inside the Branch/Root. only lootable with interact key.
map.nodes[60135629] = Somnut()
map.nodes[60504531] = Somnut({location = L['in_a_tree']})
map.nodes[61748602] = Somnut()
map.nodes[61977450] = Somnut()
map.nodes[62102929] = Somnut({location = L['in_water']})
map.nodes[63457357] = Somnut()
map.nodes[65985217] = Somnut() -- On a Branch/Root
map.nodes[66085014] = Somnut()
map.nodes[66246327] = Somnut()

-------------------------------------------------------------------------------
---------------------------- EMERALD DREAM SAFARI -----------------------------
-------------------------------------------------------------------------------

local EmeraldDream_Safari = Class('EmeraldDream_Safari', ns.node.Safari,
    {group = ns.groups.EMERALD_DREAM_SAFARI})

map.nodes[51606080] = EmeraldDream_Safari({
    id = 212557,
    rewards = {Achievement({id = 19401, criteria = 63271}), Pet({id = 4304})},
    pois = {
        POI({
            40606460, 42607580, 43206380, 44607220, 47207960, 50607760,
            51606080, 51805880, 57207300, 57407620, 58007280, 58407460,
            59006640, 59207280, 59607160
        })
    }
}) -- Dream Badger

map.nodes[48607360] = EmeraldDream_Safari({
    id = 211110,
    rewards = {Achievement({id = 19401, criteria = 63272}), Pet({id = 4275})},
    pois = {
        POI({
            41604900, 46406940, 46603700, 46807020, 47207480, 47604780,
            48207360, 48407020, 48407460, 48607360, 48607460, 48807560,
            49007120, 49807740, 50207640, 50807880, 52007840, 53806760
        })
    }
}) -- Flooftalon

map.nodes[39604820] = EmeraldDream_Safari({
    id = 211177,
    rewards = {Achievement({id = 19401, criteria = 63273}), Pet({id = 4276})},
    pois = {
        POI({
            38205480, 39604820, 40603500, 42403840, 42603860, 45206000,
            45606320, 46006940, 46206040, 47404200, 47604200, 47606480,
            47805440, 48205480, 48605600, 48805420, 49806020, 50005640,
            50206720, 51006400, 51006960, 51206900, 51406780, 51806800,
            52406340, 52406600, 52606200, 53806320, 54402640, 54406040,
            54602640, 56002500, 56006140, 56602900, 57002400, 57604600,
            60603660, 61404520
        })
    }
}) -- Fol'ya Pup

map.nodes[46607960] = EmeraldDream_Safari({
    id = 211288,
    rewards = {Achievement({id = 19401, criteria = 63274}), Pet({id = 4278})},
    pois = {
        POI({
            38002740, 38002760, 42006280, 43606820, 44006420, 44206740,
            44606440, 45006860, 45405560, 45807960, 46007440, 46207320,
            46406860, 46602980, 46607960, 46805880, 47006920, 47405840,
            47606980, 49005640, 49607160, 50007100, 50606880, 50805640,
            50806820, 51005900, 51204940, 51406640, 51606620, 51806720,
            52005420, 52206520, 52605760, 52606380, 52606680, 52805020,
            52807540, 53006300, 53006620, 53206460, 53406160, 54002420,
            54207400, 55206040, 55206060, 55606020, 55607780, 56003720,
            58203700, 58406580, 59005060, 60003840, 62404740, 62404760,
            62806180, 63407600, 63806320, 66406680, 66806440, 67606560
        })
    }
}) -- Leyhart

map.nodes[34316765] = EmeraldDream_Safari({
    requires = ns.requirement.Toy(209944),
    id = 212437,
    rewards = {Achievement({id = 19401, criteria = 63275}), Pet({id = 4302})},
    pois = {
        POI({
            53606531, 51396661, 51116816, 48366943, 61937615, 34316765,
            34606225, 35756228, 35855785, 34275534, 35365323, 46614723,
            46934809, 46653889, 58483511, 60601844
        })
    }
}) -- Pale Slumbertooth

map.nodes[37203600] = EmeraldDream_Safari({
    id = 211302,
    rewards = {Achievement({id = 19401, criteria = 63276}), Pet({id = 4280})},
    pois = {
        POI({
            37203600, 37403340, 38805100, 39403660, 39804440, 40004460,
            40806300, 41406380, 41803540, 42005420, 42207500, 42606800,
            43204280, 43407660, 45604420, 45607360, 47605680, 48005760,
            48405340, 48804660, 48805680, 49205880, 50005380, 50005500,
            50607020, 50807760, 51405840, 51405860, 51805620, 51805880,
            52205720, 53605780, 53605920, 57207300, 57207640, 57807480,
            58807360, 59207260, 59607480, 60005600, 60006720, 60206240,
            60206260, 60407440, 61405280, 64806980, 65405320
        })
    }
}) -- Pewling

map.nodes[54207320] = EmeraldDream_Safari({
    id = 211182,
    rewards = {Achievement({id = 19401, criteria = 63277}), Pet({id = 4277})},
    pois = {
        POI({
            40603320, 40802500, 42407300, 42607200, 43407300, 47007740,
            47407860, 47607900, 49205700, 50005780, 51207820, 51405440,
            51407680, 51807760, 52004860, 54207320, 54407700, 54806820,
            55407620, 55606700, 55607320, 56206960, 57608100, 58005840,
            58005860, 58007020, 58206840, 59407080, 59607380, 61206660,
            61208100, 61606000, 63604840, 63804860, 63805280, 64005900,
            66205520, 67205900
        })
    }
}) -- Sapnibbler

map.nodes[48207640] = EmeraldDream_Safari({
    id = 211295,
    rewards = {Achievement({id = 19401, criteria = 63278}), Pet({id = 4279})},
    pois = {
        POI({
            40806920, 42006400, 42407420, 42807120, 43007220, 43007360,
            44207280, 44407880, 45007320, 48207640, 48407760, 48606760,
            49403840, 49407740, 50207820, 50407940, 50407960, 55406340
        })
    }
}) -- Slumbertooth

map.nodes[57602620] = EmeraldDream_Safari({
    id = 212459,
    rewards = {Achievement({id = 19401, criteria = 63279}), Pet({id = 4303})},
    pois = {POI({25602280, 33606900, 37405760, 49604780, 57602620, 65406960})}
}) -- Snaggletoof

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[43994990] = ElusiveCreature({
    label = '{npc:212090}',
    quest = 78394,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Item({item = 210687}) -- Ironfur Sample
    },
    pois = ({Path({Circle({origin = 43994990, radius = 3})})})
}) -- Elusive Blooming Brierhide

map.nodes[58434177] = ElusiveCreature({
    label = '{npc:212133}',
    quest = 78397,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Item({item = 210456}) -- Dreaming Antler Fragment
    },
    pois = ({Path({Circle({origin = 58434177, radius = 3})})})
}) -- Elusive Verdant Gladewarden

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

local SeedbloomVendor = Class('SeedbloomVendor', Vendor, {
    note = L['sylvia_vendor_note'],
    rewards = {
        DG.Travel.BorealDreamtalon:Count('1'), --
        DG.Travel.AuroralDreamtalon:Count('1'), --
        DG.Guardian.SnowyUmbraclaw:Count('1'), --
        DruidSpacer(), --
        Section(ns.requirement.Reputation(2574, 11, true):GetText()),
        Pet({item = 210690, id = 4306, count = '1'}), -- Elmer
        Pet({item = 210689, id = 4305, count = '1'}), -- Snoots
        Pet({item = 210571, id = 4296, count = '1'}), -- Snoozles
        Pet({item = 210570, id = 4295, count = '1'}), -- Napps
        Pet({item = 210651, id = 4299, count = '1'}), -- Dustite
        Pet({item = 210648, id = 4298, count = '1'}), -- Seedle
        Spacer(), --
        Section(ns.requirement.Reputation(2574, 18, true):GetText()),
        Mount({item = 209950, id = 1810, count = '1'}), -- Reins of the Rekindled Dreamstag
        Mount({item = 209947, id = 1808, count = '1'}), -- Reins of the Blossoming Dreamstag
        -- Mount({item = 210775, id = 1835, count = '1'}), -- Reins of the Snowfluff Dreamtalon
        -- Mount({item = 210769, id = 1833, count = '1'}), -- Reins of the Springtide Dreamtalon
        Mount({item = 210057, id = 1817, count = '1'}), -- Reins of the Morning Flourish Dreamsaber
        Mount({item = 210058, id = 1816, count = '1'}) -- Reins of the Evening Sun Dreamsaber
    }
})

map.nodes[59761689] = SeedbloomVendor({id = 211265}) -- Sylvia Whisperbloom <Dreamseed Botanist>
map.nodes[49776211] = SeedbloomVendor({id = 212797}) -- Talisa Whisperbloom <Dreamseed Botanist>

local Elianna = Class('Elianna', Vendor, {
    id = 211209,
    requires = {ns.requirement.Reputation(2574, 5, true)},
    rewards = {
        Pet({item = 210785, id = 4310, count = '1'}), -- Snorr
        Pet({item = 210553, id = 4289, count = '1'}), -- Dreamborne Scarab
        Pet({item = 210555, id = 4290, count = '1'}), -- Dreamhoof
        Pet({item = 210567, id = 4292, count = '1'}), -- Memorie
        Pet({item = 210652, id = 4300, count = '1'}), -- Somnolet
        Pet({item = 210505, id = 4287, count = '1'}), -- Reverie
        Pet({item = 210777, id = 4309, count = '1'}), -- Drowsey
        Spacer(), --
        Mount({item = 210831, id = 1837, count = '1'}), -- Delugen
        Mount({item = 210948, id = 1939, count = '1'}), -- Imagiwing
        Mount({item = 210946, id = 1938, count = '1'}), -- Mammyth
        Mount({item = 210969, id = 1940, count = '1'}), -- Salatrancer
        Mount({item = 210945, id = 1839, count = '1'}), -- Stargrazer
        Mount({item = 210833, id = 1838, count = '1'}) -- Talont
    }
}) -- Elianna <Dream Infuser>

function Elianna.getters:note()
    -- LuaFormatter off
    local n = format('\124T1394953:0\124t \124cFF00FF00[%s]\124r', L['dream_energy_name'])
    -- LuaFormatter on
    local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(2649)
    local q = currencyInfo.quantity
    local m = currencyInfo.maxQuantity
    local p = (q / m) * 100
    local note = format(L['elianna_vendor_note'], n, n)
    note = note .. '\n\n' .. format(L['dream_energy_info'], n, q, m, p)
    return note
end

map.nodes[50226180] = Elianna()

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

--------------------------- TOY: IMPROVISED LEAFBED ---------------------------

map.nodes[58137730] = Collectible({
    label = '{item:210864}',
    icon = 614747,
    location = L['in_small_cave'],
    note = L['improvised_leafbed_note'],
    rewards = {Toy({item = 210864})}, -- Improvised Leafbed
    pois = {POI({58037780})} -- Entrance
}) -- Thaalean

-------------------------------- PET: KAL'ANDU --------------------------------

map.nodes[52016363] = Collectible({
    label = '{item:210633}',
    icon = 3071791,
    note = L['kalandu_note'],
    rewards = {Pet({item = 210633, id = 4297})} -- Kal'andu
}) -- Solarys Thorngale

--------------------------- MOUNT: OCHRE DREAMTALON ---------------------------

local OchreDreamtalon = Class('OchreDreamtalon', Collectible, {
    id = 209253,
    icon = 5370985,
    quest = {77677, 78398, 77697, 77711, 77762},
    questCount = true,
    rewards = {Mount({item = 210774, id = 1834})}, -- Ochre Dreamtalon
    pois = {
        POI({49586281}), -- Professor Ash
        POI({49856163, color = 'Yellow'}), -- Banana
        POI({color = 'Green', points = {43558093, 43157962, 43067724}}), -- Turtle Egg
        POI({color = 'Red', points = {58705344, 58335391, 57915537}}), -- Fenblossom Lashling
        Path({color = 'Red', Circle({origin = 56104577, radius = 3})})
    }
}) -- Smoldering Sprout

function OchreDreamtalon.getters:note()
    local note = L['ochre_note'] .. '\n'
    note = note .. QuestStatus(self.quest[1], 1, L['ochre_note_stage1'], true) -- ![Some Water...]
    note = note .. QuestStatus(self.quest[2], 2, L['ochre_note_stage2'], true) -- ![A Dash of Minerals...]
    note = note .. QuestStatus(self.quest[3], 3, L['ochre_note_stage3'], true) -- ![The Right Food...]
    note = note .. QuestStatus(self.quest[4], 4, L['ochre_note_stage4'], true) -- ![And a Pinch of Magic]
    note = note .. QuestStatus(self.quest[5], 5, L['ochre_note_stage5'], true) -- ![Little Hope is Never Without Worth]
    return note
end

map.nodes[48676789] = OchreDreamtalon()

-------------------------- HUNTER PET: THORN BEAST --------------------------

-- STEP 1

local ThornLadenHeart = Class('ThornLadenHeart', Node, {
    label = '{item:209860}',
    rlabel = ns.status.Gray('1/4'),
    icon = 415052,
    class = 'HUNTER',
    pois = {Path({Circle({origin = 49645610, radius = 16})})}
})

function ThornLadenHeart.getters:note()
    local disclaimer = format(L['thornbeast_disclaimer'], 209860)
    local note = L['thorn_laden_heart_note_1'] .. '\n\n' .. disclaimer
    note = note .. ItemStatus(209860, 1, format(L['thorn_beast_stag'], 209860))
    note = note .. ItemStatus(209861, 1, format(L['thorn_beast_saber'], 209861))
    note = note .. ItemStatus(209862, 1, format(L['thorn_beast_bear'], 209862))
    return note .. '\n\n' .. L['thorn_laden_heart_note_2']
end

map.nodes[49645610] = ThornLadenHeart()

-- STEP 2
local drustvar = ns.maps[896] or Map({id = 896, settings = false})

local Athainne = Class('Athainne', NPC, {
    id = 140044,
    rlabel = ns.status.Gray('2/4'),
    icon = 960685,
    class = 'HUNTER',
    IsEnabled = function(self)
        local spawn = 'nighttime'
        local hour, _ = GetGameTime()
        if hour >= 5 and hour < 19 then spawn = 'daytime' end
        return self.spawn == spawn
    end
}) -- Athainne

function Athainne.getters:note()
    local disclaimer = format(L['thornbeast_disclaimer'], 209863)
    local note = L['athainne_note_1'] .. '\n\n' .. disclaimer
    note = note .. ItemStatus(209863, 1, format(L['thorn_beast_stag'], 209863))
    note = note .. ItemStatus(209864, 1, format(L['thorn_beast_saber'], 209864))
    note = note .. ItemStatus(209865, 1, format(L['thorn_beast_bear'], 209865))
    return note .. '\n\n' .. L['athainne_note_2']
end

drustvar.nodes[44924547] = Athainne({
    location = L['in_small_cave'],
    spawn = 'daytime',
    pois = {POI({46124524})} -- Entrance
}) -- Althainne (Day)

drustvar.nodes[51653967] = Athainne({
    spawn = 'nighttime',
    pois = {
        Path({
            51653967, 51444024, 51264102, 51434135, 51744126, 52264082,
            52484048, 52453919, 52123911, 51813939, 51653967
        })
    }
}) -- Althainne (Night)

-- STEP 3

local Ulfar = Class('Ulfar', NPC, {
    id = 141159,
    rlabel = ns.status.Gray('3/4'),
    icon = 2101969,
    class = 'HUNTER',
    pois = {POI({46124524})} -- Entrance
}) -- Ulfar

function Ulfar.getters:note()
    local disclaimer = format(L['thornbeast_disclaimer'], 209866)
    local note = L['ulfar_note_1'] .. '\n\n' .. disclaimer
    note = note .. ItemStatus(209866, 1, format(L['thorn_beast_stag'], 209866))
    note = note .. ItemStatus(209867, 1, format(L['thorn_beast_saber'], 209867))
    note = note .. ItemStatus(209868, 1, format(L['thorn_beast_bear'], 209868))
    return note .. '\n\n' .. L['ulfar_note_2']
end

drustvar.nodes[45194585] = Ulfar()

-- STEP 4

map.nodes[44646425] = NPC({
    id = 210976, -- Wandering Gladehart
    rlabel = ns.status.Gray('4/4'),
    icon = 132144,
    requires = {
        ns.requirement.Item(209866) -- Thornspeaker Ritual Knife (Stag)
    },
    class = 'HUNTER',
    note = format(L['thornbeast_disclaimer'], 209866) .. '\n\n' ..
        L['thorn_stag_note'],
    pois = {
        Path({
            44836541, 44736496, 44686436, 44646425, 44426404, 44076340, 43696279
        })
    }
}) -- Argyr

map.nodes[57204780] = NPC({
    id = 210975, -- Listless Dreamsaber
    rlabel = ns.status.Gray('4/4'),
    icon = 132115,
    location = L['in_cave'],
    requires = {
        ns.requirement.Item(209867) -- Thornspeaker Ritual Knife (Saber)
    },
    class = 'HUNTER',
    note = format(L['thornbeast_disclaimer'], 209866) .. '\n\n' ..
        L['thorn_saber_note'],
    pois = {POI({57294864})}
}) -- Liliuna

map.nodes[36596203] = NPC({
    id = 210977, -- Displaced Bristlebruin
    rlabel = ns.status.Gray('4/4'),
    icon = 132276,
    requires = {
        ns.requirement.Item(209868) -- Thornspeaker Ritual Knife (Bear)
    },
    class = 'HUNTER',
    note = format(L['thornbeast_disclaimer'], 209866) .. '\n\n' ..
        L['thorn_bear_note']
}) -- Astera

---------------------------- SPIRIT BEAST: NAH'QI -----------------------------

map.nodes[45507220] = NPC({
    id = 210908,
    icon = 5171363,
    requires = {ns.requirement.Quest(78842, '{item:211314}')}, -- Cinder of Companionship
    class = 'HUNTER',
    note = L['nahqi_note'],
    pois = {
        Path({
            45507220, 45207000, 45006770, 45006560, 45206340, 45706110,
            46805940, 48405800, 49805730, 51305670, 52705710, 53605900,
            54406130, 54606320, 55206530, 55406750, 55006920, 54607100,
            53807230, 52907390, 51707490, 50307510, 48507480, 46807390, 45507220
        })
    }
}) -- Nah'qi

--------------------------- SPIRIT BEAST: SUL'RAKA ----------------------------

map.nodes[58305820] = NPC({
    id = 210868,
    icon = 2446018,
    class = 'HUNTER',
    note = L['sulraka_note'],
    pois = {
        Path({
            58305820, 58206020, 58106240, 58206470, 58806690, 59906810,
            61106930, 62706950, 64306750, 65406640, 65906420, 66106190,
            65006040, 63805900, 63005700, 62805530, 61805420, 60305380,
            59005290, 57805380, 57905610, 58305820
        })
    }
}) -- Sul'raka

-------------------- DEAMON HUNTER WARGLAIVES: ALARA'SHINU --------------------

local Alarashinu = Class('Alarashinu', Collectible, {
    icon = 5061798,
    quest = {78606, 78622, 78623, 78660, 78677, 78678}, -- a hidden quest chain
    questCount = true,
    class = 'DEMONHUNTER',
    rewards = {Transmog({item = 210961, type = L['warglaive']})} -- Alara'shinu
})

function Alarashinu.getters:note()
    local n = L['alarashinu_note'] .. '\n'
    n = n .. QuestStatus(self.quest[1], 1, L['alarashinu_note_stage1'], true)
    n = n .. QuestStatus(self.quest[2], 2, L['alarashinu_note_stage2'], true)
    n = n .. QuestStatus(self.quest[3], 3, L['alarashinu_note_stage3'], true)
    n = n .. QuestStatus(self.quest[4], 4, L['alarashinu_note_stage4'], true)
    n = n .. QuestStatus(self.quest[5], 5, L['alarashinu_note_stage5'], true)
    n = n .. QuestStatus(self.quest[6], 6, L['alarashinu_note_stage6'], true)
    return n .. '\n' .. L['alarashinu_note_end']
end

map.nodes[50536096] = Alarashinu({id = 213029}) -- Landeron Felfury

local brokenshore = ns.maps[646] or Map({id = 646, settings = false})
brokenshore.nodes[71674147] = Alarashinu({id = 213114}) -- Memory of Landeron Felfury

local valsharah = ns.maps[641] or Map({id = 641, settings = false})
valsharah.nodes[51185689] = Alarashinu({id = 213186}) -- Memory of Landeron Felfury
