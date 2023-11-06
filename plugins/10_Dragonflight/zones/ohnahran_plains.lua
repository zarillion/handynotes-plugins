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

local AncientStone = ns.node.AncientStone
local Disturbeddirt = ns.node.Disturbeddirt
local Dragonglyph = ns.node.Dragonglyph
local ElementalStorm = ns.node.ElementalStorm
local ElusiveCreature = ns.node.ElusiveCreature
local Flag = ns.node.Flag
local GrandHunt = ns.node.GrandHunt
local LegendaryCharacter = ns.node.LegendaryCharacter
local MagicBoundChest = ns.node.MagicBoundChest
local PM = ns.node.ProfessionMasters
local PrettyNeat = ns.node.PrettyNeat
local PT = ns.node.ProfessionTreasures
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
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus
local QuestStatus = ns.tooltip.QuestStatus

local DC = ns.DRAGON_CUSTOMIZATIONS

-------------------------------------------------------------------------------

local map = Map({id = 2023, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[31567644] = Rare({
    id = 195186,
    vignette = 5351,
    quest = 73950,
    note = L['eaglewatch_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56092})}
}) -- Cinta the Forgotten

map.nodes[30546628] = Rare({
    id = 189652,
    vignette = nil,
    quest = 73872,
    rewards = {
        Achievement({id = 16677, criteria = 56068}),
        Transmog({item = 189055, slot = L['wand']}), -- Ghendish's Backup Talisman
        Transmog({item = 200308, slot = L['bow']}), -- Rellen's Legacy
        Transmog({item = 200441, slot = L['leather']}), -- Jhakan's Horned Cowl
        DC.RenewedProtoDrake.GrayHair, DC.CliffsideWylderdrake.ManedTail
    },
    pois = {
        Path({
            31686814, 31426810, 31206769, 30796652, 30546628, 30246637,
            29586720, 29286786, 29186827
        })
    }
}) -- Deadwaker Ghendish

map.nodes[49866673] = Rare({
    id = 192020,
    vignette = 5138,
    quest = 74063,
    note = L['eaglemaster_niraak_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56077}),
        Transmog({item = 200308, slot = L['bow']}), -- Rellen's Legacy
        Transmog({item = 200441, slot = L['leather']}), -- Jhakan's Horned Cowl
        DC.RenewedProtoDrake.GrayHair, DC.CliffsideWylderdrake.ManedTail
    }
}) -- Eaglemaster Niraak

map.nodes[56718128] = Rare({
    id = 193142,
    vignette = 5173,
    quest = 73875,
    location = L['in_small_cave'],
    rewards = {
        Achievement({id = 16677, criteria = 56064}),
        Transmog({item = 200309, slot = L['plate']}), -- Rock Encrusted Chestguard
        Transmog({item = 200244, slot = L['leather']}), -- Enchanted Muckstompers
        Transmog({item = 200246, slot = L['staff']}), -- Lost Delving Lamp
        Transmog({item = 200683, slot = L['plate']}), -- Legguards of the Deep Strata
        DC.HighlandDrake.ClubTail, DC.CliffsideWylderdrake.BlackHorns
    }
}) -- Enraged Sapphire

map.nodes[75184651] = Rare({
    id = 193170,
    vignette = 5182,
    quest = 73994,
    interval = ns.Intervals.Interval14h({id = 17}),
    rewards = {
        Achievement({id = 16677, criteria = 56075}),
        Transmog({item = 200433, slot = L['leather']}), -- Footwraps of Subjugation
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Fulgurb

map.nodes[85221544] = Rare({
    id = 187781,
    vignette = nil,
    quest = 73951,
    note = L['aylaag_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56082})}
}) -- Hamett

map.nodes[80544222] = Rare({
    id = 188095,
    vignette = 5077,
    quest = 73966,
    note = L['aylaag_outpost_note'] .. '\n\n' .. L['hunter_of_the_deep_note'],
    rewards = {Achievement({id = 16677, criteria = 56083})}
}) -- Hunter of Deep

map.nodes[80513869] = Rare({
    id = 188124,
    vignette = 5078,
    quest = 73967,
    location = L['in_cave'],
    note = L['aylaag_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56084})},
    pois = {POI({79143656})} -- Entrance
}) -- Irontree

map.nodes[87556151] = Rare({
    id = 197009,
    vignette = nil,
    quest = 73882,
    rewards = {
        Achievement({id = 16677, criteria = 56067}), --
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200434, slot = L['cloth']}), -- Anund's Mana-Singed Amice
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.RenewedProtoDrake.SharkSnout, DC.HighlandDrake.FinnedHead,
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Liskheszaera

map.nodes[32823817] = Rare({
    id = 195409,
    vignette = 5365,
    quest = 73968,
    note = L['eaglewatch_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56094})}
}) -- Makhra the Ashtouched

map.nodes[71694585] = Rare({
    id = 193212,
    vignette = 5195,
    quest = 74011,
    interval = ns.Intervals.Interval14h({id = 27}),
    rewards = {
        Achievement({id = 16677, criteria = 56073}),
        Transmog({item = 200197, slot = L['staff']}), -- Armoredon Herding Crook
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 198409}), -- Personal Shell
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane
    }
}) -- Malsegan

map.nodes[63017996] = Rare({
    id = 193173,
    vignette = 5183,
    quest = 74015,
    interval = ns.Intervals.Interval14h({id = 9}),
    rewards = {
        Achievement({id = 16677, criteria = 56070}),
        Transmog({item = 200306, slot = L['cloak']}), -- Tempest Shawl
        Toy({item = 200198}), -- Primalist Prison
        DC.WindborneVelocidrake.SweptHorns,
        DC.WindborneVelocidrake.ClusterHorns, DC.RenewedProtoDrake.PurpleHair,
        DC.RenewedProtoDrake.HeavyHorns
    }
}) -- Mikrin of the Raging Winds

map.nodes[58604940] = Rare({
    id = 187219,
    vignette = nil,
    label = L['defend_clan_aylaag'],
    note = L['defend_clan_aylaag_note'],
    rewards = {
        Achievement({
            id = 16677,
            criteria = {
                {id = 56081}, -- Nokhud Warmaster
                {id = 56096}, -- Old Stormhide
                {id = 56095} -- The Great Enla
            }
        })
    }
}) -- Defend Clan Aylaag

map.nodes[61212950] = Rare({
    id = 193235,
    vignette = 5199,
    quest = 74018,
    interval = ns.Intervals.Interval14h({id = 24}),
    rewards = {
        Achievement({id = 16677, criteria = 56074}),
        Transmog({item = 200203, slot = L['mail']}), -- Repurposed Giant's Thimble
        Transmog({item = 200684, slot = L['2h_sword']}), -- Emerald Tailbone
        DC.HighlandDrake.ClubTail, DC.WindborneVelocidrake.GrayHorns
    }
}) -- Oshigol

map.nodes[59686802] = Rare({
    id = 191950,
    vignette = 5136,
    quest = 73971,
    location = L['in_small_cave'],
    note = L['river_camp_note'] .. '\n\n' .. L['porta_the_overgrown_note'],
    rewards = {Achievement({id = 16677, criteria = 56087})},
    pois = {
        POI({59696879}), -- Entrance
        POI({
            color = 'Green',
            points = {
                50507017, 52706580, 54606940, 52137051, 53107200, 49706870,
                54177150, 52746993
            }
        }) -- Enriched Soil Pile
    }
}) -- Porta the Overgrown

local Quackers = Class('Quackers', Rare, {
    id = 192557,
    vignette = 5144,
    quest = 73972,
    note = L['river_camp_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56091}),
        Achievement({id = 16446, criteria = 55396, note = L['pretty_neat_note']})
    },
    pois = {POI({70406355, label = '{item:194740}'})} -- item=194740/duck-trap-kit
})

function Quackers.getters:note()
    local note = L['quackers_duck_trap_kit']
    note = note .. ItemStatus(201402, 1, '{item:201402}') -- Large Sturdy Femur
    note = note .. ItemStatus(193053, 3, '{item:193053}') -- Contoured Fowlfeather
    note = note .. ItemStatus(201404, 2, '{item:201404}') -- Tallstrider Sinew
    return note .. '\n\n' .. L['quackers_spawn']
end

map.nodes[68207920] = Quackers() -- Quackers the Terrible

map.nodes[37005380] = Rare({
    id = 196010,
    vignette = 5378,
    quest = 74023,
    interval = ns.Intervals.Interval14h({id = 14}),
    rewards = {
        Achievement({id = 16677, criteria = 56069}),
        Transmog({item = 200165, slot = L['shield']}), -- Aegis of Scales
        Transmog({item = 200682, slot = L['plate']}), -- Hardened Scale Shoulderguards
        Transmog({item = 200228, slot = L['mail']}), -- Protoscale Pauldrons
        Transmog({item = 200438, slot = L['mail']}), -- Surcoat of the Chastigator
        DC.CliffsideWylderdrake.HeavyHorns, DC.RenewedProtoDrake.ClubTail
    }
}) -- Researcher Sneakwing

map.nodes[43405560] = Rare({
    id = 193227,
    vignette = 5205,
    quest = 74026,
    interval = ns.Intervals.Interval14h({id = 3}),
    rewards = {
        Achievement({id = 16677, criteria = 56071}),
        Transmog({item = 200308, slot = L['bow']}), -- Rellen's Legacy
        Transmog({item = 200441, slot = L['leather']}), -- Jhakan's Horned Cowl
        DC.CliffsideWylderdrake.ManedTail, DC.RenewedProtoDrake.GrayHair
    }
}) -- Ronsak the Decimator

map.nodes[42804428] = Rare({
    id = 195223,
    vignette = nil,
    quest = 73973,
    note = L['eaglewatch_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56093})}
}) -- Rustlily

map.nodes[20444344] = Rare({
    id = 193215,
    vignette = 5190,
    quest = 74073,
    note = L['scaleseeker_mezeri_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56079}),
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        Transmog({item = 200293, slot = L['warglaive']}), -- Primal Scion's Twinblade
        Transmog({item = 200294, slot = L['mail']}), -- Primal Chain Hauberk
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Transmog({item = 200439, slot = L['offhand']}), -- Earthpact Scepter
        Toy({item = 200198}), -- Primalist Prison
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns
    },
    pois = {POI({16605120})} -- Dawnbell
}) -- Scaleseeker Mezeri

map.nodes[50117517] = Rare({
    id = 193136,
    vignette = 5187,
    quest = 73893,
    rewards = {
        Achievement({id = 16677, criteria = 56063}),
        Transmog({item = 200168, slot = L['leather']}), -- Gnoll Hide Belt
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        DC.CliffsideWylderdrake.Ears, DC.HighlandDrake.SpikedClubTail
    }
}) -- Scav Notail

map.nodes[61801283] = Rare({
    id = 193188,
    vignette = nil,
    quest = 73894,
    rewards = {
        Achievement({id = 16677, criteria = 56065}),
        Transmog({item = 200875, slot = L['plate']}), -- Seeker's Bands
        Transmog({item = 200138, slot = L['polearm']}), -- Ancient Dancer's Longspear
        Transmog({item = 200758, slot = L['plate']}), -- Breastplate of Storied Antiquity
        DC.HighlandDrake.SpinedChin, DC.CliffsideWylderdrake.SpikedBack,
        DC.WindborneVelocidrake.SpikedBack, DC.HighlandDrake.StripedPattern
    }
}) -- Seeker Teryx

map.nodes[29964103] = Rare({
    id = 187559,
    vignette = nil,
    quest = 74075,
    note = L['shade_of_grief_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56080}),
        Transmog({item = 200256, slot = L['offhand']}), -- Darkmaul Soul Horn
        Transmog({item = 200310, slot = L['cloak']}), -- Stole of the Iron Phantom
        Transmog({item = 200444, slot = L['leather']}), -- Mantle of the Gatekeeper
        Transmog({item = 200437, slot = L['1h_mace']}), -- Dreamsong Censer
        DC.CliffsideWylderdrake.BranchedHorns, DC.HighlandDrake.ThornedJaw,
        DC.CliffsideWylderdrake.HornedJaw, DC.RenewedProtoDrake.WhiteHorns
    }
}) -- Shade of Grief

map.nodes[21603960] = Rare({
    id = 193165,
    vignette = nil,
    quest = 73896,
    rewards = {
        Achievement({id = 16677, criteria = 56062}),
        Transmog({item = 200234, slot = L['shield']}), -- Vrak's Embossed Aegis
        Transmog({item = 200297, slot = L['1h_mace']}), -- Hastily Cobbled Maul
        Toy({item = 200198}), -- Primalist Prison
        DC.HighlandDrake.Ears, DC.RenewedProtoDrake.PurpleHair,
        DC.CliffsideWylderdrake.SweptHorns, DC.RenewedProtoDrake.HeavyHorns,
        DC.WindborneVelocidrake.SweptHorns
    }
}) -- Sparkspitter Vrak

map.nodes[53627281] = Rare({
    id = 193123,
    vignette = 5168,
    quest = 74034,
    interval = ns.Intervals.Interval14h({id = 20}),
    rewards = {
        Achievement({id = 16677, criteria = 56072}),
        Transmog({item = 200216, slot = L['cloth']}), -- Water Heating Cord
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Steamgill

map.nodes[78298276] = Rare({
    id = 191842,
    vignette = 5135,
    quest = 73974,
    note = L['river_camp_note'],
    rewards = {Achievement({id = 16677, criteria = 56086})}
}) -- Sulfurion

map.nodes[27605560] = Rare({
    id = 195204,
    vignette = 5352,
    quest = 73976,
    note = L['eaglewatch_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56088})}
}) -- The Jolly Giant

map.nodes[83786215] = Rare({
    id = 192453,
    vignette = nil,
    quest = 73978,
    note = L['river_camp_note'],
    rewards = {Achievement({id = 16677, criteria = 56090})}
}) -- Vaniik the Stormtouched

map.nodes[84214784] = Rare({
    id = 192364,
    vignette = 5140,
    quest = 73979,
    note = L['river_camp_note'] .. '\n\n' .. L['windscale_the_stormborn_note'],
    rewards = {Achievement({id = 16677, criteria = 56089})}
}) -- Windscale the Stormborn

map.nodes[58596822] = Rare({
    id = 192045,
    vignette = 5553,
    quest = 74088,
    note = L['windseeker_avash_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56076}),
        Transmog({item = 200308, slot = L['bow']}), -- Rellen's Legacy
        Transmog({item = 200441, slot = L['leather']}), -- Jhakan's Horned Cowl
        DC.RenewedProtoDrake.GrayHair, DC.CliffsideWylderdrake.ManedTail
    }
}) -- Windseeker Avash

map.nodes[30206260] = Rare({
    id = 193140,
    vignette = 5469,
    quest = 74091,
    note = L['zarizz_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56078}),
        Transmog({item = 200215, slot = L['mail']}), -- Plumed Shoulderguards of the Hunt
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200442, slot = L['leather']}) -- Basilisk Hide Jerkin
    }
}) -- Zarizz

map.nodes[31456387] = Rare({
    id = 193209,
    vignette = nil,
    quest = 73901,
    rewards = {
        Achievement({id = 16677, criteria = 56066}),
        Achievement({id = 16446, criteria = 55395, note = L['pretty_neat_note']}),
        Mount({item = 198825, id = 1672}), -- Zenet Hatchling
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200314, slot = L['cloth']}), -- Skyspeaker's Envelope
        Transmog({item = 200306, slot = L['cloak']}), -- Tempest Shawl
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.HighlandDrake.ManedHead, DC.CliffsideWylderdrake.HeadMane,
        DC.RenewedProtoDrake.PurpleHair, DC.WindborneVelocidrake.SweptHorns
    }
}) -- Zenet Avis

map.nodes[72232306] = Rare({
    id = 188451,
    vignette = 5087,
    quest = 73980,
    note = L['aylaag_outpost_note'],
    rewards = {Achievement({id = 16677, criteria = 56085})}
}) -- Zerimek

map.nodes[90434005] = Rare({
    id = 193128,
    vignette = nil,
    quest = 74096,
    note = L['blightpaw_note'],
    rewards = {
        Achievement({id = 16679, criteria = 56136}),
        Transmog({item = 200127, slot = L['1h_sword']}), -- Gold-Alloy Blade
        Transmog({item = 200266, slot = L['crossbow']}), -- Gnollish Chewtoy Launcher
        Transmog({item = 200283, slot = L['leather']}), -- Gnoll-Gnawed Breeches
        Transmog({item = 200432, slot = L['cloth']}), -- Rotguard Cowl
        Toy({item = 200178}), -- Infected Ichor
        DC.CliffsideWylderdrake.BlackHair,
        DC.CliffsideWylderdrake.DualHornedChin, DC.CliffsideWylderdrake.Ears,
        DC.HighlandDrake.SpikedClubTail
    }
}) -- Blightpaw the Depraved

map.nodes[80817770] = Rare({
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

map.nodes[73725602] = Rare({id = 193168, quest = 73903}) -- Biryuk

map.nodes[59926696] = Rare({
    id = 193669,
    vignette = 5240,
    quest = 72815,
    rewards = {
        Item({item = 198048}), -- Titan Training Matrix I
        Transmog({item = 200199, slot = L['mail']}), -- Elements' Burden
        Transmog({item = 200292, slot = L['plate']}), -- Cragforge Pauldrons
        Transmog({item = 200293, slot = L['warglaive']}), -- Primal Scion's Twinblade
        Transmog({item = 200294, slot = L['mail']}), -- Primal Chain Hauberk
        Transmog({item = 200306, slot = L['cloak']}), -- Tempest Shawl
        Transmog({item = 200313, slot = L['cloak']}), -- Earthen Protoscale Drape
        Transmog({item = 200314, slot = L['cloth']}), -- Skyspeaker's Envelope
        Transmog({item = 200439, slot = L['offhand']}), -- Earthpact Scepter
        Toy({item = 200198}), -- Primalist Prison
        DC.RenewedProtoDrake.PurpleHair, DC.WindborneVelocidrake.SweptHorns,
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns
    }
}) -- Prozela Galeshot

map.nodes[26366533] = Rare({
    id = 193153,
    vignette = 5178,
    quest = 72845,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Ripsaw the Stalker

map.nodes[44894924] = Rare({
    id = 192949,
    vignette = 5389,
    quest = 72847,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 200137, slot = L['dagger']}), -- Chitin Dreadbringer
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200212, slot = L['mail']}), -- Sand-Encrusted Greaves
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Skaara

map.nodes[63034854] = Rare({
    id = 193133,
    vignette = 5170,
    quest = 72849,
    note = L['in_waterfall_cave'],
    rewards = {
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 198409}), -- Personal Shell
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Sunscale Behemoth

map.nodes[22956670] = Rare({
    id = 193163,
    vignette = 5179,
    quest = 72851,
    rewards = {
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200212, slot = L['mail']}), -- Sand-Encrusted Greaves
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Territorial Coastling

map.nodes[26073412] = Rare({
    id = 191354,
    vignette = 5131,
    quest = 72852,
    location = L['in_cave'],
    rewards = {
        Transmog({item = 198429, slot = L['staff']}), -- Typhoon Bringer
        Transmog({item = 200306, slot = L['cloak']}), -- Tempest Shawl
        Transmog({item = 200314, slot = L['cloth']}), -- Skyspeaker's Envelope
        Transmog({item = 200439, slot = L['offhand']}), -- Earthpact Scepter
        Toy({item = 200198}), -- Primalist Prison
        DC.WindborneVelocidrake.SweptHorns, DC.RenewedProtoDrake.PurpleHair,
        DC.RenewedProtoDrake.HeavyHorns, DC.WindborneVelocidrake.ClusterHorns
    },
    pois = {POI({23573442})}
}) -- Ty'foon the Ascended

map.nodes[43105078] = Rare({
    id = 192983,
    vignette = 5163,
    quest = 74095,
    location = L['in_cave'],
    rewards = {
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200186, slot = L['mail']}), -- Amberquill Shroud
        Transmog({item = 200193, slot = L['cloth']}), -- Manafrond Sandals
        Transmog({item = 200195, slot = L['plate']}), -- Thunderscale Legguards
        Transmog({item = 200232, slot = L['warglaive']}), -- Raptor Talonglaive
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        Toy({item = 200249}), -- Mage's Chewed Wand
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    },
    pois = {POI({43724823})}
}) -- Web-Queen Ashkaz

map.nodes[34823454] = Rare({
    id = 201540,
    vignette = {5570, 5898},
    quest = 74546,
    rewards = {
        Transmog({item = 203674, slot = L['plate']}), -- Brutal Tramplers
        DC.CliffsideWylderdrake.ManedTail, DC.RenewedProtoDrake.GrayHair
    },
    pois = {Path({33793438, 34303449, 34823454, 35333464, 35833478, 36323500})}
}) -- Lurgan

map.nodes[36803800] = Rare({
    id = 201535,
    vignette = {5573, 5895},
    quest = 74552,
    rewards = {
        Transmog({item = 203673, slot = L['dagger']}), -- Bloodbeak's Ravenor
        Transmog({item = 200131, slot = L['dagger']}), -- Reclaimed Survivalist's Dagger
        Transmog({item = 200174, slot = L['leather']}), -- Bonesigil Shoulderguards
        Transmog({item = 200442, slot = L['leather']}), -- Basilisk Hide Jerkin
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Bloodbeak the Ravenous

map.nodes[35804040] = Rare({
    id = 201537,
    vignette = {5569, 5896},
    quest = 74463,
    rewards = {
        Transmog({item = 203671, slot = L['cloak']}), -- Bloodbeak's Ravenor
        DC.CliffsideWylderdrake.ManedTail, DC.RenewedProtoDrake.GrayHair,
        DC.CliffsideWylderdrake.HeadMane, DC.HighlandDrake.ManedHead
    }
}) -- Groffnar

map.nodes[32614184] = Rare({
    id = 201539,
    vignette = {5571, 5899},
    quest = 74547,
    rewards = {
        Transmog({item = 203676, slot = L['cloth']}), -- Stormcaller's Grounding Shoes
        Transmog({item = 200441, slot = L['leather']}), -- Jhakan's Horned Cowl
        DC.CliffsideWylderdrake.ManedTail, DC.RenewedProtoDrake.GrayHair
    },
    pois = {Path({32614184, 33014157, 33404161})}
}) -- Stormcaller Narkena

map.nodes[33843872] = Rare({
    id = 201538,
    vignette = {5572, 5897},
    quest = 74548,
    rewards = {
        Transmog({item = 203672, slot = L['mail']}), -- Master Huntmaster's Wristguards
        Transmog({item = 200308, slot = L['bow']}), -- Rellen's Legacy
        DC.CliffsideWylderdrake.ManedTail, DC.RenewedProtoDrake.GrayHair
    }
}) -- Huntmaster Yrgena

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[73495613] = Treasure({
    quest = 70402,
    rewards = {
        Achievement({id = 16299, criteria = 54709}), --
        Toy({item = 200869}) -- Ohn Lite Branded Horn
    }
}) -- Cracked Centaur Horn

map.nodes[33205532] = Treasure({
    quest = 70391,
    note = L['gem_cluster_note'],
    requires = {
        ns.requirement.Reputation(2507, 21, true), -- Dragonscale Expedition
        ns.requirement.Quest(70833), -- Rumors of the Jeweled Whelplings
        ns.requirement.Quest(70392, '{item:198843}') -- Emerald Gardens Explorer's Notes
    },
    rewards = {
        Achievement({id = 16299, criteria = 54700}), --
        Item({item = 200865}) -- Glimmering Ysemerald Cluster
    }
}) -- Emerald Gem Cluster

map.nodes[82327339] = Treasure({
    quest = 70379,
    note = L['gold_swong_coin_note'],
    rewards = {
        Achievement({id = 16299, criteria = 54710}), --
        Item({item = 199338}) -- Copper Coin of the Isles
    },
    pois = {POI({81847223})}
}) -- Gold Swog Coin

map.nodes[32423817] = Treasure({
    quest = 67049,
    note = L['nokhud_warspear_note'],
    requires = {
        ns.requirement.Quest(72709), -- Funding a Treasure Hunt
        ns.requirement.Quest(67046, '{item:194540}') -- Nokhud Armorer's Notes
    },
    rewards = {Achievement({id = 16299, criteria = 54707})}
}) -- Nokhud Warspear

map.nodes[70603543] = Treasure({
    quest = 67950,
    note = L['slightly_chewed_duck_egg_note'],
    requires = ns.requirement.Item(195453), -- Ludo's Stash Map
    rewards = {
        Achievement({id = 16299, criteria = 54708}),
        Pet({item = 199172, id = 3309}) -- Viridescent Duck
    },
    pois = {Path({61044337, 61274149, 61524124, 61754141, 61864232})}
}) -- Slightly Chewed Duck Egg (Dirt Mound)

map.nodes[51985839] = Treasure({
    quest = {70400, 72063}, -- Treasure, Return Yennu's Toy Boat
    label = L['yennus_boat'],
    note = L['yennus_boat_note'],
    rewards = {
        Achievement({id = 16299, criteria = 54711}), --
        Toy({item = 200878}) -- Wheeled Floaty Boaty Controller
    }
}) -- Yennu's Boat

-------------------------------------------------------------------------------

map.nodes[56007878] = ns.node.ElementalChest({
    quest = 71033,
    -- vignette = 5407,
    label = L['chest_of_the_flood'],
    rewards = {
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 200093}), -- Centaur Hunting Trophy
        Transmog({item = 201443, slot = L['shield']}), -- Primal Revenant's Icewall
        Transmog({item = 201442, slot = L['1h_sword']}) -- Primal Revenant's Frostblade
    }
}) -- Water-Bound Chest

map.nodes[53296890] = Treasure({
    label = L['forgotten_dragon_treasure_label'],
    icon = 'chest_gn',
    quest = 74399,
    note = format('%s\n\n%s\n\n%s\n\n%s', L['forgotten_dragon_treasure_step1'],
        L['forgotten_dragon_treasure_step2'],
        L['forgotten_dragon_treasure_step3'],
        L['forgotten_dragon_treasure_step4']),
    rewards = {DC.WindborneVelocidrake.ManedBack},
    pois = {
        POI({
            label = L['fdt_crystalline_flower'],
            note = L['forgotten_dragon_treasure_step1'],
            color = 'Green',
            points = {
                26614876, 26864733, 27585276, 27745084, 29354888, 29495166,
                30504596, 32134689, 36184690
            }
        }), -- Crystalline Flowers
        POI({
            label = L['fdt_ancient_stone'],
            note = L['forgotten_dragon_treasure_step2'] .. '\n\n' ..
                L['forgotten_dragon_treasure_step3'],
            color = 'Yellow',
            points = {67034372}
        }), -- Ancient Stone
        Path({
            67034370, 67324433, 67054530, 66954643, 67104710, 66884798,
            66884842, 66964867, 66874918, 66874946, 66854966, 66975036
        }), -- Path from Ancient Stone to Emerald Chest
        POI({
            label = L['fdt_emerald_chest'],
            color = 'Blue',
            points = {66975036}
        }) -- Emerald Chest
    }
}) -- Forgotten Dragon Treasure

----------------------------- Nokhudon Clan Chest -----------------------------

local ClanChest = Class('ClanChest', ns.node.Node, {
    label = L['clan_chest'],
    icon = 'chest_bk',
    group = ns.groups.CLAN_CHEST,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Transmog({item = 201024, slot = L['cosmetic']}), -- Nokhudon Mantle
        Transmog({item = 201025, slot = L['cosmetic']}), -- Nokhudon Harness
        Transmog({item = 201027, slot = L['cosmetic']}), -- Nokhudon Breeches
        Transmog({item = 201028, slot = L['cosmetic']}), -- Nokhudon Boots
        Transmog({item = 201029, slot = L['cosmetic']}), -- Nokhudon Hood
        Transmog({item = 201030, slot = L['cosmetic']}), -- Nokhudon Grips
        Transmog({item = 201031, slot = L['cosmetic']}), -- Nokhudon Cloak
        Transmog({item = 201032, slot = L['cosmetic']}), -- Nokhudon Wraps
        Transmog({item = 201034, slot = L['cosmetic']}), -- Nokhudon Girdle
        Transmog({item = 201380, slot = L['cosmetic']}), -- Nokhud Hunter's Bow
        Transmog({item = 201382, slot = L['cosmetic']}), -- Centaur Warglaives
        Transmog({item = 201383, slot = L['cosmetic']}), -- Nokhud Stalker's Spear
        Transmog({item = 201384, slot = L['cosmetic']}), -- Centaur Tracker's Javelin
        Transmog({item = 201385, slot = L['cosmetic']}), -- Nokhud Centaur Warstaff
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 200093}), -- Centaur Hunting Trophy
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
})

map.nodes[25013785] = ClanChest()
map.nodes[25323730] = ClanChest()
map.nodes[31307060] = ClanChest()
map.nodes[32206810] = ClanChest()
map.nodes[32403900] = ClanChest()
map.nodes[32503890] = ClanChest()
map.nodes[33504240] = ClanChest()
map.nodes[34803705] = ClanChest()
map.nodes[35004190] = ClanChest()
map.nodes[35406580] = ClanChest()
map.nodes[36104173] = ClanChest()
map.nodes[49406770] = ClanChest()
map.nodes[50906650] = ClanChest()
map.nodes[71845676] = ClanChest()
map.nodes[73405610] = ClanChest()
map.nodes[74603920] = ClanChest()
map.nodes[74704040] = ClanChest()
map.nodes[75204160] = ClanChest()
map.nodes[75504050] = ClanChest()
map.nodes[83705360] = ClanChest()
map.nodes[85505470] = ClanChest()
map.nodes[86485063] = ClanChest()
map.nodes[86505330] = ClanChest()

-------------------------------------------------------------------------------
---------------------------- DRACTHYR SUPPLY CHEST ----------------------------
-------------------------------------------------------------------------------

map.nodes[62701630] = ns.node.DracthyrSupplyChest()
map.nodes[62901870] = ns.node.DracthyrSupplyChest()
map.nodes[64101480] = ns.node.DracthyrSupplyChest()

-------------------------------------------------------------------------------
---------------------------- LIGHTNING BOUND CHEST -----------------------------
-------------------------------------------------------------------------------

local LightningBoundChest = Class('LightningBoundChest', ns.node.Node, {
    label = L['lightning_bound_chest'],
    icon = 'chest_pk',
    group = ns.groups.LIGHTNING_BOUND_CHEST,
    rewards = {
        Item({item = 191784}), -- Dragon Shard of Knowledge
        Transmog({item = 201447, slot = L['cosmetic']}), -- Primal Revenant's Breezeblade
        Transmog({item = 201448, slot = L['cosmetic']}), -- Primal Revenant's Windwall
        Item({item = 199065, quest = 70534}), -- Sorrowful Letter
        Item({item = 199066, quest = 70535}), -- Letter of Caution
        Item({item = 192055}), -- Dragon Isles Artifact
        Item({item = 199906}), -- Titan Relic
        Currency({id = 2003}) -- Dragon Isles Supplies
    }
}) -- Lightning Bound Chest

map.nodes[60804950] = LightningBoundChest()
map.nodes[61005110] = LightningBoundChest()
map.nodes[62005160] = LightningBoundChest()
map.nodes[65601340] = LightningBoundChest()
map.nodes[67001180] = LightningBoundChest()
map.nodes[67101270] = LightningBoundChest()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[24384234] = PetBattle({
    id = 197447,
    rewards = {
        Achievement({id = 16464, criteria = 55486}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 7, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 7, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 7, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 7, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 7, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 7, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 7, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 7, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 7, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 7, oneline = true}) -- Undead
    }
}) -- Stormamu

map.nodes[61964159] = PetBattle({
    id = 197102,
    rewards = {
        Achievement({id = 16464, criteria = 55492}), -- Battle on the Dragon Isles
        ns.reward.Spacer(),
        Achievement({id = 16501, criteria = 2, oneline = true}), -- Aquatic
        Achievement({id = 16503, criteria = 2, oneline = true}), -- Beast
        Achievement({id = 16504, criteria = 2, oneline = true}), -- Critter
        Achievement({id = 16505, criteria = 2, oneline = true}), -- Dragon
        Achievement({id = 16506, criteria = 2, oneline = true}), -- Elemental
        Achievement({id = 16507, criteria = 2, oneline = true}), -- Flying
        Achievement({id = 16508, criteria = 2, oneline = true}), -- Humanoid
        Achievement({id = 16509, criteria = 2, oneline = true}), -- Magic
        Achievement({id = 16510, criteria = 2, oneline = true}), -- Mechanical
        Achievement({id = 16511, criteria = 2, oneline = true}) -- Undead
    }
}) -- Bakhushek

map.nodes[73386799] = PetBattle({
    id = 201858,
    rewards = {
        Achievement({id = 17406, criteria = 58213}) -- Battle on the Dragon Isles II
    }
}) -- Lyver

map.nodes[36165256] = PetBattle({
    id = 201878,
    rewards = {
        Achievement({id = 17406, criteria = 58217}) -- Battle on the Dragon Isles II
    }
}) -- Paws of Thunder

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

map.nodes[25203540] = PT.Jewelcrafting({
    id = 198670,
    quest = 70282,
    note = L['pt_jewel_lofty_malygite_note']
}) -- Lofty Malygite

map.nodes[35344012] = PT.Tailoring({
    id = 198692,
    quest = 70295,
    note = L['pt_tailor_noteworthy_scrap_of_carpet_note']
}) -- Noteworthy Scrap of Carpet

map.nodes[50906650] = PT.Blacksmithing({
    id = 201009,
    quest = 70353,
    note = L['pt_smith_falconer_gauntlet_drawings_note']
}) -- Falconer Gauntlet Drawings

map.nodes[61406760] = PT.Enchanting({
    id = 198689,
    quest = 70291,
    note = L['pt_ench_stormbound_horn_note']
}) -- Stormbound Horn

map.nodes[61801300] = PT.Jewelcrafting({
    id = 198660,
    quest = 70263,
    note = L['pt_jewel_fragmented_key_note']
}) -- Fragmented Key

map.nodes[66105290] = PT.Tailoring({
    id = 201020,
    quest = 70303,
    note = L['pt_tailor_silky_surprise_note']
}) -- Silky Surprise

map.nodes[79238374] = PT.Alchemy({
    id = 198710,
    quest = 70305,
    note = L['pt_alch_canteen_of_suspicious_water_note']
}) -- Canteen Of Suspicious Water

map.nodes[81103790] = PT.Blacksmithing({
    id = 201004,
    quest = 70313,
    note = L['pt_smith_ancient_spear_shards_note'],
    pois = {POI({79403650})}
}) -- Ancient Spear Shards

map.nodes[85702520] = PT.Inscription({
    id = 198703,
    quest = 70307,
    note = L['pt_script_sign_language_reference_sheet_note']
}) -- Sign Language Reference Sheet

map.nodes[86405370] = PT.Leatherworking({
    id = 198696,
    quest = 70300,
    note = L['pt_leath_wind_blessed_hide_note']
}) -- Wind-Blessed Hide

-------------------------------------------------------------------------------

map.nodes[82455067] = PM.Leatherworking({
    id = 194842,
    quest = 70256,
    note = L['pm_leath_erden'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2025, count = '5'}) -- Dragon Isles Leatherworking Knowledge
    }
}) -- Erden

map.nodes[58375000] = PM.Herbalism({
    id = 194839,
    quest = 70253,
    note = L['pm_herb_hua_greenpaw'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2034, count = '10'}) -- Dragon Isles Herbalism Knowledge
    }
}) -- Hua Greenpaw

map.nodes[62441868] = PM.Enchanting({
    id = 194837,
    quest = 70251,
    note = L['pm_ench_shalasar_glimmerdusk'],
    rewards = {
        Item({item = 190456, count = '25'}), -- Artisan's Mettle
        Currency({id = 2030, count = '5'}) -- Dragon Isles Enchanting Knowledge
    }
}) -- Shalasar Glimmerdusk

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[84577779] = Dragonglyph({rewards = {Achievement({id = 16061})}}) -- Dragon Glyphs: Dragonsprings Summit
map.nodes[30126135] = Dragonglyph({rewards = {Achievement({id = 16056})}}) -- Dragon Glyphs: Emerald Gardens
map.nodes[70108668] = Dragonglyph({rewards = {Achievement({id = 16672})}}) -- Dragon Glyphs: Forkriver Crossing (Azure Span)
map.nodes[78312131] = Dragonglyph({rewards = {Achievement({id = 16671})}}) -- Dragon Glyphs: Mirewood Fen
map.nodes[46977284] = Dragonglyph({rewards = {Achievement({id = 16059})}}) -- Dragon Glyphs: Mirror of the Sky
map.nodes[30713557] = Dragonglyph({rewards = {Achievement({id = 16055})}}) -- Dragon Glyphs: Nokhudon Hold
map.nodes[57973111] = Dragonglyph({rewards = {Achievement({id = 16054})}}) -- Dragon Glyphs: Ohn'ahra's Roost
map.nodes[57088047] = Dragonglyph({rewards = {Achievement({id = 16060})}}) -- Dragon Glyphs: Ohn'iri Springs
map.nodes[80011306] = Dragonglyph({rewards = {Achievement({id = 16670})}}) -- Dragon Glyphs: Rubyscale Outpost
map.nodes[86513940] = Dragonglyph({rewards = {Achievement({id = 16062})}}) -- Dragon Glyphs: Rusza'thar Reach
map.nodes[44616457] = Dragonglyph({rewards = {Achievement({id = 16058})}}) -- Dragon Glyphs: Szar Skeleth
map.nodes[29447572] = Dragonglyph({rewards = {Achievement({id = 16057})}}) -- Dragon Glyphs: The Eternal Kurgans
map.nodes[61486436] = Dragonglyph({rewards = {Achievement({id = 16063})}}) -- Dragon Glyphs: Windsong Rise

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[28317764] = Flag({quest = 71200})
map.nodes[30393646] = Flag({quest = 71207})
map.nodes[57753080] = Flag({quest = 70827})
map.nodes[86313928] = Flag({quest = 71208})

-------------------------------------------------------------------------------
------------------ WYRMHOLE GENERATOR - SIGNAL TRANSMITTER --------------------
-------------------------------------------------------------------------------

map.nodes[67688495] = SignalTransmitter({quest = 70578}) -- Mirror of the Sky
map.nodes[28023567] = SignalTransmitter({quest = 70576}) -- Nokhudon Hold
map.nodes[56872889] = SignalTransmitter({quest = 70577}) -- Maarukai

-------------------------------------------------------------------------------
----------------------------- WHO'S A GOOD BAKAR? -----------------------------
-------------------------------------------------------------------------------

local Bakar = Class('Bakar', Collectible, {
    icon = 930453,
    note = L['bakar_note'],
    group = ns.groups.BAKAR
})

map.nodes[40925653] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55348})}
}) -- Alli

map.nodes[84242474] = Bakar({
    requires = ns.requirement.Quest(66006), -- Return to Roscha
    rewards = {Achievement({id = 16424, criteria = 55316})}
}) -- Baba

map.nodes[49014111] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55329})}
}) -- Baga

map.nodes[60643982] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55326})}
}) -- Berrel

map.nodes[85142247] = Bakar({
    requires = ns.requirement.Quest(65954), -- Release the Hounds
    rewards = {Achievement({id = 16424, criteria = 55317})}
}) -- Elaichi

map.nodes[76683051] = Bakar({ -- review requirement
    note = L['bakar_note'] .. '\n\n' .. L['bakar_ellam_note'],
    rewards = {Achievement({id = 16424, criteria = 55321})}
}) -- Ellam

map.nodes[84592461] = Bakar({
    requires = ns.requirement.Quest(65954), -- Release the Hounds
    rewards = {
        Achievement({
            id = 16424,
            criteria = {
                {id = 55315}, -- Fogl
                {id = 55314} -- Zephyr
            }
        })
    }
})

map.nodes[83882587] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55320})}
}) -- Gentara

map.nodes[70616361] = Bakar({
    note = L['bakar_note'] .. '\n\n' .. L['bakar_hugo_note'],
    rewards = {Achievement({id = 16424, criteria = 55327})},
    pois = {POI({71103149, 55635248})}
}) -- Hugo

map.nodes[64024123] = Bakar({
    rewards = {
        Achievement({
            id = 16424,
            criteria = {
                {id = 55323}, -- Katei
                {id = 55322} -- Vinyu
            }
        })
    }
})

map.nodes[80685891] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55331})}
}) -- Laila

map.nodes[60985226] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55328})}
}) -- Nahma

map.nodes[84182715] = Bakar({
    requires = ns.requirement.Quest(65954), -- Release the Hounds
    rewards = {Achievement({id = 16424, criteria = 55319})}
}) -- Pesca

map.nodes[81115841] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55330})}
}) -- Rotti

map.nodes[71644967] = Bakar({
    requires = ns.requirement.Quest(67772), -- The Trouble with Taivan
    rewards = {Achievement({id = 16424, criteria = 55347})},
    pois = {POI({61164002})} -- questline start
}) -- Soyoo

map.nodes[61833862] = Bakar({
    requires = ns.requirement.Quest(69096), -- Taivan's Purpose
    rewards = {Achievement({id = 16424, criteria = 55325})},
    pois = {POI({61164002})} -- questline start
}) -- Taivan

map.nodes[84012295] = Bakar({
    requires = ns.requirement.Quest(65954), -- Release the Hounds
    rewards = {Achievement({id = 16424, criteria = 55318})}
}) -- Tseg

map.nodes[81035952] = Bakar({
    rewards = {Achievement({id = 16424, criteria = 55324})}
}) -- Wish

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

map.nodes[22753027] = Disturbeddirt()
map.nodes[25976132] = Disturbeddirt({location = L['in_small_cave']})
map.nodes[29765203] = Disturbeddirt()
map.nodes[29777163] = Disturbeddirt()
map.nodes[29777363] = Disturbeddirt()
map.nodes[32834660] = Disturbeddirt()
map.nodes[36553269] = Disturbeddirt()
map.nodes[38825564] = Disturbeddirt()
map.nodes[39565456] = Disturbeddirt()
map.nodes[41103789] = Disturbeddirt()
map.nodes[42335555] = Disturbeddirt()
map.nodes[42934942] = Disturbeddirt()
map.nodes[43316632] = Disturbeddirt()
map.nodes[43334434] = Disturbeddirt()
map.nodes[44433243] = Disturbeddirt()
map.nodes[46345356] = Disturbeddirt()
map.nodes[48867036] = Disturbeddirt()
map.nodes[49716952] = Disturbeddirt()
map.nodes[50152501] = Disturbeddirt()
map.nodes[50184541] = Disturbeddirt()
map.nodes[51445485] = Disturbeddirt()
map.nodes[51936274] = Disturbeddirt()
map.nodes[54115705] = Disturbeddirt()
map.nodes[55197076] = Disturbeddirt()
map.nodes[55944340] = Disturbeddirt()
map.nodes[60425738] = Disturbeddirt()
map.nodes[62171310] = Disturbeddirt()
map.nodes[62787415] = Disturbeddirt()
map.nodes[63251396] = Disturbeddirt()
map.nodes[65868145] = Disturbeddirt()
map.nodes[66451981] = Disturbeddirt()
map.nodes[66825534] = Disturbeddirt({location = L['in_small_cave']})
map.nodes[69087885] = Disturbeddirt()
map.nodes[71706413] = Disturbeddirt()
map.nodes[75003584] = Disturbeddirt()
map.nodes[76485475] = Disturbeddirt()
map.nodes[77987330] = Disturbeddirt()
map.nodes[78217937] = Disturbeddirt()
map.nodes[78534035] = Disturbeddirt()
map.nodes[78782268] = Disturbeddirt()
map.nodes[78943707] = Disturbeddirt({location = L['in_small_cave']})
map.nodes[79697606] = Disturbeddirt()
map.nodes[80133864] = Disturbeddirt({
    location = L['in_cave'],
    pois = {POI({79403650})}
})
map.nodes[80823851] = Disturbeddirt({location = L['in_cave']})
map.nodes[81403827] = Disturbeddirt()
map.nodes[82543651] = Disturbeddirt()
map.nodes[82593486] = Disturbeddirt()
map.nodes[83243606] = Disturbeddirt()
map.nodes[83731265] = Disturbeddirt()
map.nodes[85833271] = Disturbeddirt()
map.nodes[86683243] = Disturbeddirt()
map.nodes[86725931] = Disturbeddirt()
map.nodes[87444467] = Disturbeddirt()
map.nodes[88364505] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[21875784] = Scoutpack()
map.nodes[23944019] = Scoutpack()
map.nodes[24745680] = Scoutpack()
map.nodes[25205876] = Scoutpack()
map.nodes[27395211] = Scoutpack()
map.nodes[31927666] = Scoutpack()
map.nodes[32043887] = Scoutpack()
map.nodes[32135114] = Scoutpack()
map.nodes[33764307] = Scoutpack()
map.nodes[35925854] = Scoutpack()
map.nodes[36168691] = Scoutpack()
map.nodes[36428558] = Scoutpack()
map.nodes[42883769] = Scoutpack()
map.nodes[43335647] = Scoutpack()
map.nodes[43486213] = Scoutpack()
map.nodes[44856758] = Scoutpack()
map.nodes[50382904] = Scoutpack()
map.nodes[50856597] = Scoutpack()
map.nodes[51647211] = Scoutpack()
map.nodes[51797550] = Scoutpack()
map.nodes[52403042] = Scoutpack()
map.nodes[56942485] = Scoutpack()
map.nodes[59492006] = Scoutpack()
map.nodes[60567702] = Scoutpack()
map.nodes[60952000] = Scoutpack()
map.nodes[61301817] = Scoutpack()
map.nodes[61781881] = Scoutpack()
map.nodes[62922121] = Scoutpack()
map.nodes[63423235] = Scoutpack()
map.nodes[64028081] = Scoutpack()
map.nodes[65021064] = Scoutpack()
map.nodes[66798258] = Scoutpack()
map.nodes[69873626] = Scoutpack()
map.nodes[71356836] = Scoutpack()
map.nodes[73353879] = Scoutpack()
map.nodes[73618656] = Scoutpack()
map.nodes[78736935] = Scoutpack()
map.nodes[79432374] = Scoutpack()
map.nodes[79923683] = Scoutpack({location = L['in_small_cave']})
map.nodes[83663235] = Scoutpack({location = L['in_small_cave']})
map.nodes[83812914] = Scoutpack()
map.nodes[84194551] = Scoutpack()
map.nodes[84685647] = Scoutpack()
map.nodes[86084606] = Scoutpack()
map.nodes[86323937] = Scoutpack()
map.nodes[86483680] = Scoutpack()
map.nodes[87256074] = Scoutpack()
map.nodes[87573657] = Scoutpack()
map.nodes[87612555] = Scoutpack()
map.nodes[91393390] = Scoutpack()

-------------------------------------------------------------------------------
------------------------------ Magic-Bound Chest ------------------------------
-------------------------------------------------------------------------------

map.nodes[31457162] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[38905590] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[39306790] = MagicBoundChest()
map.nodes[53805720] = MagicBoundChest({
    location = L['in_small_cave'],
    pois = {POI({53315684})}
})
map.nodes[55003120] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[55405030] = MagicBoundChest({
    location = L['in_cave'],
    pois = {POI({57575115})}
})
map.nodes[61008020] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[80908080] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[82603290] = MagicBoundChest({location = L['in_small_cave']})
map.nodes[85106640] = MagicBoundChest({
    requires = {
        ns.requirement.Reputation(2507, 16, true),
        ns.requirement.Profession(186)
    },
    location = L['in_small_cave']
})

-------------------------------------------------------------------------------
------------------------------ TUSKARR TACKLEBOX ------------------------------
-------------------------------------------------------------------------------

map.nodes[25324337] = TuskarrTacklebox()
map.nodes[30225222] = TuskarrTacklebox()
map.nodes[30255326] = TuskarrTacklebox()
map.nodes[31035208] = TuskarrTacklebox()
map.nodes[32102907] = TuskarrTacklebox()
map.nodes[36305212] = TuskarrTacklebox()
map.nodes[37635533] = TuskarrTacklebox()
map.nodes[41105448] = TuskarrTacklebox()
map.nodes[41724432] = TuskarrTacklebox()
map.nodes[42245532] = TuskarrTacklebox()
map.nodes[45936616] = TuskarrTacklebox()
map.nodes[50407120] = TuskarrTacklebox()
map.nodes[75665637] = TuskarrTacklebox()

-------------------------------------------------------------------------------
---------------------------------- REED CHEST ---------------------------------
-------------------------------------------------------------------------------

-- map.nodes[80703060] = ns.node.ReedChest()
-- map.nodes[80903210] = ns.node.ReedChest()
-- map.nodes[81302970] = ns.node.ReedChest()
-- map.nodes[82303040] = ns.node.ReedChest()
-- map.nodes[82303050] = ns.node.ReedChest()

-------------------------------------------------------------------------------
----------------------------- HONOR OUR ANCESTORS -----------------------------
-------------------------------------------------------------------------------

local Ancestor = Class('Ancestor', Collectible, {
    icon = 135946,
    note = L['ancestor_note'],
    group = ns.groups.ANCESTOR,
    pois = {POI({85702073})} -- Essence of Awakening
})

map.nodes[75934205] = Ancestor({
    id = 197051,
    requires = ns.requirement.Item(194690), -- Horn o' Mead
    rewards = {Achievement({id = 16423, criteria = 55304})},
    pois = {POI({85702073})} -- Essence of Awakening
}) -- Horn of Drusahl

map.nodes[60323806] = Ancestor({
    id = 197048,
    requires = ns.requirement.Item(197776), -- Thrice-Spiced Mammoth Kabob
    rewards = {Achievement({id = 16423, criteria = 55302})},
    pois = {POI({85702073})} -- Essence of Awakening
}) -- Maruukai

map.nodes[54377841] = Ancestor({
    id = 197056,
    requires = ns.requirement.Item(202071), -- Elemental Mote
    rewards = {Achievement({id = 16423, criteria = 55309})},
    pois = {POI({85702073})} -- Essence of Awakening
}) -- Ohn'iri Springs

map.nodes[85174935] = Ancestor({
    id = 197053,
    requires = ns.requirement.Item(193470), -- Feral Hide Drums
    rewards = {Achievement({id = 16423, criteria = 55306})},
    pois = {
        POI({85702073}), -- Essence of Awakening
        Path({84504840, 84874867, 85174935, 85905011})
    }
}) -- Shikaar Highlands

map.nodes[63275731] = Ancestor({
    id = 197055,
    requires = ns.requirement.Item(197788, 2), --  Braised Bruffalon Brisket
    rewards = {Achievement({id = 16423, criteria = 55308})},
    pois = {POI({85702073})} -- Essence of Awakening
}) -- Sylvan Glade

map.nodes[41655690] = Ancestor({
    id = 197057,
    requires = ns.requirement.Item(199049), -- Fire-Blessed Greatsword
    rewards = {Achievement({id = 16423, criteria = 55310})},
    pois = {POI({85702073})} -- Essence of Awakening
}) -- Teerakai

map.nodes[74057046] = Ancestor({
    id = 197054,
    requires = ns.requirement.Item(190327), -- Awakened Air
    rewards = {Achievement({id = 16423, criteria = 55307})},
    pois = {
        POI({85702073}), -- Essence of Awakening
        Path({
            74427207, 74267178, 74307116, 74697041, 74747013, 74686969,
            74386964, 74266983, 74247031, 74057046, 73787063, 73667084,
            73617122, 73927161, 74147214, 74427207
        })
    }
}) -- The Carving Winds

map.nodes[32356934] = Ancestor({
    id = 197058,
    requires = ns.requirement.Item(191470, 5, 2), -- Writhebark (Tier 2)
    rewards = {Achievement({id = 16423, criteria = 55311})},
    pois = {
        POI({85702073}), -- Essence of Awakening
        Path({32967236, 32977116, 32606972, 32356934, 31476857, 31126843})
    }
}) -- The Eternal Kurgans

map.nodes[84692429] = Ancestor({
    id = 197050,
    requires = ns.requirement.Item(199934, 1, 1), -- Enchant Boots - Plainsrunner's Breeze (Tier 1)
    rewards = {Achievement({id = 16423, criteria = 55303})},
    pois = {
        POI({85702073}), -- Essence of Awakening
        Path({
            84692279, 84662303, 84932349, 84902372, 84692429, 84812453,
            84952466, 85192541, 85182565, 84892587, 84572629, 84172642, 84022698
        })
    }
}) -- Timberstep Outpost

map.nodes[73305513] = Ancestor({
    id = 197052,
    requires = ns.requirement.Item(202070), -- Exceptional Pelt
    rewards = {Achievement({id = 16423, criteria = 55305})},
    pois = {
        POI({85702073}), -- Essence of Awakening
        Path({
            72675702, 72725683, 72575648, 72375653, 72225633, 72285582,
            72495567, 72775575, 73175517, 73305513, 73875547, 74325605
        })
    }
}) -- Toghusuq Village

-------------------------------------------------------------------------------
----------------------------- SLEEPING ON THE JOB -----------------------------
-------------------------------------------------------------------------------

local Dreamguard = Class('Dreamguard', Collectible, {
    icon = 341763,
    note = L['dreamguard_note'],
    group = ns.groups.DREAMGUARD
})

map.nodes[29796222] = Dreamguard({
    id = 198068,
    rewards = {Achievement({id = 16574, criteria = 55777})},
    pois = {
        POI({29696022}) -- Entrance
    }
}) -- Dreamguard Erezsra

map.nodes[25256527] = Dreamguard({
    id = 198069,
    rewards = {Achievement({id = 16574, criteria = 55778})}
}) -- Dreamguard Sayliasra

map.nodes[19128296] = Dreamguard({
    id = 198073,
    rewards = {Achievement({id = 16574, criteria = 55780})}
}) -- Dreamguard Lucidra

map.nodes[18125388] = Dreamguard({
    id = 198074,
    rewards = {Achievement({id = 16574, criteria = 55779})}
}) -- Dreamguard Aiyelasra

map.nodes[29434138] = Dreamguard({
    id = 198075,
    rewards = {Achievement({id = 16574, criteria = 55781})}
}) -- Dreamguard Taelyasra

map.nodes[33555322] = Dreamguard({
    id = 198064,
    rewards = {Achievement({id = 16574, criteria = 55776})}
}) -- Dreamguard Felyasra

-------------------------------------------------------------------------------
--------------------- TO ALL THE SQUIRRELS HIDDEN TIL NOW ---------------------
-------------------------------------------------------------------------------

map.nodes[23486179] = Squirrel({
    id = 186306,
    rewards = {Achievement({id = 16729, criteria = 4})}
}) -- Frilled Hatchling

map.nodes[51075165] = Squirrel({
    id = 192948,
    rewards = {Achievement({id = 16729, criteria = 5})}
}) -- Thicket Glider

map.nodes[50195179] = Squirrel({
    id = 192942,
    rewards = {Achievement({id = 16729, criteria = 6})}
}) -- Thunderspine Calf

-------------------------------------------------------------------------------
--------------------------- THE DISGRUNTLED HUNTER ----------------------------
-------------------------------------------------------------------------------

local HemetNesingwaryJr = Class('HemetNesingwaryJr', Collectible, {
    id = 194590,
    icon = 236444,
    sublabel = L['hnj_sublabel'],
    group = ns.groups.HEMET_NESINGWARY_JR
}) -- Hemet Nesingwary Jr.

map.nodes[82461392] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55692})}
}) -- Northern Ohn'ahran Plains Hunt

map.nodes[62005400] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55693})}
}) -- Western Ohna'ahran Plains Hunt

map.nodes[82874782] = HemetNesingwaryJr({
    rewards = {Achievement({id = 16542, criteria = 55694})}
}) -- Eastern Ohna'ahran Plains Hunt

-------------------------------------------------------------------------------
----------------------------- THAT'S PRETTY NEAT! -----------------------------
-------------------------------------------------------------------------------

map.nodes[58602066] = PrettyNeat({
    id = 193356,
    rewards = {Achievement({id = 16446, criteria = 55384})}
}) -- Avis Gryphonheart

map.nodes[74724069] = PrettyNeat({
    id = 190960,
    rewards = {Achievement({id = 16446, criteria = 55401})}
}) -- Feasting Buzzard

map.nodes[59575538] = PrettyNeat({
    id = 187496,
    rewards = {Achievement({id = 16446, criteria = 55402})}
}) -- Glade Ohuna

map.nodes[58632082] = PrettyNeat({
    id = 193354,
    rewards = {Achievement({id = 16446, criteria = 55383})}
}) -- Halia Cloudfeather

map.nodes[60407140] = PrettyNeat({
    id = 195895,
    rewards = {Achievement({id = 16446, criteria = 55400})},
    pois = {
        Path({
            60607560, 59407520, 58407480, 57807360, 58607120, 60407140,
            61807040, 63006980, 65206900, 65206640, 65606220, 65806080,
            67605840, 67805620, 67805400, 68605160
        })
    }
}) -- Nergazurai

map.nodes[58672073] = PrettyNeat({
    id = 193357,
    rewards = {Achievement({id = 16446, criteria = 55385})}
}) -- Palla of the Wing

map.nodes[31456387 + 1] = PrettyNeat({
    id = 193209,
    isRare = true,
    mapID = map.id,
    rewards = {Achievement({id = 16446, criteria = 55395})}
}) -- Zenet Avis (node coords must be off by 00000001 from Rare)

-------------------------------------------------------------------------------
------------------------------ A LEGENDARY ALBUM ------------------------------
-------------------------------------------------------------------------------

map.nodes[73358131] = LegendaryCharacter({
    id = 38294,
    icon = 1109168,
    rewards = {Achievement({id = 16570, criteria = 55772})}
}) -- Elder Clearwater

map.nodes[48124748] = LegendaryCharacter({
    id = 63721,
    rewards = {Achievement({id = 16570, criteria = 55774})}
}) -- Nat Pagle

-------------------------------------------------------------------------------
-------------------------- ONE OF EVERYTHING, PLEASE --------------------------
-------------------------------------------------------------------------------

map.nodes[28006060] = Collectible({
    label = '{item:201089}',
    icon = 644375,
    note = L['craft_creche_crowler_note'],
    group = ns.groups.SPECIALTIES,
    rewards = {Achievement({id = 16621, criteria = 55940})}
}) -- Craft Creche Crowler

-------------------------------------------------------------------------------
----------------------------- DRAGON ISLES SAFARI -----------------------------
-------------------------------------------------------------------------------

map.nodes[54005020] = Safari({
    id = 189153,
    rewards = {Achievement({id = 16519, criteria = 55646}), Pet({id = 3313})},
    pois = {
        POI({
            48604940, 50005180, 50604720, 51804820, 54005020, 55404900,
            56205100, 56205660, 57405360, 57605360
        })
    }
}) -- Grassland Stomper

map.nodes[26604460] = Safari({
    id = 189131,
    rewards = {Achievement({id = 16519, criteria = 55649}), Pet({id = 3300})},
    pois = {
        POI({
            26604460, 30405820, 30605820, 32005580, 34005300, 34005900,
            35805340, 38205460, 39406660, 39606660, 40205460, 42204160,
            42604780, 42806560, 45005380, 46406600, 49006860, 50407180,
            50607180, 53402640, 54406640, 54606860, 54806840, 57803660,
            60801980, 63202120, 67403440, 67802940, 67802960, 69207920,
            70003780, 71205040, 71205060, 72004940, 72207640, 74407840,
            74407860, 75002620, 76803620, 76803700, 78403800, 78603800,
            79807200, 82207380, 82603380, 82607460, 83007440, 83403740,
            83607460, 85203180, 86203240
        })
    }
}) -- Ironbeak Duck

map.nodes[55407440] = Safari({
    id = 189122,
    rewards = {Achievement({id = 16519, criteria = 55652}), Pet({id = 3296})},
    pois = {
        POI({
            22206380, 23606800, 24806600, 37605540, 37605560, 37806580,
            42206120, 44206840, 44206860, 47404900, 48406600, 50407540,
            51004320, 51606640, 51806660, 52007100, 53807000, 54207540,
            54807260, 54807780, 55407440, 56007860, 69003900, 70207940,
            71408320, 71806920, 72003540, 74405580, 74605580, 78607940
        })
    }
}) -- Palamanther

map.nodes[76005560] = Safari({
    id = 189103,
    rewards = {Achievement({id = 16519, criteria = 55657}), Pet({id = 3281})},
    pois = {
        POI({
            42005520, 76005560, 77005200, 78005380, 78804040, 78804060,
            79804260, 86005720
        })
    }
}) -- Scruffy Ottuk

map.nodes[73803520] = Safari({
    id = 192254,
    rewards = {Achievement({id = 16519, criteria = 55660}), Pet({id = 3353})},
    pois = {
        POI({
            21806080, 22805680, 25805520, 44003320, 52002600, 54402820,
            56004640, 57404540, 57604540, 59404840, 61204820, 62604720,
            66003700, 66403540, 66404840, 66603540, 66803400, 67603540,
            68204340, 68403160, 68603160, 69804220, 70403140, 70403160,
            72202800, 73803520, 74005960, 75203720, 75602340, 75602360,
            80806920, 81007100, 82401500, 82601500, 82602740, 82802760,
            82803340, 82803740, 83007240, 83007260, 83201960, 83203600,
            83403480, 84403440, 85403120
        })
    }
}) -- Stoneshell

map.nodes[47606100] = Safari({
    id = 189104,
    rewards = {Achievement({id = 16519, criteria = 55661}), Pet({id = 3282})},
    pois = {
        POI({
            29405840, 31205220, 36405260, 39205380, 40204220, 41403800,
            43205900, 45606840, 47406120, 47606100, 49806900, 51606520,
            53007540, 53007560, 56408040, 61805420, 73006240, 73808240,
            73808280, 75207360, 75407340, 75807240, 78207320, 78607220,
            81607160, 81807140, 83807780, 85204480, 86204640, 86204660
        })
    }
}) -- Swoglet

map.nodes[71007200] = Safari({
    id = 189658,
    rewards = {Achievement({id = 16519, criteria = 55662}), Pet({id = 3328})},
    pois = {
        POI({
            71007200, 71607360, 73007600, 73208580, 79004840, 80005020,
            81007820, 81404580
        })
    }
}) -- Tiny Timbertooth

map.nodes[67507260] = Safari({
    id = 189097,
    rewards = {Achievement({id = 16519, criteria = 55663}), Pet({id = 3276})},
    pois = {
        POI({
            28004940, 28004960, 29205400, 29206820, 29606660, 30207480,
            30407380, 30607440, 30607460, 31207680, 31806900, 32007600,
            32203340, 32206280, 32403360, 33805000, 34604460, 34605660,
            35405820, 35803200, 35804180, 36405060, 36406940, 36603820,
            36606920, 37604600, 37803980, 38205000, 38405480, 39603640,
            40805140, 41404340, 43003700, 43403560, 44203680, 44803840,
            45804540, 45804560, 47003600, 48404360, 49003060, 50402560,
            50403120, 50802880, 51203100, 51404000, 53203580, 55403940,
            55604220, 56203820, 56604040, 57203900, 57602340, 57602360,
            57804300, 58603820, 59202080, 59602620, 60004020, 60802340,
            61403040, 61403060, 61603040, 61603840, 61604540, 61801540,
            61801580, 63401080, 63601100, 63603240, 63603260, 64202820,
            64203660, 64404500, 64604500, 64801580, 64804400, 65001920,
            65202020, 65403880, 65403960, 65404280, 65602020, 65603880,
            65603960, 67507260, 66007020, 66007260, 66204300, 70405860,
            79403100, 79603120, 81806000, 82202300, 82606020, 82806160,
            83805760, 84403960, 84404100, 85006040, 85406180, 85606200,
            86001680, 86803520, 87203640, 87203680, 88001360
        })
    }
}) -- Treeflitter

map.nodes[76402740] = Safari({
    id = 189110,
    rewards = {Achievement({id = 16519, criteria = 55664}), Pet({id = 3288})},
    pois = {
        POI({
            54606120, 54806300, 55206520, 56206060, 57006260, 71805340,
            71805360, 72604420, 73804840, 74605080, 75203320, 76401940,
            76402020, 76402740, 76402760, 76602040, 76602720, 76602760,
            77003240, 77801900, 78803520, 79802700, 80002120
        })
    }
}) -- Trunkalumpf

map.nodes[64003480] = Safari({
    id = 189157,
    rewards = {Achievement({id = 16519, criteria = 55668}), Pet({id = 3322})},
    pois = {
        POI({
            60801480, 61005220, 61402380, 61802380, 62203520, 62802560,
            64003480, 64005800, 64401280, 64601280, 64801200, 65001820
        })
    }
}) -- Woodbiter Piculet

-------------------------------------------------------------------------------
--------------------- ELEMENTAL STORMS: ONH'AHRAN PLAINS ----------------------
-------------------------------------------------------------------------------

map.nodes[34153854] = ElementalStorm({
    label = format('%s: %s', L['elemental_storm'],
        L['elemental_storm_nokhudon_hold']),
    mapID = map.id,
    areaPOIs = {7221, 7222, 7223, 7224}
}) -- Elemental Storm: Nokhudon Hold

-- map.nodes[54367534] = ElementalStorm({
--     label = format('%s: %s', L['elemental_storm'],
--         L['elemental_storm_ohniri_springs']),
--     mapID = map.id,
--     areaPOIs = {7225, 7226, 7227, 7228}
-- }) -- Elemental Storm: Ohn'iri Springs

-------------------------------------------------------------------------------
------------------------------ ELUSIVE CREATURES ------------------------------
-------------------------------------------------------------------------------

map.nodes[55005500] = ElusiveCreature({
    label = '{npc:195465}',
    quest = 74188,
    rewards = {
        Item({item = 193224}), -- Lustrous Scaled Hide
        Item({item = 193215}), -- Adamant Scales
        Item({item = 193253}), -- Cacophonous Thunderscale
        Achievement({id = 18833, criteria = 61475}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Tempest Lizard

map.nodes[24005600] = ElusiveCreature({
    label = '{npc:195541}',
    quest = 74187,
    rewards = {
        Item({item = 193218}), -- Dense Hide
        Item({item = 193211}), -- Resilient Leather
        Item({item = 193251}), -- Crystalspine Fur
        Achievement({id = 18833, criteria = 61480}) -- Elusive Legends of the Dragon Isles
    }
}) -- Elusive Flourishing Quillbloom

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[81891730] = GrandHunt({
    mapID = map.id,
    areaPOI = 7098,
    criteria = 55677
}) -- Northern Ohn'ahran Plains Hunt

map.nodes[61655301] = GrandHunt({
    mapID = map.id,
    areaPOI = 7089,
    criteria = 55678
}) -- Western Ohn'ahran Plains Hunt

map.nodes[81144996] = GrandHunt({
    mapID = map.id,
    areaPOI = 7090,
    criteria = 55679
}) -- Eastern Ohn'ahran Plains Hunt

-------------------------------------------------------------------------------
--------------------------- KNEW YOU NOKHUD DO IT! ----------------------------
-------------------------------------------------------------------------------

map.nodes[34603468] = Collectible({
    label = '{npc:197884}',
    icon = 1103068,
    note = L['knew_you_nokhud_do_it_note'],
    group = ns.groups.NOKHUD_DO_IT,
    rewards = {
        Achievement({id = 16583}) -- Knew You Nokhud Do It!
    },
    pois = {
        Path({Circle({origin = 34943880, radius = 2})}), -- Nokhudon Hold
        Path({
            34693453, 35263463, 35783477, 36133487, 36373508, 36973482,
            37553460, 37813427, 37773397, 37353335, 37203289, 36813235,
            36513218, 36153214, 35753226, 35343241, 35103236, 34973277,
            34963336, 34833385, 34733415, 34693453
        }) -- Training Course Path
    }
}) -- Training Master Turasa

-------------------------------------------------------------------------------
------------------- ANCIENT STONES OF THE OHN'AHRAN PLAINS --------------------
-------------------------------------------------------------------------------

map.nodes[43535649] = AncientStone({
    rewards = {Achievement({id = 17562, criteria = 58809})}
}) -- The Gnoll Wars

map.nodes[24756595] = AncientStone({
    rewards = {Achievement({id = 17562, criteria = 58810})}
}) -- Your Dreamer

map.nodes[32255134] = AncientStone({
    rewards = {Achievement({id = 17562, criteria = 58811})}
}) -- Dreams in Emerald

map.nodes[66994367] = AncientStone({
    rewards = {Achievement({id = 17562, criteria = 58812})}
}) -- The First Kurnal

map.nodes[38636670] = AncientStone({
    rewards = {Achievement({id = 17562, criteria = 58813})}
}) -- Wind, Wood, Water

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

-------------------------- SPIRIT BEAST: BLOODGULLET --------------------------

map.nodes[66564391] = Collectible({
    id = 193254,
    icon = 236165,
    class = 'HUNTER',
    note = L['bloodgullet_note'],
    pois = {POI({85702073})} -- Essence of Awakening
}) -- Bloodgulllet

-------------------------- MOUNT: LIZI, THUNDERSPINE --------------------------

local Lizi = Class('Lizi', Collectible, { -- Reivew Collectible?
    id = 190014,
    icon = 4008180,
    quest = {71196, 71197, 71198, 71199, 71195}, -- Dailys
    questCount = true,
    requires = {
        ns.requirement.Quest(66676), -- Sneaking In
        ns.requirement.Reputation(2503, 9, true) -- Maruuk Centaur
    },
    rewards = {Mount({item = 192799, id = 1639})}, -- Lizi's Reins
    pois = {
        POI({57087764, 56727631, 57667231}) -- Day 3, Day 4, Day 5
    }
}) -- Initiate Radiya

function Lizi.getters:note()
    local note = L['lizi_note']
    note = note .. QuestStatus(self.quest[1], 1, L['lizi_note_day1']) -- Fluorescent Fluid
    note = note .. QuestStatus(self.quest[2], 2, L['lizi_note_day2']) -- High-Fiber Leaf
    note = note .. QuestStatus(self.quest[3], 3, L['lizi_note_day3']) -- Thousandbine Piranha
    note = note .. QuestStatus(self.quest[4], 4, L['lizi_note_day4']) -- Woolly Mountain Pelt
    note = note .. QuestStatus(self.quest[5], 5, L['lizi_note_day5']) -- Meluun's Green Curry
    return note
end

map.nodes[56207710] = Lizi() -- day 1 and 2

----------------------- MOUNT: DIVINE KISS OF OHN'AHRA ------------------------

local Ohnahra = Class('Ohnahra', Collectible, {
    id = 194796,
    icon = 4094306,
    requires = {
        ns.requirement.Quest(71209), -- Beast of the Plains
        ns.requirement.Reputation(2503, 25, true) -- Maruuk Centaur
    },
    rewards = {
        Mount({item = 198821, id = 1545}), -- Divine Kiss of Ohn'ahra
        Achievement({id = 19461}), -- Kissed by the Wind
        Achievement({id = 16446, criteria = 55386, note = L['pretty_neat_note']})
    },
    pois = {
        POI({56207710, 56457327, 60403772}) -- Initiate Radiya, Godoloto, Quatermaster Huseng
    }
}) -- Ohn'ahra

function Ohnahra.getters:note()
    local note = L['ohnahra_note_start']
    note = note .. ItemStatus(201929, 3, L['ohnahra_note_item1']) -- Stolen Breath of Ohn'ahra
    note = note .. ItemStatus(201323, 1, L['ohnahra_note_item2']) -- Essence of Awakening
    note = note .. ItemStatus(191507, 1, L['ohnahra_note_item3']) -- Exultant Incense
    return note .. '\n\n' .. L['ohnahra_note_end']
end

map.nodes[57473193] = Ohnahra()

----------------------------- THE OHN'AHRAN TRAIL -----------------------------

map.nodes[71473180] = Collectible({
    icon = 237385,
    requires = ns.requirement.Reputation(2503, 4, true), -- Maruuk Centaur
    interval = ns.Intervals.AylaagCampInterval({id = 0}),
    rewards = {
        Achievement({id = 16462, criteria = 55480}) -- The Ohn'ahran Trail
    },
    pois = {POI({70666300})}
}) -- Aylaag Outpost to River Camp

map.nodes[70666300] = Collectible({
    icon = 237385,
    requires = ns.requirement.Reputation(2503, 4, true), -- Maruuk Centaur
    interval = ns.Intervals.AylaagCampInterval({id = 1}),
    rewards = {
        Achievement({id = 16462, criteria = 55481}) -- The Ohn'ahran Trail
    },
    pois = {POI({55375224})}
}) -- River camp to Eaglewatch Outpost

map.nodes[55375224] = Collectible({
    icon = 237385,
    requires = ns.requirement.Reputation(2503, 4, true), -- Maruuk Centaur
    interval = ns.Intervals.AylaagCampInterval({id = 2}),
    rewards = {
        Achievement({id = 16462, criteria = 55482}) -- The Ohn'ahran Trail
    },
    pois = {POI({71473180})}
}) -- Eaglewatch Outpost to Aylaag Outpost

---------------------------- PET: MOTE OF NASZ'URO ----------------------------

map.nodes[61236436] = ns.node.MoteOfNaszuro({
    quest = 76182,
    note = L['naszuro_windsong_rise']
}) -- Windsong Rise

map.nodes[34335874] = ns.node.MoteOfNaszuro({
    quest = 76183,
    note = L['naszuro_emerald_gardens']
}) -- Emerald Gardens

----------------------------- MISCELLANEOUS NPCs ------------------------------

map.nodes[82327320] = NPC({
    id = 191608,
    icon = 4638725,
    note = L['the_great_swog_note']
}) -- The Great Swog

map.nodes[51803300] =
    NPC({id = 193110, icon = 4643982, note = L['khadin_note']}) -- Khadin

map.nodes[64014104] = NPC({
    id = 195454,
    icon = 2101975,
    note = L['hunt_instructor_basku_note']
}) -- Hunt Instructor Basku (Maruuk Centuar Reputation)

map.nodes[41606220] = Collectible({
    id = 192818,
    icon = 4659336,
    note = L['elder_yusa_note'],
    rewards = {
        Recipe({item = 194965, profession = 185}) -- Recipe: Yusa's Hearty Stew
    }
}) -- Elder Yusa

map.nodes[47037119] = Collectible({
    id = 187796,
    icon = 133796,
    note = L['initiate_kittileg_note'],
    rewards = {
        Toy({item = 198039}) -- Rock of Appreciation
    },
    pois = {
        POI({47037037}) -- Entrance
    }
}) -- Initiate Kittileg

-------------------------------------------------------------------------------
------------------------------- FYRAKK ASSAULT --------------------------------
-------------------------------------------------------------------------------

local FyrakkAssault = Class('FyrakkAssault', ns.requirement.Requirement, {
    text = L['fyrakk_assault_label'],
    IsMet = function()
        local validPOIs = {7429, 7471, 7473, 7486, 7487}
        local activePOIs = C_AreaPoiInfo.GetAreaPOIForMap(map.id)
        for _, activePOI in ipairs(activePOIs) do
            for _, validPOI in pairs(validPOIs) do
                if activePOI == validPOI then return true end
            end
        end
        return false
    end
})()

map.nodes[76156952] = Collectible({
    label = L['fyrakk_assault_label'],
    icon = 4914672,
    quest = {75467, 75525}, -- Kretchenwrath, Secured Shipment
    vignette = 5610, -- Disciple of Fyrakk
    requires = FyrakkAssault,
    rewards = {
        Achievement({id = 17506}), -- Still Standing in the Fire
        Achievement({id = 17735, criteria = {id = 1, qty = true}}), -- We Didn't Start the Fire
        Section('{npc:201673}'), -- Kretchenwrath
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

map.nodes[72277242] = Node({
    label = L['shadowflame_forge_label'],
    icon = 4622286,
    note = L['shadowflame_forge_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Blacksmithing
        if not ns.PlayerHasProfession(164) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Shadowflame Forge

map.nodes[73387083] = Node({
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

map.nodes[74727194] = Node({
    label = L['shadowflame_leatherworking_table_label'],
    icon = 5088848,
    note = L['shadowflame_leatherworking_table_note'],
    requires = FyrakkAssault,
    IsEnabled = function(self) -- Leatherworking
        if not ns.PlayerHasProfession(165) then return false end
        return ns.node.Item.IsEnabled(self)
    end
}) -- Shadowflame Leatherworking Table

map.nodes[73337238] = Node({
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

map.nodes[64164161] = ns.node.Celestine()
map.nodes[24496126] = ns.node.RenewedMagmammoth()

-------------------------------------------------------------------------------

-- STOP: DO NOT ADD NEW NODES HERE UNLESS THEY BELONG IN MISCELLANEOUS
