-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local AncientStone = ns.node.AncientStone
local Disturbeddirt = ns.node.Disturbeddirt
local Dragonglyph = ns.node.Dragonglyph
local ElementalStorm = ns.node.ElementalStorm
local ElusiveCreature = ns.node.ElusiveCreature
local Flag = ns.node.Flag
local Fragment = ns.node.Fragment
local GrandHunt = ns.node.GrandHunt
local LegendaryCharacter = ns.node.LegendaryCharacter
local MagicBoundChest = ns.node.MagicBoundChest
local PM = ns.node.ProfessionMasters
local PrettyNeat = ns.node.PrettyNeat
local PT = ns.node.ProfessionTreasures
local RareElite = ns.node.RareElite
local Safari = ns.node.Safari
local Scoutpack = ns.node.Scoutpack
local SignalTransmitter = ns.node.SignalTransmitter
local Squirrel = ns.node.Squirrel
local TuskarrTacklebox = ns.node.TuskarrTacklebox

local Achievement = ns.reward.Achievement
local Appearance = ns.reward.Appearance
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local QuestStatus = ns.tooltip.QuestStatus

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2025, settings = true})
local val = Map({id = 2112, settings = false}) -- Valdrakken
local tpf = Map({id = 2085, settings = false}) -- The Primalist Future

-------------------------------------------------------------------------------

-- war supplies 41974893

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[59075874] = RareElite({
    id = 193664,
    vignette = 5236,
    quest = 74055,
    note = L['ancient_protector_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56158}),
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200299, slot = L['1h_sword']}), -- Strange Clockwork Gladius
        Transmog({item = 200303, slot = L['staff']}), -- Dreamweaver Acolyte's Staff
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.WindborneVelocidrake.SpikedBack, DC.HighlandDrake.StripedPattern,
        DC.HighlandDrake.CrestedBrow
    },
    pois = {POI({60755543, 60736211, 59225648, 59266104})} -- Titanic Reactors
}) -- Ancient Protector

map.nodes[61507360] = Rare({
    id = 193220,
    vignette = 5193,
    quest = 73987,
    interval = ns.Intervals.Interval14h({id = 25}),
    rewards = {
        Achievement({id = 16679, criteria = 56149}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200147, slot = L['cloth']}), -- Web-Woven Robe
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.WindborneVelocidrake.SpikedBack, DC.HighlandDrake.StripedPattern,
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Broodweaver Araznae

map.nodes[40807465] = Rare({
    id = 193243,
    quest = 72834,
    rewards = {
        Transmog({item = 200165, slot = L['shield']}), -- Aegis of Scales
        Transmog({item = 200682, slot = L['plate']}), -- Hardened Scale Shoulderguards
        Transmog({item = 200228, slot = L['mail']}), -- Protoscale Pauldrons
        DC.RenewedProtoDrake.ClubTail, DC.CliffsideWylderdrake.HeavyHorns
    },
    pois = {
        Path({
            40807465, 38667537, 37447542, 36727565, 36507640, 37237792,
            38137912, 38707939, 39277942, 39567930, 39687884, 39507767,
            39477697, 39667648, 39947653, 40107680, 40497778, 40237878,
            40037911, 39747932, 39367896, 39147837, 39097697, 39747530,
            40387463, 40807465
        })
    }
}) -- Acrosoth

map.nodes[59807060] = Rare({
    id = 205865,
    quest = 76170,
    rewards = {
        Transmog({item = 208168, slot = L['1h_sword']}), -- Black Blade of K'tanth
        Transmog({item = 208172, slot = L['staff']}), -- Bloodstained Runecrook
        Transmog({item = 208170, slot = L['2h_axe']}) -- Runeaxe of the Last Resistance
    }
}) -- Zal'kir the Chosen

map.nodes[44886910] = Rare({
    id = 193658,
    vignette = 5235,
    quest = 74060,
    location = L['in_cave'],
    note = L['corrupted_proto_dragon_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56156}),
        Transmog({item = 200166, slot = L['offhand']}), -- Corrupted Drake Horn
        Transmog({item = 200233, slot = L['1h_sword']}), -- Paradox Saber
        Transmog({item = 200293, slot = L['warglaive']}), -- Primal Scion's Twinblade
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Toy({item = 200198}), -- Primalist Prison
        DC.CliffsideWylderdrake.ManedJaw, DC.HighlandDrake.CoiledHorns,
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns
    },
    pois = {POI({44616780})} -- Entrance
}) -- Corrupted Proto-Dragon

map.nodes[45458518] = Rare({
    id = 193663,
    vignette = 5237,
    quest = 74061,
    rewards = {
        Achievement({id = 16679, criteria = 56154}),
        Transmog({item = 200298, slot = L['plate']}), -- Stoneshaped Greatbelt
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        DC.CliffsideWylderdrake.BlackHorns, DC.WindborneVelocidrake.ClubTail
    }
}) -- Craggravated Elemental

map.nodes[47675115] = Rare({
    id = 193234,
    vignette = 5198,
    quest = 73990,
    interval = ns.Intervals.Interval14h({id = 6}),
    rewards = {
        Achievement({id = 16446, criteria = 55398, note = L['pretty_neat_note']}),
        Achievement({id = 16679, criteria = 56147}),
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        DC.HighlandDrake.ToothyMouth, DC.RenewedProtoDrake.ImpalerHorns,
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Eldoren the Reborn

map.nodes[53374092] = Rare({
    id = 193125,
    vignette = nil,
    quest = 73878,
    rewards = {
        Achievement({id = 16679, criteria = 56138}),
        Transmog({item = 200436, slot = L['mail']}), -- Gorestained Hauberk
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Goremaul the Gluttonous

map.nodes[59128380] = Rare({
    id = 193126,
    vignette = nil,
    quest = 73881,
    rewards = {
        Achievement({id = 16679, criteria = 56135}),
        Transmog({item = 200126, slot = L['cloth']}), -- Mantle of Copious Chronologies
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200202, slot = L['mail']}), -- Tomorrow's Chains
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Toy({item = 200148}), -- A Collection Of Me
        DC.CliffsideWylderdrake.NarrowStripesPattern,
        DC.HighlandDrake.StagHorns, DC.RenewedProtoDrake.ImpalerHorns,
        DC.HighlandDrake.ToothyMouth
    },
    pois = {
        Path({
            61268044, 61068044, 60758085, 60478099, 60078084, 59978045,
            59268031, 59178048, 58718021, 58408056, 58408127, 57878120,
            57568198, 57648326, 58338437, 58738449, 59438425, 60118349,
            60028315, 60038298, 60598289, 60928214, 61058151, 61708119,
            61628055, 61158042, 60778077, 60478100
        })
    }
}) -- Innumerable Ruination

map.nodes[62298177] = Rare({
    id = 193241,
    vignette = 5203,
    quest = 74066,
    note = L['lord_epochbrgl_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56157}),
        Transmog({item = 200185, slot = L['leather']}), -- Grips of the Everflowing Ocean
        Transmog({item = 200126, slot = L['cloth']}), -- Mantle of Copious Chronologies
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200202, slot = L['mail']}), -- Tomorrow's Chains
        Transmog({item = 200435, slot = L['cloth']}), -- Brackish Breeches
        Toy({item = 200148}), -- A Collection Of Me
        DC.CliffsideWylderdrake.NarrowStripesPattern,
        DC.HighlandDrake.StagHorns, DC.CliffsideWylderdrake.FinnedNeck,
        DC.WindborneVelocidrake.LargeHeadFin
    },
    pois = {POI({61708120})} -- Entrance
}) -- Lord Epochbrgl

map.nodes[52895903] = Rare({
    id = 193246,
    vignette = 5204,
    quest = 74013,
    interval = ns.Intervals.Interval14h({id = 12}),
    rewards = {
        Achievement({id = 16679, criteria = 56141}),
        Transmog({item = 200257, slot = L['2h_mace']}), -- Decay Infused Branch
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Matriarch Remalla

map.nodes[59806100] = Rare({
    id = 193688,
    vignette = 5248,
    quest = 74020,
    -- interval = ns.Intervals.Interval14h({id = 7}), -- wait for blizz fix.
    rewards = {
        Achievement({id = 16679, criteria = 56140}),
        Transmog({item = 200146, slot = L['1h_mace']}), -- Phenran's Discordant Smasher
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200299, slot = L['1h_sword']}), -- Strange Clockwork Gladius
        Transmog({item = 200303, slot = L['staff']}), -- Dreamweaver Acolyte's Staff
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        Pet({item = 200263, id = 3310}), -- Echo of the Heights
        DC.HighlandDrake.CrestedBrow, DC.HighlandDrake.StripedPattern,
        DC.WindborneVelocidrake.SpikedBack
    }
}) -- Phenran

map.nodes[57218420] = Rare({
    id = 193210,
    vignette = 5192,
    quest = 74021,
    interval = ns.Intervals.Interval14h({id = 0}),
    rewards = {
        Achievement({id = 16679, criteria = 56142}),
        Transmog({item = 200202, slot = L['mail']}), -- Tomorrow's Chains
        Transmog({item = 200126, slot = L['cloth']}), -- Mantle of Copious Chronologies
        Toy({item = 200148}), -- A Collection Of Me
        DC.CliffsideWylderdrake.NarrowStripesPattern, DC.HighlandDrake.StagHorns
    }
}) -- Phleep

map.nodes[37967903] = Rare({
    id = 193130,
    vignette = 5479,
    quest = 73889,
    rewards = {
        Achievement({id = 16679, criteria = 56137}), --
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Pleasant Alpha

map.nodes[50404840] = Rare({
    id = 193143,
    vignette = 5180,
    quest = 73892,
    rewards = {
        Achievement({id = 16679, criteria = 56133}), --
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200165, slot = L['shield']}), -- Aegis of Scales
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Transmog({item = 200682, slot = L['plate']}), -- Hardened Scale Shoulderguards
        DC.CliffsideWylderdrake.HeavyHorns, DC.RenewedProtoDrake.ClubTail,
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    },
    pois = {
        Path({
            53264403, 53344332, 52894297, 52414382, 51544449, 50594557, 50105027
        })
    }
}) -- Razk'vex the Untamed

map.nodes[40087014] = Rare({
    id = 193240,
    vignette = 5201,
    quest = 74024,
    interval = ns.Intervals.Interval14h({id = 4}),
    rewards = {
        Achievement({id = 16679, criteria = 56148}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200212, slot = L['mail']}), -- Sand-Encrusted Greaves
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Riverwalker Tamopo

map.nodes[50005180] = Rare({
    id = 193666,
    vignette = 5238,
    quest = 74025,
    interval = ns.Intervals.Interval14h({id = 10}),
    rewards = {
        Achievement({id = 16679, criteria = 56151}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Rokmur

map.nodes[37607780] = Rare({
    id = 193176,
    vignette = 5185,
    quest = 74029,
    interval = ns.Intervals.Interval14h({id = 18}),
    location = L['in_cave'],
    rewards = {
        Achievement({id = 16679, criteria = 56150}),
        Transmog({item = 200202, slot = L['mail']}), -- Tomorrow's Chains
        Transmog({item = 200126, slot = L['cloth']}), -- Mantle of Copious Chronologies
        Transmog({item = 200306, slot = L['cloak']}), -- Tempest Shawl
        Transmog({item = 200314, slot = L['cloth']}), -- Skyspeaker's Envelope
        Toy({item = 200148}), -- A Collection Of Me
        DC.CliffsideWylderdrake.NarrowStripesPattern,
        DC.HighlandDrake.StagHorns, DC.RenewedProtoDrake.PurpleHair,
        DC.WindborneVelocidrake.SweptHorns
    },
    pois = {POI({38507640})} -- Cave entrance
}) -- Sandana the Tempest

map.nodes[47207895] = Rare({
    id = 193258,
    vignette = 5207,
    quest = 74035,
    interval = ns.Intervals.Interval14h({id = 21}),
    rewards = {
        Achievement({id = 16679, criteria = 56144}),
        Transmog({item = 200139, slot = L['bow']}), -- Tempest Arc
        DC.RenewedProtoDrake.PurpleHair, DC.WindborneVelocidrake.SweptHorns,
        DC.WindborneVelocidrake.FeatheryHead
    },
    pois = {
        Path({
            48897782, 48557735, 48407739, 47977782, 47177827, 47307994,
            47998002, 48277973, 49507949, 49947917
        })
    }
}) -- Tempestrian

map.nodes[38466826] = Rare({
    id = 191305,
    vignette = 5439,
    quest = 74085,
    note = L['the_great_shellkhan_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56155}), --
        Achievement({id = 16622}), -- Three Minutes or It's Free
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200999}), -- The Super Shellkhan Gang
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- The Great Shellkhan

map.nodes[46267317] = Rare({
    id = 183984,
    vignette = 4958,
    quest = 74086,
    location = L['in_cave'],
    note = L['weeping_vilomah_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56153}),
        Transmog({item = 200214, slot = L['mail']}), -- Grasp of the Weeping Widow
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    },
    pois = {POI({47547180})} -- Cave entrance
}) -- The Weeping Vilomah

map.nodes[35027001] = Rare({
    id = 193146,
    vignette = 5431,
    quest = 74036,
    interval = ns.Intervals.Interval14h({id = 15}),
    location = L['in_cave'],
    rewards = {
        Achievement({id = 16679, criteria = 56146}),
        Transmog({item = 200291, slot = L['leather']}), -- Waterlogged Racing Grips
        DC.CliffsideWylderdrake.ShortHorns
    },
    pois = {POI({34896938})} -- Entrance
}) -- Treasure-Mad Trambladd

map.nodes[47884976] = Rare({
    id = 193161,
    vignette = 5177,
    quest = 74089,
    note = L['woofang_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56152}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Woolfang

map.nodes[57366540] = Rare({
    id = 197411,
    vignette = nil,
    quest = 74057,
    label = L['large_lunker_sighting'],
    note = L['large_lunker_sighting_note'],
    rewards = {
        Achievement({id = 16678, criteria = 56130}),
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek,
        Item({item = 200086}) -- Khaz'gorite-infused Resin
    }
}) -- Astray Splasher

-------------------------------------------------------------------------------

-- These rares/elites are not part of the adventurer achievement for the zone

map.nodes[55647727] = Rare({
    id = 193229,
    vignette = 5196,
    quest = 72814,
    rewards = {
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Henlare

map.nodes[36757287] = Rare({
    id = 193273,
    vignette = 5437,
    quest = 72842,
    rewards = {
        Achievement({id = 16446, criteria = 55399, note = L['pretty_neat_note']}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Liskron the Dazzling

map.nodes[36798556] = Rare({
    id = 193668,
    vignette = 5239,
    quest = 72813,
    rewards = {
        Transmog({item = 200182, slot = L['cloak']}), -- Riveted Drape
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Toy({item = 200198}), -- Primalist Prison
        DC.WindborneVelocidrake.ClusterHorns, DC.RenewedProtoDrake.ImpalerHorns,
        DC.HighlandDrake.ToothyMouth, DC.RenewedProtoDrake.HeavyHorns
    }
}) -- Lookout Mordren

-------------------------------------------------------------------------------

-- Rares in The Primalist Future (10.0.5)

tpf.nodes[48421722] = Rare({
    id = 201562,
    vignette = 5567,
    quest = 74556,
    rewards = {
        Transmog({item = 203669, slot = L['leather']}), -- Chillwing Leggings
        Transmog({item = 200242, slot = L['polearm']}), -- Watcher's Lightning Rod
        Transmog({item = 200241, slot = L['1h_axe']}), -- Stormcaller's Ritual Hatchet
        DC.WindborneVelocidrake.FeatheryHead
    }
}) -- Shardwing

tpf.nodes[61813142] = Rare({
    id = 201542,
    vignette = 5565,
    quest = 74558,
    rewards = {
        Transmog({item = 203667, slot = L['cloth']}), -- Frostclaw's Spellfingers
        DC.CliffsideWylderdrake.SweptHorns, DC.HighlandDrake.Ears
    }
}) -- Tikarr Frostclaw

tpf.nodes[53536521] = Rare({
    id = 201543,
    vignette = 5566,
    quest = 74554,
    rewards = {
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200135, slot = L['2h_sword']}), -- Corroded Greatsword
        Transmog({item = 201447, slot = L['cosmetic']}), -- Primal Revenant's Breezeblade
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek
    }
}) -- Avalantus

tpf.nodes[46884248] = Rare({
    id = 201545,
    vignette = 5568,
    quest = 74553,
    rewards = {
        Transmog({item = 203668, slot = L['mail']}), -- Earhshaping Grips
        Transmog({item = 200199, slot = L['mail']}), -- Elements' Burden
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns,
        DC.CliffsideWylderdrake.BlackHorns, DC.WindborneVelocidrake.ClubTail
    }
}) -- Shapemaster Za'lani

-- Tyrhold (10.0.5)
map.nodes[59766226] = Rare({
    id = 201550,
    vignette = {5563, 5880},
    quest = 74565,
    rewards = {
        Transmog({item = 200303, slot = L['staff']}), -- Dreamweaver Acolyte's Staff
        Transmog({item = 200299, slot = L['1h_sword']}), -- Strange Clockwork Gladius
        DC.HighlandDrake.CrestedBrow
    }
}) -- Overloading Defense Matrix

map.nodes[59525659] = Rare({
    id = 201552,
    vignette = {5562, 5881},
    quest = 74566,
    rewards = {
        Transmog({item = 200303, slot = L['staff']}), -- Dreamweaver Acolyte's Staff
        Transmog({item = 200299, slot = L['1h_sword']}), -- Strange Clockwork Gladius
        Transmog({item = 203665, slot = L['mail']}), -- Stonetongues Hood
        DC.HighlandDrake.CrestedBrow
    }
}) -- Overseer Stonetongue

map.nodes[61736079] = Rare({
    id = 201549,
    vignette = {5564, 5879},
    quest = 74561,
    rewards = {
        Transmog({item = 200259, slot = L['shield']}), -- Forest Dweller's Shield
        Transmog({item = 200267, slot = L['plate']}), -- Reinforced Garden Tenders
        Transmog({item = 203666, slot = L['leather']}), -- Vinelashed Bracers
        DC.RenewedProtoDrake.SnubSnout, DC.HighlandDrake.TanHorns
    }
}) -- Morlash
-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[49436289] = Treasure({
    quest = 70611,
    note = L['acorn_harvester_note'],
    rewards = {
        Achievement({id = 16301, criteria = 54815}), -- Treasures of Thaldraszus
        Pet({item = 193066, id = 3275}) -- Chestnut
    }
}) -- Acorn Harvester

map.nodes[52607673] = Treasure({
    quest = 70408,
    note = L['gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Quest(70407, '{item:198852}') -- Bear Termination Orders
    },
    rewards = {
        Achievement({id = 16301, criteria = 54812}), -- Treasures of Thaldraszus
        Item({item = 200863}) -- Glimmering Nozdorite Cluster
    }
}) -- Amber Gem Cluster

map.nodes[33967695] = Treasure({
    quest = 70607,
    note = L['cracked_hourglass_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(70537, '{item:199068}') -- Time-Lost Memo
    },
    rewards = {
        Achievement({id = 16301, criteria = 54810}), -- Treasures of Thaldraszus
        Item({item = 169951, count = 3}) -- Broken Hourglass
    }
}) -- Cracked Hourglass

map.nodes[60244164] = Treasure({
    quest = 70609,
    rewards = {
        Achievement({id = 16301, criteria = 54813}), -- Treasures of Thaldraszus
        Item({item = 203206}) -- Elegant Canvas Brush
    }
}) -- Elegant Canvas Brush

map.nodes[58168007] = Treasure({
    quest = 70608,
    note = L['sandy_wooden_duck_note'],
    requires = ns.requirement.Quest(70538, '{item:199069}'), -- Yennu's Map
    rewards = {
        Achievement({id = 16301, criteria = 54811}), -- Treasures of Thaldraszus
        Item({item = 200827, count = 5}) -- Weathered Sculpture
    },
    pois = {POI({54937543})} -- Yennu's Map
}) -- Sandy Wooden Duck (Sand Pile)

map.nodes[64851655] = Treasure({
    quest = 70610,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 16301, criteria = 54814}), Item({item = 193036}) -- Left-Handed Magnifying Glass
    }
}) -- Surveyor's Magnifying Glass

-------------------------------------------------------------------------------

map.nodes[52458361] = Treasure({
    quest = 72355,
    label = '{npc:198604}',
    location = L['in_cave'],
    requires = ns.requirement.Profession(186), -- Mining
    rewards = {
        Pet({item = 201463, id = 3415}) -- Cubbly
    }
}) -- Strange Bear Cub

val.nodes[09535629] = Treasure({
    quest = 70731,
    label = '{item:197769}',
    note = L['tasty_hatchling_treat_note'],
    parent = map.id,
    rewards = {
        Recipe({item = 198106, profession = 185}) -- Recipe: Tasty Hatchling's Treat
    }
}) -- Tasty Hatchling's Treat

-------------------------------------------------------------------------------

tpf.nodes[28002590] = ns.node.ElementalChest({
    quest = 71995,
    parent = map.id,
    label = L['chest_of_the_elements'],
    location = L['in_cave'],
    rewards = {
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 199906}), -- Centaur Hunting Trophy
        Transmog({item = 201443, slot = L['shield']}), -- Primal Revenant's Icewall
        Transmog({item = 201444, slot = L['1h_sword']}) -- Primal Revenant's Earthblade
    },
    pois = {POI({29282604})} -- Entrance
}) -- Chest of the Elements

-------------------------------------------------------------------------------
---------------------------- DRACTHYR SUPPLY CHEST ----------------------------
-------------------------------------------------------------------------------

map.nodes[42708120] = ns.node.DracthyrSupplyChest()
map.nodes[42808040] = ns.node.DracthyrSupplyChest()
map.nodes[43405150] = ns.node.DracthyrSupplyChest()
map.nodes[43807770] = ns.node.DracthyrSupplyChest()
map.nodes[44408150] = ns.node.DracthyrSupplyChest()
map.nodes[44607730] = ns.node.DracthyrSupplyChest()
map.nodes[44805170] = ns.node.DracthyrSupplyChest()
map.nodes[45007870] = ns.node.DracthyrSupplyChest()
map.nodes[45305520] = ns.node.DracthyrSupplyChest()
map.nodes[45705750] = ns.node.DracthyrSupplyChest()
map.nodes[46205190] = ns.node.DracthyrSupplyChest()
map.nodes[47408040] = ns.node.DracthyrSupplyChest()
map.nodes[48407650] = ns.node.DracthyrSupplyChest()
map.nodes[50108070] = ns.node.DracthyrSupplyChest()
map.nodes[55206730] = ns.node.DracthyrSupplyChest()
map.nodes[55606930] = ns.node.DracthyrSupplyChest()
map.nodes[56007140] = ns.node.DracthyrSupplyChest()
map.nodes[57406630] = ns.node.DracthyrSupplyChest()
map.nodes[57506640] = ns.node.DracthyrSupplyChest()
map.nodes[58206750] = ns.node.DracthyrSupplyChest()
map.nodes[61201730] = ns.node.DracthyrSupplyChest()
map.nodes[61901250] = ns.node.DracthyrSupplyChest()
map.nodes[65101310] = ns.node.DracthyrSupplyChest()

-------------------------------------------------------------------------------
------------------------------- SIMMERING CHEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[35608530] = ns.node.SimmeringChest()
map.nodes[38908510] = ns.node.SimmeringChest()
map.nodes[39908480] = ns.node.SimmeringChest()
map.nodes[46906030] = ns.node.SimmeringChest()
map.nodes[48905840] = ns.node.SimmeringChest()
map.nodes[48905850] = ns.node.SimmeringChest()
map.nodes[51406090] = ns.node.SimmeringChest()

-------------------------------------------------------------------------------
--------------------------------- TITAN CHEST ---------------------------------
-------------------------------------------------------------------------------

local TitanChest = Class('TitanChest', ns.node.Node, {
    label = L['titan_chest'],
    icon = 'chest_pk',
    group = ns.groups.TITAN_CHEST,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Transmog({item = 201048, slot = L['cosmetic']}), -- Tyrhold Epaulets
        Transmog({item = 201049, slot = L['cosmetic']}), -- Tyrhold Robe
        Transmog({item = 201050, slot = L['cosmetic']}), -- Tyrhold Leggings
        Transmog({item = 201051, slot = L['cosmetic']}), -- Tyrhold Slippers
        Transmog({item = 201052, slot = L['cosmetic']}), -- Tyrhold Visage
        Transmog({item = 201053, slot = L['cosmetic']}), -- Tyrhold Gloves
        Transmog({item = 201054, slot = L['cosmetic']}), -- Tyrhold Drape
        Transmog({item = 201056, slot = L['cosmetic']}), -- Tyrhold Sash
        Transmog({item = 201455, slot = L['cosmetic']}), -- Tyrhold Broadsword
        Transmog({item = 201456, slot = L['cosmetic']}), -- Tyrhold Carbine
        Transmog({item = 201457, slot = L['cosmetic']}), -- Tyrhold Relic
        Transmog({item = 201458, slot = L['cosmetic']}), -- Aegis of Tyrhold
        Transmog({item = 201459, slot = L['cosmetic']}), -- Tyrhold Shortsword
        Transmog({item = 201460, slot = L['cosmetic']}), -- Gavel of Tyrhold
        Transmog({item = 201461, slot = L['cosmetic']}), -- Tyrhold Pinnacle
        Item({item = 199061, quest = 70527}), -- A Guide to Rare Fish
        Item({item = 199066, quest = 70535}), -- Letter of Caution
        Item({item = 199068, quest = 70537}), -- Time-Lost Memo
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 199906}), -- Titan Relic
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Titan Chest

map.nodes[34107310] = TitanChest()
map.nodes[34306600] = TitanChest()
map.nodes[34706700] = TitanChest()
map.nodes[35807540] = TitanChest()
map.nodes[35906730] = TitanChest()
map.nodes[37705110] = TitanChest()
map.nodes[37706980] = TitanChest()
map.nodes[38105300] = TitanChest()
map.nodes[38705340] = TitanChest()
map.nodes[38804480] = TitanChest()
map.nodes[38904610] = TitanChest()
map.nodes[41204520] = TitanChest()
map.nodes[46007210] = TitanChest()
map.nodes[48306900] = TitanChest()
map.nodes[48807530] = TitanChest()
map.nodes[48907100] = TitanChest()
map.nodes[49707590] = TitanChest()
map.nodes[51107470] = TitanChest()
map.nodes[57108080] = TitanChest()
map.nodes[57108240] = TitanChest()
map.nodes[57606450] = TitanChest()
map.nodes[57708050] = TitanChest()
map.nodes[59305670] = TitanChest()
map.nodes[59905590] = TitanChest()
map.nodes[60005470] = TitanChest()
map.nodes[60606220] = TitanChest()
map.nodes[61906180] = TitanChest()

-------------------------------------------------------------------------------
------------------------------ FROSTBOUND CHEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[54006140] = ns.node.FrostboundChest()
map.nodes[55206290] = ns.node.FrostboundChest()
map.nodes[56206450] = ns.node.FrostboundChest()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[39467359] = PetBattle({
    id = 197336,
    rewards = {
        Achievement({id = 16464, criteria = 55490}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 3, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 3, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 3, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 3, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 3, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 3, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 3, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 3, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 3, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 3, oneline = true}) -- Undead
    }
}) -- Enyobon

map.nodes[56274924] = PetBattle({
    id = 197350,
    rewards = {
        Achievement({id = 16464, criteria = 55493}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 6, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 6, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 6, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 6, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 6, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 6, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 6, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 6, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 6, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 6, oneline = true}) -- Undead
    }
}) -- Setimothes

map.nodes[60645974] = PetBattle({
    id = 202452,
    rewards = {
        Achievement({id = 17406, criteria = 58215}) -- Battle on the Dragon Isles II
    }
}) -- Right Twice a Day

map.nodes[55974053] = PetBattle({
    id = 202458,
    rewards = {
        Achievement({id = 17406, criteria = 58219}) -- Battle on the Dragon Isles II
    }
}) -- They're Full of Stars

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[52208050] = PT.Blacksmithing({
    id = 201006,
    quest = 70311,
    note = L['pt_smith_draconic_flux_note']
}) -- Draconic Flux

map.nodes[55203050] = PT.Alchemy({
    id = 203471,
    quest = 70278,
    note = L['pt_alch_tasty_candy_note']
}) -- Tasty Candy

map.nodes[56104090] = PT.Inscription({
    id = 201015,
    quest = 70287,
    note = L['pt_script_counterfeit_darkmoon_deck_note']
}) -- Counterfeit Darkmoon Deck

map.nodes[56304120] = PT.Inscription({
    id = 198659,
    quest = 70264,
    note = L['pt_script_forgetful_apprentices_tome_note']
}) -- Forgetful Apprentice's Tome

map.nodes[47104007] = PT.Inscription({
    id = 198659,
    quest = 70248,
    note = L['pt_script_forgetful_apprentices_tome_algethera_note'],
    pois = {POI({49844031})}
}) -- Forgetful Apprentice's Tome

map.nodes[56803050] = PT.Leatherworking({
    id = 198690,
    quest = 70294,
    note = L['pt_leath_decayed_scales_note']
}) -- Decayed Scales

map.nodes[56914372] = PT.Jewelcrafting({
    id = 198656,
    quest = 70261,
    note = L['pt_jewel_painters_pretty_jewel_note']
}) -- Painter's Pretty Jewel

map.nodes[58604580] = PT.Tailoring({
    id = 201019,
    quest = 70372,
    note = L['pt_tailor_ancient_dragonweave_bolt_note']
}) -- Ancient Dragonweave Bolt

map.nodes[59503840] = PT.Alchemy({
    id = 198697,
    quest = 70301,
    note = L['pt_alch_contraband_concoction_note']
}) -- Contraband Concoction

map.nodes[59806520] = PT.Jewelcrafting({
    id = 198682,
    quest = 70285,
    note = L['pt_jewel_alexstraszite_cluster_note']
}) -- Alexstraszite Cluster

map.nodes[59897033] = PT.Enchanting({
    id = 198800,
    quest = 70342,
    note = L['pt_ench_fractured_titanic_sphere_note']
}) -- Fractured Titanic Sphere

map.nodes[60407970] = PT.Tailoring({
    id = 198684,
    quest = 70288,
    note = L['pt_tailor_miniature_bronze_dragonflight_banner_note']
}) -- Miniature Bronze Dragonflight Banner

val.nodes[13206368] = PT.Inscription({
    id = 198669,
    quest = 70281,
    parent = map.id,
    note = L['pt_script_how_to_train_your_whelpling_note']
}) -- How to Train Your Whelpling

-------------------------------------------------------------------------------

map.nodes[61437687] = PM.Mining({
    id = 194843,
    quest = 70258,
    note = L['pm_mining_bridgette_holdug'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2035, count = '10'}) -- Dragon Isles Mining Knowledge
    }
}) -- Bridgette Holdug

val.nodes[27894576] = PM.Tailoring({
    id = 194845,
    quest = 70260,
    note = L['pm_tailor_elysa_raywinder'],
    parent = map.id,
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2026, count = '5'}) -- Dragon Isles Tailoring Knowledge
    }
}) -- Elysa Raywinder

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[62414050] = Dragonglyph({rewards = {Achievement({id = 16104})}}) -- Dragon Glyphs: Algeth'ar Academy
map.nodes[49944032] = Dragonglyph({rewards = {Achievement({id = 16102})}}) -- Dragon Glyphs: Algeth'era
map.nodes[37639338] = Dragonglyph({rewards = {Achievement({id = 16673})}}) -- Dragon Glyphs: Fallen Course (Azure Span)
map.nodes[52676742] = Dragonglyph({rewards = {Achievement({id = 16666})}}) -- Dragon Glyphs: Gelikyr Overlook
map.nodes[55737225] = Dragonglyph({rewards = {Achievement({id = 16667})}}) -- Dragon Glyphs: Passage of Time
map.nodes[35608551] = Dragonglyph({rewards = {Achievement({id = 16100})}}) -- Dragon Glyphs: South Hold Gate
map.nodes[46107410] = Dragonglyph({rewards = {Achievement({id = 16099})}}) -- Dragon Glyphs: Stormshroud Peak
map.nodes[66108230] = Dragonglyph({rewards = {Achievement({id = 16098})}}) -- Dragon Glyphs: Temporal Conflux
map.nodes[72906921] = Dragonglyph({rewards = {Achievement({id = 16107})}}) -- Dragon Glyphs: Thaldrazsus Apex
map.nodes[61615661] = Dragonglyph({rewards = {Achievement({id = 16103})}}) -- Dragon Glyphs: Tyrhold
val.nodes[59293792] = Dragonglyph({
    parent = map.id,
    rewards = {Achievement({id = 16101})}
}) -- Dragon Glyphs: Valdrakken
map.nodes[72125131] = Dragonglyph({rewards = {Achievement({id = 16106})}}) -- Dragon Glyphs: Vault of the Incarnates
map.nodes[67121181] = Dragonglyph({rewards = {Achievement({id = 16105})}}) -- Dragon Glyphs: Veiled Ossuary

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[34048484] = Flag({quest = 71222})
map.nodes[46107397] = Flag({quest = 70024})
map.nodes[50168163] = Flag({quest = 70039})
map.nodes[65727498] = Flag({quest = 71223})
map.nodes[64635672] = Flag({quest = 71224})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[70304430] = SignalTransmitter({quest = 70584}) -- Vault of the Incarnates
map.nodes[63677710] = SignalTransmitter({quest = 70585}) -- Temporal Conflux
map.nodes[50745566] = SignalTransmitter({quest = 70583}) -- Tyrhold Reservoir

-------------------------------------------------------------------------------
---------------------------- FRAGMENTS OF HISTORY -----------------------------
-------------------------------------------------------------------------------

map.nodes[38904500] = Fragment({
    sublabel = L['golden_claw_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55031}),
        Item({item = 198540, quest = 70204})
    }
}) -- Golden Claw

map.nodes[57126460] = Fragment({
    sublabel = L['precious_stone_fragment_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55032}),
        Item({item = 199893, quest = 70805})
    }
}) -- Precious Stone Fragment

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

map.nodes[32447309] = Disturbeddirt()
map.nodes[34006488] = Disturbeddirt()
map.nodes[34546598] = Disturbeddirt()
map.nodes[34646179] = Disturbeddirt()
map.nodes[35406995] = Disturbeddirt()
map.nodes[35586764] = Disturbeddirt()
map.nodes[35687143] = Disturbeddirt()
map.nodes[37426853] = Disturbeddirt()
map.nodes[37667615] = Disturbeddirt()
map.nodes[38188192] = Disturbeddirt()
map.nodes[39058408] = Disturbeddirt()
map.nodes[39768205] = Disturbeddirt()
map.nodes[46767747] = Disturbeddirt()
map.nodes[49514830] = Disturbeddirt()
map.nodes[49894474] = Disturbeddirt()
map.nodes[53335123] = Disturbeddirt()
map.nodes[53398748] = Disturbeddirt()
map.nodes[53997921] = Disturbeddirt()
map.nodes[54067537] = Disturbeddirt()
map.nodes[54273978] = Disturbeddirt()
map.nodes[54433376] = Disturbeddirt()
map.nodes[55227461] = Disturbeddirt()
map.nodes[55588459] = Disturbeddirt()
map.nodes[55756743] = Disturbeddirt()
map.nodes[55918384] = Disturbeddirt()
map.nodes[56005307] = Disturbeddirt()
map.nodes[56957403] = Disturbeddirt()
map.nodes[57118079] = Disturbeddirt()
map.nodes[57458105] = Disturbeddirt()
map.nodes[59532835] = Disturbeddirt()
map.nodes[59547954] = Disturbeddirt()
map.nodes[62226638] = Disturbeddirt()
map.nodes[62296972] = Disturbeddirt()
map.nodes[62697948] = Disturbeddirt()
map.nodes[53495975] = Disturbeddirt()
map.nodes[56808092] = Disturbeddirt()
map.nodes[61057953] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[23716080] = Scoutpack()
map.nodes[35517551] = Scoutpack()
map.nodes[35628576] = Scoutpack()
map.nodes[36798245] = Scoutpack()
map.nodes[37637740] = Scoutpack()
map.nodes[38796831] = Scoutpack()
map.nodes[38806831] = Scoutpack()
map.nodes[40148559] = Scoutpack()
map.nodes[40498368] = Scoutpack()
map.nodes[41234798] = Scoutpack()
map.nodes[41234798] = Scoutpack()
map.nodes[47428021] = Scoutpack()
map.nodes[48185655] = Scoutpack()
map.nodes[49047926] = Scoutpack()
map.nodes[50098074] = Scoutpack()
map.nodes[50844623] = Scoutpack()
map.nodes[52587680] = Scoutpack({location = L['in_small_cave']})
map.nodes[52758333] = Scoutpack()
map.nodes[54205535] = Scoutpack()
map.nodes[54837958] = Scoutpack()
map.nodes[55413167] = Scoutpack()
map.nodes[55456797] = Scoutpack()
map.nodes[55873598] = Scoutpack()
map.nodes[55875138] = Scoutpack()
map.nodes[56063178] = Scoutpack()
map.nodes[57128078] = Scoutpack()
map.nodes[57468106] = Scoutpack()
map.nodes[58046702] = Scoutpack()
map.nodes[58436454] = Scoutpack()
map.nodes[58975754] = Scoutpack()
map.nodes[59198794] = Scoutpack()
map.nodes[59496912] = Scoutpack()
map.nodes[59547955] = Scoutpack()
map.nodes[61697948] = Scoutpack()
map.nodes[65548193] = Scoutpack()

-------------------------------------------------------------------------------
------------------------------ Magic-Bound Chest ------------------------------
-------------------------------------------------------------------------------

map.nodes[35107050] = MagicBoundChest({
    location = L['in_small_cave'],
    pois = {POI({34926940})}
})
map.nodes[42606660] = MagicBoundChest({
    requires = {
        ns.requirement.Reputation(2507, 16, true),
        ns.requirement.Profession(186)
    },
    location = L['in_small_cave']
})
map.nodes[42907900] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({40957754})}
})
map.nodes[50205200] = MagicBoundChest({
    requires = {
        ns.requirement.Reputation(2507, 16, true),
        ns.requirement.Profession(186)
    },
    location = L['in_small_cave']
})
map.nodes[53005690] = MagicBoundChest()
map.nodes[54108390] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[54803270] = MagicBoundChest({
    requires = {
        ns.requirement.Reputation(2507, 16, true),
        ns.requirement.Profession(186)
    },
    location = L['in_small_cave']
})
map.nodes[58606750] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({56916717})}
})
map.nodes[61305400] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({59755371})}
})
map.nodes[62207180] = MagicBoundChest()

-------------------------------------------------------------------------------
------------------------------ TUSKARR TACKLEBOX ------------------------------
-------------------------------------------------------------------------------

map.nodes[35116768] = TuskarrTacklebox()
map.nodes[35276672] = TuskarrTacklebox()
map.nodes[37096833] = TuskarrTacklebox()
map.nodes[47086404] = TuskarrTacklebox()
map.nodes[47396283] = TuskarrTacklebox()
map.nodes[48006150] = TuskarrTacklebox()
map.nodes[48585942] = TuskarrTacklebox()
map.nodes[48586067] = TuskarrTacklebox()
map.nodes[49035787] = TuskarrTacklebox()
map.nodes[49875773] = TuskarrTacklebox()
map.nodes[50146051] = TuskarrTacklebox()
map.nodes[50345780] = TuskarrTacklebox()
map.nodes[50345865] = TuskarrTacklebox()
map.nodes[50675802] = TuskarrTacklebox()
map.nodes[53868788] = TuskarrTacklebox()
map.nodes[54278574] = TuskarrTacklebox()
map.nodes[54338654] = TuskarrTacklebox()
map.nodes[55548468] = TuskarrTacklebox()
map.nodes[55888352] = TuskarrTacklebox()
map.nodes[56348311] = TuskarrTacklebox()
map.nodes[56606381] = TuskarrTacklebox()
map.nodes[56738084] = TuskarrTacklebox()
map.nodes[57076559] = TuskarrTacklebox()
map.nodes[57208248] = TuskarrTacklebox()
map.nodes[57948485] = TuskarrTacklebox()
map.nodes[57998401] = TuskarrTacklebox()
map.nodes[58548017] = TuskarrTacklebox()

-------------------------------------------------------------------------------
--------------------- TO ALL THE SQUIRRELS HIDDEN TIL NOW ---------------------
-------------------------------------------------------------------------------

map.nodes[55636757] = Squirrel({
    id = 195869,
    rewards = {Achievement({id = 16729, criteria = 10})}
}) -- Diminuitive Boghopper

map.nodes[51695797] = Squirrel({
    id = 196652,
    rewards = {Achievement({id = 16729, criteria = 11})}
}) -- Reservoir Filly

map.nodes[51307286] = Squirrel({
    id = 185148,
    rewards = {Achievement({id = 16729, criteria = 12})}
}) -- Rocdrop Scarab

-------------------------------------------------------------------------------
--------------------------- THE DISGRUNTLED HUNTER ----------------------------
-------------------------------------------------------------------------------

local HemetNesingwaryJr = Class('HemetNesingwaryJr', Collectible, {
    id = 194590,
    icon = 236444,
    sublabel = L['hnj_sublabel'],
    group = ns.groups.HEMET_NESINGWARY_JR
}) -- Hemet Nesingwary Jr.

map.nodes[34676541] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55701})}
}) -- Southern Thaldraszus Hunt

map.nodes[50674562] = HemetNesingwaryJr({
    note = L['hnj_northern_thaldraszus_hunt'],
    rewards = {Achievement({id = 16542, criteria = 55702})}
}) -- Northern Thaldraszus Hunt

-------------------------------------------------------------------------------
-------------------------- ONE OF EVERYTHING, PLEASE --------------------------
-------------------------------------------------------------------------------

val.nodes[60921096] = Collectible({
    label = '{item:200904}',
    icon = 237358,
    note = L['picante_pomfruit_cake_note'] .. '\n\n' .. L['rumiastrasza_note'],
    group = ns.groups.SPECIALTIES,
    parent = map.id,
    rewards = {Achievement({id = 16621, criteria = 55733})}
}) -- Picante Pompfruit Cake

val.nodes[29046503] = Collectible({
    label = '{item:201045}',
    icon = 133994,
    note = L['icecrown_bleu_note'],
    group = ns.groups.SPECIALTIES,
    parent = map.id,
    rewards = {Achievement({id = 16621, criteria = 55931})}
}) -- Icecrown Bleu

map.nodes[50054267] = Collectible({
    label = '{item:201046}',
    icon = 132802,
    note = L['dreamwarding_dripbrew_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55933})}
}) -- Dreamwarding Dripbrew

tpf.nodes[61555322] = Collectible({
    label = '{item:201047}',
    icon = 134043,
    note = L['arcanostabilized_provisions_note'],
    group = ns.groups.SPECIALTIES,
    parent = map.id,
    rewards = {Achievement({id = 16621, criteria = 55934})}
}) -- Arcanostabilized Provisions

map.nodes[38944629] = Collectible({
    label = '{item:200871}',
    icon = 4639581,
    note = L['steamed_scarab_steak_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55936})}
}) -- Steamed Scarab Steak

map.nodes[58138299] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

map.nodes[52476961] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

map.nodes[52416987] = Collectible({
    label = '{item:201090}',
    icon = 134022,
    note = L['bivigosas_blood_sausages_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55941})}
}) -- Bivigosa's Blood Sausages

-------------------------------------------------------------------------------
----------------------------- THAT'S PRETTY NEAT! -----------------------------
-------------------------------------------------------------------------------

map.nodes[43567208] = PrettyNeat({
    id = 187280,
    rewards = {Achievement({id = 16446, criteria = 55388})}
}) -- Chef Fry-Aerie

map.nodes[54285271] = PrettyNeat({
    id = 192383,
    rewards = {Achievement({id = 16446, criteria = 55389})}
}) -- Iridescent Peafowl

map.nodes[47675115 + 1] = PrettyNeat({
    id = 193234,
    note = L['spawns_periodically'],
    isRare = true,
    mapID = map.id,
    rewards = {Achievement({id = 16446, criteria = 55398})}
}) -- Eldoren the Reborn (node coords must be off by 00000001 from Rare)

map.nodes[36757287 + 1] = PrettyNeat({
    id = 193273,
    isRare = true,
    mapID = map.id,
    rewards = {Achievement({id = 16446, criteria = 55399})}
}) -- Liskron the Dazzling (node coords must be off by 00000001 from Rare)

-------------------------------------------------------------------------------
------------------------------ A LEGENDARY ALBUM ------------------------------
-------------------------------------------------------------------------------

map.nodes[52934483] = LegendaryCharacter({
    id = 187284,
    rewards = {Achievement({id = 16570, criteria = 55775})},
    pois = {
        Path({52934483, 52634333, 52244259, 51764224, 51164188}) -- Flight Path
    }
}) -- Wrathion

map.nodes[36036939] = LegendaryCharacter({
    id = 195633,
    rewards = {Achievement({id = 16570, criteria = 55773})}
}) -- Time-Warped Mysterious Fisher

-------------------------------------------------------------------------------
-------------------------- FRAMING A NEW PERSPECTIVE --------------------------
-------------------------------------------------------------------------------

local NewPerspective = Class('NewPerspective', Collectible, {
    icon = 1109100,
    note = L['new_perspective_note'],
    group = ns.groups.NEW_PERSPECTIVE
}) -- Framing a New Perspective

function NewPerspective.getters:rewards()
    return {Achievement({id = 16634, criteria = self.criteria})}
end

val.nodes[56094447] = NewPerspective({criteria = 55994, parent = map.id}) -- The Seat of the Aspects
map.nodes[38967040] = NewPerspective({criteria = 55995}) -- The Cascades
map.nodes[55737324] = NewPerspective({criteria = 55996}) -- Passage of Time -- On the Stone Arch
map.nodes[68275833] = NewPerspective({criteria = 55997}) -- Vault of the Incarnates
map.nodes[57175871] = NewPerspective({criteria = 55998}) -- Tyrhold
map.nodes[50284031] = NewPerspective({criteria = 55999}) -- Algeth'era Court
map.nodes[63431347] = NewPerspective({criteria = 56000}) -- Veiled Ossuary
map.nodes[39434692] = NewPerspective({criteria = 56001}) -- Serene Dreams Spa
map.nodes[48286682] = NewPerspective({criteria = 56002}) -- Shadow Ledge -- Edge of the Waterfall
val.nodes[56674327] = NewPerspective({criteria = 56003, parent = map.id}) -- Valdrakken's Portal Room
map.nodes[46955951] = NewPerspective({criteria = 56004}) -- Tyrhold Reservoir

-------------------------------------------------------------------------------
----------------------------- DRAGON ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[62401520] = Safari({
    id = 197629,
    rewards = {Achievement({id = 16519, criteria = 55644}), Pet({id = 3403})},
    pois = {
        POI({
            32206920, 33406700, 34207160, 34806400, 35007320, 35407080,
            36406540, 37007680, 37807980, 38207280, 39407820, 39607820,
            40408100, 40808080, 41008180, 42208300, 42407880, 44408440,
            44408460, 53803620, 61001500, 61801680, 62401520, 63001380,
            63601520, 63601960, 64401320
        })
    }
}) -- Blue Dasher

map.nodes[60403800] = Safari({
    id = 192268,
    rewards = {Achievement({id = 16519, criteria = 55656}), Pet({id = 3358})},
    pois = {POI({60403800, 60603800})}
}) -- Crimsonspine

map.nodes[50204780] = Safari({
    id = 189153,
    rewards = {Achievement({id = 16519, criteria = 55646}), Pet({id = 3313})},
    pois = {
        POI({
            48005020, 49205220, 49205280, 49404780, 49805020, 50204780,
            51404700, 51604700
        })
    }
}) -- Grassland Stomper

map.nodes[47606160] = Safari({
    id = 194720,
    rewards = {Achievement({id = 16519, criteria = 55647}), Pet({id = 3351})},
    pois = {
        POI({
            38208140, 47406200, 47606160, 48005600, 48005680, 48805560, 48806220
        })
    }
}) -- Grizzlefur Cub

map.nodes[52404860] = Safari({
    id = 189121,
    rewards = {Achievement({id = 16519, criteria = 55648}), Pet({id = 3295})},
    pois = {
        POI({
            46406380, 46606420, 47006300, 47606180, 48205740, 48205760,
            48405940, 48405960, 49205780, 49605760, 50005600, 50405140,
            51005040, 51005060, 51405740, 51405760, 51605740, 52404860,
            52804940, 53004840, 53604760, 53804660, 54004620, 54204920
        })
    }
}) -- Igneoid

map.nodes[39804580] = Safari({
    id = 193000,
    rewards = {Achievement({id = 16519, criteria = 55650}), Pet({id = 3366})}
}) -- Kindlet

map.nodes[50205900] = Safari({
    id = 189122,
    rewards = {Achievement({id = 16519, criteria = 55652}), Pet({id = 3296})},
    pois = {
        POI({
            38404840, 38804540, 38804940, 39204580, 39204820, 40204480,
            40604760, 41004740, 41204860, 41604840, 41604860, 48405940,
            48805940, 49005780, 49006040, 49206060, 49405680, 49806060,
            50005980, 50205900, 50605840
        })
    }
}) -- Palamanther

map.nodes[43208360] = Safari({
    id = 197637,
    rewards = {Achievement({id = 16519, criteria = 55653}), Pet({id = 3404})},
    pois = {
        POI({
            34206840, 35806640, 36607180, 37406740, 37606740, 37606760,
            38206900, 43208340, 43208360, 43608140, 43608340, 43608360,
            53404180, 54803940, 60002980, 61402960
        })
    }
}) -- Polliswog

map.nodes[44006480] = Safari({
    id = 191323,
    rewards = {Achievement({id = 16519, criteria = 55666}), Pet({id = 3336})},
    pois = {
        POI({
            32807300, 38007860, 41008140, 41406780, 42206560, 42806720,
            42808280, 43806440, 44006480, 45006440, 45206180, 45606180,
            46206560, 46606240, 46806400, 48206480, 49206240, 49406260,
            49806380, 50006220, 51206500, 52006220, 52006340, 52006360,
            53404040, 53406120, 53604040, 54005540
        })
    }
}) -- Vorquin Runt

-------------------------------------------------------------------------------
------------------------ ELEMENTAL STORMS: THALDRASZUS ------------------------
-------------------------------------------------------------------------------

map.nodes[60005870] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'], L['elemental_storm_tyrhold']),
    mapID = map.id,
    areaPOIs = {7245, 7246, 7247, 7248}
}) -- Elemental Storm: Tyrhold

map.nodes[59938224] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'],
        L['elemental_storm_primalist_future']),
    mapID = map.id,
    areaPOIs = {7298, 7299, 7300, 7301}
}) -- Elemental Storm: Primalist Future

tpf.nodes[57404187] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'],
        L['elemental_storm_primalist_tomorrow']),
    mapID = tpf.id,
    areaPOIs = {7241, 7242, 7243, 7244}
}) -- Elemental Storm: Primalist Tomorrow

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[56007100] = ElusiveCreature({
    label = '{npc:195518}',
    quest = 74231,
    rewards = {
        Item({item = 193224}), -- Lustrous Scaled Hide
        Item({item = 193215}), -- Adamant Scales
        Item({item = 193255}), -- Pristine Vorquin Horn
        Achievement({id = 18833, criteria = 61479}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Cliffdweller Vorquin

map.nodes[48005100] = ElusiveCreature({
    label = '{npc:195472}',
    quest = 74189,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Item({item = 193254}), -- Rockfang Leather
        Achievement({id = 18833, criteria = 61476}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Ferocious Titanfang

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[34576668] = GrandHunt({
    mapID = map.id,
    areaPOI = 7097,
    criteria = 55686
}) -- Southern Thaldraszus Hunt

map.nodes[50594665] = GrandHunt({
    mapID = map.id,
    areaPOI = 7099,
    criteria = 55687
}) -- Northern Thaldraszus Hunt

-------------------------------------------------------------------------------
------------------------ ANCIENT STONES OF THALDRASZUS ------------------------
-------------------------------------------------------------------------------

map.nodes[42767041] = AncientStone({
    rewards = {Achievement({id = 17564, criteria = 58819})}
}) -- Mighty Ducks

map.nodes[60058499] = AncientStone({
    rewards = {Achievement({id = 17564, criteria = 58820})}
}) -- A Timely Message

map.nodes[58155805] = AncientStone({
    rewards = {Achievement({id = 17564, criteria = 58821})}
}) -- Keeper's Blessing

map.nodes[52353873] = AncientStone({
    rewards = {Achievement({id = 17564, criteria = 58822})}
}) -- Guardian Wings

map.nodes[58396777] = AncientStone({
    rewards = {Achievement({id = 17564, criteria = 58823})}
}) -- Together Bound

map.nodes[62401592] = AncientStone({
    rewards = {Achievement({id = 17564, criteria = 58824})}
}) -- Caretaker's Notes

val.nodes[57048156] = AncientStone({
    parent = map.id,
    rewards = {Achievement({id = 17564, criteria = 58825})}
}) -- Valdrakken

------------------------------------------------------------------------------
--------------------------------- DREAMSURGE ---------------------------------
------------------------------------------------------------------------------

map.nodes[51134337] = ns.node.Celestine()

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

local Mythressa = Class('Mythressa', Vendor, {
    id = 196516,
    parent = map.id,
    rewards = {
        Achievement({id = 16502}), -- Storming the Runway
        Pet({item = 200173, id = 3287, count = 1000}), -- Ghostflame
        Pet({item = 200114, id = 3382, count = 1000}), -- Stormie
        Mount({item = 192775, id = 1622, count = 2000}) -- Stormhide Salamanther
    }
}) -- Mythressa <Apprentice Primal Researcher>

function Mythressa.getters:note()
    local noteStart = L['elemental_storm_mythressa_note_start']
    local currency = C_CurrencyInfo.GetCurrencyInfo(2118).quantity -- Elemental Overflow
    local noteEnd = format(L['elemental_storm_mythressa_note_end'], currency)
    return noteStart .. '\n\n' .. noteEnd
end

val.nodes[38113773] = Mythressa()

local Brendormi = Class('Brendormi', Vendor, {
    id = 199425,
    rewards = {
        Toy({item = 202020}), -- Chasing Storm
        Pet({item = 193855, id = 3334}), -- Time-Lost Vorquin
        Mount({item = 192800, id = 1478}) -- Skyskin Hornstrider
    }
}) -- Brendormi <Field Primal Researcher>

function Brendormi.getters:note()
    local item = GetItemCount(202039, true) -- Essence of the Storm
    local currency = C_CurrencyInfo.GetCurrencyInfo(2118).quantity -- Elemental Overflow
    local note = L['brendormi_note_start'] .. '\n\n'
    note = note .. format(L['brendormi_note_item'], item) .. '\n'
    note = note .. format(L['brendormi_note_currency'], currency) .. '\n'
    return note
end

tpf.nodes[61244679] = Brendormi()

map.nodes[61373139] = Vendor({
    id = 209192,
    note = L['provisioner_aristta_note'],
    rewards = {
        Mount({item = 192796, id = 1638, count = 20000}), -- Explorer's Stonehide Packbeast
        Spacer(), --
        Transmog({item = 208456, slot = L['cosmetic'], count = 15000}), -- Archivist's Elegant Bag
        Transmog({item = 212794, slot = L['cosmetic'], count = 15000}), -- Historian's Hefty Habersack
        Transmog({item = 208452, slot = L['cosmetic'], count = 15000}), -- Historian's Dapper Cap
        Transmog({item = 208547, slot = L['cosmetic'], count = 12000}), -- Archivist's Reading Spectacles
        Transmog({item = 208546, slot = L['cosmetic'], count = 12000}), -- Archivist's Rose-Tinted Glasses
        Transmog({item = 212637, slot = L['cosmetic'], count = 7000}), -- Historian's Striders
        Transmog({item = 212636, slot = L['cosmetic'], count = 7000}), -- Historian's Trousers
        Transmog({item = 212635, slot = L['cosmetic'], count = 5000}), -- Historian's Utility Belt
        Transmog({item = 212634, slot = L['cosmetic'], count = 5000}), -- Historian's Fingerless Gloves
        Transmog({item = 212633, slot = L['cosmetic'], count = 5000}), -- Historian's Fitted Vest
        Spacer(), --
        Transmog({item = 208458, slot = L['offhand'], count = 10000}), -- Archivist's Extravagant Lantern
        Transmog({item = 208450, slot = L['offhand'], count = 10000}), -- Coiled Archivist's Rope
        Transmog({item = 213276, slot = L['1h_mace'], count = 10000}), -- Archivist's Magnifying Mace
        Transmog({item = 208455, slot = L['1h_mace'], count = 10000}), -- Archivist's Sturdy Hook
        Transmog({item = 208453, slot = L['1h_mace'], count = 10000}), -- Archivist's Super Scooper
        Transmog({item = 213275, slot = L['1h_sword'], count = 10000}), -- Archivist's Rockpuller
        Transmog({item = 208454, slot = L['1h_axe'], count = 10000}), -- Archivist's Mining Pick
        Transmog({item = 212870, slot = L['dagger'], count = 10000}), -- Archivist's Stone Chisel
        Transmog({item = 213274, slot = L['staff'], count = 10000}), -- Archivist's Pathfinder
        Transmog({item = 208459, slot = L['2h_mace'], count = 10000}), -- Archivist's Improvised Cudgel
        Transmog({item = 208457, slot = L['2h_mace'], count = 10000}), -- Archivist's Spelunking Torch
        Transmog({
            item = 212941,
            slot = L['gun'],
            count = 10000,
            note = _G.ITEM_ACCOUNTBOUND
        }) -- Archivist's "Light Touch"
    }
}) -- Provisioner Aristta

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

---------------- ACHIEVEMENT: GREAT GOURMAND OF THE RUBY FEAST ----------------

val.nodes[61261096] = Collectible({
    icon = 629060,
    parent = map.id,
    label = '{achievement:16556}',
    note = L['ruby_feast_gourmand'] .. '\n\n' .. L['rumiastrasza_note'],
    rewards = {
        Achievement({
            id = 16556,
            criteria = {
                55714, 55715, 55716, 55717, 55718, 55719, 55720, 55721, 55722,
                55723, 55724, 55725, 55726, 55728, 55729, 55730, 55731, 55732,
                55733, 55734
            }
        })
    }
}) -- Great Gourmand of the Ruby Feast

val.nodes[43757494] = Collectible({
    icon = 4048815,
    parent = map.id,
    id = 187783,
    requires = {
        ns.requirement.Item(197792, 3), ns.requirement.Item(197788, 1),
        ns.requirement.Item(197789, 1)
    },
    rewards = {Pet({item = 193571, id = 3303})}
}) -- Mallard Ducklin

map.nodes[40474531] = Collectible({
    id = 197346,
    quest = 72060,
    icon = 1500916,
    note = L['living_mud_mask_note'],
    rewards = {Pet({item = 200872, id = 3405})}
}) -- Pet: Living Mud Mask

val.nodes[13005740] = Collectible({ -- TODO
    label = '{achievement:18384}',
    icon = 4719556,
    note = L['little_scales_daycare_note'],
    -- https://www.wowhead.com/ptr-2/achievement=18384/whelp-there-it-is#comments:id=5611653
    requires = {
        ns.requirement.Quest(72664), -- Eggs in Abundance
        ns.requirement.Quest(72665), -- Whelptender's Wisdom
        ns.requirement.Quest(72666) -- Daycare Director Agapanthus
    },
    rewards = {
        Achievement({
            id = 18384,
            criteria = {
                60132, 60133, 60134, 60135, 60136, 60137, 60138, 60139, 60140,
                60141, 60142, 60143, 60144, 60145, 60146, 60147
            }
        }), -- Whelp, There It Is
        Pet({item = 205165, id = 3555}) -- Axel
    }
}) -- Pet: "Axel" from Achievement "Whelp, There It Is"

---------------------------- PET: MOTE OF NASZ'URO ----------------------------

map.nodes[62711323] = ns.node.MoteOfNaszuro({
    quest = 76189,
    note = L['naszuro_veiled_ossuary']
}) -- Veiled Ossuary

map.nodes[61234074] = ns.node.MoteOfNaszuro({
    quest = 76190,
    note = L['naszuro_algethar_academy']
}) -- Algeth'ar Academy

map.nodes[72885505] = ns.node.MoteOfNaszuro({
    quest = 76191,
    note = L['naszuro_vault_of_the_incarnates']
}) -- Vault of the Incarnates

map.nodes[70876985] = ns.node.MoteOfNaszuro({
    quest = 76192,
    note = L['naszuro_thaldraszus_peak']
}) -- Thaldraszus Peak

map.nodes[62618507] = ns.node.MoteOfNaszuro({
    quest = 76193,
    note = L['naszuro_temporal_conflux']
}) -- Temporal Conflux

-------------------------------------------------------------------------------

map.nodes[59735374] = ns.node.Node({
    label = L['revival_catalyst_label'],
    icon = 1394953, -- use new season icon
    note = L['revival_catalyst_note']
}) -- Revival Catalyst

----------------------------- MISCELLANEOUS NPCs ------------------------------

local Rumiastrasza = Class('Rumiastrasza', Collectible, {
    id = 189479,
    icon = 1500865,
    quest = 67071, -- What a Long Sweet Trip It's Been
    parent = map.id,
    rewards = {
        Recipe({item = 198132, profession = 185}) -- Recipe: Hoard of Draconic Delicacies
    }
}) -- Rumiastrasza

function Rumiastrasza.getters:note()
    local note = L['hoard_of_draconic_delicacies_note_start'] .. '\n'
    note = note .. QuestStatus(67047, 1, '{quest:67047}') -- Warm Away These Shivers
    note = note .. QuestStatus(67063, 2, '{quest:67063}') -- 10,000 Years Of Roasting
    note = note .. QuestStatus(67064, 3, '{quest:67064}') -- Rambling Delight
    note = note .. QuestStatus(67065, 4, '{quest:67065}') -- Future Fresh Fungi
    note = note .. QuestStatus(67066, 5, '{quest:67066}') -- Delights To Delve For
    note = note .. QuestStatus(67067, 6, '{quest:67067}') -- Navigating The Leapmaize
    note = note .. QuestStatus(67068, 7, '{quest:67068}') -- Anything But A Breeze
    return note .. '\n\n' .. L['hoard_of_draconic_delicacies_note_end']
end

val.nodes[61601180] = Rumiastrasza()

val.nodes[25994004] = NPC({
    id = 195768,
    icon = 4638429,
    note = L['sorotis_note'],
    parent = map.id
}) -- Sorotis (Valdrakken Accord Reputation)

val.nodes[35182459] = NPC({
    id = 197095,
    icon = 4638531,
    note = L['lillian_brightmoon_note'],
    parent = map.id
}) -- Lillian Brightmoon (Dragonscale Expedition Reputation)

---------------------------- SPECIAL WORKING TABLE-----------------------------

map.nodes[60918021] = ns.node.Node({
    label = L['temporal_loom_label'],
    icon = 4549302,
    note = L['temporal_loom_note'],
    IsEnabled = function(self) -- Tailoring
        if not ns.PlayerHasProfession(197) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Temporal Loom

---------------- PORTAL TO CENTRAL ENCAMPMENT - EMERALD DREAM -----------------

val.nodes[62685732] = ns.node.Node({
    label = '{spell:370368}',
    sublabel = '{spell:429034}',
    icon = 'portal_gn',
    scale = 2.0
})

--------------------------------- DRAGON PEPE ---------------------------------

val.nodes[50505290] = Collectible({
    label = L['dragon_pepe_label'],
    note = L['dragon_pepe_note'],
    icon = 1044996,
    rewards = {
        Item({item = 213181, quest = 79547}) -- A Tiny Dragon Goblet
    }
}) -- Dragon Pepe

----------------------------- PROVISIONER ARISTTA -----------------------------

map.nodes[61373139] = Collectible({
    label = '{npc:209192}',
    icon = 'peg_bl',
    scale = 2.0,
    note = L['provisioner_aristta_note'],
    rewards = {
        Mount({item = 192796, id = 1638, count = 20000}), -- Explorer's Stonehide Packbeast
        Spacer(), --
        Transmog({item = 208456, slot = L['cosmetic'], count = 15000}), -- Archivist's Elegant Bag
        Transmog({item = 212794, slot = L['cosmetic'], count = 15000}), -- Historian's Hefty Habersack
        Transmog({item = 208452, slot = L['cosmetic'], count = 15000}), -- Historian's Dapper Cap
        Transmog({item = 208547, slot = L['cosmetic'], count = 12000}), -- Archivist's Reading Spectacles
        Transmog({item = 208546, slot = L['cosmetic'], count = 12000}), -- Archivist's Rose-Tinted Glasses
        Transmog({item = 212637, slot = L['cosmetic'], count = 7000}), -- Historian's Striders
        Transmog({item = 212636, slot = L['cosmetic'], count = 7000}), -- Historian's Trousers
        Transmog({item = 212635, slot = L['cosmetic'], count = 5000}), -- Historian's Utility Belt
        Transmog({item = 212634, slot = L['cosmetic'], count = 5000}), -- Historian's Fingerless Gloves
        Transmog({item = 212633, slot = L['cosmetic'], count = 5000}), -- Historian's Fitted Vest
        Spacer(), --
        Transmog({item = 208458, slot = L['offhand'], count = 10000}), -- Archivist's Extravagant Lantern
        Transmog({item = 208450, slot = L['offhand'], count = 10000}), -- Coiled Archivist's Rope
        Transmog({item = 213276, slot = L['1h_mace'], count = 10000}), -- Archivist's Magnifying Mace
        Transmog({item = 208455, slot = L['1h_mace'], count = 10000}), -- Archivist's Sturdy Hook
        Transmog({item = 208453, slot = L['1h_mace'], count = 10000}), -- Archivist's Super Scooper
        Transmog({item = 213275, slot = L['1h_sword'], count = 10000}), -- Archivist's Rockpuller
        Transmog({item = 208454, slot = L['1h_axe'], count = 10000}), -- Archivist's Mining Pick
        Transmog({item = 212870, slot = L['dagger'], count = 10000}), -- Archivist's Stone Chisel
        Transmog({item = 213274, slot = L['staff'], count = 10000}), -- Archivist's Pathfinder
        Transmog({item = 208459, slot = L['2h_mace'], count = 10000}), -- Archivist's Improvised Cudgel
        Transmog({item = 208457, slot = L['2h_mace'], count = 10000}), -- Archivist's Spelunking Torch
        Transmog({
            item = 212941,
            slot = L['gun'],
            count = 10000,
            note = _G.ITEM_ACCOUNTBOUND
        }) -- Archivist's "Light Touch"
    }
}) -- Provisioner Aristta

--------------------------------- Ms. Xiulan ----------------------------------

local Xiulan = Class('Xiulan', Collectible, {
    label = '{npc:189644}',
    icon = 'peg_bl',
    scale = 2.0,
    parent = map.id,
    note = L['end_of_august'],
    rewards = {
        Mount({item = 211084, id = 1944, count = 1200000}), -- Gold Resonating Crystal
        Spacer(), --
        Appearance({item = 211300, count = 200000}), -- Arsenal: Whispering Temple Blades
        Transmog({
            item = 211099,
            type = L['shield'],
            note = L['cosmetic'],
            count = 100000
        }), -- Gilded Scarab Bulwark
        Transmog({
            item = 211096,
            type = L['gun'],
            note = L['cosmetic'],
            count = 100000
        }), -- Gold-Plated Witchhunter's Carbine
        Transmog({
            item = 211294,
            type = L['polearm'],
            note = L['cosmetic'],
            count = 100000
        }), -- Marauder King's Body Carver
        Transmog({
            item = 211097,
            type = L['2h_axe'],
            note = L['cosmetic'],
            count = 90000
        }), -- Gilded Crown Splitter
        Transmog({
            item = 211159,
            type = L['shield'],
            note = L['cosmetic'],
            count = 80000
        }), -- Royal Witch Doctor's Guard
        Transmog({
            item = 211145,
            type = L['cloak'],
            note = L['cosmetic'],
            count = 80000
        }), -- Royal Witch Doctor's Trophies
        Transmog({
            item = 211295,
            type = L['plate'],
            note = L['cosmetic'],
            count = 75000
        }), -- Wrathful Crusader's Helm
        Transmog({item = 211259, note = L['cosmetic'], count = 75000}) -- Regal Gryphon Rider's Headgear
    }
}) -- Ms. Xiulan <Madam Goya's Assistant>

val.nodes[19215029] = Xiulan()

-- STOP: DO NOT ADD NEW NODES HERE UNLESS THEY BELONG IN MISCELLANEOUS
