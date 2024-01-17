-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
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
local Currency = ns.reward.Currency
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus
local QuestStatus = ns.tooltip.QuestStatus

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2024, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[53013563] = Rare({
    id = 194270,
    vignette = 5267,
    quest = 73866,
    rewards = {
        Achievement({id = 16678, criteria = 56099}) -- Adventurer of The Azure Span
    }
}) -- Arcane Devourer

map.nodes[55823132] = Rare({
    id = 194210,
    vignette = nil,
    quest = 73867,
    rewards = {
        Achievement({id = 16678, criteria = 56105}) -- Adventurer of The Azure Span
    },
    pois = {
        Path({
            49173845, 49533814, 50533616, 51263539, 51733489, 51983461,
            52423353, 53223285, 55823132, 56433052, 56963022, 57373056,
            57943094, 58233093, 59133081, 59423098, 61263135
        })
    }
}) -- Azure Pathfinder

map.nodes[73032680] = Rare({
    id = 193116,
    vignette = 5189,
    quest = 73868,
    rewards = {
        Achievement({id = 16678, criteria = 56106}), -- Adventurer of The Azure Span
        Transmog({item = 200253, slot = L['dagger']}), -- Snowspring Incanter's Knife
        Transmog({item = 200254, slot = L['mail']}) -- Totemic Cinch
    }
}) -- Beogoka

map.nodes[13584855] = Rare({
    id = 197557,
    vignette = nil,
    quest = 74097,
    interval = ns.Intervals.FeastInterval({id = 0}),
    rewards = {
        Achievement({id = 16678, criteria = 55381}), -- Adventurer of The Azure Span
        Achievement({id = 16444}), -- Leftovers' Revenge
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        DC.HighlandDrake.ToothyMouth, DC.RenewedProtoDrake.ImpalerHorns
    }
}) -- Bisquius

map.nodes[13432270] = Rare({
    id = 193178,
    vignette = 5184,
    quest = 74058,
    location = L['in_small_cave'],
    note = L['blightfur_note'],
    rewards = {
        Achievement({id = 16678, criteria = 56122}), -- Adventurer of The Azure Span
        Transmog({item = 200127, slot = L['1h_sword']}), -- Gold-Alloy Blade
        Transmog({item = 200256, slot = L['offhand']}), -- Darkmaul Soul Horn
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        Transmog({item = 200310, slot = L['cloak']}), -- Stole of the Iron Phantom
        Transmog({item = 200432, slot = L['cloth']}), -- Rotguard Cowl
        DC.RenewedProtoDrake.FinnedTail, DC.CliffsideWylderdrake.BlackHair,
        DC.CliffsideWylderdrake.DualHornedChin,
        DC.CliffsideWylderdrake.HornedJaw, DC.RenewedProtoDrake.WhiteHorns,
        DC.CliffsideWylderdrake.Ears, DC.HighlandDrake.SpikedClubTail,
        Toy({item = 200178}) -- Infected Ichor
    }
}) -- Blightfur

map.nodes[14053096] = Rare({
    id = 197353,
    vignette = {5414, 5891},
    quest = 73985,
    fgroup = 'brackenhide',
    interval = ns.Intervals.BrackenhideInterval({id = 1}),
    rewards = {
        Achievement({id = 16678, criteria = 56126}), -- Adventurer of The Azure Span
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
}) -- Blisterhide

map.nodes[16622798] = Rare({
    id = 193259,
    vignette = nil,
    quest = 73870,
    rewards = {
        Achievement({id = 16678, criteria = 56108}), -- Adventurer of The Azure Span
        Achievement({id = 16446, criteria = 55397, note = L['pretty_neat_note']}),
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
        DC.WindborneVelocidrake.FinnedEars, DC.HighlandDrake.ManedHead,
        DC.CliffsideWylderdrake.HeadMane
    }
}) -- Blue Terror

map.nodes[08944852] = Rare({
    id = 194392,
    vignette = 5269,
    quest = 73871,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 16678, criteria = 56103}), -- Adventurer of The Azure Span
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200151, slot = L['1h_sword']}), -- Seamist Blade
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200435, slot = L['cloth']}), -- Brackish Breeches
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead,
        DC.WindborneVelocidrake.LargeHeadFin, DC.CliffsideWylderdrake.FinnedNeck
    },
    pois = {POI({08584883})}
}) -- Brackle

map.nodes[27214490] = Rare({
    id = 193157,
    vignette = nil,
    quest = 73873,
    rewards = {
        Achievement({id = 16678, criteria = 56098}), -- Adventurer of The Azure Span
        Transmog({item = 200302, slot = L['1h_sword']}), -- Magmaforged Scimitar
        Transmog({item = 200169, slot = L['1h_mace']}), -- Protector's Molten Cudgel
        Transmog({item = 200757, slot = L['plate']}), -- Qalashi War-Helm
        DC.CliffsideWylderdrake.BluntSpikedTail,
        DC.CliffsideWylderdrake.HornedNose
    },
    pois = {
        Path({
            26834541, 26554557, 26314548, 25854568, 25844609, 26214609,
            26644613, 26834619, 26834640, 27044644, 27144627, 27374654,
            27604656, 27724633, 27614620, 27654565, 27414532, 27214490, 26834541
        })
    }
}) -- Dragonhunter Gorund

map.nodes[50043631] = Rare({
    id = 193691,
    vignette = 5475,
    quest = 72254,
    note = L['fisherman_tinnak_note'],
    requires = {
        ns.requirement.Reputation(2511, 7, true) -- Iskaara Tuskarr
    },
    rewards = {
        Achievement({id = 16678, criteria = 56115}), -- Adventurer of The Azure Span
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200256, slot = L['offhand']}), -- Darkmaul Soul Horn
        Transmog({item = 200310, slot = L['cloak']}), -- Stole of the Iron Phantom
        DC.RenewedProtoDrake.WhiteHorns, DC.CliffsideWylderdrake.HornedJaw,
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek,
        Item({item = 198070}) -- Tattered Seavine
    },
    pois = {POI({50523672, 49973821, 49223842})}
}) -- Fisherman Tinnak

map.nodes[64992995] = Rare({
    id = 193698,
    vignette = 5252,
    quest = 73876,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 16678, criteria = 56104}) -- Adventurer of The Azure Span
    }
}) -- Frigidpelt Den Mother

map.nodes[58264391] = Rare({
    id = 191356,
    vignette = 5153,
    quest = 73877,
    note = L['frostpaw_note'],
    rewards = {
        Achievement({id = 16678, criteria = 56101}) -- Adventurer of The Azure Span
    },
    pois = {POI({58664339})}
}) -- Frostpaw

map.nodes[14083747] = Rare({
    id = 197354,
    vignette = {5415, 5892},
    quest = 73996,
    fgroup = 'brackenhide',
    interval = ns.Intervals.BrackenhideInterval({id = 2}),
    rewards = {
        Achievement({id = 16678, criteria = 56127}), -- Adventurer of The Azure Span
        Transmog({item = 200259, slot = L['shield']}), -- Forest Dweller's Shield
        Transmog({item = 200267, slot = L['plate']}), -- Reinforced Garden Tenders
        DC.RenewedProtoDrake.SnubSnout, DC.HighlandDrake.TanHorns
    }
}) -- Gnarls

map.nodes[32682911] = Rare({
    id = 193251,
    vignette = 5206,
    quest = 74001,
    interval = ns.Intervals.Interval14h({id = 2}),
    rewards = {
        Achievement({id = 16678, criteria = 56111}), -- Adventurer of The Azure Span
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
}) -- Gruffy

map.nodes[19234362] = Rare({
    id = 193269,
    vignette = 5210,
    quest = 74002,
    interval = ns.Intervals.Interval14h({id = 23}),
    rewards = {
        Achievement({id = 16678, criteria = 56112}), -- Adventurer of The Azure Span
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200206, slot = L['bow']}), -- Behemoth Slayer Greatbow
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}) -- Mage's Chewed Wand
    }
}) -- Grumbletrunk

map.nodes[16213364] = Rare({
    id = 197356,
    vignette = {5416, 5893},
    quest = 74004,
    fgroup = 'brackenhide',
    interval = ns.Intervals.BrackenhideInterval({id = 3}),
    rewards = {
        Achievement({id = 16678, criteria = 56128}), -- Adventurer of The Azure Span
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        Transmog({item = 200432, slot = L['cloth']}), -- Rotguard Cowl
        Transmog({item = 200127, slot = L['1h_sword']}), -- Gold-Alloy Blade
        Toy({item = 200178}), -- Infected Ichor
        DC.CliffsideWylderdrake.BlackHair, DC.HighlandDrake.SpikedClubTail,
        DC.CliffsideWylderdrake.Ears, DC.CliffsideWylderdrake.DualHornedChin
    }
}) -- High Shaman Rotknuckle

map.nodes[36243573] = Rare({
    id = 190244,
    vignette = nil,
    quest = 73883,
    rewards = {
        Achievement({id = 16678, criteria = 56109}), -- Adventurer of The Azure Span
        Transmog({item = 200157, slot = L['2h_mace']}), -- Pathmaker
        Transmog({item = 200684, slot = L['2h_sword']}), -- Emerald Tailbone
        Transmog({item = 200203, slot = L['mail']}), -- Repurposed Giant's Thimble
        DC.HighlandDrake.ClubTail, DC.WindborneVelocidrake.GrayHorns
    },
    pois = {Path({35873621, 36243573, 36543508, 36863479})}
}) -- Mahg the Trampler

map.nodes[40514797] = Rare({
    id = 198004,
    vignette = nil,
    quest = 73884,
    rewards = {
        Achievement({id = 16678, criteria = 56100}), -- Adventurer of The Azure Span
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        DC.CliffsideWylderdrake.Ears, DC.HighlandDrake.SpikedClubTail
    }
}) -- Mange the Outcast

map.nodes[58095471] = Rare({
    id = 193201,
    vignette = nil,
    quest = 73885,
    rewards = {
        Achievement({id = 16678, criteria = 56102}), -- Adventurer of The Azure Span
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Mucka the Raker

map.nodes[20584943] = Rare({
    id = 193225,
    vignette = nil,
    quest = 73887,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 16678, criteria = 56107}), -- Adventurer of The Azure Span
        Toy({item = 200160}), -- Notfar's Favorite Food
        Transmog({item = 200253, slot = L['dagger']}), -- Snowspring Incanter's Knife
        Transmog({item = 200254, slot = L['mail']}), -- Totemic Cinch
        DC.CliffsideWylderdrake.ManedNeck
    },
    pois = {POI({34023076, 34933000})} -- Entrance
}) -- Notfar the Unbearable

map.nodes[58813260] = Rare({
    id = 197371,
    vignette = nil,
    quest = {73891, 74080},
    label = L['large_lunker_sighting'],
    note = L['large_lunker_sighting_note'],
    rewards = {
        Achievement({
            id = 16678,
            criteria = {
                {id = 56129, quest = 73891}, -- Ravenous Tundra Bear
                {id = 56116, quest = 74080} -- Snufflegust
            }
        }), -- Adventurer of The Azure Span
        ns.reward.Section('{npc:197371}'),
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead, -- Ravenous Tundra Bear
        ns.reward.Section('{npc:193706}'),
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200135, slot = L['2h_sword']}), -- Corroded Greatsword
        DC.CliffsideWylderdrake.FinnedCheek, DC.HighlandDrake.FinnedBack, -- Snufflegust
        ns.reward.Spacer(), -- Shared Loot
        Item({item = 200086}) -- Khaz'gorite-infused Resin
    }
}) -- Lunker Rares

-- map.nodes[] = Rare({
--     id = 193693,
--     vignette = nil,
--     quest = nil,
--     rewards = {
--         Achievement({id = 16678, criteria = 56113}), -- Adventurer of The Azure Span
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Rusthide

map.nodes[26494939] = Rare({
    id = 193149,
    vignette = 5440,
    quest = 74030,
    interval = ns.Intervals.Interval14h({id = 8}),
    rewards = {
        Achievement({id = 16678, criteria = 56110}), -- Adventurer of The Azure Span
        Transmog({item = 200203, slot = L['mail']}), -- Repurposed Giant's Thimble
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200279, slot = L['plate']}), -- Competitive Throwing Gauntlets
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Transmog({item = 200684, slot = L['2h_sword']}), -- Emerald Tailbone
        DC.HighlandDrake.ClubTail, DC.WindborneVelocidrake.GrayHorns,
        DC.CliffsideWylderdrake.BlackHorns, DC.WindborneVelocidrake.ClubTail
    }
}) -- Skag the Thrower

map.nodes[10863229] = Rare({
    id = 197344,
    vignette = {5413, 5894},
    quest = 74032,
    fgroup = 'brackenhide',
    interval = ns.Intervals.BrackenhideInterval({id = 0}),
    rewards = {
        Achievement({id = 16678, criteria = 56125}), -- Adventurer of The Azure Span
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        DC.HighlandDrake.SpikedClubTail, DC.CliffsideWylderdrake.Ears
    }
}) -- Snarglebone

map.nodes[55033405] = RareElite({
    id = 193238,
    vignette = 5200,
    quest = 74082,
    note = L['spellwrought_snowman_note'],
    rewards = {
        Achievement({id = 16678, criteria = 56124}), -- Adventurer of The Azure Span
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        Transmog({item = 200211, slot = L['cloth']}), -- Snowman's Icy Gaze
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        DC.CliffsideWylderdrake.FinnedCheek, DC.HighlandDrake.FinnedBack
    },
    pois = {
        POI({
            53873559, 54003628, 54073717, 53393655, 52923709, 52203733,
            51673681, 51953564, 54163466, 53483474
        })
    }
}) -- Spellwrought Snowman

-- map.nodes[] = Rare({
--     id = 193167,
--     vignette = nil,
--     quest = nil,
--     rewards = {
--         Achievement({id = 16678, criteria = 56121}), -- Adventurer of The Azure Span
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Swagraal the Swollen

map.nodes[70222532] = Rare({
    id = 193196,
    vignette = 5186,
    quest = 74087,
    note = L['trilvarus_loreweaver_note'],
    rewards = {
        Achievement({id = 16678, criteria = 56114}), -- Adventurer of The Azure Span
        Transmog({item = 200434, slot = L['cloth']}), -- Anund's Mana-Singed Amice
        DC.HighlandDrake.FinnedHead, DC.RenewedProtoDrake.SharkSnout
    },
    pois = {POI({70432369})}
}) -- Trilvarus Loreweaver

map.nodes[59405520] = Rare({
    id = 193632,
    vignette = 5224,
    quest = 73900,
    rewards = {
        Achievement({id = 16678, criteria = 56097}), -- Adventurer of The Azure Span
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Wilrive

-------------------------------------------------------------------------------

-- These rares/elites are not part of the adventurer achievement for the zone

map.nodes[28564743] = Rare({
    id = 195353,
    vignette = nil,
    quest = nil,
    note = L['breezebiter_note'],
    rewards = {
        Mount({item = 201440, id = 1553}) -- Liberated Slyvern
    },
    pois = {
        Path({
            28564743, 28304800, 27944822, 26974854, 26364841, 26074796,
            25824706, 25764642, 26134540, 26374491, 27124437, 27554428,
            28164470, 28614643, 28564743
        }), POI({29804622}) -- Cave
    }
}) -- Breezebiter

map.nodes[23503317] = Rare({
    id = 186962,
    vignette = 5050,
    quest = 72836,
    rewards = {
        Transmog({item = 200135, slot = L['2h_sword']}), -- Corroded Greatsword
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek
    }
}) -- Cascade

map.nodes[38155901] = Rare({
    id = 193214,
    vignette = 5191,
    quest = 72840,
    location = L['in_cave'],
    rewards = {
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.HighlandDrake.StripedPattern, DC.WindborneVelocidrake.SpikedBack
    },
    pois = {POI({38625988})}
}) -- Forgotten Creation

map.nodes[70143327] = Rare({
    id = 193288,
    vignette = 5213,
    quest = 72848,
    rewards = {
        -- Item({item = 198048}), -- Titan Training Matrix I
        Transmog({item = 200247, slot = L['1h_mace']}), -- Inextinguishable Gavel
        Transmog({item = 200252, slot = L['gun']}), -- Molten Flak Cannon
        Transmog({item = 200133, slot = L['fist']}), -- Volcanic Chakram
        DC.HighlandDrake.ToothyMouth, DC.RenewedProtoDrake.ImpalerHorns
    }
}) -- Summoned Destroyer

map.nodes[17254144] = Rare({
    id = 193223,
    vignette = 5194,
    quest = 72853,
    rewards = {
        Item({item = 201728}), -- Vakril's Strongbox
        Transmog({item = 200245, slot = L['2h_mace']}), -- Leviathan Lure
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        DC.CliffsideWylderdrake.FinnedCheek, DC.HighlandDrake.FinnedBack
    }
}) -- Vakril

map.nodes[36723247] = Rare({
    id = 192749,
    vignette = 5484,
    quest = 72846,
    note = L['sharpfang_note'],
    rewards = {
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        DC.HighlandDrake.SpikedClubTail, DC.CliffsideWylderdrake.Ears
        -- Item({item = 198048}) -- Titan Training Matrix I
    }
}) -- Sharpfang

map.nodes[76602460] = Rare({
    id = 197183,
    vignette = nil,
    quest = {69338, 69342}, -- hide node on unlocking manuscripts for alts
    note = L['stranded_soul_note'],
    rewards = {
        Item({item = 200528, quest = 71139}), -- ns.reward.Quest({id = 71139}),
        DC.HighlandDrake.SpinedNose, DC.HighlandDrake.ScaledPattern
    },
    pois = {
        POI({color = 'Orange', 75542447, 76142401, 75722464, 75082351}), -- Lava Orbs, 196901
        POI({color = 'Red', 75812428}) -- Lost Elemental, 196900
    }
}) -- Stranded Soul

map.nodes[56407080] = Rare({
    id = 196165,
    vignette = nil,
    quest = 74446,
    note = L['gethdazr_note'],
    rewards = {
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200237, slot = L['shield']}), -- Burnished Lifewarder's Targe
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.HighlandDrake.SpinedChin, DC.CliffsideWylderdrake.SpikedBack,
        DC.HighlandDrake.StripedPattern, DC.WindborneVelocidrake.SpikedBack
    },
    pois = {
        POI({58946695}), -- Great Horn of Imbu
        POI({color = 'Green', 60496603}), -- The Blubberwall
        Path({
            color = 'Green',
            points = {
                60496603, 59956724, 59376836, 58516913, 57816923, 56866903,
                56406928, 56457017, 56407080
            }
        })
    }
}) -- Gethdazr

map.nodes[60196818] = Rare({
    id = 201559,
    vignette = {5557, 5889},
    quest = 74533,
    rewards = {
        Transmog({item = 203661, slot = L['cloth']}), -- Watercaller's Mantle
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek,
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns
    }
}) -- Shiobhan Waterborn

map.nodes[57916842] = Rare({
    id = 201557,
    vignette = {5554, 5887},
    quest = 74532,
    rewards = {
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200254, slot = L['mail']}), -- Totemic Cinch
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        Transmog({item = 203658, slot = L['leather']}), -- Graniteclaw's Vest
        DC.CliffsideWylderdrake.ManedNeck, DC.WindborneVelocidrake.ClusterHorns,
        DC.WindborneVelocidrake.ClubTail, DC.CliffsideWylderdrake.BlackHorns,
        DC.RenewedProtoDrake.HeavyHorns
    }
}) -- Graniteclaw

map.nodes[56016760] = Rare({
    id = 201558,
    vignette = {5556, 5888},
    quest = 74531,
    rewards = {
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        Transmog({item = 203660, slot = L['mail']}), -- Rockknell's Groundpounders
        DC.WindborneVelocidrake.ClubTail, DC.WindborneVelocidrake.ClusterHorns,
        DC.CliffsideWylderdrake.BlackHorns, DC.RenewedProtoDrake.HeavyHorns
    }
}) -- Malgain Rockknell

map.nodes[57256464] = Rare({
    id = 201556,
    vignette = {5555, 5890},
    quest = 74535,
    rewards = {
        Transmog({item = 200135, slot = L['2h_sword']}), -- Corroded Greatsword
        Transmog({item = 200187, slot = L['staff']}), -- Rod of Glacial Force
        Transmog({item = 203659, slot = L['shield']}), -- Waterpot's Halfpot Deflector
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns,
        DC.HighlandDrake.FinnedBack, DC.CliffsideWylderdrake.FinnedCheek
    }
}) -- Waterpots

map.nodes[43903096] = Rare({
    id = 201561,
    vignette = {5559, 5884},
    quest = 74544,
    rewards = {
        Transmog({item = 203675, slot = L['plate']}), -- Legplates of the Brutal Motivator
        Transmog({item = 200434, slot = L['cloth']}), -- Anund's Mana-Singed Amice
        DC.RenewedProtoDrake.SharkSnout, DC.HighlandDrake.FinnedHead
    }
}) -- Motivator Krathos

map.nodes[47102582] = Rare({
    id = 201554,
    vignette = {5558, 5886},
    quest = 74536,
    rewards = {
        Transmog({item = 203662, slot = L['dagger']}), -- Arcanogolem Crystalblade
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.HighlandDrake.StripedPattern, DC.WindborneVelocidrake.SpikedBack
    }
}) -- Unstable Arcanogolem

map.nodes[47982349] = Rare({
    id = 201553,
    vignette = {5560, 5883},
    quest = 74545,
    rewards = {
        Transmog({item = 203664, slot = L['cloth']}), -- Wild Magic Insulating Bands
        Transmog({item = 200434, slot = L['cloth']}), -- Anund's Mana-Singed Amice
        DC.RenewedProtoDrake.SharkSnout, DC.HighlandDrake.FinnedHead
    }
}) -- Grand Artificer Zeerak

map.nodes[46932204] = Rare({
    id = 201555,
    vignette = {5561, 5885},
    quest = 74543,
    rewards = {
        Transmog({item = 203663, slot = L['mail']}), -- Cinch of the Sundered Flame
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200434, slot = L['cloth']}), -- Anund's Mana-Singed Amice
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.RenewedProtoDrake.SharkSnout, DC.WindborneVelocidrake.SpikedBack,
        DC.HighlandDrake.FinnedHead, DC.HighlandDrake.StripedPattern
    }
}) -- Srivantor

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[45125940] = Treasure({
    quest = 70603,
    note = L['forgotten_jewel_box_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(70534, '{item:199065}') -- Sorrowful Letter
    },
    rewards = {
        Achievement({id = 16300, criteria = 54804}), --
        Toy({item = 201927}) -- Gleaming Arcanocrystal
    }
}) -- Forgotten Jewel Box

map.nodes[53934372] = Treasure({
    quest = 70604,
    location = L['in_small_cave'],
    note = L['gnoll_fiend_flail_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(70535, '{item:199066}') -- Letter of Caution
    },
    rewards = {
        Achievement({id = 16300, criteria = 54805}),
        Transmog({item = 202692, slot = L['1h_mace']}) -- Gnoll Fiend Flail
    }
}) -- Gnoll Fiend Flail

map.nodes[74895501] = Treasure({
    quest = 70606,
    rewards = {
        Achievement({id = 16300, criteria = 54807}), --
        Toy({item = 202711}) -- Lost Compass
    }
}) -- Lost Compass

map.nodes[26544626] = Treasure({
    quest = 70441,
    note = L['pepper_hammer_note'],
    rewards = {
        Achievement({id = 16300, criteria = 54809}),
        Pet({item = 193834, id = 3321}) -- Blackfeather Nester
    }
}) -- Pepper Hammer

map.nodes[54612932] = Treasure({
    quest = 70380,
    rewards = {
        Achievement({id = 16300, criteria = 54808}), --
        Item({item = 202712}) -- Rubber Fish
    }
}) -- Rubber Fish

map.nodes[48632466] = Treasure({
    quest = 70605,
    note = L['gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Quest(70536, '{item:199067}') -- Precious Plans
    },
    rewards = {
        Achievement({id = 16300, criteria = 54806}), --
        Item({item = 200866}) -- Glimmering Malygite Cluster
    }
}) -- Sapphire Gem Cluster

-------------------------------------------------------------------------------

map.nodes[58024201] = Treasure({
    quest = 70237,
    label = L['snow_covered_scroll'],
    rewards = {
        Recipe({item = 198103, profession = 185}) -- Recipe: Snow in a Cone
    }
}) -- Snow Covered Scroll

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[40985940] = PetBattle({
    id = 197417,
    rewards = {
        Achievement({id = 16464, criteria = 55487}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 1, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 1, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 1, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 1, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 1, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 1, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 1, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 1, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 1, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 1, oneline = true}) -- Undead
    }
}) -- Arcantus

map.nodes[13884986] = PetBattle({
    id = 196069,
    rewards = {
        Achievement({id = 16464, criteria = 55489}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 5, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 5, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 5, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 5, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 5, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 5, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 5, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 5, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 5, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 5, oneline = true}) -- Undead
    }
}) -- Patchu

map.nodes[23415356] = PetBattle({
    id = 202440,
    rewards = {
        Achievement({id = 17406, criteria = 58214}) -- Battle on the Dragon Isles II
    }
}) -- Enok the Stinky

map.nodes[19522460] = PetBattle({
    id = 201899,
    rewards = {
        Achievement({id = 17406, criteria = 58218}) -- Battle on the Dragon Isles II
    }
}) -- A New Vocation

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[12504940] = PT.Leatherworking({
    id = 201018,
    quest = 70269,
    note = L['pt_leath_well_danced_drum_note']
}) -- Well-Danced Drum

map.nodes[16203880] = PT.Tailoring({
    id = 198680,
    quest = 70284,
    note = L['pt_tailor_decaying_brackenhide_blanket_note']
}) -- Decaying Brackenhide Blanket

map.nodes[16303849] = PT.Alchemy({
    id = 198599,
    quest = 70208,
    note = L['pt_alch_experimental_decay_sample_note']
}) -- Experimental Decay Sample

map.nodes[16703880] = PT.Leatherworking({
    id = 198658,
    quest = 70266,
    note = L['pt_leath_decay_infused_tanning_oil_note']
}) -- Decay-Infused Tanning Oil

map.nodes[21564555] = PT.Enchanting({
    id = 198694,
    quest = 70298,
    note = L['pt_ench_enriched_earthen_shard_note']
}) -- Enriched Earthen Shard

map.nodes[38505920] = PT.Enchanting({
    id = 198799,
    quest = 70336,
    note = L['pt_ench_forgotten_arcane_tome_note']
}) -- Forgotten Arcane Tome

map.nodes[40705450] = PT.Tailoring({
    id = 198662,
    quest = 70267,
    note = L['pt_tailor_intriguing_bolt_of_blue_cloth_note']
}) -- Intriguing Bolt of Blue Cloth

map.nodes[43703090] = PT.Inscription({
    id = 198686,
    quest = 70293,
    note = L['pt_script_frosted_parchment_note']
}) -- Frosted Parchment

map.nodes[44606120] = PT.Jewelcrafting({
    id = 201016,
    quest = 70271,
    note = L['pt_jewel_harmonic_crystal_harmonizer_note'],
    pois = {POI({44726215, 44176203, 44686017})}
}) -- Harmonic Crystal Harmonizer

map.nodes[45006130] = PT.Jewelcrafting({
    id = 198664,
    quest = 70277,
    note = L['pt_jewel_crystalline_overgrowth_note']
}) -- Crystalline Overgrowth

map.nodes[45106120] = PT.Enchanting({
    id = 201013,
    quest = 70290,
    note = L['pt_ench_faintly_enchanted_remains_note']
}) -- Faintly Enchanted Remains

map.nodes[46202390] = PT.Inscription({
    id = 198693,
    quest = 70297,
    note = L['pt_script_dusty_darkmoon_card_note']
}) -- Dusty Darkmoon Card

map.nodes[53146614] = PT.Blacksmithing({
    id = 201011,
    quest = 70314,
    note = L['pt_smith_spelltouched_tongs_note'],
    requires = {
        ns.requirement.Profession(186), ns.requirement.Profession(164, 2822, 25)
    },
    pois = {POI({53106530})}
}) -- Spelltouched Tongs

map.nodes[57504130] = PT.Leatherworking({
    id = 198683,
    quest = 70286,
    note = L['pt_leath_treated_hides_note']
}) -- Treated Hides

map.nodes[67061316] = PT.Alchemy({
    id = 198712,
    quest = 70309,
    note = L['pt_alch_firewater_powder_sample_note']
}) -- Firewater Powder Sample

-------------------------------------------------------------------------------vvv

map.nodes[17762167] = PM.Engineering({
    id = 194838,
    quest = 70252,
    note = L['pm_engi_frizz_buzzcrank'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2027, count = '5'}) -- Dragon Isles Engineering Knowledge
    }
}) -- Frizz Buzzcrank

map.nodes[40146434] = PM.Inscription({
    id = 194840,
    quest = 70254,
    note = L['pm_script_lydiara_whisperfeather'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2028, count = '5'}) -- Dragon Isles Inscription Knowledge
    }
}) -- Lydiara Whisperfeather

map.nodes[46244076] = PM.Jewelcrafting({
    id = 194841,
    quest = 70255,
    note = L['pm_jewel_pluutar'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2029, count = '5'}) -- Dragon Isles Jewelcrafting Knowledge
    }
}) -- Pluutar

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[39306312] = Dragonglyph({rewards = {Achievement({id = 16065})}}) -- Dragon Glyphs: Azure Archive
map.nodes[10403589] = Dragonglyph({rewards = {Achievement({id = 16068})}}) -- Dragon Glyphs: Brackenhide Hollow
map.nodes[45832573] = Dragonglyph({rewards = {Achievement({id = 16064})}}) -- Dragon Glyphs: Cobalt Assembly
map.nodes[26743167] = Dragonglyph({rewards = {Achievement({id = 16069})}}) -- Dragon Glyphs: Creektooth Den
map.nodes[56811612] = Dragonglyph({rewards = {Achievement({id = 16673})}}) -- Dragon Glyphs: Fallen Course
map.nodes[36582796] = Dragonglyph({rewards = {Achievement({id = 16672})}}) -- Dragon Glyphs: Forkriver Crossing (Ohn'ahran Plains)
map.nodes[60587025] = Dragonglyph({rewards = {Achievement({id = 16070})}}) -- Dragon Glyphs: Imbu
map.nodes[67642913] = Dragonglyph({rewards = {Achievement({id = 16072})}}) -- Dragon Glyphs: Kalthraz Fortress
map.nodes[70584626] = Dragonglyph({rewards = {Achievement({id = 16067})}}) -- Dragon Glyphs: Lost Ruins
map.nodes[68646026] = Dragonglyph({rewards = {Achievement({id = 16066})}}) -- Dragon Glyphs: Ruins of Karnthar
map.nodes[72623978] = Dragonglyph({rewards = {Achievement({id = 16073})}}) -- Dragon Glyphs: Vakthros Range
map.nodes[52954909] = Dragonglyph({rewards = {Achievement({id = 16071})}}) -- Dragon Glyphs: Zelthrak Outpost

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[31912703] = Flag({quest = 71215})
map.nodes[37466620] = Flag({quest = 71216})
map.nodes[46142498] = Flag({quest = 71218})
map.nodes[63084867] = Flag({quest = 71220})
map.nodes[74844324] = Flag({quest = 71221})
map.nodes[77431837] = Flag({quest = 71217})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[71054788] = SignalTransmitter({quest = 70581}) -- Camp Nowhere
map.nodes[45766525] = SignalTransmitter({quest = 70580}) -- Azure Archives
map.nodes[27562645] = SignalTransmitter({quest = 70579}) -- Brakenhide Hollow

-------------------------------------------------------------------------------
---------------------------- FRAGMENTS OF HISTORY -----------------------------
-------------------------------------------------------------------------------

map.nodes[66066012] = Fragment({
    sublabel = L['chunk_of_sculpture_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55028}),
        Item({item = 199895, quest = 70806})
    }
}) -- Chunk of Sculpture

map.nodes[47833893] = Fragment({
    sublabel = L['in_water'],
    rewards = {
        Achievement({id = 16323, criteria = 55029}),
        Item({item = 199843, quest = 70791})
    }
}) -- Coldwashed Dragonclaw

map.nodes[69174757] = Fragment({
    sublabel = L['stone_dragontooth_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55033}),
        Item({item = 199842, quest = 70790})
    }
}) -- Stone Dragontooth

map.nodes[47342459] = Fragment({
    sublabel = L['wrapped_gold_band_note'],
    rewards = {
        Achievement({id = 16323, criteria = 55034}),
        Item({item = 199840, quest = 70788})
    }
}) -- Wrapped Gold Band

-------------------------------------------------------------------------------
---------------------------- LEY LINE IN THE SPAN -----------------------------
-------------------------------------------------------------------------------

local LeyLine = Class('LeyLine', Collectible, {
    id = 198260,
    icon = 1033908,
    location = L['in_small_cave'],
    note = L['leyline_note'],
    rlabel = ns.status.LightBlue('+20 ' .. select(1, GetFactionInfoByID(2510))), -- Valdrakken Accord
    group = ns.groups.LEYLINE
})

map.nodes[43476224] = LeyLine({
    quest = 72138,
    rewards = {Achievement({id = 16638, criteria = 55972})}
}) -- Azure Archives

map.nodes[26533590] = LeyLine({
    quest = 72139,
    rewards = {Achievement({id = 16638, criteria = 55973})}
}) -- Ancient Outlook

map.nodes[65885066] = LeyLine({
    requires = ns.requirement.Profession(186), -- Mining
    quest = 72136,
    rewards = {Achievement({id = 16638, criteria = 55974})}
}) -- Rustpine Den

map.nodes[66395950] = LeyLine({
    quest = 72141,
    rewards = {Achievement({id = 16638, criteria = 55975})}
}) -- Ruins of Karnthar

map.nodes[65732814] = LeyLine({
    quest = 72140,
    rewards = {Achievement({id = 16638, criteria = 55976})}
}) -- Slyvern Plunge

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

map.nodes[13503833] = Disturbeddirt({location = L['in_small_cave']})
map.nodes[14182155] = Disturbeddirt()
map.nodes[15432158] = Disturbeddirt()
map.nodes[19214047] = Disturbeddirt()
map.nodes[19225097] = Disturbeddirt()
map.nodes[20052526] = Disturbeddirt()
map.nodes[23716772] = Disturbeddirt()
map.nodes[29872621] = Disturbeddirt()
map.nodes[33704685] = Disturbeddirt()
map.nodes[34234591] = Disturbeddirt()
map.nodes[50284428] = Disturbeddirt()
map.nodes[57775352] = Disturbeddirt()
map.nodes[65193151] = Disturbeddirt()
map.nodes[65516163] = Disturbeddirt()
map.nodes[66733144] = Disturbeddirt({location = L['in_cave']})
map.nodes[68291742] = Disturbeddirt()
map.nodes[70724381] = Disturbeddirt()
map.nodes[72404272] = Disturbeddirt({location = L['in_small_cave']})
map.nodes[73374059] = Disturbeddirt()
map.nodes[78753394] = Disturbeddirt()
map.nodes[78903087] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[10974204] = Scoutpack()
map.nodes[12253541] = Scoutpack()
map.nodes[12944165] = Scoutpack()
map.nodes[13054278] = Scoutpack()
map.nodes[14143645] = Scoutpack()
map.nodes[14303978] = Scoutpack()
map.nodes[14943299] = Scoutpack()
map.nodes[15183187] = Scoutpack()
map.nodes[33864679] = Scoutpack()
map.nodes[34334607] = Scoutpack()
map.nodes[43005294] = Scoutpack()
map.nodes[46892208] = Scoutpack()
map.nodes[47253630] = Scoutpack()
map.nodes[49052541] = Scoutpack()
map.nodes[57632101] = Scoutpack()
map.nodes[58115454] = Scoutpack()
map.nodes[58145373] = Scoutpack()
map.nodes[65702841] = Scoutpack({location = L['in_small_cave']})
map.nodes[66733050] = Scoutpack({location = L['in_cave']})
map.nodes[66783133] = Scoutpack({location = L['in_cave']})
map.nodes[66784934] = Scoutpack()
map.nodes[72154242] = Scoutpack({location = L['in_cave']})
map.nodes[72604263] = Scoutpack({location = L['in_cave']})
map.nodes[78953094] = Scoutpack()
map.nodes[79823175] = Scoutpack()

-------------------------------------------------------------------------------
------------------------------ MAGIC-BOUND CHEST ------------------------------
-------------------------------------------------------------------------------

map.nodes[09104840] = MagicBoundChest({
    location = L['in_small_cave'],
    pois = {POI({08584883})}
})
map.nodes[14002990] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[29904570] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[43306260] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[49204090] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[53006610] = MagicBoundChest({
    requires = {
        ns.requirement.Reputation(2507, 16, true),
        ns.requirement.Profession(186)
    },
    location = L['in_small_cave']
})
map.nodes[65702780] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[65905560] = MagicBoundChest()
map.nodes[72304210] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({71674371})}
})

-------------------------------------------------------------------------------
------------------------------ TUSKARR TACKLEBOX ------------------------------
-------------------------------------------------------------------------------

map.nodes[30512493] = TuskarrTacklebox()
map.nodes[23813442] = TuskarrTacklebox()

-------------------------------------------------------------------------------
-------------------------------- TUSKARR CHEST --------------------------------
-------------------------------------------------------------------------------

local TuskarrChest = Class('TuskarrChest', ns.node.Node, {
    label = L['tuskarr_chest'],
    icon = 'chest_bn',
    group = ns.groups.TUSKARR_CHEST,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Transmog({item = 201372, slot = L['cosmetic']}), -- Imbu Tuskarr Axe
        Transmog({item = 201373, slot = L['cosmetic']}), -- Imbu Net Cutter
        Transmog({item = 201374, slot = L['cosmetic']}), -- Tuskarr Fishing Pike
        Transmog({item = 201376, slot = L['cosmetic']}), -- Imbu Tuskarr Mace
        Transmog({item = 201377, slot = L['cosmetic']}), -- Imbu Warrior's Club
        Transmog({item = 201377, slot = L['cosmetic']}), -- Tuskarr Elder's Staff
        Transmog({item = 201378, slot = L['cosmetic']}), -- Tuskarr Angler's Crossbow
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 200071}), -- Sacred Tuskarr Totem
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Tuskarr Chest

map.nodes[07134508] = TuskarrChest()
map.nodes[08424067] = TuskarrChest()
map.nodes[09403790] = TuskarrChest()
map.nodes[45052513] = TuskarrChest()
map.nodes[45852614] = TuskarrChest()
map.nodes[46905420] = TuskarrChest()
map.nodes[55726866] = TuskarrChest()
map.nodes[56506570] = TuskarrChest()
map.nodes[56926793] = TuskarrChest()
map.nodes[57626966] = TuskarrChest()
map.nodes[58776833] = TuskarrChest()
map.nodes[58925475] = TuskarrChest({note = L['in_water']})
map.nodes[59006670] = TuskarrChest()
map.nodes[59235652] = TuskarrChest()
map.nodes[60505900] = TuskarrChest()

-------------------------------------------------------------------------------
----------------------------- DECAY COVERED CHEST -----------------------------
-------------------------------------------------------------------------------

local DecayCoveredChest = Class('DecayCoveredChest', ns.node.Node, {
    label = L['decay_covered_chest'],
    icon = 'chest_pk',
    group = ns.groups.DECAY_COVERED_CHEST,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Transmog({item = 201365, slot = L['cosmetic']}), -- Brackenhide Gnoll Guard
        Transmog({item = 201370, slot = L['cosmetic']}), -- Brackenhide Skullcracker
        Transmog({item = 201369, slot = L['cosmetic']}), -- Hollow Greatwood Pestilence
        Transmog({item = 201368, slot = L['cosmetic']}), -- Brackenhide Hollow Barbslinger
        Transmog({item = 201363, slot = L['cosmetic']}), -- Brackenhide Hollow Maul
        Transmog({item = 201367, slot = L['cosmetic']}), -- Hollow Hunter's Sticker
        Item({item = 194540, quest = 67046}), -- Nokhud Armorer's Notes
        Item({item = 199066, quest = 70535}), -- Letter of Caution
        Recipe({item = 194312, profession = 165}), -- Pattern: Gnoll Tent
        Recipe({item = 204695, profession = 171}), -- Recipe: Cauldron of Extracted Putrescence
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 200071}), -- Sacred Tuskarr Totem
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Decay Covered Chest

map.nodes[09702910] = DecayCoveredChest()
map.nodes[09903250] = DecayCoveredChest()
map.nodes[10503120] = DecayCoveredChest()
map.nodes[11603420] = DecayCoveredChest()
map.nodes[12003670] = DecayCoveredChest()
map.nodes[12203520] = DecayCoveredChest()
map.nodes[12402200] = DecayCoveredChest()
map.nodes[12803410] = DecayCoveredChest()
map.nodes[13803820] = DecayCoveredChest()
map.nodes[13803940] = DecayCoveredChest()
map.nodes[14402180] = DecayCoveredChest()
map.nodes[14502050] = DecayCoveredChest()
map.nodes[14903100] = DecayCoveredChest()
map.nodes[16103520] = DecayCoveredChest()
map.nodes[16203890] = DecayCoveredChest()
map.nodes[16503430] = DecayCoveredChest()
map.nodes[17103830] = DecayCoveredChest()
map.nodes[17903600] = DecayCoveredChest()
map.nodes[18103480] = DecayCoveredChest()
map.nodes[18403670] = DecayCoveredChest()
map.nodes[18403840] = DecayCoveredChest()
map.nodes[18503670] = DecayCoveredChest()
map.nodes[21404040] = DecayCoveredChest()
map.nodes[21404240] = DecayCoveredChest()
map.nodes[21504230] = DecayCoveredChest()
map.nodes[23204370] = DecayCoveredChest()
map.nodes[24504020] = DecayCoveredChest()
map.nodes[24904230] = DecayCoveredChest()
map.nodes[34203400] = DecayCoveredChest()
map.nodes[34604540] = DecayCoveredChest()
map.nodes[34903190] = DecayCoveredChest()
map.nodes[35404800] = DecayCoveredChest()
map.nodes[35603410] = DecayCoveredChest()
map.nodes[35904660] = DecayCoveredChest()
map.nodes[58204140] = DecayCoveredChest()
map.nodes[58504270] = DecayCoveredChest()

-------------------------------------------------------------------------------
---------------------------------- REED CHEST ---------------------------------
-------------------------------------------------------------------------------

map.nodes[09604080] = ns.node.ReedChest()
map.nodes[10304370] = ns.node.ReedChest()
map.nodes[10904220] = ns.node.ReedChest()

-------------------------------------------------------------------------------
---------------------------- DRACTHYR SUPPLY CHEST ----------------------------
-------------------------------------------------------------------------------

map.nodes[12504240] = ns.node.DracthyrSupplyChest()
map.nodes[13104310] = ns.node.DracthyrSupplyChest()
map.nodes[28402810] = ns.node.DracthyrSupplyChest()
map.nodes[29403030] = ns.node.DracthyrSupplyChest()
map.nodes[30102870] = ns.node.DracthyrSupplyChest()
map.nodes[38406090] = ns.node.DracthyrSupplyChest()
map.nodes[39305920] = ns.node.DracthyrSupplyChest()
map.nodes[41906210] = ns.node.DracthyrSupplyChest()
map.nodes[45902600] = ns.node.DracthyrSupplyChest()
map.nodes[46302370] = ns.node.DracthyrSupplyChest()
map.nodes[47002190] = ns.node.DracthyrSupplyChest()
map.nodes[47102440] = ns.node.DracthyrSupplyChest()
map.nodes[47602590] = ns.node.DracthyrSupplyChest()
map.nodes[47902270] = ns.node.DracthyrSupplyChest()
map.nodes[47902990] = ns.node.DracthyrSupplyChest()
map.nodes[48002750] = ns.node.DracthyrSupplyChest()
map.nodes[49002540] = ns.node.DracthyrSupplyChest()
map.nodes[53204970] = ns.node.DracthyrSupplyChest()
map.nodes[54405180] = ns.node.DracthyrSupplyChest()
map.nodes[54605050] = ns.node.DracthyrSupplyChest()
map.nodes[63303040] = ns.node.DracthyrSupplyChest()
map.nodes[64702810] = ns.node.DracthyrSupplyChest()
map.nodes[65106130] = ns.node.DracthyrSupplyChest()
map.nodes[65206000] = ns.node.DracthyrSupplyChest()
map.nodes[66505960] = ns.node.DracthyrSupplyChest()
map.nodes[68404560] = ns.node.DracthyrSupplyChest()
map.nodes[68804660] = ns.node.DracthyrSupplyChest()
map.nodes[70204610] = ns.node.DracthyrSupplyChest()
map.nodes[70304340] = ns.node.DracthyrSupplyChest()
map.nodes[70604380] = ns.node.DracthyrSupplyChest()

-------------------------------------------------------------------------------
------------------------------- SIMMERING CHEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[73203790] = ns.node.SimmeringChest()
map.nodes[75103740] = ns.node.SimmeringChest()
map.nodes[76503760] = ns.node.SimmeringChest()
map.nodes[77304120] = ns.node.SimmeringChest()
map.nodes[78303690] = ns.node.SimmeringChest()
map.nodes[79603820] = ns.node.SimmeringChest()

-------------------------------------------------------------------------------
---------------------------- ICEMAW STORAGE CACHE -----------------------------
-------------------------------------------------------------------------------

local IcemawStorageCache = Class('IcemawStorageCache', ns.node.Node, {
    label = L['icemaw_storage_cache'],
    icon = 'chest_nv',
    group = ns.groups.ICEMAW_STORAGE_CACHE,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Item({item = 194540, quest = 67046}), -- Nokhud Armorer's Notes
        Item({item = 199068, quest = 70537}), -- Time-Lost Memo
        Item({item = 199065, quest = 70534}), -- Sorrowful Letter
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 200071}), -- Sacred Tuskarr Totem
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Icemaw Storage Cache

map.nodes[60804950] = IcemawStorageCache()
map.nodes[61005110] = IcemawStorageCache()
map.nodes[62005160] = IcemawStorageCache()
map.nodes[65601340] = IcemawStorageCache()
map.nodes[67001180] = IcemawStorageCache()
map.nodes[67101270] = IcemawStorageCache()

-------------------------------------------------------------------------------
------------------------------ FROSTBOUND CHEST -------------------------------
-------------------------------------------------------------------------------

map.nodes[48406380] = ns.node.FrostboundChest()
map.nodes[49706390] = ns.node.FrostboundChest()
map.nodes[51306080] = ns.node.FrostboundChest()

-------------------------------------------------------------------------------
--------------------- TO ALL THE SQUIRRELS HIDDEN TIL NOW ---------------------
-------------------------------------------------------------------------------

map.nodes[58695326] = Squirrel({
    id = 193594,
    rewards = {Achievement({id = 16729, criteria = 7})}
}) -- Timbertooth Kit

map.nodes[49975755] = Squirrel({
    id = 186481,
    rewards = {Achievement({id = 16729, criteria = 8})}
}) -- Frosty Spiderling

map.nodes[29244368] = Squirrel({
    id = 197718,
    rewards = {Achievement({id = 16729, criteria = 9})}
}) -- Crimson Knocker

-------------------------------------------------------------------------------
--------------------------- THE DISGRUNTLED HUNTER ----------------------------
-------------------------------------------------------------------------------

local HemetNesingwaryJr = Class('HemetNesingwaryJr', Collectible, {
    id = 194590,
    icon = 236444,
    sublabel = L['hnj_sublabel'],
    group = ns.groups.HEMET_NESINGWARY_JR
}) -- Hemet Nesingwary Jr.

map.nodes[36533481] = HemetNesingwaryJr({
    note = L['hnj_western_azure_span_hunt'],
    rewards = {Achievement({id = 16542, criteria = 55698})}
}) -- Western Azure Span Hunt

map.nodes[68112353] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55699})}
}) -- Eastern Azure Span Hunt

map.nodes[69204987] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55700})}
}) -- Southern Azure Span Hunt

-------------------------------------------------------------------------------
----------------------------- THAT'S PRETTY NEAT! -----------------------------
-------------------------------------------------------------------------------

map.nodes[36673652] = PrettyNeat({
    id = 190218,
    rewards = {Achievement({id = 16446, criteria = 55393})}
}) -- Horned Filcher

map.nodes[38193815] = PrettyNeat({
    id = 190221,
    rewards = {Achievement({id = 16446, criteria = 55390})}
}) -- Pine Flicker

map.nodes[16622798 + 1] = PrettyNeat({
    id = 193259,
    isRare = true,
    mapID = map.id,
    rewards = {Achievement({id = 16446, criteria = 55397})}
}) -- Blue Terror (node coords must be off by 00000001 from Rare)

-------------------------------------------------------------------------------
------------------------------ A LEGENDARY ALBUM ------------------------------
-------------------------------------------------------------------------------

map.nodes[44506011] = LegendaryCharacter({
    id = 131443,
    rewards = {Achievement({id = 16570, criteria = 55771})}
}) -- Chief Telemancer Oculeth

-------------------------------------------------------------------------------
-------------------------- ONE OF EVERYTHING, PLEASE --------------------------
-------------------------------------------------------------------------------

map.nodes[63005780] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

map.nodes[18772462] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

-------------------------------------------------------------------------------
----------------------------- DRAGON ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[15202400] = Safari({
    id = 192265,
    rewards = {Achievement({id = 16519, criteria = 55642}), Pet({id = 3357})},
    pois = {
        POI({
            14802620, 15004520, 15202400, 17202500, 17604440, 17802900,
            18202400, 19004660, 19803760, 21602540, 21603780, 22602720,
            25203860, 25803320, 27203400, 27204380, 33803540, 33803560,
            34003220, 35603200, 37403120, 39006080, 40403460, 41806280,
            43605960, 43805200, 43805940, 43806060, 44405000, 44604840,
            44805820, 45003980, 45206240, 45206260, 45404220, 46405220,
            46604080, 46605240, 46802980, 46803520, 47002320, 47603140,
            47603160, 48404920, 48605140, 48605160, 49002780, 49204740,
            50204620, 50205220, 50405100, 50602280, 50803660, 51004420,
            51205380, 52002260, 53002640, 54204400, 54402240, 54402260,
            56603960, 57002480, 57005180, 57405780, 57803680, 58201940,
            58201960, 58806620, 59002960, 59604240, 60601620, 61001920,
            61205040, 61205060, 61205680, 61606060, 64006180, 64601680,
            64803140, 65001940, 65005320, 65005720, 66205500, 66205840,
            66601540, 66601560, 67402380, 67806040, 68201300, 68203080,
            68602460, 69605220, 69801040, 69801060, 69801820, 70205320, 71002700
        })
    }
}) -- Azure Crystalspine

map.nodes[60403800] = Safari({
    id = 192268,
    rewards = {Achievement({id = 16519, criteria = 55656}), Pet({id = 3358})},
    pois = {POI({60403800, 60603800})}
}) -- Crimsonspine

map.nodes[37203300] = Safari({
    id = 194720,
    rewards = {Achievement({id = 16519, criteria = 55647}), Pet({id = 3351})},
    pois = {
        POI({
            27403120, 29203240, 30804700, 31404460, 32203540, 34403720,
            35204960, 36203400, 36803000, 37203300, 38003020, 41204880,
            42803840, 42804480, 67205080, 71605360
        })
    }
}) -- Grizzlefur Cub

map.nodes[23603720] = Safari({
    id = 189122,
    rewards = {Achievement({id = 16519, criteria = 55652}), Pet({id = 3296})},
    pois = {
        POI({
            11004180, 11004440, 11004460, 11404320, 11804640, 23404040,
            23603720, 27603700, 34204600, 34204840, 34204860, 39405020, 41204920
        })
    }
}) -- Palamanther

map.nodes[12004740] = Safari({
    id = 189103,
    rewards = {Achievement({id = 16519, criteria = 55657}), Pet({id = 3281})},
    pois = {
        POI({
            12004740, 13604800, 14004980, 15405040, 15604880, 23807140,
            24806980, 25207160, 44005460, 45005400, 46205340, 50405440,
            59606820, 59805620, 68205340, 68605200
        })
    }
}) -- Scruffy Ottuk

map.nodes[48606480] = Safari({
    id = 189107,
    rewards = {Achievement({id = 16519, criteria = 55659}), Pet({id = 3283})},
    pois = {
        POI({
            47203940, 47203960, 48606480, 49006200, 55202120, 59404480,
            66601140, 66601160, 67201300, 67601900, 70003620, 70604380,
            71604380, 72204320, 72402540, 72402560, 72602560, 72604040,
            73003640, 75202360, 78403240
        })
    }
}) -- Snowlemental

map.nodes[40803180] = Safari({
    id = 189104,
    rewards = {Achievement({id = 16519, criteria = 55661}), Pet({id = 3282})},
    pois = {
        POI({
            10404120, 11604040, 11804140, 13804360, 17003000, 18002220,
            18202740, 18804940, 19202440, 20002420, 20604040, 20804460,
            22003920, 23403420, 23803420, 24803040, 32604740, 33803140,
            33803160, 33804800, 34603100, 35805020, 39803180, 40803180,
            41403360, 42003440, 43003600, 44003800, 45803660, 46003640,
            50002160, 50601940, 53001900, 56206540, 58406460, 64801520,
            66001680, 66805940, 67005960, 68804940, 68804960, 74405420
        })
    }
}) -- Swoglet

map.nodes[59405740] = Safari({
    id = 189658,
    rewards = {Achievement({id = 16519, criteria = 55661}), Pet({id = 3328})},
    pois = {
        POI({
            11603480, 12803820, 15003440, 15003540, 15003560, 19604720,
            20404300, 21603880, 21803960, 25403680, 43403620, 43603640,
            58205220, 58805540, 59005220, 59405740, 59605740, 67405560
        })
    }
}) -- Tiny Timbertooth

map.nodes[68402720] = Safari({
    id = 189110,
    rewards = {Achievement({id = 16519, criteria = 55664}), Pet({id = 3288})},
    pois = {
        POI({
            22404580, 23804620, 26403940, 64405620, 65205480, 68402720,
            69002800, 69402660, 70402920, 70602940
        })
    }
}) -- Trunkalumpf

map.nodes[34204160] = Safari({
    id = 191323,
    rewards = {Achievement({id = 16519, criteria = 55666}), Pet({id = 3336})},
    pois = {
        POI({
            16602560, 16602800, 18802760, 20603220, 21003420, 22803020,
            32203900, 33404000, 34204140, 34204160, 35204060, 36803520,
            37004280, 38803580, 40003740
        })
    }
}) -- Vorquin Runt

-------------------------------------------------------------------------------
------------------------ ELEMENTAL STORMS: AZURE SPAN -------------------------
-------------------------------------------------------------------------------

map.nodes[11983718] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'],
        L['elemental_storm_brakenhide_hollow']),
    mapID = map.id,
    areaPOIs = {7229, 7230, 7231, 7232}
}) -- Elemental Storm: Brakenhide Hollow

map.nodes[47372200] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'],
        L['elemental_storm_cobalt_assembly']),
    mapID = map.id,
    areaPOIs = {7233, 7234, 7235, 7236}
}) -- Elemental Storm: Cobalt Assembly

map.nodes[58506660] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'], L['elemental_storm_imbu']),
    mapID = map.id,
    areaPOIs = {7237, 7238, 7239, 7240}
}) -- Elemental Storm: Imbu

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[65002900] = ElusiveCreature({
    label = '{npc:194491}',
    quest = 74186,
    rewards = {
        Item({item = 193211}), -- Resilient Leather
        Item({item = 193218}), -- Dense Hide
        Achievement({id = 18833, criteria = 61474}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Elder Frigidpelt

map.nodes[23203380] = ElusiveCreature({
    label = '{npc:194489}',
    quest = 74185,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Item({item = 193053}), -- Contoured Fowlfeather
        Achievement({id = 18833, criteria = 61473}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Elder Drake

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[68302652] = GrandHunt({
    mapID = map.id,
    areaPOI = 7095,
    criteria = 55684
}) -- Eastern Azure Span Hunt

map.nodes[68505285] = GrandHunt({
    mapID = map.id,
    areaPOI = 7096,
    criteria = 55685
}) -- Southern Azure Span Hunt

map.nodes[38453474] = GrandHunt({
    mapID = map.id,
    areaPOI = 7094,
    criteria = 55683
}) -- Western Azure San Hunt

-------------------------------------------------------------------------------
------------------------------- COMMUNITY FEAST -------------------------------
-------------------------------------------------------------------------------

local COMMUNITY_FEAST_AREA_POIS = {
    [7218] = 'Before Feast',
    [7219] = 'During Feast',
    [7220] = 'After Feast'
}

local COMMUNITY_FEAST_REWARDS = {
    Achievement({id = 16444}), -- Leftovers Revenge
    Achievement({
        id = 16443,
        criteria = {id = 1, qty = true, suffix = L['tasks_completed_suffix']}
    }), -- Soupervisor
    Recipe({item = 198131, profession = 185}), -- Recipe: Gral's Devotion
    Recipe({item = 198129, profession = 185}), -- Recipe: Gral's Reverence
    Recipe({item = 198130, profession = 185}), -- Recipe: Gral's Veneration
    Transmog({item = 200882, slot = L['cosmetic']}), -- Big Kinook's Spare Ladle
    ns.reward.Spacer(), Item({item = 200652}), -- Alchemical Flavor Pocket
    Item({item = 192055}), -- Dragon Isles Artifact
    Item({item = 200071}) -- Sacred Tuskarr Totem
}

map.nodes[13524860] = Collectible({
    label = L['community_feast_label'],
    icon = 629056,
    areaPOIs = {7218, 7219, 7220},
    mapID = map.id,
    group = ns.groups.COMMUNITY_FEAST,
    requires = ns.requirement.Reputation(2511, 3, true), -- Iskaara Tuskarr
    rewards = COMMUNITY_FEAST_REWARDS,
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
}) -- Community Feast

hooksecurefunc(AreaPOIPinMixin, 'TryShowTooltip', function(self)
    if self and self.areaPoiID then
        local mapID = self:GetMap().mapID
        local group = ns.groups.COMMUNITY_FEAST
        if COMMUNITY_FEAST_AREA_POIS[self.areaPoiID] then
            if group:GetDisplay(mapID) then
                if ns:GetOpt('show_loot') then
                    GameTooltip:AddLine(' ')
                    for i, reward in ipairs(COMMUNITY_FEAST_REWARDS) do
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
---------------------- ANCIENT STONES OF THE AZURE SPAN -----------------------
-------------------------------------------------------------------------------

map.nodes[56737039] = AncientStone({
    rewards = {Achievement({id = 17563, criteria = 58814})}
}) -- In'bunata's Blessing

map.nodes[08014565] = AncientStone({
    rewards = {Achievement({id = 17563, criteria = 58815})}
}) -- A Solid Foundation

map.nodes[66416102] = AncientStone({
    rewards = {Achievement({id = 17563, criteria = 58816})}
}) -- Attention: Immediate Evactuation

map.nodes[60324973] = AncientStone({
    location = L['in_small_cave'],
    rewards = {Achievement({id = 17563, criteria = 58817})},
    pois = {POI({60895007})} -- Entrance
}) -- The Vow

map.nodes[77403113] = AncientStone({
    rewards = {Achievement({id = 17563, criteria = 58818})}
}) -- Valkros Maintenance

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

------------------------ MOUNT: TEMPERAMENTAL SKYCLAW -------------------------

local TemperamentalSkyclaw = Class('TemperamentalSkyclaw', Collectible, {
    id = 190892,
    icon = 4218760,
    rewards = {
        Mount({item = 201454, id = 1674}) -- Temperamental Skyclaw
    },
    pois = {POI({58234353, 23074372, 32004400})}
}) -- Temperamental Skyclaw

function TemperamentalSkyclaw.getters:note()
    local note = L['temperamental_skyclaw_note_start']
    note = note .. ItemStatus(201420, 20, '{item:201420}') -- Gnolan's House Special
    note = note .. ItemStatus(201421, 20, '{item:201421}') -- Tuskarr Jerky
    note = note .. ItemStatus(201422, 20, '{item:201422}') -- Flash Frozen Meat
    return note .. '\n\n' .. L['temperamental_skyclaw_note_end']
end

map.nodes[19042397] = TemperamentalSkyclaw()

--------------------------- ACHIEVEMENT: SEEING BLUE --------------------------

map.nodes[40116156] = Collectible({
    label = '{achievement:16581}',
    note = L['seeing_blue_note'],
    icon = 2103880,
    rewards = {Achievement({id = 16581})},
    pois = {ns.poi.Arrow({40116156, 46112646}), POI({46112646})}
}) -- Seeing Blue

----------------- ACHIEVEMENT: DO YOU WANNA BUILD A SNOWMAN? ------------------

map.nodes[50935561] = Collectible({
    label = '{achievement:16474}',
    note = L['snowman_note'],
    icon = 655957,
    rewards = {Achievement({id = 16474})},
    pois = {POI({50955481, 50985611})}
}) -- Do You Wanna Build a Snowman?

--------------------- ACHIEVEMENT: RIVER RAPIDS WRANGLER ----------------------

map.nodes[45025405] = Collectible({
    label = '{achievement:15889}',
    note = L['river_rapids_wrangler_note'],
    icon = 134325,
    requires = ns.requirement.Quest(66155), -- Ruriq's River Rapids Ride
    rewards = {Achievement({id = 15889})}
}) -- River Rapids Wrangler

------------------------------ PET: SNOWCLAW CUB ------------------------------

local SnowclawCub = Class('SnowclawCub', Collectible, {
    id = 196768,
    icon = 4532351,
    requires = ns.requirement.Quest(67606), -- A Dryadic Remedy
    rewards = {
        Pet({item = 201838, id = 3359}) -- Snowclaw Cub
    }
}) -- Snowclaw Cub

function SnowclawCub.getters:note()
    local note = L['snowclaw_cub_note_start']
    note = note .. ItemStatus(197744, 3, L['snowclaw_cub_note_item1']) -- Hornswog Hunk
    note = note .. ItemStatus(198356, 1, L['snowclaw_cub_note_item2']) -- Honey Snack
    return note .. '\n\n' .. L['snowclaw_cub_note_end']
end

map.nodes[67431840] = SnowclawCub()

------------------------ ITEM: TOME OF POLYMORPH: DUCK ------------------------

map.nodes[66333211] = Collectible({
    label = '{item:200205}',
    icon = 133739,
    note = L['tome_of_polymoph_duck'],
    class = 'MAGE',
    rewards = {
        Item({item = 200205}) -- Tome of Polymoph: Duck
    },
    pois = {POI({66453173})}
}) -- Tome of Polymorph: Duck

------------------- ACHIEVEMENT: THREE MINUTES OR IT'S FREE -------------------

map.nodes[45635482] = Node({
    label = '{item:200949}',
    note = L['the_great_shellkhan_note'],
    icon = 133920,
    quest = 72110,
    rewards = {
        Item({item = 200949}) -- Case of Fresh Gleamfish
    }
}) -- Case of Fresh Gleamfish

------------------------- ITEM: MAGICAL SALT CRYSTAL --------------------------

map.nodes[11604106] = Node({
    label = '{item:201033}',
    location = L['in_small_cave'],
    note = L['slurpo_snail_note'],
    icon = 132780,
    quest = 74079,
    rewards = {
        Item({item = 201033}) -- Magical Salt Crystal
    },
    pois = {POI({11084139})} -- Entrance
}) -- Magical Salt Crystal

----------------------------- TOY: ARTIST'S EASEL -----------------------------

local Ranpiata = Class('Ranpiata', Collectible, {
    id = 194425,
    icon = 237053,
    rewards = {
        Toy({item = 198474}) -- Artist's Easel
    },
    pois = {
        POI({22133677}) -- Rauvros
    }
}) -- Ranpiata

function Ranpiata.getters:note()
    local note = QuestStatus(70166, 1, L['artists_easel_note_step1'], true) -- The Joy of Painting
    note = note .. QuestStatus(70168, 2, L['artists_easel_note_step2'], true) -- Sad Little Accidents
    note = note .. QuestStatus(70170, 3, L['artists_easel_note_step3'], true) -- Beat the Demons Out of It
    return note .. L['artists_easel_note_step4']
end

map.nodes[07855348] = Ranpiata()

----------------------- TOY: SOMEWHAT-STABILIZED ARCANA -----------------------

map.nodes[46202580] = Collectible({
    label = '{item:200628}',
    icon = 136116,
    note = L['somewhat_stabilized_arcana_note'],
    quest = {71094, 71095, 71096, 71097},
    questCount = true,
    rewards = {
        Toy({item = 200628}) -- Somewhat-Stabilized Arcana
    }
})

---------------------------- PET: MOTE OF NASZ'URO ----------------------------

map.nodes[78843413] = ns.node.MoteOfNaszuro({
    quest = 76178,
    note = L['naszuro_vakthros']
}) -- Vakthros

map.nodes[61577143] = ns.node.MoteOfNaszuro({
    quest = 76179,
    note = L['naszuro_imbu']
}) -- Imbu

map.nodes[36405646] = ns.node.MoteOfNaszuro({
    quest = 76180,
    note = L['naszuro_azure_archives']
}) -- Azure Archives

map.nodes[08235308] = ns.node.MoteOfNaszuro({
    quest = 76181,
    note = L['naszuro_hudsons_rock']
}) -- Hudson's Rock

------------------------------- BOAT TO ISKAARA -------------------------------

map.nodes[73677052] = Node({
    icon = 'ferry',
    scale = 1.5,
    label = L['ferry_to_iskaara'],
    pois = {ns.poi.Arrow({73677052, 13845047})}
}) -- Boat to Iskaara

----------------------------- MISCELLANEOUS NPCs ------------------------------

map.nodes[12404920] = NPC({
    id = 186448,
    icon = 4638464,
    note = L['elder_poa_note'],
    pois = {
        POI({12814934}) -- Entrance
    }
}) -- Elder Poa (Iskaara Tuskarr Reputation)

local Kazzi = Class('Kazzi', Vendor, {
    id = 201105,
    requires = {ns.requirement.Quest(72547)}, -- Academic Acquisitions
    rewards = {
        Toy({item = 202283, note = L['rep_revered']}), -- Reading Glasses
        Toy({item = 202253, note = L['rep_exalted']}), -- Primal Stave of Claw and Fur
        Achievement({
            id = 17427,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['kazzi_achievement_suffix']
            }
        }), -- Winterpelt Conversationalist
        Spacer(), Section(L['rep_honored']),
        Transmog({item = 204354, slot = L['cosmetic'], count = '500'}), -- Hollowed Furbolg Food Pack
        -- NOT IN DC
        Item({item = 202273, quest = 73054, count = '50'}), -- Renewed Proto-Drake: Stubby Snout
        Item({item = 197583, quest = 69787, count = '50'}), -- Windborne Velocidrake: Exposed Finned Back
        Item({item = 197129, quest = 69330, count = '50'}), -- Highland Drake: Sleek Horns
        Item({item = 197006, quest = 69206, count = '50'}), -- Cliffside Wylderdrake: Plated Nose
        Spacer(), Section(L['rep_revered']),
        Item({item = 202287, count = '100'}), -- Paw-Made Winterpelt Reagent Bag
        Transmog({item = 204355, slot = L['cosmetic'], count = '500'}), -- Hollowed Winterpelt Food Pack
        Toy({item = 203734, count = '200'}), -- Snow Blanket
        Recipe({item = 204678, profession = 197, count = '200'}), -- Pattern: Paw-Made Winterpelt Reagent Bag
        Recipe({item = 202289, profession = 185, count = '750'}), -- Recipe: Firewater Sorbet
        -- NOT IN DC
        Item({item = 202279, quest = 73056, count = '100'}), -- Renewed Proto-Drake: Malevolent Horns
        Item({item = 197629, quest = 69835, count = '100'}), -- Windborne Velocidrake: Spiked Neck
        Item({item = 197102, quest = 69303, count = '100'}), -- Highland Drake: Horned Chin
        Item({item = 196995, quest = 69195, count = '100'}), -- Cliffside Wylderdrake: Spiked Horns
        Spacer(), Section(L['rep_exalted']),
        Pet({item = 202255, id = 3427, count = '150'}) -- Driftling
    },
    pois = {
        POI({66921271}) -- Sonova Snowden
    }
}) -- Kazzi <Winterpelt Furbolg Quartermaster>

function Kazzi.getters:note()
    local itemOne = GetItemCount(202017, true) -- Liberated Furbolg Artifact
    local itemTwo = GetItemCount(202018, true) -- Intact Scribe Stick
    local note = L['kazzi_note_start'] .. '\n\n'
    note = note .. format(L['kazzi_note_item'], itemOne, '202017') .. '\n'
    note = note .. format(L['kazzi_note_item'], itemTwo, '202018')
    return note
end

map.nodes[65801269] = Kazzi()

-------------------------------------------------------------------------------
------------------------------- FYRAKK ASSAULT --------------------------------
-------------------------------------------------------------------------------

local FyrakkAssault = Class('FyrakkAssault', ns.requirement.Requirement, {
    text = L['fyrakk_assault_label'],
    IsMet = function()
        local validPOIs = {7432, 7433, 7434, 7435, 7488}
        local activePOIs = C_AreaPoiInfo.GetAreaPOIForMap(map.id)
        for _, activePOI in ipairs(activePOIs) do
            for _, validPOI in pairs(validPOIs) do
                if activePOI == validPOI then return true end
            end
        end
        return false
    end
})()

map.nodes[58512618] = Collectible({
    label = L['fyrakk_assault_label'],
    icon = 4914672,
    quest = {75467, 74526}, -- Shadeisethal, Secured Shipment
    vignette = 5610, -- Disciple of Fyrakk -- review not showing tooltip
    requires = FyrakkAssault,
    rewards = {
        Achievement({id = 17506}), -- Still Standing in the Fire
        Achievement({id = 17735, criteria = {id = 1, qty = true}}), -- We Didn't Start the Fire
        Section('{npc:203411}'), -- Shadeisethal
        Pet({item = 205002, id = 3511}), -- Blaise
        Pet({item = 205003, id = 3512}), -- Ambre
        Toy({item = 206043}), -- Fyrakk's Frenzy
        DC.RenewedProtoDrake.BruiserHorns,
        DC.RenewedProtoDrake.BlackAndRedArmor, Spacer(),
        Section(L['fyrakk_secured_shipment']),
        DC.RenewedProtoDrake.BronzeAndPinkArmor,
        DC.WindborneVelocidrake.BronzeAndGreenArmor,
        DC.HighlandDrake.BronzeAndGreenArmor,
        DC.CliffsideWylderdrake.BronzeAndTealArmor,
        DC.WindingSlitherdrake.GreenAndBronzeArmor
    }
}) -- Fyrakk Assault

------------------------------- CRAFTING TABLES -------------------------------

-- 2096	Brackenhide Hollow - Brackenhide Hollow
-- 2106	Brackenhide Hollow - Den of Decay
-- local denofdecay = Map({id = 2106, settings = false}) -- Den of Decay
-- denofdecay.nodes[63703852] = ns.node.Node({
--     -- dungeonLevel = 2,
--     -- type = "table",
--     label = L["altar_of_decay_label"],
--     icon = 4554436,
--     note = L['altar_of_decay_note'],
--     IsEnabled = function(self) -- Leatherworking, Alchemy
--         if ns.PlayerHasProfession(165) or ns.PlayerHasProfession(171) then return true
--         else return false end
--         return ns.node.Item.IsEnabled(self)
--     end
-- }) -- The Altar of Decay

map.nodes[38376074] = Node({
    label = L['azure_loom_label'],
    icon = 4549303,
    note = L['azure_loom_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Tailoring
        if not ns.PlayerHasProfession(197) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Azure Loom

map.nodes[53193141] = Node({
    label = L['shadowflame_forge_label'],
    icon = 4622286,
    note = L['shadowflame_forge_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Blacksmithing
        if not ns.PlayerHasProfession(164) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Shadowflame Forge

map.nodes[53903029] = Node({
    label = L['shadowflame_blacksmithing_anvil_label'],
    icon = 4914678, --
    note = L['shadowflame_blacksmithing_anvil_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Blacksmithing, Engineering
        local bs = ns.PlayerHasProfession(164)
        local en = ns.PlayerHasProfession(202)
        if not bs and not en then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Shadowflame Blacksmithing Anvil

map.nodes[54853216] = Node({
    label = L['shadowflame_leatherworking_table_label'],
    icon = 5088848,
    note = L['shadowflame_leatherworking_table_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Leatherworking
        if not ns.PlayerHasProfession(165) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Shadowflame Leatherworking Table

map.nodes[55693044] = Node({
    label = L['shadowflame_incantation_table_label'],
    icon = 4620672,
    note = L['shadowflame_incantation_table_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Enchanting
        if not ns.PlayerHasProfession(333) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Shadowflame Incantation Table

------------------------------------------------------------------------------
--------------------------------- DREAMSURGE ---------------------------------
------------------------------------------------------------------------------

map.nodes[45603972] = ns.node.Celestine()
map.nodes[32663964] = ns.node.RenewedMagmammoth()

-------------------------------- TUSKARR PEPE ---------------------------------

map.nodes[12904860] = Collectible({
    label = L['tuskarr_pepe_label'],
    note = L['tuskarr_pepe_note'],
    icon = 1044996,
    rewards = {
        Item({item = 213207, quest = 79551}) -- A Tiny Ear Warmer
    }
}) -- Tuskarr Pepe

-------------------------------------------------------------------------------
--------------------------------- THE BIG DIG ---------------------------------
-------------------------------------------------------------------------------

local Eadweard = Class('Eadweard', Collectible, {
    label = '{npc:209134}',
    icon = 5315246,
    rewards = {
        Achievement({
            id = 19790,
            criteria = {
                65402, -- Tenured Archivist
                65398, -- When a Rock is Just a Rock
                65403, -- Goggle Wobble
                65399, -- Clued In
                65400, -- Relic Rescuer
                65401, -- Tome Comber
                65420, -- Finally At Rest
                65421 -- Just One More Thing
            }
        }), -- The Archives Called, You Answered
        Transmog({item = 212692, slot = L['cosmetic']}), -- Excavator's Dusky Fedora
        Transmog({item = 212638, slot = L['cosmetic']}), -- Excavator's Work Shirt
        Transmog({item = 212793, slot = L['cosmetic']}), -- Excavator's Pack of Findings
        Transmog({item = 212640, slot = L['cosmetic']}), -- Excavator's Trusty Satchel
        Transmog({item = 212641, slot = L['cosmetic']}), -- Excavator's Rugged Pants
        Transmog({item = 212639, slot = L['cosmetic']}), -- Excavator's Glovelettes
        Transmog({item = 212642, slot = L['cosmetic']}), -- Excavator's Boots
        Spacer(), --
        Section('{item:213177}'), --
        Mount({item = 212645, id = 2038}) -- Clayscale Hornstrider
    }
}) -- Eadweard Dalyngrigge

function Eadweard.getters:rlabel()
    local completed = C_QuestLog.IsQuestFlaggedCompleted(79226)
    local color = completed and ns.status.Green or ns.status.Gray
    return color(L['weekly'])
end

map.nodes[26964646] = Eadweard()

-- STOP: DO NOT ADD NEW NODES HERE UNLESS THEY BELONG IN MISCELLANEOUS
