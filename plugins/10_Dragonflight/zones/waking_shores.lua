-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

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
local PetBattle = ns.node.PetBattle
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
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2022, settings = true})
local nel = Map({id = 2080, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[63695509] = Rare({
    id = 193132,
    vignette = 5171,
    quest = 73981,
    location = L['in_cave'],
    interval = ns.Intervals.Interval14h({id = 5}),
    rewards = {
        Achievement({id = 16676, criteria = 56045}),
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        DC.CliffsideWylderdrake.BlackHorns, DC.WindborneVelocidrake.ClubTail
    }
}) -- Amethyzar the Glittering

map.nodes[58634021] = Rare({
    id = 187945,
    vignette = 5069,
    quest = 73865,
    rewards = {
        Achievement({id = 16676, criteria = 56035}),
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek
    }
}) -- Anhydros the Tidetaker

map.nodes[54517174] = Rare({
    id = 193135,
    vignette = 5172,
    quest = 73984,
    interval = ns.Intervals.Interval14h({id = 26}),
    rewards = {
        Achievement({id = 16676, criteria = 56041}),
        Transmog({item = 200259, slot = L['shield']}), -- Forest Dweller's Shield
        Transmog({item = 200267, slot = L['plate']}), -- Reinforced Garden Tenders
        Transmog({item = 200229, slot = L['cloth']}), -- Slightly Digested Leggings
        DC.HighlandDrake.TanHorns, DC.RenewedProtoDrake.SnubSnout
    }
}) -- Azra's Prized Peony

map.nodes[28635882] = RareElite({
    id = 190986,
    vignette = {5112, 5900},
    quest = 74040,
    rewards = {
        Achievement({id = 16676, criteria = 56059}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.RenewedProtoDrake.ImpalerHorns, DC.HighlandDrake.ToothyMouth,
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Battlehorn Pyrhus

map.nodes[52916529] = Rare({
    id = 192738,
    vignette = 5386,
    quest = 73890,
    note = L['brundin_the_dragonbane_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56038}),
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        DC.RenewedProtoDrake.ImpalerHorns, DC.HighlandDrake.ToothyMouth,
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    },
    pois = {
        Path({
            52916529, 53126596, 52996668, 51666681, 49796541, 48726550,
            48326651, 47886773, 47946932, 47937123, 46887338, 46507372,
            45637384, 43397311, 42667232, 42037065, 41256910, 40906872,
            39516811, 35897202, 33547067, 33146983
        })
    }
}) -- Brundin the Dragonbane (Qalashi War Party)

map.nodes[26847642] = RareElite({
    id = 193198,
    vignette = 5385,
    quest = 73075,
    note = L['captain_lancer_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56050}),
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Transmog({item = 200286, slot = L['polearm']}), -- Dragonbane Lance
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        DC.CliffsideWylderdrake.BluntSpikedTail,
        DC.CliffsideWylderdrake.HornedNose
    }
}) -- Captain Lancer

local CauldronbearerBlakor = Class('cauldronbearerblakor', RareElite, {
    id = 186783,
    vignette = {5480, 5901},
    quest = 74042,
    fgroup = 'cauldronbearerblakor',
    rewards = {
        Achievement({id = 16676, criteria = 56056}),
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        DC.CliffsideWylderdrake.BluntSpikedTail,
        DC.CliffsideWylderdrake.HornedNose
    },
    pois = {
        Path({
            29605401, 29655371, 29805359, 30385364, 30615390, 30605447,
            30745476, 31135531, 31195583, 31085619, 30535596
        }), Path({29336233, 26585932, 26285992, 26015953, 26485842, 26335790})
    }
}) -- Cauldronbearer Blakor

map.nodes[30575625] = CauldronbearerBlakor()
map.nodes[27826071] = CauldronbearerBlakor()

map.nodes[29935074] = RareElite({
    id = 190991,
    vignette = {5115, 5902},
    quest = 74043,
    location = L['in_cave'],
    rewards = {
        Achievement({id = 16676, criteria = 56060}), --
        Transmog({item = 200199, slot = L['mail']}), -- Elements' Burden
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        Transmog({item = 200293, slot = L['warglaive']}), -- Primal Scion's Twinblade
        Transmog({item = 200294, slot = L['mail']}), -- Primal Chain Hauberk
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Transmog({item = 200439, slot = L['offhand']}), -- Earthpact Scepter
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Toy({item = 200198}), -- Primalist Prison
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClubTail,
        DC.WindborneVelocidrake.ClusterHorns, DC.CliffsideWylderdrake.BlackHorns
    },
    pois = {POI({29335248, 30535144})}
}) -- Char

map.nodes[31785474] = RareElite({
    id = 190985,
    vignette = 5113,
    quest = 73074,
    note = format(L['obsidian_citadel_rare_note'], 20, '{npc:187447}'),
    rewards = {
        Achievement({id = 16676, criteria = 56053}),
        Achievement({id = 16496, criteria = 56053}), -- Obsidian Champion
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.RenewedProtoDrake.ImpalerHorns, DC.HighlandDrake.ToothyMouth,
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead,
        Toy({item = 200249}) -- Mage's Chewed Wand
    },
    pois = {POI({27735660})} -- Sabellian
}) -- Death's Shadow

map.nodes[60204535] = Rare({
    id = 193217,
    vignette = nil,
    quest = 73874,
    rewards = {
        Achievement({id = 16676, criteria = 56039}),
        Achievement({id = 16446, criteria = 55387, note = L['pretty_neat_note']}),
        Transmog({item = 200219, slot = L['cloak']}), -- Dangerous Drapery
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    },
    pois = {
        Path({
            47267713, 48927495, 50076925, 50996592, 51946323, 52556211,
            53726071, 54705959, 55135843, 55195735, 54725544, 53785350,
            52485131, 51054858, 49934614, 49384420, 49114158, 49643971,
            50543803, 52013559, 53703482, 55473549, 58333718, 59883845,
            60373937, 60524059, 60414206, 60204535, 59984844, 60105101,
            60435274, 61375479, 63175769, 64575919, 66316022, 67826035,
            68615989, 69305901, 69425829, 68855485, 68285247, 67565009,
            67344710, 67924499, 68794338, 69324289, 70294270, 71674307,
            72304359, 73174490, 73394565, 73214666, 72874714, 71474819,
            70444873, 69284969, 68655076, 68265244
        })
    }
}) -- Drakewing

map.nodes[21626478] = RareElite({
    id = 193134,
    vignette = 5382,
    quest = 73072,
    note = L['enkine_note'],
    requires = ns.requirement.Item(201092), -- Lava Spices
    rewards = {
        Achievement({id = 16676, criteria = 56049}),
        Transmog({item = 200167, slot = L['1h_axe']}), -- Regurgitated Stone Handaxe
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}) -- Molten Flak Cannon
        -- DC.RenewedProtoDrake.ImpalerHorns -- needs review, is not in wowhead drops
    }
}) -- Enkine the Voracious

map.nodes[33127632] = RareElite({
    id = 193154,
    vignette = 5383,
    quest = 73073,
    note = L['spawns_at_night'],
    rewards = {
        Achievement({id = 16676, criteria = 56048}),
        Achievement({id = 16446, criteria = 55394, note = L['pretty_neat_note']}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200256, slot = L['offhand']}), -- Darkmaul Soul Horn
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200310, slot = L['cloak']}), -- Stole of the Iron Phantom
        DC.CliffsideWylderdrake.HornedJaw, DC.RenewedProtoDrake.WhiteHorns,
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Forgotten Gryphon

map.nodes[52345829] = Rare({
    id = 196056,
    vignette = 5380,
    quest = 73879,
    rewards = {
        Achievement({id = 16676, criteria = 56033}),
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek
    }
}) -- Gushgut the Beaksinker

map.nodes[43007465] = Rare({
    id = 193263,
    vignette = nil,
    quest = 73880,
    rewards = {Achievement({id = 16676, criteria = 56037})}
}) -- Helmet Missingway

map.nodes[34618275] = Rare({
    id = 193266,
    vignette = nil,
    quest = 74065,
    note = L['lepidoralia_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56055}),
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
}) -- Lepidoralia the Resplendent

map.nodes[39596353] = Rare({
    id = 186827,
    vignette = 5116,
    quest = 74010,
    interval = ns.Intervals.Interval14h({id = 1}),
    rewards = {
        Achievement({id = 16676, criteria = 56046}),
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200203, slot = L['mail']}), -- Repurposed Giant's Thimble
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Transmog({item = 200684, slot = L['2h_sword']}), -- Emerald Tailbone
        DC.HighlandDrake.ClubTail, DC.WindborneVelocidrake.GrayHorns,
        DC.RenewedProtoDrake.ImpalerHorns, DC.HighlandDrake.ToothyMouth
    }
}) -- Magmaton

map.nodes[22207649] = RareElite({
    id = 193152,
    vignette = 5175,
    quest = 74012,
    interval = ns.Intervals.Interval14h({id = 22}),
    rewards = {
        Achievement({id = 16676, criteria = 56047}),
        Transmog({item = 200192, slot = L['1h_mace']}), -- Handheld Geyser
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200435, slot = L['cloth']}), -- Brackish Breeches
        DC.CliffsideWylderdrake.FinnedNeck,
        DC.WindborneVelocidrake.LargeHeadFin, DC.RenewedProtoDrake.ImpalerHorns,
        DC.HighlandDrake.ToothyMouth
    }
}) -- Massive Magmashell

map.nodes[32805248] = RareElite({
    id = 187306,
    vignette = 5388,
    quest = 74067,
    note = format(L['obsidian_citadel_rare_note'], 10, '{npc:187275}'),
    rewards = {
        Achievement({id = 16676, criteria = 56988}),
        Achievement({id = 16496, criteria = 56988}), -- Obsidian Champion
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        DC.WindborneVelocidrake.ClubTail, DC.CliffsideWylderdrake.BlackHorns
    },
    pois = {POI({32245246})} -- Igys the Believer
}) -- Morchok

map.nodes[56004592] = Rare({
    id = 193256,
    vignette = nil,
    quest = 73888,
    rewards = {
        Achievement({id = 16676, criteria = 56034}),
        Transmog({item = 200165, slot = L['shield']}), -- Aegis of Scales
        Transmog({item = 200256, slot = L['offhand']}), -- Darkmaul Soul Horn
        Transmog({item = 200310, note = L['cloak']}), -- Stole of the Iron Phantom
        DC.RenewedProtoDrake.ClubTail, DC.RenewedProtoDrake.WhiteHorns,
        DC.CliffsideWylderdrake.HeavyHorns, DC.CliffsideWylderdrake.HornedJaw
    }
}) -- Nulltheria the Void Gazer

map.nodes[81485082] = Rare({
    id = 193118,
    vignette = 5167,
    quest = 74017,
    interval = ns.Intervals.Interval14h({id = 13}),
    rewards = {
        Achievement({id = 16676, criteria = 56043}),
        Transmog({item = 200684, slot = L['2h_sword']}), -- Emerald Tailbone
        Transmog({item = 200203, slot = L['mail']}), -- Repurposed Giant's Thimble
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200435, slot = L['cloth']}), -- Brackish Breeches
        DC.CliffsideWylderdrake.FinnedNeck, DC.WindborneVelocidrake.GrayHorns,
        DC.WindborneVelocidrake.LargeHeadFin, DC.HighlandDrake.ClubTail
    },
    pois = {
        Path({
            79185296, 80015374, 80215387, 80445368, 80445260, 80555229,
            81385104, 81485082, 81465042, 81314977, 81254941, 81634857,
            81934819, 82554797, 82644782, 82614742
        }) -- 80415250
    }
}) -- O'nank Shorescour

map.nodes[64676939] = Rare({
    id = 192362,
    vignette = nil,
    quest = 70864,
    note = L['hidden_hornswog_hoard_note'],
    rewards = {
        Achievement({id = 16676, criteria = 57852}),
        Pet({item = 199916, id = 3365}) -- Roseate Hopper
    },
    pois = {
        POI({66165529, color = 'White'}), POI({47728360, color = 'Yellow'}),
        POI({39638468, color = 'Blue'})
    }
}) -- Possessive Hornswog

map.nodes[24005896] = RareElite({
    id = 193232,
    vignette = {5512, 5904},
    quest = 74051,
    note = L['obsidian_throne_rare_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56061}),
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        DC.CliffsideWylderdrake.BluntSpikedTail,
        DC.CliffsideWylderdrake.HornedNose
    },
    pois = {POI({27226096})} -- Entrance
}) -- Rasnar the War Ender

map.nodes[30736110] = RareElite({
    id = 187598,
    vignette = {5513, 5903},
    quest = 74052,
    rewards = {
        Achievement({id = 16676, criteria = 56057}),
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        DC.CliffsideWylderdrake.HornedNose,
        DC.CliffsideWylderdrake.BluntSpikedTail
    }
}) -- Rohzor Forgesmash

map.nodes[46997332] = Rare({
    id = 193271,
    vignette = 5381,
    quest = 74076,
    location = L['in_small_cave'],
    note = L['shadeslash_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56989}),
        Transmog({item = 200152, slot = L['1h_sword']}), -- Gleaming Blade of Insight
        Transmog({item = 200297, slot = L['1h_mace']}), -- Hastily Cobbled Maul
        DC.CliffsideWylderdrake.SweptHorns, DC.HighlandDrake.Ears
    },
    pois = {POI({47727466, 47557369})}
}) -- Shadeslash Trakken

map.nodes[23755724] = RareElite({
    id = 189822,
    vignette = 5108,
    quest = 74077,
    note = L['obsidian_throne_rare_note'] .. ' ' ..
        format(L['obsidian_citadel_rare_note'], 20, '{npc:187284}'),
    rewards = {
        Achievement({id = 16676, criteria = 56054}),
        Achievement({id = 16496, criteria = 56054}), -- Obsidian Champion
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    },
    pois = {
        POI({
            27226096, -- Entrance
            26836257 -- Wrathion
        })
    }
}) -- Shas'ith

map.nodes[42892832] = Rare({
    id = 193181,
    vignette = nil,
    quest = 73895,
    rewards = {
        Achievement({id = 16676, criteria = 56036}),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200132, slot = L['dagger']}), -- Skewer's Snout
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.CliffsideWylderdrake.FinnedNeck,
        DC.WindborneVelocidrake.LargeHeadFin, DC.HighlandDrake.ManedHead,
        DC.CliffsideWylderdrake.HeadMane
    },
    pois = {
        Path({
            47741892, 48481794, 48731762, 48851677, 48681620, 48321588,
            48011600, 47831641, 47761746, 47741892, 47222080, 47242098,
            47102230, 46842285, 46482317, 45862342, 43072780, 42892832,
            42743062, 42533165, 42243219, 40893341, 40363406, 40043547,
            40263915, 40193965, 39734056, 39264098, 38614106, 38324066,
            38143991, 38243859, 38563789, 39213679, 40043547
        })
    }
}) -- Skewersnout

map.nodes[34578950] = Rare({
    id = 193175,
    vignette = 5384,
    quest = 74079,
    note = L['slurpo_snail_note'],
    rewards = {
        Achievement({id = 16676, criteria = 57003}),
        Transmog({item = 200189, slot = L['plate']}), -- Hydroforged Shell Helm
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek
    },
    pois = {POI({36028984})} -- Entrance
}) -- Slurpo, the Incredible Snail

map.nodes[69486653] = Rare({
    id = 193120,
    vignette = 5169,
    quest = 74031,
    interval = ns.Intervals.Interval14h({id = 11}),
    rewards = {
        Achievement({id = 16676, criteria = 56044}),
        Transmog({item = 200209, slot = L['mail']}), -- Firebreather's Cowl
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Smogswog the Firebreather

map.nodes[78514999] = Rare({
    id = 193228,
    vignette = 5197,
    quest = 73997,
    interval = ns.Intervals.Interval14h({id = 19}),
    rewards = {
        Achievement({id = 16676, criteria = 56042}),
        Transmog({item = 200281, slot = L['offhand']}), -- Gorjo's Riding Crop
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200435, slot = L['cloth']}), -- Brackish Breeches
        DC.WindborneVelocidrake.LargeHeadFin, DC.CliffsideWylderdrake.FinnedNeck
    },
    pois = {Path({78825133, 78575081, 78475028, 78514999, 78684964, 78674926})}
}) -- Snappy (Gorjo the Crab Shackler)

map.nodes[45453540] = Rare({
    id = 193148,
    vignette = 5174,
    quest = 73899,
    rewards = {
        Achievement({id = 16676, criteria = 56040}), --
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Thunderous Matriarch

map.nodes[33525576] = RareElite({
    id = 187886,
    vignette = {5109, 5905},
    quest = 74054,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 16676, criteria = 56058}),
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        DC.WindborneVelocidrake.ClubTail, DC.CliffsideWylderdrake.BlackHorns
    }
}) -- Turboris

map.nodes[30025534] = RareElite({
    id = 186859,
    vignette = 5110,
    quest = 74090,
    note = L['worldcarver_atir_note'],
    rewards = {
        Achievement({id = 16676, criteria = 56052}),
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Transmog({item = 200213, slot = L['plate']}), -- Lava-Splattered Breastplate
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        DC.RenewedProtoDrake.ImpalerHorns, DC.HighlandDrake.ToothyMouth
    }
}) -- Worldcarver A'tir

-------------------------------------------------------------------------------

-- Fishing rares that are part of the Azure Span adventurer achievement

map.nodes[33886446] = Rare({
    id = 193708,
    vignette = nil,
    quest = 74078,
    label = L['large_lunker_sighting'],
    note = L['large_lunker_sighting_note'],
    rewards = {
        Achievement({id = 16678, criteria = 56117}),
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Skald the Impaler

map.nodes[65617410] = Rare({
    id = 193735,
    vignette = nil,
    label = L['large_lunker_sighting'],
    note = L['large_lunker_sighting_note'],
    quest = {74068, 74074, 74084},
    questCount = true,
    rewards = {
        Achievement({
            id = 16678,
            vignette = nil,
            criteria = {
                {id = 56119, quest = 74068}, -- Moth'go Deeploom
                {id = 56118, quest = 74074}, -- Seereel, the Spring
                {id = 56120, quest = 74084} -- Swog'ranka
            }
        }), --
        ns.reward.Section('{npc:193735}'), -- Moth'go Deeploom -- drops more but i limited it to 2 tmog
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane,
        ns.reward.Section('{npc:193634}'), -- Swog'ranka -- drops more but i limited it to 2 tmog
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200435, slot = L['cloth']}), -- Brackish Breeches
        DC.CliffsideWylderdrake.FinnedNeck,
        DC.WindborneVelocidrake.LargeHeadFin, ns.reward.Section('{npc:193710}'), -- Seereel, the Spring
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        DC.CliffsideWylderdrake.FinnedCheek, DC.HighlandDrake.FinnedBack,
        ns.reward.Spacer(), -- Shared Loot
        Item({item = 200086}) -- Khaz'gorite-infused Resin
    }
}) -- Lunker Rares

-------------------------------------------------------------------------------

-- These rares/elites are not part of the adventurer achievement for the zone

map.nodes[77302198] = Rare({
    id = 187111,
    vignette = nil,
    quest = 72835,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 200165, slot = L['shield']}), -- Aegis of Scales
        Transmog({item = 200682, slot = L['plate']}), -- Hardened Scale Shoulderguards
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.RenewedProtoDrake.ClubTail,
        DC.CliffsideWylderdrake.HeavyHorns, DC.CliffsideWylderdrake.HeadMane
    },
    pois = {
        POI({77902281}) -- Entrance
    }
}) -- Ancient Hornswog

map.nodes[64173289] = Rare({
    id = 191611,
    vignette = 5126,
    quest = 72838,
    rewards = {
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        DC.CliffsideWylderdrake.BluntSpikedTail,
        DC.CliffsideWylderdrake.HornedNose
    }
}) -- Dragonhunter Igordan

map.nodes[54582137] = Rare({
    id = 195915,
    vignette = 5372,
    quest = 72839, -- 70648 is a tracking quest, 72839 is slaining quest
    rewards = {
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        DC.RenewedProtoDrake.ImpalerHorns, DC.HighlandDrake.ToothyMouth
    }
}) -- Firava the Rekindler

map.nodes[54728225] = Rare({
    id = 187209,
    vignette = 5127,
    quest = 72841,
    rewards = {
        Transmog({item = 200199, slot = L['mail']}), -- Elements' Burden
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200253, slot = L['dagger']}), -- Snowspring Incanter's Knife
        Transmog({item = 200254, slot = L['mail']}), -- Totemic Cinch
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        Transmog({item = 200293, slot = L['warglaive']}), -- Primal Scion's Twinblade
        Transmog({item = 200294, slot = L['mail']}), -- Primal Chain Hauberk
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Transmog({item = 200439, slot = L['offhand']}), -- Earthpact Scepter
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Toy({item = 200198}), -- Primalist Prison
        DC.CliffsideWylderdrake.BlackHorns, DC.CliffsideWylderdrake.ManedNeck,
        DC.WindborneVelocidrake.ClubTail, DC.RenewedProtoDrake.HeavyHorns,
        DC.WindborneVelocidrake.ClusterHorns
    }
}) -- Klozicc the Ascended

map.nodes[24135392] = Rare({
    id = 189289,
    vignette = 5107,
    quest = 74019,
    note = L['obsidian_throne_rare_note'],
    rewards = {
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        DC.CliffsideWylderdrake.BlackHorns, DC.WindborneVelocidrake.ClubTail
    },
    pois = {POI({27226096})} -- Entrance
}) -- Penumbrus

map.nodes[81133794] = Rare({
    id = 184853,
    vignette = 5055,
    quest = 72843,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    },
    pois = {
        POI({81713719}) -- Entrance
    }
}) -- Primal Scythid Queen

map.nodes[60598285] = Rare({
    id = 193171,
    vignette = 5387,
    quest = 72850,
    rewards = {
        Transmog({item = 200208, slot = L['cloth']}), -- Cloud Coalescing Handwraps
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        Transmog({item = 200306, slot = L['cloak']}), -- Tempest Shawl
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Transmog({item = 200314, slot = L['cloth']}), -- Skyspeaker's Envelope
        Toy({item = 200198}), -- Primalist Prison
        DC.WindborneVelocidrake.SweptHorns, DC.RenewedProtoDrake.PurpleHair,
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns
    }
}) -- Terillod the Devout

map.nodes[42203960] = Rare({
    id = 186200,
    vignette = 5044,
    quest = 74000,
    interval = ns.Intervals.Interval14h({id = 16}),
    rewards = {
        Transmog({item = 200171, slot = L['1h_sword']}), -- Grymheart Blade
        Transmog({item = 200175, slot = L['2h_mace']}), -- Repurposed Anvil
        Transmog({item = 200243, slot = L['cloth']}), -- Titanic Scholar's Finery
        DC.CliffsideWylderdrake.BluntSpikedTail,
        DC.CliffsideWylderdrake.HornedNose, -- his team members looting table
        DC.HighlandDrake.HairyCheek
    }
}) -- Harkyn Grymstone

-- map.nodes[46795728] = Rare({id = 190718}) -- Monsoo, The Boiling Rage

map.nodes[68085669] = Rare({
    id = 187745,
    vignette = nil,
    quest = 74092,
    rewards = {
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200299, slot = L['1h_sword']}), -- Strange Clockwork Gladius
        Transmog({item = 200303, slot = L['staff']}), -- Dreamweaver Acolyte's Staff
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.WindborneVelocidrake.SpikedBack, DC.HighlandDrake.StripedPattern,
        DC.HighlandDrake.CrestedBrow
    },
    pois = {
        Path({
            67265859, 68205832, 68255788, 68135746, 67775648, 67625593,
            67375427, 67375518, 68765539, 68955551, 69065602, 68805668,
            68085669, 67965711, 68235791, 68245830, 68045850, 67295861,
            67895853, 68225830, 68255779, 67815693
        })
    }
}) -- Disoriented Watcher -- just be like a rare

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[40454136] = Treasure({ -- required 65537, 70599, 70527
    quest = 70599,
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(70527, '{item:199061}') -- A Guide to Rare Fish
    },
    note = L['bubble_drifter_note'],
    rewards = {
        Achievement({id = 16297, criteria = 54699}),
        Pet({item = 193852, id = 3269}) -- Azure Frillfish
    },
    pois = {POI({40944146})}
}) -- Bubble Drifter

map.nodes[69314658] = Treasure({
    quest = 70346,
    note = L['dead_mans_chestplate_note'],
    rewards = {
        Achievement({id = 16297, criteria = 54702}),
        Transmog({item = 202190, slot = L['cosmetic']}), -- Dead Man's Chains
        Transmog({item = 202191, slot = L['cosmetic']}), -- Dead Man's Breastplate
        Transmog({item = 202192, slot = L['cosmetic']}), -- Dead Man's Leathers
        Transmog({item = 202193, slot = L['cosmetic']}) -- Dead Man's Tunic
    }
}) -- Dead Man's Chestplate

map.nodes[58525302] = Treasure({
    quest = 65646,
    location = L['in_waterfall_cave'],
    note = L['misty_treasure_chest_note'],
    rewards = {
        Achievement({id = 16297, criteria = 55403}),
        Item({item = 202194, note = L['bag']}) -- Misty Satchel
    }
}) -- Misty Treasure Chest

map.nodes[29454699] = Treasure({
    quest = 72020,
    location = L['in_cave'],
    note = L['onyx_gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Quest(72021, '{item:200738}') -- Onyx Gem Cluster Map
    },
    rewards = {
        Achievement({id = 16297, criteria = 55448}), --
        Item({item = 200867}) -- Glimmering Neltharite Cluster
    },
    pois = {POI({46948289, 29335248, 30535144})}
}) -- Onyx Gem Cluster

map.nodes[65804182] = Treasure({
    quest = 70600,
    note = L['golden_dragon_goblet_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(70409, '{item:198854}') -- Archeologist Artifact Notes
    },
    rewards = {
        Achievement({id = 16297, criteria = 54698}), --
        Toy({item = 202019}) -- Golden Dragon Goblet
    },
    pois = {POI({77992943})}
}) -- Golden Dragon Goblet

map.nodes[61347079] = Treasure({
    quest = 70598,
    note = L['gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Quest(70528, '{item:199062}') -- Ruby Gem Cluster Map
    },
    rewards = {
        Achievement({id = 16297, criteria = 54713}), --
        Item({item = 200864}) -- Glimmering Alexstraszite Cluster
    }
}) -- Ruby Gem Cluster

map.nodes[48488518] = Treasure({
    quest = 70378,
    note = L['torn_riding_pack_note'],
    rewards = {Achievement({id = 16297, criteria = 54703})}
}) -- Torn Riding Pack

map.nodes[46713121] = Treasure({
    quest = 70345,
    note = L['yennus_kite_note'],
    rewards = {
        Achievement({id = 16297, criteria = 54701}), --
        Toy({item = 202022}) -- Yennu's Kite
    }
}) -- Yennu's Kite

map.nodes[44607010] = Treasure({
    label = L['lost_obsidian_cache'],
    icon = 'chest_gn',
    quest = 70018,
    location = L['in_cave'],
    note = format('%s\n\n%s\n\n%s', L['lost_obsidian_cache_step1'],
        L['lost_obsidian_cache_step2'], L['lost_obsidian_cache_step3']),
    rewards = {
        Toy({item = 201933}) -- Black Dragon's Challenge Dummy
    },
    pois = {
        POI({
            label = '{item:194122}',
            note = L['lost_obsidian_cache_step1'],
            color = 'Green',
            points = {43707170}
        }), -- Sour Apple
        POI({
            label = '{npc:191851}',
            note = L['lost_obsidian_cache_step2'],
            color = 'Yellow',
            points = {43206720}
        }), -- Blacktalon Shadowclaw
        POI({
            label = '{item:198085}',
            note = L['lost_obsidian_cache_step3'],
            color = 'Blue',
            points = {43656957}
        }) -- Lost Obsidian Cache Key
    }
}) -- Lost Obsidian Cache

-------------------------------------------------------------------------------

map.nodes[43156737] = Treasure({
    quest = 65965,
    requires = ns.requirement.Item(191122), -- Fullsails Supply Chest Key
    label = L['fullsails_supply_chest'],
    note = L['fullsails_supply_chest_note']
}) -- Fullsails Supply Chest

-------------------------------------------------------------------------------
---------------------------- DRACTHYR SUPPLY CHEST ----------------------------
-------------------------------------------------------------------------------

map.nodes[55804520] = ns.node.DracthyrSupplyChest()
map.nodes[57604350] = ns.node.DracthyrSupplyChest()
map.nodes[66405660] = ns.node.DracthyrSupplyChest()
map.nodes[67905800] = ns.node.DracthyrSupplyChest()
map.nodes[68005890] = ns.node.DracthyrSupplyChest()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[39028289] = PetBattle({
    id = 196264,
    rewards = {
        Achievement({id = 16464, criteria = 55485}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 4, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 4, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 4, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 4, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 4, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 4, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 4, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 4, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 4, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 4, oneline = true}) -- Undead
    }
}) -- Haniko

map.nodes[26239233] = PetBattle({
    id = 189376,
    rewards = {
        Achievement({id = 16464, criteria = 55488}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 8, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 8, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 8, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 8, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 8, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 8, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 8, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 8, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 8, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 8, oneline = true}) -- Undead
    }
}) -- Swog

map.nodes[51887233] = PetBattle({
    id = 201849,
    rewards = {
        Achievement({id = 17406, criteria = 58212}) -- Battle on the Dragon Isles II
    }
}) -- Adinakon

map.nodes[69014673] = PetBattle({
    id = 201802,
    rewards = {
        Achievement({id = 17406, criteria = 58216}) -- Battle on the Dragon Isles II
    }
}) -- Sharp as Flint

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[22258763] = PT.Blacksmithing({
    id = 201007,
    quest = 70246,
    note = L['pt_smith_ancient_monument_note']
}) -- Ancient Monument

map.nodes[24906970] = PT.Tailoring({
    id = 198702,
    quest = 70304,
    note = L['pt_tailor_itinerant_singed_fabric_note']
}) -- Itinerant Singed Fabric

map.nodes[25107411] = PT.Alchemy({
    id = 198685,
    quest = 70289,
    note = L['pt_alch_well_insulated_mug_note']
}) -- Well-Insulated Mug

map.nodes[33906370] = PT.Jewelcrafting({
    id = 201017,
    quest = 70273,
    note = L['pt_jewel_igneous_gem_note']
}) -- Igneous Gem

map.nodes[34506710] = PT.Blacksmithing({
    id = 201010,
    quest = 70310,
    note = L['pt_smith_qalashi_weapon_diagram_note']
}) -- Qalashi Weapon Diagram

map.nodes[35506430] = PT.Blacksmithing({
    id = 201008,
    quest = 70296,
    note = L['pt_smith_molten_ingot_note']
}) -- Molten Ingot

map.nodes[39008600] = PT.Leatherworking({
    id = 198711,
    quest = 70308,
    note = L['pt_leath_poachers_pack_note']
}) -- Poacher's Pack

map.nodes[49097754] = PT.Engineering({
    id = 198789,
    quest = 70275,
    note = L['pt_engi_intact_coil_capacitor_note']
}) -- Intact Coil Capacitor

map.nodes[50404510] = PT.Jewelcrafting({
    id = 198687,
    quest = 70292,
    note = L['pt_jewel_closely_guarded_shiny_note']
}) -- Closely Guarded Shiny

map.nodes[55008100] = PT.Alchemy({
    id = 198663,
    quest = 70274,
    note = L['pt_alch_frostforged_potion_note']
}) -- Frostforged Potion

map.nodes[56004490] = PT.Engineering({
    id = 201014,
    quest = 70270,
    note = L['pt_engi_boomthyr_rocket_note'],
    pois = {POI({55904529, 58134453, 57994435, 57834457})}
}) -- Boomthyr Rocket

map.nodes[56401950] = PT.Blacksmithing({
    id = 198791,
    quest = 70230,
    note = L['pt_smith_glimmer_of_blacksmithing_wisdom_note']
}) -- Glimmer of Blacksmithing Wisdom

map.nodes[57505850] = PT.Enchanting({
    id = 201012,
    quest = 70272,
    note = L['pt_ench_enchanted_debris_note']
}) -- Enchanted Debris

map.nodes[57508360] = PT.Enchanting({
    id = 198798,
    quest = 70320,
    note = L['pt_ench_flashfrozen_scroll_note']
}) -- Flashfrozen Scroll

map.nodes[64302540] = PT.Leatherworking({
    id = 198667,
    quest = 70280,
    note = L['pt_leath_spare_djaradin_tools_note']
}) -- Spare Djaradin Tools

map.nodes[65502570] = PT.Blacksmithing({
    id = 201005,
    quest = 70312,
    note = L['pt_smith_curious_ingots_note']
}) -- Curious Ingots

map.nodes[67875796] = PT.Inscription({
    id = 198704,
    quest = 70306,
    note = L['pt_script_pulsing_earth_rune_note']
}) -- Pulsing Earth Rune

map.nodes[68002680] = PT.Enchanting({
    id = 198675,
    quest = 70283,
    note = L['pt_ench_lava_infused_seed_note']
}) -- Lava-Infused Seed

map.nodes[74703790] = PT.Tailoring({
    id = 198699,
    quest = 70302,
    note = L['pt_tailor_mysterious_banner_note']
}) -- Mysterious Banner

-------------------------------------------------------------------------------

map.nodes[43276663] = PM.Blacksmithing({
    id = 194836,
    quest = 70250,
    note = L['pm_smith_grekka_anvilsmash'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2023, count = '5'}) -- Dragon Isles Blacksmithing Knowledge
    }
}) -- Grekka Anvilsmash

map.nodes[60827590] = PM.Alchemy({
    id = 194829,
    quest = 70247,
    note = L['pm_alch_grigori_vialtry'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2024, count = '5'}) -- Dragon Isles Alchemy Knowledge
    }
}) -- Grigori Vialtry

map.nodes[73286972] = PM.Skinning({
    id = 194844,
    quest = 70259,
    note = L['pm_skin_zenzi'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2033, count = '10'}) -- Dragon Isles Skinning Knowledge
    }
}) -- Zenzi

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[57655483] = Dragonglyph({rewards = {Achievement({id = 15991})}}) -- Dragon Glyphs: Crumbling Life Archway
map.nodes[69184623] = Dragonglyph({rewards = {Achievement({id = 16051})}}) -- Dragon Glyphs: Dragonheart Outpost
map.nodes[58097858] = Dragonglyph({rewards = {Achievement({id = 16669})}}) -- Dragon Glyphs: Flashfrost Enclave
map.nodes[74375751] = Dragonglyph({rewards = {Achievement({id = 16668})}}) -- Dragon Glyphs: Life-Binder Observatory Rostrum
map.nodes[52601712] = Dragonglyph({rewards = {Achievement({id = 15990})}}) -- Dragon Glyphs: Life-Binder Observatory Tower
map.nodes[40987191] = Dragonglyph({rewards = {Achievement({id = 15987})}}) -- Dragon Glyphs: Obsidian Bulwark
map.nodes[21915141] = Dragonglyph({rewards = {Achievement({id = 16053})}}) -- Dragon Glyphs: Obsidian Throne
map.nodes[54437422] = Dragonglyph({rewards = {Achievement({id = 15988})}}) -- Dragon Glyphs: Ruby Life Pools
map.nodes[48828664] = Dragonglyph({rewards = {Achievement({id = 16670})}}) -- Dragon Glyphs: Rubyscale Outpost (Ohn'ahran Plains)
map.nodes[73212051] = Dragonglyph({rewards = {Achievement({id = 16052})}}) -- Dragon Glyphs: Scalecracker Peak
map.nodes[75265707] = Dragonglyph({rewards = {Achievement({id = 15985})}}) -- Dragon Glyphs: Skytop Observatory
map.nodes[46395207] = Dragonglyph({rewards = {Achievement({id = 15989})}}) -- Dragon Glyphs: The Overflowing Spring
map.nodes[74943750] = Dragonglyph({rewards = {Achievement({id = 15986})}}) -- Dragon Glyphs: Wingrest Embassy

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[28714771] = Flag({quest = 70826})
map.nodes[43976294] = Flag({quest = 70825})
map.nodes[54797412] = Flag({quest = 71204})
map.nodes[56024541] = Flag({quest = 70823})
map.nodes[73353884] = Flag({quest = 70824})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[23424384] = SignalTransmitter({quest = 70575}) -- Obsidian Citadel
map.nodes[74622550] = SignalTransmitter({quest = 70573}) -- Scalecracker Peaks
map.nodes[62207890] = SignalTransmitter({quest = 70574}) -- Ruby Life Pools

-------------------------------------------------------------------------------
---------------------------- FRAGMENTS OF HISTORY -----------------------------
-------------------------------------------------------------------------------

map.nodes[81143040] = Fragment({
    sublabel = L['broken_banding_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55027}),
        Item({item = 198475, quest = 70175})
    }
}) -- Broken Banding

map.nodes[60575787] = Fragment({
    sublabel = L['dislodged_dragoneye_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55025}),
        Item({item = 198626, quest = 70236})
    }
}) -- Dislodged Dragoneye

map.nodes[47238848] = Fragment({
    sublabel = L['finely_carved_wing_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55030}),
        Item({item = 199841, quest = 70789})
    }
}) -- Finely Carved Wing

map.nodes[58246841] = Fragment({
    sublabel = L['tail_fragment_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55026}),
        Item({item = 198543, quest = 70207})
    }
}) -- Tail Fragment

-------------------------------------------------------------------------------
------------------------------- SYMBOLS OF HOPE -------------------------------
-------------------------------------------------------------------------------

local Kite = Class('Kite', Collectible, {
    icon = 133837,
    label = '{npc:198118}',
    group = ns.groups.KITE
})

map.nodes[73193776] = Kite({
    quest = 72096,
    rewards = {Achievement({id = 16584, criteria = 55841})}
})
map.nodes[73035292] = Kite({
    quest = 72097,
    rewards = {Achievement({id = 16584, criteria = 55842})}
})
map.nodes[56735799] = Kite({
    quest = 72098,
    rewards = {Achievement({id = 16584, criteria = 55843})}
})
map.nodes[61698083] = Kite({
    quest = 72099,
    rewards = {Achievement({id = 16584, criteria = 55844})}
})
map.nodes[43556382] = Kite({
    quest = 72100,
    rewards = {Achievement({id = 16584, criteria = 55845})}
})
map.nodes[24048994] = Kite({
    quest = 72101,
    rewards = {Achievement({id = 16584, criteria = 55846})}
})
map.nodes[50275562] = Kite({
    quest = 72102,
    rewards = {Achievement({id = 16584, criteria = 55847})}
})
map.nodes[48863994] = Kite({
    quest = 72104,
    rewards = {Achievement({id = 16584, criteria = 55849})}
})
map.nodes[57124639] = Kite({
    quest = 72103,
    rewards = {Achievement({id = 16584, criteria = 55848})}
})
map.nodes[57011998] = Kite({
    quest = 72105,
    rewards = {Achievement({id = 16584, criteria = 55850})}
})

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------
local cave = L['in_small_cave']
local r_mining = ns.requirement.Profession(186)
local r_anomaly_detect = ns.requirement.Spell(382499)

map.nodes[35508037] = Disturbeddirt()
map.nodes[36537986] = Disturbeddirt()
map.nodes[38338524] = Disturbeddirt()
map.nodes[38888424] = Disturbeddirt({location = cave})
map.nodes[38973904] = Disturbeddirt()
map.nodes[40674138] = Disturbeddirt()
map.nodes[44743555] = Disturbeddirt()
map.nodes[45468064] = Disturbeddirt()
map.nodes[46837960] = Disturbeddirt()
map.nodes[47278699] = Disturbeddirt()
map.nodes[50073813] = Disturbeddirt()
map.nodes[50834912] = Disturbeddirt()
map.nodes[52354997] = Disturbeddirt()
map.nodes[53634986] = Disturbeddirt()
map.nodes[54263214] = Disturbeddirt()
map.nodes[54398542] = Disturbeddirt()
map.nodes[54785018] = Disturbeddirt()
map.nodes[54895103] = Disturbeddirt()
map.nodes[55994017] = Disturbeddirt()
map.nodes[57548174] = Disturbeddirt()
map.nodes[57858225] = Disturbeddirt()
map.nodes[57994083] = Disturbeddirt({location = cave})
map.nodes[58124968] = Disturbeddirt()
map.nodes[58654092] = Disturbeddirt()
map.nodes[61815501] = Disturbeddirt()
map.nodes[63225470] = Disturbeddirt({location = cave})
map.nodes[63935555] = Disturbeddirt({location = cave})
map.nodes[66176452] = Disturbeddirt()
map.nodes[67076234] = Disturbeddirt()
map.nodes[67267354] = Disturbeddirt()
map.nodes[67896631] = Disturbeddirt()
map.nodes[68256648] = Disturbeddirt()
map.nodes[70306386] = Disturbeddirt()
map.nodes[70746975] = Disturbeddirt()
map.nodes[71436627] = Disturbeddirt({location = cave})
map.nodes[71735883] = Disturbeddirt()
map.nodes[71863677] = Disturbeddirt()
map.nodes[72715976] = Disturbeddirt({location = cave, requires = r_mining})
map.nodes[75064241] = Disturbeddirt()
map.nodes[75580798] = Disturbeddirt()
map.nodes[78344274] = Disturbeddirt()
map.nodes[78502992] = Disturbeddirt()
map.nodes[78562498] = Disturbeddirt()
map.nodes[78585558] = Disturbeddirt()
map.nodes[79235184] = Disturbeddirt()
map.nodes[79774324] = Disturbeddirt()
map.nodes[82345008] = Disturbeddirt()
map.nodes[83564475] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[23017547] = Scoutpack()
map.nodes[23569648] = Scoutpack({location = cave, requires = r_anomaly_detect})
map.nodes[24997818] = Scoutpack()
map.nodes[26628764] = Scoutpack()
map.nodes[28868321] = Scoutpack()
map.nodes[29715467] = Scoutpack()
map.nodes[30468098] = Scoutpack()
map.nodes[32455283] = Scoutpack()
map.nodes[32465665] = Scoutpack()
map.nodes[34955089] = Scoutpack({location = cave})
map.nodes[35015079] = Scoutpack({location = cave})
map.nodes[37859241] = Scoutpack()
map.nodes[38139017] = Scoutpack()
map.nodes[41256689] = Scoutpack()
map.nodes[43345237] = Scoutpack()
map.nodes[43506130] = Scoutpack({location = cave})
map.nodes[44448825] = Scoutpack()
map.nodes[44495926] = Scoutpack()
map.nodes[32425431] = Scoutpack()
map.nodes[45663986] = Scoutpack()
map.nodes[45813518] = Scoutpack({location = cave})
map.nodes[45985884] = Scoutpack()
map.nodes[46244006] = Scoutpack()
map.nodes[47164139] = Scoutpack()
map.nodes[47355739] = Scoutpack()
map.nodes[47383898] = Scoutpack()
map.nodes[48134457] = Scoutpack()
map.nodes[51078421] = Scoutpack()
map.nodes[51668253] = Scoutpack()
map.nodes[51824744] = Scoutpack()
map.nodes[52138491] = Scoutpack()
map.nodes[52745025] = Scoutpack()
map.nodes[55774334] = Scoutpack()
map.nodes[55887676] = Scoutpack()
map.nodes[56182932] = Scoutpack()
map.nodes[56857953] = Scoutpack()
map.nodes[57404560] = Scoutpack()
map.nodes[58395561] = Scoutpack()
map.nodes[59145368] = Scoutpack()
map.nodes[60606384] = Scoutpack()
map.nodes[61886605] = Scoutpack()
map.nodes[66505198] = Scoutpack()
map.nodes[68225004] = Scoutpack()
map.nodes[72155969] = Scoutpack({location = cave, requires = r_mining})
map.nodes[72595687] = Scoutpack()
map.nodes[80903776] = Scoutpack({location = cave})
map.nodes[82055012] = Scoutpack()

-------------------------------------------------------------------------------
-------------------------------- DJARADIN CACHE -------------------------------
-------------------------------------------------------------------------------

local DjaradinCache = Class('DjaradinCache', ns.node.Node, {
    label = L['djaradin_cache'],
    icon = 'chest_pp',
    group = ns.groups.DJARADIN_CACHE,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Transmog({item = 201035, slot = L['cosmetic']}), -- Citadel Crushers Pauldrons
        Transmog({item = 201036, slot = L['cosmetic']}), -- Citadel Crushers Chestplate
        Transmog({item = 201037, slot = L['cosmetic']}), -- Citadel Crushers Legguards
        Transmog({item = 201038, slot = L['cosmetic']}), -- Citadel Crushers Footwraps
        Transmog({item = 201039, slot = L['cosmetic']}), -- Citadel Crushers Helm
        Transmog({item = 201041, slot = L['cosmetic']}), -- Citadel Crushers Cloak
        Transmog({item = 201042, slot = L['cosmetic']}), -- Obsidian Crushers Bracers
        Transmog({item = 201043, slot = L['cosmetic']}), -- Obsidian Crushers Belt
        Transmog({item = 201429, slot = L['cosmetic']}), -- Obsidian Fist
        Transmog({item = 201430, slot = L['cosmetic']}), -- Burning Mallet
        Transmog({item = 201431, slot = L['cosmetic']}), -- Obsidian Tyrants Mace
        Transmog({item = 201432, slot = L['cosmetic']}), -- Obsidian Dragontooth
        Transmog({item = 201433, slot = L['cosmetic']}), -- Citadel Wardens Mace
        Transmog({item = 201434, slot = L['cosmetic']}), -- Obsidian Barrier
        Item({item = 199230}), -- Schematic: Projectile Propulsion Pinion
        Item({item = 194540, quest = 67046}), -- Nokhud Armorer's Notes
        Item({item = 199066, quest = 70535}), -- Letter of Caution
        Item({item = 199065, quest = 70534}), -- Sorrowful Letter
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 199906}), -- Titan Relic
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Djaradin Cache

map.nodes[24306950] = DjaradinCache()
map.nodes[24606950] = DjaradinCache()
map.nodes[25307410] = DjaradinCache()
map.nodes[25707360] = DjaradinCache()
map.nodes[27207200] = DjaradinCache()
map.nodes[27605920] = DjaradinCache()
map.nodes[28305790] = DjaradinCache()
map.nodes[28306820] = DjaradinCache()
map.nodes[28906040] = DjaradinCache()
map.nodes[29407230] = DjaradinCache()
map.nodes[30105870] = DjaradinCache()
map.nodes[30807080] = DjaradinCache()
map.nodes[32306540] = DjaradinCache()
map.nodes[34306250] = DjaradinCache()
map.nodes[34506660] = DjaradinCache()
map.nodes[35506090] = DjaradinCache()
map.nodes[39205520] = DjaradinCache()
map.nodes[40705470] = DjaradinCache()
map.nodes[42805390] = DjaradinCache()
map.nodes[45405630] = DjaradinCache()
map.nodes[45805410] = DjaradinCache()
map.nodes[63203080] = DjaradinCache()
map.nodes[63203460] = DjaradinCache()
map.nodes[64502950] = DjaradinCache()
map.nodes[64602590] = DjaradinCache()
map.nodes[65602570] = DjaradinCache()
map.nodes[65803510] = DjaradinCache()
map.nodes[66103770] = DjaradinCache()
map.nodes[70304550] = DjaradinCache()
map.nodes[71204470] = DjaradinCache()
map.nodes[71304680] = DjaradinCache()

-------------------------------------------------------------------------------
------------------------------ Magic-Bound Chest ------------------------------
-------------------------------------------------------------------------------

map.nodes[22527485] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[23809090] = MagicBoundChest({
    requires = {
        ns.requirement.Reputation(2507, 16, true),
        ns.requirement.Profession(186)
    },
    location = L['in_small_cave']
})
map.nodes[30504730] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({29335248, 30535144})}
})
map.nodes[36208570] = MagicBoundChest({
    location = L['in_small_cave'],
    pois = {POI({36728736})}
})
map.nodes[43706157] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({42955825})}
})
map.nodes[51701860] = MagicBoundChest()
map.nodes[55404500] = MagicBoundChest()
map.nodes[62907990] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[64304290] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({63824085})}
})
map.nodes[72206040] = MagicBoundChest({
    location = L['in_small_cave'],
    pois = {POI({71725871})}
})

-------------------------------------------------------------------------------
--------------------------- TUSKAAR TACKLEBOX ---------------------------------
-------------------------------------------------------------------------------

map.nodes[66376097] = TuskarrTacklebox()
map.nodes[67024947] = TuskarrTacklebox()
map.nodes[67655061] = TuskarrTacklebox()
map.nodes[68095314] = TuskarrTacklebox()
map.nodes[68224829] = TuskarrTacklebox()
map.nodes[68385973] = TuskarrTacklebox()
map.nodes[68556009] = TuskarrTacklebox()
map.nodes[68865102] = TuskarrTacklebox()
map.nodes[69275416] = TuskarrTacklebox()
map.nodes[69854803] = TuskarrTacklebox()
map.nodes[71784878] = TuskarrTacklebox()
map.nodes[72774668] = TuskarrTacklebox()
map.nodes[73744652] = TuskarrTacklebox()

-------------------------------------------------------------------------------
---------------------------------- REED CHEST ---------------------------------
-------------------------------------------------------------------------------

map.nodes[78504160] = ns.node.ReedChest()
map.nodes[79504040] = ns.node.ReedChest()
map.nodes[80704410] = ns.node.ReedChest()
map.nodes[82904390] = ns.node.ReedChest()

-------------------------------------------------------------------------------
------------------------------- SIMMERING CHEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[68006510] = ns.node.SimmeringChest()
map.nodes[68406240] = ns.node.SimmeringChest()
map.nodes[68406250] = ns.node.SimmeringChest()
map.nodes[69006370] = ns.node.SimmeringChest()
map.nodes[69606540] = ns.node.SimmeringChest()
map.nodes[69606550] = ns.node.SimmeringChest()

-------------------------------------------------------------------------------
------------------------------ FROSTBOUND CHEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[54808020] = ns.node.FrostboundChest()
map.nodes[55208110] = ns.node.FrostboundChest()
map.nodes[55608340] = ns.node.FrostboundChest()

-------------------------------------------------------------------------------
--------------------- TO ALL THE SQUIRRELS HIDDEN TIL NOW ---------------------
-------------------------------------------------------------------------------

map.nodes[76554827] = Squirrel({
    id = 189737,
    rewards = {Achievement({id = 16729, criteria = 1})}
}) -- Kelp Nibbler

map.nodes[65142863] = Squirrel({
    id = 192135,
    rewards = {Achievement({id = 16729, criteria = 2})}
}) -- Phoenix Hatchling

map.nodes[58387252] = Squirrel({
    id = 193756,
    rewards = {Achievement({id = 16729, criteria = 3})}
}) -- Docile Kit

-------------------------------------------------------------------------------
------------------------------ LET'S GET QUACKING -----------------------------
-------------------------------------------------------------------------------

-- weekly completion: 70872

local Quack = Class('Quack', Collectible, {
    label = '{npc:196744}',
    note = L['lets_get_quacking'],
    icon = 4048818,
    group = ns.groups.DUCKLINGS,
    rewards = {Achievement({id = 16409, criteria = {id = 1, qty = true}})}
})

map.nodes[80114287] = Quack({quest = 66196, rlabel = L['quack_week_1']}) -- A Quack For Help (Week 1)

map.nodes[80083989] = Quack({
    quest = 70877,
    rlabel = L['quack_week_2'],
    requires = {ns.requirement.Quest(66196)}
}) -- A Quack in Time (Week 2)

map.nodes[81594546] = Quack({
    quest = 70917,
    rlabel = L['quack_week_3'],
    requires = {ns.requirement.Quest(70877)}
}) -- A Shoulder to Quack On (Week 3)

map.nodes[79274279] = Quack({
    quest = 70918,
    rlabel = L['quack_week_4'],
    requires = {ns.requirement.Quest(70917)}
}) -- Quack for Your Life (Week 4)

map.nodes[82884258] = Quack({
    quest = 70919,
    rlabel = L['quack_week_5'],
    requires = {ns.requirement.Quest(70918)}
}) -- Quacking Out for a Hero (Week 5)

-------------------------------------------------------------------------------
------------------ SIEGE ON DRAGONBANE KEEP: CHISELED RECORD ------------------
-------------------------------------------------------------------------------

map.nodes[27836835] = Collectible({
    note = L['complaint_to_scalepiercer_note'],
    icon = 134455,
    group = ns.groups.CHISELED_RECORD,
    rewards = {Achievement({id = 16412, criteria = 55264})}
}) -- Complaint to Scalepiercer

map.nodes[28827244] = Collectible({
    note = L['wyrmeaters_recipe_note'],
    icon = 134455,
    group = ns.groups.CHISELED_RECORD,
    rewards = {Achievement({id = 16412, criteria = 55266})}
}) -- Wyrmeater's Recipe

map.nodes[24056927] = Collectible({
    note = L['grand_flames_journal_note'],
    icon = 134455,
    group = ns.groups.CHISELED_RECORD,
    rewards = {Achievement({id = 16412, criteria = 55265})}
}) -- The Grand Flame's Journal

-------------------------------------------------------------------------------
------------------- SIEGE ON DRAGONBANE KEEP: SNACK ATTACK --------------------
-------------------------------------------------------------------------------

map.nodes[30607820] = Collectible({
    id = 194922,
    icon = 134062,
    note = L['snack_attack_note'],
    group = ns.groups.SNACK_ATTACK,
    rewards = {
        Achievement({
            id = 16410,
            criteria = {id = 1, qty = true, suffix = L['snack_attack_suffix']}
        }) -- Siege on Dragonbane Keep: Snack Attack
    },
    pois = {
        POI({
            30007420, 30007580, 30007660, 30207480, 31007320, 31007500,
            31207180, 31207400, 31207600, 31207760, 31607300, 31607480,
            32207100, 32207380, 32407220
        }), -- Beef Snacks
        Path({
            30767844, 30967835, 31137792, 30907722, 30747648, 30677563,
            30647461, 30777415, 30897392, 31147346, 31387292, 31557246,
            31617199, 31687130, 31647047, 31497028
        }) -- Beef Path
    }
}) -- Beef

-------------------------------------------------------------------------------
--------------------------- THE DISGRUNTLED HUNTER ----------------------------
-------------------------------------------------------------------------------

local HemetNesingwaryJr = Class('HemetNesingwaryJr', Collectible, {
    id = 194590,
    icon = 236444,
    sublabel = L['hnj_sublabel'],
    group = ns.groups.HEMET_NESINGWARY_JR
}) -- Hemet Nesingwary Jr.

map.nodes[42008064] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55697})}
}) -- Northern Waking Shores Hunt

map.nodes[70746646] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55696})}
}) -- Eastern Waking Shores Hunt

map.nodes[24538913] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55695})}
}) -- Southern Waking Shores Hunt

-------------------------------------------------------------------------------
----------------------------- GRAND THEFT MAMMOTH -----------------------------
-------------------------------------------------------------------------------

local GrandTheftMammoth = Class('GrandTheftMammoth', Collectible, {
    id = 198155,
    icon = 4034836,
    note = L['grand_theft_mammoth_note'],
    group = ns.groups.GRAND_THEFT_MAMMOTH
}) -- Grand Theft Mammoth

map.nodes[37114454] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 1})},
    pois = {
        Path({
            37114454, 37304428, 37724379, 38324387, 38634443, 38724542,
            38604659, 38314739, 37984807, 38304899, 38715033, 38725121,
            39195245, 39695409, 39645503
        }), POI({39645503})
    }
}) -- Smoldering Perch Mammoth

map.nodes[33427207] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 2})},
    pois = {
        Path({
            33427207, 32927243, 32237211, 31907141, 31576948, 31306784,
            31326686, 31666629, 32166524, 32066331, 32416226, 34666166,
            36216104, 37975894, 38795789, 39625640, 39805555, 39645503
        }), POI({39645503})
    }
}) -- Burning Ascent Mammoth

map.nodes[66342446] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 3})},
    pois = {
        Path({
            66342446, 65652515, 65842653, 65292807, 65312966, 64683174,
            64413342, 62793431, 61293562, 60223642, 59163719, 57923722,
            56553689, 55273794, 53693837, 52363881, 51753947, 50803987,
            49783913, 48793830, 47933921, 47784202, 47414443, 46364585,
            46194805, 45314963, 44225076, 43305288, 43015435, 42435565,
            40995587, 39925518, 39645503
        }), POI({39645503})
    }
}) -- Scalecracker Keep Mammoth

map.nodes[23677143] = GrandTheftMammoth({
    rewards = {Achievement({id = 16493, criteria = 4})},
    pois = {
        Path({
            23677143, 24037183, 24417134, 24897059, 26077058, 27077077,
            27897123, 29037110, 29997004, 30246902, 30706754, 31666629,
            32166524, 32066331, 32416226, 34666166, 36216104, 37975894,
            38795789, 39625640, 39805555, 39645503
        }), POI({39645503})
    }
}) -- Dragonbane Keep Mammoth

-------------------------------------------------------------------------------
----------------------------- THAT'S PRETTY NEAT! -----------------------------
-------------------------------------------------------------------------------

map.nodes[42276935] = PrettyNeat({
    id = 192186,
    rewards = {Achievement({id = 16446, criteria = 55391})}
}) -- Territorial Axebeak

map.nodes[25675706] = PrettyNeat({
    id = 193291,
    note = L['pretty_neat_note_blazewing'],
    rewards = {Achievement({id = 16446, criteria = 55392})}
}) -- Apex Blazewing

nel.nodes[52408260] = PrettyNeat({
    id = 193291,
    rewards = {Achievement({id = 16446, criteria = 55392})}
}) -- Apex Blazewing

map.nodes[60204535 + 1] = PrettyNeat({
    id = 193217,
    isRare = true,
    mapID = map.id,
    rewards = {Achievement({id = 16446, criteria = 55387})},
    pois = {
        Path({
            47267713, 48927495, 50076925, 50996592, 51946323, 52556211,
            53726071, 54705959, 55135843, 55195735, 54725544, 53785350,
            52485131, 51054858, 49934614, 49384420, 49114158, 49643971,
            50543803, 52013559, 53703482, 55473549, 58333718, 59883845,
            60373937, 60524059, 60414206, 60204535, 59984844, 60105101,
            60435274, 61375479, 63175769, 64575919, 66316022, 67826035,
            68615989, 69305901, 69425829, 68855485, 68285247, 67565009,
            67344710, 67924499, 68794338, 69324289, 70294270, 71674307,
            72304359, 73174490, 73394565, 73214666, 72874714, 71474819,
            70444873, 69284969, 68655076, 68265244
        })
    }
}) -- Drakewing (node coords must be off by 00000001 from Rare)

map.nodes[33127632 + 1] = PrettyNeat({
    id = 193154,
    isRare = true,
    mapID = map.id,
    note = L['spawns_at_night'],
    rewards = {Achievement({id = 16446, criteria = 55394})}
}) -- Forgotten Gryphon (node coords must be off by 00000001 from Rare)

-------------------------------------------------------------------------------
-------------------------- ONE OF EVERYTHING, PLEASE --------------------------
-------------------------------------------------------------------------------

map.nodes[58406760] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

map.nodes[47178267] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

-------------------------------------------------------------------------------
---------------------------- ALL SIDES OF THE STORY ---------------------------
-------------------------------------------------------------------------------

map.nodes[76363308] = Collectible({
    label = '{npc:184452}',
    group = ns.groups.STORIES,
    icon = 4549126,
    quest = {67053, 70135}, -- needs to be checked
    questCount = true,
    faction = 'Alliance',
    note = L['all_sides_of_the_story_garrick_and_shuja_note'],
    rewards = {Achievement({id = 16406, criteria = 1})}
}) -- Captain Garrick & Shuja Grimaxe - Alliance

map.nodes[76733455] = Collectible({
    label = '{npc:184449}',
    group = ns.groups.STORIES,
    icon = 4549126,
    quest = {66110, 66111}, -- needs to be checked
    questCount = true,
    faction = 'Horde',
    note = L['all_sides_of_the_story_garrick_and_shuja_note'],
    rewards = {Achievement({id = 16406, criteria = 1})}
}) -- Captain Garrick & Shuja Grimaxe - Horde

map.nodes[58676778] = Collectible({
    label = '{npc:194801}',
    group = ns.groups.STORIES,
    icon = 4549126,
    quest = {70239, 70240, 70241, 70242, 70708},
    questCount = true,
    note = L['all_sides_of_the_story_duroz_and_kolgar_note'],
    rewards = {Achievement({id = 16406, criteria = 55246})},
    pois = {POI({57676697, 56826448})}
}) -- Duroz & Kolgar

map.nodes[16176261] = Collectible({
    label = '{npc:196214}',
    group = ns.groups.STORIES,
    icon = 4549126,
    quest = {
        -- 70779, Weekly (Targin's Tales) (not need count this one.)
        -- Week 0: How did you lose your eyesight? (not need count this one.)
        -- Week 0: Why aren't you with the other djaradin? (not need count this one.)
        70767, -- Week 1: Tale of the Outsider
        70770, -- Week 2: Tale of the Elders
        70772, -- Week 3: Tale of the Warlord
        70774, -- Week 4: Tale of the Slumbering
        70776, -- Week 5: The Magma Pact
        70777 -- Week 6: Tale of the Weakling
    },
    questCount = true,
    note = L['all_sides_of_the_story_tarjin_note'],
    rewards = {Achievement({id = 16406, criteria = 55244})}
}) -- Tarjin the Blind

map.nodes[57856680] = Collectible({
    label = '{npc:194076}',
    group = ns.groups.STORIES,
    icon = 4549126,
    quest = {
        70132, 70206, 70543, 70544, 70217, 70546, 70547, 70219, 70548, 70223,
        70134, 70268
    },
    questCount = true,
    note = L['all_sides_of_the_story_veritistrasz_note'],
    rewards = {Achievement({id = 16406, criteria = 55245})},
    pois = {
        POI({27176089, 23236049}),
        Path(
            {
                23236049, 23516024, 23615935, 24725857, 25175881, 26055968,
                27176089
            })
    }
}) -- Veritistrasz

-------------------------------------------------------------------------------
-------------------------- MANY BOXES, MANY ROCKSES ---------------------------
-------------------------------------------------------------------------------

map.nodes[57505870] = Collectible({
    label = L['box_of_rocks_label'],
    group = ns.groups.MANY_BOXES,
    note = L['box_of_rocks_note'],
    icon = 132762,
    rewards = {Achievement({id = 18559, criteria = {id = 1, qty = true}})},
    pois = {
        POI({
            20004000, 23405850, 24605550, 26005530, 27605920, 28305780,
            28605000, 29206060, 29804740, 30005910, 30504930, 32005870,
            34304810, 35004530, 35005060, 35606840, 39305500, 42403900,
            42806740, 42806750, 45107320, 51603610, 52803540, 53403430,
            53503440, 58805470, 62305040, 68205590, 70004530, 73703750,
            74503720, 75403400, 75503410, 78204290, 79204530, 79604380
        })
    }
}) -- Many Boxes, Many Rockses

-------------------------------------------------------------------------------
------------------------------ A LEGENDARY ALBUM ------------------------------
-------------------------------------------------------------------------------

map.nodes[68535429] = LegendaryCharacter({
    id = 82746,
    rewards = {Achievement({id = 16570, criteria = 55758})}
}) -- Abu'Gar

map.nodes[53866146] = LegendaryCharacter({
    id = 56133,
    rewards = {Achievement({id = 16570, criteria = 55759})}
}) -- Chen Stormstout

-------------------------------------------------------------------------------
----------------------------- DRAGON ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[79403540] = Safari({
    id = 193024,
    rewards = {Achievement({id = 16519, criteria = 55645}), Pet({id = 3367})},
    pois = {
        POI({
            58603100, 58603460, 59803260, 65003000, 66003160, 73203360,
            74403360, 74603420, 75603560, 75803540, 79403540, 79603560,
            83803460, 84403600
        })
    }
}) -- Emberling

map.nodes[41006180] = Safari({
    id = 189153,
    rewards = {Achievement({id = 16519, criteria = 55646}), Pet({id = 3313})}
}) -- Grassland Stomper

map.nodes[50803100] = Safari({
    id = 189121,
    rewards = {Achievement({id = 16519, criteria = 55648}), Pet({id = 3295})},
    pois = {
        POI({
            41008540, 41008560, 49606800, 50803100, 51202940, 51202960,
            51403160, 53403040, 53403060, 53603040, 53603060, 60407900,
            60608300, 60807800, 61007860
        })
    }
}) -- Igneoid

map.nodes[72804440] = Safari({
    id = 189131,
    rewards = {Achievement({id = 16519, criteria = 55649}), Pet({id = 3300})},
    pois = {
        POI({
            16808640, 17008660, 17009160, 22608440, 24008140, 27008060,
            28808040, 54005220, 55004400, 55605700, 55605760, 72804440,
            72804460, 73804180, 76405040, 76805120, 77805240, 78205100,
            79004240, 79004260, 79005040, 79005060, 79804960, 80004940
        })
    }
}) -- Ironbeak Duck

map.nodes[66803820] = Safari({
    id = 193000,
    rewards = {Achievement({id = 16519, criteria = 55650}), Pet({id = 3366})},
    pois = {
        POI({
            55602040, 55602060, 55602440, 57002240, 57002260, 57202440,
            57202480, 57602280, 61003460, 63802860, 64003120, 64003240,
            64003260, 64802940, 65003240, 66003080, 66803820, 67803660,
            68403600, 69006260, 69806340, 73003320, 74003480, 74603480,
            74803660, 80603580
        })
    }
}) -- Kindlet

map.nodes[60603760] = Safari({
    id = 189094,
    rewards = {Achievement({id = 16519, criteria = 55651}), Pet({id = 3273})},
    pois = {
        POI({
            50403280, 54403380, 54603380, 55003320, 55803300, 59803700,
            60603760, 61203660, 67403720, 68203980, 69806420, 69806540,
            69806560, 69806760, 77002580, 77002700, 77202920, 77403020,
            78402640, 78402660, 79403500, 80003560, 80403520, 80803540,
            80803560, 83403300, 83603300, 84203580
        })
    }
}) -- Magma Slug

map.nodes[17208740] = Safari({
    id = 189122,
    rewards = {Achievement({id = 16519, criteria = 55652}), Pet({id = 3296})},
    pois = {
        POI({
            16808780, 17008880, 17208740, 17808700, 23208420, 28208800,
            28609000, 37808720, 40209000, 44008620, 45407640, 45607640,
            46202720, 46607940, 46607960, 47002600, 47602600, 47802500,
            48407500, 48607500, 49207260, 51606240, 53406020, 53805460,
            54205940, 54205960, 54605700, 59804340, 60004360, 60405140,
            60604180, 62005480, 64005900, 64805920, 66204260, 66404240,
            67205080, 68805100, 69005820, 69204300, 69405040, 69604820,
            69605740, 69605760, 70204220
        })
    }
}) -- Palamanther

map.nodes[77203200] = Safari({
    id = 189093,
    rewards = {Achievement({id = 16519, criteria = 55654}), Pet({id = 3272})},
    pois = {
        POI({
            66004020, 69204160, 71004080, 73005500, 73205340, 73604140,
            74005300, 74005560, 76003320, 76003500, 76803400, 77203200,
            77403080, 77804900, 78003340, 78403360, 78404980, 78604920,
            79203480, 81803140, 82203160, 83403600
        })
    }
}) -- Pricklefury Hare

map.nodes[54005700] = Safari({
    id = 189103,
    rewards = {Achievement({id = 16519, criteria = 55657}), Pet({id = 3281})},
    pois = {
        POI({
            14209000, 14809020, 16209120, 16809000, 18608920, 25607940,
            28208560, 37008640, 37008660, 44402780, 44602780, 44602880,
            46002600, 47602940, 47602960, 48202440, 48804240, 49004260,
            49604380, 50403880, 50606560, 50806540, 51604960, 53003620,
            53405960, 53605960, 53803800, 54003380, 54005700, 54205820,
            55003640, 55805860, 60404800, 61003900, 62205580, 64004360,
            64204500, 68405020, 68405200, 68405980, 68605180, 68805980
        })
    }
}) -- Scruffy Ottuk

map.nodes[39407880] = Safari({
    id = 189102,
    note = L['shyfly_note'],
    rewards = {Achievement({id = 16519, criteria = 55658}), Pet({id = 3280})},
    pois = {
        POI({
            37607880, 38008040, 38608140, 38608160, 39407700, 39407880,
            39607700, 40208560, 40407960, 40808120, 40808460, 41607720,
            41608180, 42207960, 43207940
        })
    }
}) -- Shyfly

map.nodes[58207740] = Safari({
    id = 189107,
    rewards = {Achievement({id = 16519, criteria = 55659}), Pet({id = 3283})},
    pois = {
        POI({
            53008120, 53608040, 54208100, 54408240, 54408260, 55007940,
            55007960, 56008300, 56208020, 57008020, 57008140, 57208340,
            57208360, 58007400, 58207740, 58207840, 58207860, 58807520,
            59207980, 59407560, 59607560, 59807760, 60407700, 60608340,
            60608360, 61008080
        })
    }
}) -- Snowlemental

map.nodes[52003940] = Safari({
    id = 189104,
    rewards = {Achievement({id = 16519, criteria = 55661}), Pet({id = 3282})},
    pois = {
        POI({
            23009380, 25009280, 25208880, 26608620, 37608140, 37608160,
            41608240, 41608260, 43008680, 43207980, 46407720, 46607720,
            47207800, 49007540, 50206820, 50206880, 50603520, 51006480,
            51207360, 51804860, 52003940, 52007320, 52806020, 53205740,
            53205760, 53405360, 54005760, 54206200, 54206260, 55005540,
            55006140, 55405600, 55605640, 55606820, 55606860, 56804480,
            56807120, 57207160, 57405300, 58204700, 58604660, 59005300,
            59806420, 59806460, 60606580, 63806880, 64606700, 65806560,
            66006080, 66006340, 66006360, 66806280, 67606500, 68807280,
            69407240, 71805640, 72205700
        })
    }
}) -- Swoglet

map.nodes[69004720] = Safari({
    id = 191323,
    rewards = {Achievement({id = 16519, criteria = 55666}), Pet({id = 3336})},
    pois = {
        POI({
            18209620, 19408820, 19608740, 20008760, 20408960, 24009480,
            25609240, 25609260, 27608620, 32207980, 34207920, 35207860,
            37008520, 48803880, 49603900, 50204000, 58004900, 60804160,
            61604380, 61804240, 61804260, 62603800, 62804360, 62804800,
            63204120, 63805180, 65203940, 67204080, 67604180, 67604340,
            67607320, 68004740, 68804780, 69004720
        })
    }
}) -- Vorquin Runt

map.nodes[79804940] = Safari({
    id = 189136,
    rewards = {Achievement({id = 16519, criteria = 55667}), Pet({id = 3301})},
    pois = {
        POI({
            57007100, 60405080, 68206080, 75004820, 79804940, 80004960,
            83004540, 83004560
        })
    }
}) -- Wild Duckling

-------------------------------------------------------------------------------
----------------------- ELEMENTAL STORMS: WAKING SHORES -----------------------
-------------------------------------------------------------------------------

map.nodes[29735398] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'], L['elemental_storm_slagmire']),
    mapID = map.id,
    areaPOIs = {7253, 7254, 7255, 7256}
}) -- Elemental Storm: Slagmire

map.nodes[64712635] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'],
        L['elemental_storm_scalecracker_keep']),
    mapID = map.id,
    areaPOIs = {7257, 7258, 7259, 7260}
}) -- Elemental Storm: Scalecracker Keep

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[54705860] = ElusiveCreature({
    label = '{npc:195492}',
    quest = 74191,
    rewards = {
        Item({item = 193224}), -- Lustrous Scaled Hide
        Item({item = 193215}), -- Adamant Scales
        Item({item = 193252}), -- Salamanther Scales
        Achievement({id = 18833, criteria = 61477}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Deepwater Salamanther

map.nodes[45007700] = ElusiveCreature({
    label = '{npc:195509}',
    quest = 74190,
    rewards = {
        Item({item = 193224}), -- Lustrous Scaled Hide
        Item({item = 193215}), -- Adamant Scales
        Item({item = 193259}), -- Flawless Proto Dragon Scale
        Achievement({id = 18833, criteria = 61478}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Proto Skyterror

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[25268855] = GrandHunt({
    mapID = map.id,
    areaPOI = 7091,
    criteria = 55680
}) -- Southern Waking Shores Hunt

map.nodes[69726838] = GrandHunt({
    mapID = map.id,
    areaPOI = 7092,
    criteria = 55681
}) -- Eastern Waking Shores Hunt

map.nodes[42788061] = GrandHunt({
    mapID = map.id,
    areaPOI = 7093,
    criteria = 55682
}) -- Northern Waking Shores Hunt

-------------------------------------------------------------------------------
-------------------------- SIEGE ON DRAGONBANE KEEP ---------------------------
-------------------------------------------------------------------------------

local SIEGE_ON_DRAGONBANE_KEEP_AREA_POIS = {
    [7267] = 'Before Siege',
    [7104] = 'During Siege',
    [7413] = 'After Siege'
}

local SIEGE_ON_DRAGONBANE_KEEP_REWARDS = {
    Achievement({id = 16411}), -- Siege on Dragonbane Keep: Home Sweet Home
    Toy({item = 200116}), -- Everlasting Horn of Lavaswimming
    ns.reward.Spacer(), Item({item = 192055}) -- Dragon Isles Artifact
}

map.nodes[30287005] = Collectible({
    label = L['dragonbane_siege_label'],
    icon = 3753264,
    areaPOIs = {7104, 7267, 7413},
    mapID = map.id,
    group = ns.groups.DRAGONBANE_SIEGE,
    requires = ns.requirement.Reputation(2510, 5, true), -- Valdrakken Accord
    rewards = SIEGE_ON_DRAGONBANE_KEEP_REWARDS,
    IsEnabled = function(self)
        local activePOIs = C_AreaPoiInfo.GetAreaPOIForMap(self.mapID)
        local possiblePOIs = self.areaPOIs
        for a = 1, #activePOIs do
            for p = 1, #possiblePOIs do
                if activePOIs[a] == possiblePOIs[p] then
                    return false
                end
            end
        end
        return true
    end
}) -- Siege on Dragonbane Keep

hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if self and self.areaPoiID then
        local mapID = self:GetMap().mapID
        local group = ns.groups.DRAGONBANE_SIEGE
        if SIEGE_ON_DRAGONBANE_KEEP_AREA_POIS[self.areaPoiID] then
            if group:GetDisplay(mapID) then
                if ns:GetOpt('show_loot') then
                    GameTooltip:AddLine(' ')
                    for i, reward in ipairs(SIEGE_ON_DRAGONBANE_KEEP_REWARDS) do
                        if reward:IsEnabled() then
                            reward:Render(GameTooltip)
                        end
                    end
                end
                GameTooltip:Show()
            end
        end
    end
end)

-------------------------------------------------------------------------------
--------------------- ANCIENT STONES OF THE WAKING SHORE ----------------------
-------------------------------------------------------------------------------

map.nodes[74165718] = AncientStone({
    rewards = {Achievement({id = 17561, criteria = 58804})}
}) -- So Close. So Far

map.nodes[24415338] = AncientStone({
    note = L['obsidian_throne_rare_note'],
    rewards = {Achievement({id = 17561, criteria = 58805})},
    pois = {POI({27146085})} -- Entrance
}) -- One Small Part

map.nodes[26185633] = AncientStone({
    rewards = {Achievement({id = 17561, criteria = 58806})}
}) -- Neltharus Stands

map.nodes[60716697] = AncientStone({
    rewards = {Achievement({id = 17561, criteria = 58807})}
}) -- Welcoming the First

map.nodes[51602005] = AncientStone({
    rewards = {Achievement({id = 17561, criteria = 58808})}
}) -- Learn and Grow

-------------------------------------------------------------------------------
-------------------------------- ZSKERA VAULTS --------------------------------
-------------------------------------------------------------------------------

------------------------ RENEWED PROTO-DRAKE: ANTLERS -------------------------

map.nodes[34624668] = Collectible({
    label = L['broken_waygate_label'],
    icon = 1529267,
    quest = 75047,
    location = L['in_cave'],
    note = L['neltharions_toolkit_note'],
    group = ns.groups.ZSKERA_VAULTS,
    requires = ns.requirement.Quest(73159), -- Exploring Our Past
    rewards = {
        DC.RenewedProtoDrake.Antlers -- Renewed Proto-Drake: Antlers
    },
    pois = {POI({35514794})} -- Entrance
}) -- Broken Waygate

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

local function status(id, itemsNeed)
    local itemsHave = GetItemCount(id, true);
    return ns.PlayerHasItem(id, itemsNeed) and
               ns.status.Green(itemsHave .. '/' .. itemsNeed) or
               ns.status.Red(itemsHave .. '/' .. itemsNeed)
end

-------------------------- MOUNT: SCRAPPY WORLDSNAIL --------------------------

map.nodes[34734672] = Collectible({
    id = 193310,
    icon = 3996706,
    note = L['slumbering_worldsnail_note1'] .. '\n\n' ..
        L['slumbering_worldsnail_note2'],
    requires = {
        ns.requirement.Quest(65691), -- The Shadow of His Wings
        ns.requirement.Spell(386848) -- Worldbreaker Membership
    },
    rewards = {
        Mount({item = 192786, id = 1629}) -- Scrappy Worldsnail
    },
    pois = {
        POI({32205240}), -- Igys the Believer
        POI({35824797}) -- Cave Entrance
    }
}) -- Scrappy Worldsnail

------------------------------ MOUNT: MAGMASHELL ------------------------------

map.nodes[71102510] = Collectible({
    id = 199010,
    icon = 3996704,
    note = L['magmashell_note'],
    requires = ns.requirement.Item(201883), -- Empty Magma Shell
    rewards = {
        Mount({item = 192777, id = 1469}) -- Magmashell
    },
    pois = {
        POI({21806680, 22406860, 22606880}) -- Lavaslurper locations
    }
}) -- Magmashell

--------------------------------- MOUNT: OTTO ---------------------------------

local Otto = Class('Otto', Collectible, {
    id = 199563,
    icon = 4093847,
    requires = {
        ns.requirement.Reputation(2511, 7, true), -- Iskaara Tuskarr
        ns.requirement.Toy(202042), -- Aquatic Shades
        ns.requirement.Item(202069) -- Overflowing Fish Barrel
    },
    rewards = {
        Mount({item = 198870, id = 1656}) -- Otto
    },
    pois = {POI({19603650})}
}) -- Otto

function Otto.getters:note()
    local note = ''
    note = note .. ItemStatus(199338, 75, L['otto_note_start1'], false)
    note = note .. '\n\n' .. L['otto_note_start2']
    note = note .. ItemStatus(202072, 100, L['otto_note_item1']) -- Frigid Floe Fish
    note = note .. ItemStatus(202073, 25, L['otto_note_item2']) -- Calamitous Carp
    note = note .. ItemStatus(202074, 1, L['otto_note_item3']) -- Kingfin, the Wise Whiskerfish
    return note .. '\n\n' .. L['otto_note_end']
end

map.nodes[20333977] = Otto()

--------------------------- MOUNT: LOYAL MAGMAMMOTH ---------------------------

local LOYAL_MAGMAMMOTH_REWARDS = {
    Achievement({id = 16736}), -- Grand Theft Mammoth
    Mount({item = 192601, id = 1612}) -- Loyal Magmammoth
}

local Friendship = Class('Friendship', ns.requirement.Requirement)

function Friendship:Initialize(id, level, label)
    self.id, self.level, self.label = id, level, label
end

function Friendship:GetText()
    local name = GetFactionInfoByID(self.id)
    local level = self.label
    return string.format(name .. ' (' .. level .. ')')
end

function Friendship:IsMet()
    local standingID = select(3, GetFactionInfoByID(self.id))
    return standingID >= self.level
end

-- STEP ONE: ------------------------------------------------------------------

local WrathionQuartermaster = Class('WrathionQuartermaster', Collectible, {
    icon = 3778175,
    requires = Friendship(2517, 8, L['loyal_magmammoth_true_friend']), -- Wrathion (True Friend)
    note = L['loyal_magmammoth_wrathion_quatermaster_note'],
    fgroup = 'loyal_magmammoth_fgroup',
    rlabel = ns.status.Gray(L['loyal_magmammoth_step_1']),
    rewards = LOYAL_MAGMAMMOTH_REWARDS
}) -- Sturdy Obsidian Glasses

map.nodes[26606240] = WrathionQuartermaster({id = 199020}) -- Atticus Belle <Assistant Quartermaster> (Sturdy Obsidian Glasses)
map.nodes[25205580] = WrathionQuartermaster({id = 188625}) -- Lorena Belle <Wrathion's Quartermaster> (Sturdy Obsidian Glasses)

local SabellianQuartermaster = Class('SabellianQuartermaster', Collectible, {
    icon = 4237704,
    requires = Friendship(2518, 8, L['loyal_magmammoth_true_friend']), -- Sabellian (True Friend)
    note = L['loyal_magmammoth_sabellian_quatermaster_note'],
    fgroup = 'loyal_magmammoth_fgroup',
    rlabel = ns.status.Gray(L['loyal_magmammoth_step_1']),
    rewards = LOYAL_MAGMAMMOTH_REWARDS
}) -- Netherforged Lavaproof Boots

map.nodes[24605680] = SabellianQuartermaster({id = 188623}) -- Samia Inkling <Sabellian's Quartermaster> (Netherforged Lavaproof Boots)
map.nodes[27605620] = SabellianQuartermaster({id = 199036}) -- Xaldrass <Assistant Quartermaster> (Netherforged Lavaproof Boots)

-- STEP TWO: ------------------------------------------------------------------

map.nodes[26405540] = Collectible({
    id = 191135,
    icon = 4034835,
    note = L['loyal_magmammoth_harness_note'],
    fgroup = 'loyal_magmammoth_fgroup',
    rlabel = ns.status.Gray(L['loyal_magmammoth_step_2']),
    requires = {
        ns.requirement.Item(201840), -- Sturdy Obsidian Glasses
        ns.requirement.Item(201839) -- Netherforged Lavaproof Boots
    },
    rewards = LOYAL_MAGMAMMOTH_REWARDS
}) -- Yries Lightfingers <Second-Hand Supplies> (Magmammoth Harness)

-- STEP THREE: ----------------------------------------------------------------

local TameMagmammoth = Class('TameMagmammoth', Collectible, {
    id = 198150,
    icon = 4034835,
    note = L['loyal_magmammoth_taming_note'],
    fgroup = 'loyal_magmammoth_fgroup',
    rlabel = ns.status.Gray(L['loyal_magmammoth_step_3']),
    requires = ns.requirement.Item(201837), -- Magmammoth Harness
    rewards = LOYAL_MAGMAMMOTH_REWARDS
}) -- Tame Magmammoth

map.nodes[33427208] = TameMagmammoth() -- Burning Ascent
map.nodes[23667144] = TameMagmammoth() -- Dragonbane Keep
map.nodes[66342447] = TameMagmammoth() -- Scalecracker Keep
map.nodes[37104453] = TameMagmammoth() -- Smoldering Perch

------------------------------- PHOENIX WISHWING ------------------------------

local wishwing = Class('wishwing', Collectible, {
    label = '{item:193373}',
    icon = 4007139,
    rewards = {
        Pet({item = 193373, id = 3292}) -- Phoenix Wishwing
    },
    pois = {
        POI({25585433, color = 'Green'}), -- Griftah
        Path({
            color = 'Red',
            points = {
                ns.poi.Circle({origin = 42305600, radius = 1.5, segments = 16})
            }
        }), -- Ash Feather
        Path({
            color = 'Yellow',
            points = {ns.poi.Circle({origin = 65302940, radius = 3})}
        }), -- Phoenixes
        Path({
            color = 'Yellow',
            points = {ns.poi.Circle({origin = 36706200, radius = 5})}
        }), -- Phoenixes
        Path({
            color = 'Yellow',
            points = {ns.poi.Circle({origin = 32305450, radius = 2})}
        }) -- Phoenixes
    }
})

function wishwing.getters:note()
    local note = L['phoenix_wishwing_note'] .. '\n\n'
    -- LuaFormatter off
    note = note .. format(L['phoenix_wishwing_talisman'], status(199203, 1)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_phoenix_ember'], status(199099, 1)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_sacred_ash'], status(199097, 10)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_inert_ash'], status(199092, 20)) .. '\n\n\n'
    note = note .. format(L['phoenix_wishwing_smoldering_ash'], status(199080, 15)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_ash_feather'], status(202062, 20))
    -- LuaFormatter on
    return note
end

local wishwing_inert_ash = Class('wishwing_intert_ash', Collectible, {
    label = '{item:199092}',
    icon = 133849,
    rewards = {
        Pet({item = 193373, id = 3292}) -- Phoenix Wishwing
    },
    pois = {
        Path({
            color = 'Gray',
            points = {ns.poi.Circle({origin = 50005000, radius = 5})}
        }) -- Inert Phoenix Ash
    }
})

function wishwing_inert_ash.getters:note()
    local note = L['phoenix_wishwing_info'] .. '\n\n'
    return note .. format(L['phoenix_wishwing_inert_ash'], status(199092, 20))
end

local wishwing_sacred_ash = Class('wishwing_sacred_ash', Collectible, {
    label = '{item:199097}',
    icon = 1003597,
    fgroup = 'wishwing_sacred_ash',
    rewards = {
        Pet({item = 193373, id = 3292}) -- Phoenix Wishwing
    },
    pois = {POI({52005040, color = 'Gold'})}
})

function wishwing_sacred_ash.getters:note()
    local note = L['phoenix_wishwing_info'] .. '\n\n'
    -- LuaFormatter off
    note = note .. format(L['phoenix_wishwing_talisman'], status(199203, 1)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_phoenix_ember'], status(199099, 1)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_sacred_ash'], status(199097, 10)) .. '\n\n'
    note = note .. format(L['phoenix_wishwing_inert_ash'], status(199092, 20))
    -- LuaFormatter on
    return note
end

map.nodes[16176260] = wishwing()
local ungoro = Map({id = 78})
ungoro.nodes[50005000] = wishwing_inert_ash()
local spires = Map({id = 542})
spires.nodes[37901792] = wishwing_sacred_ash()
spires.nodes[42081586] = wishwing_sacred_ash()
spires.nodes[44001372] = wishwing_sacred_ash()
spires.nodes[44552334] = wishwing_sacred_ash()
spires.nodes[45101500] = wishwing_sacred_ash()
spires.nodes[52063135] = wishwing_sacred_ash()
spires.nodes[52174997] = wishwing_sacred_ash()
spires.nodes[52204982] = wishwing_sacred_ash()
spires.nodes[61904230] = wishwing_sacred_ash()
spires.nodes[68724449] = wishwing_sacred_ash()
spires.nodes[68764450] = wishwing_sacred_ash()

---------------- ITEM: SCHEMATIC: TINKER: BREATH OF NELTHARION ----------------

nel.nodes[57407880] = PT.Engineering({
    id = 199229,
    rewards = {Recipe({item = 199229, profession = 202})}
}) -- Schematic: Tinker: Breath of Neltharion

--------------------------- PET: BUGBITER TORTOISE ----------------------------

map.nodes[22809500] = Collectible({
    id = 187077,
    icon = 1738683,
    note = L['bugbiter_tortoise_note'],
    rewards = {Pet({item = 202085, id = 3360})},
    pois = {
        -- LuaFormatter off

        -- Petrified Dragon Egg
        POI({color = 'Red', points = {33417715, 34008900, 33318719, 21709731, 25469577, 36009000, 40959341, 23259091, 25649590, 36069197}}),
        Path({color = 'Red', points = {33377709, 33217658, 33037610, 32857559, 32707504, 32737448, 32747391}}),
        Path({color = 'Red', points = {33328713, 33598665, 33898617, 34228576, 34768579, 35178549, 35448507, 35758467, 36188441}}),
        -- Eroded Fossil
        POI({color = 'Green', points = {21569214, 26079456, 24709110, 21779447, 23349420}})

        -- LuaFormatter on
    }
}) -- Pet: Bugbiter Tortoise

---------------------------- PET: MOTE OF NASZ'URO ----------------------------

map.nodes[22848841] = ns.node.MoteOfNaszuro({
    quest = 76184,
    note = L['naszuro_apex_canopy']
}) -- Apex Canopy

map.nodes[24155556] = ns.node.MoteOfNaszuro({
    quest = 76185,
    note = L['naszuro_obsidian_throne']
}) -- Obsidian Throne

map.nodes[58506765] = ns.node.MoteOfNaszuro({
    quest = 76186,
    note = L['naszuro_ruby_lifeshrine']
}) -- Ruby Lifeshrine

map.nodes[63894481] = ns.node.MoteOfNaszuro({
    quest = 76187,
    note = L['naszuro_dragonheart_outpost']
}) -- Dragonheart Outpost

----------------------------- MISCELLANEOUS NPCs ------------------------------

map.nodes[47128259] = NPC({
    id = 189226,
    icon = 454065,
    note = L['cataloger_jakes_note']
}) -- Cataloger Jakes (Dragonscale Expedition Reputation)

---------------------------- SPECIAL WORKING TABLE-----------------------------

map.nodes[24556089] = ns.node.Node({
    label = L['earthwarders_forge_label'],
    icon = 4622280,
    note = L['earthwarders_forge_note'],
    IsEnabled = function(self) -- Blacksmithing
        if not ns.PlayerHasProfession(164) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- The Earth-Warder's Forge

-------------------------------- EXPLORER PEPE --------------------------------

map.nodes[47308270] = Collectible({
    label = L['explorer_pepe_label'],
    note = L['explorer_pepe_note'],
    icon = 1044996,
    rewards = {
        Item({item = 213202, quest = 79550}) -- A Tiny Explorer's Hat
    }
}) -- Explorer Pepe

-- STOP: DO NOT ADD NEW NODES HERE UNLESS THEY BELONG IN MISCELLANEOUS
