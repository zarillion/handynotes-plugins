-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group
local Class = ns.Class
local L = ns.locale

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------

ns.expansion = 7

-------------------------------------------------------------------------------
------------------------------------ GROUPS -----------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCIENT_EREDAR_CACHE = Group('ancient_eredar_cache', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.BRINGING_HOME_THE_BEACON = Group('bringing_home_the_beacon', 133267,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.EREDAR_WAR_SUPPLIES = Group('eredar_war_supplies', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.HIGHER_DIMENSIONAL_LEARNING = Group('higher_dimensional_learning',
    134915, {defaults = ns.GROUP_HIDDEN})
ns.groups.LEGION_WAR_SUPPLIES = Group('legion_war_supplies', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.VOID_SEEPED_CACHE = Group('void_seeped_cache', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    AlbatrossChick = Class('AlbatrossChick', Safari, {
        id = 97078,
        rewards = {
            Achievement({id = 11233, criteria = 33107, oneline = true}),
            Pet({id = 1708})
        }
    }),
    AuburnRingtail = Class('AuburnRingtail', Safari, {
        id = 97555,
        rewards = {
            Achievement({id = 11233, criteria = 33121, oneline = true}),
            Pet({id = 1738})
        }
    }),
    BlackFootedFoxKit = Class('BlackFootedFoxKit', Safari, {
        id = 97741,
        rewards = {
            Achievement({id = 11233, criteria = 33123, oneline = true}),
            Pet({id = 1743})
        }
    }),
    BlindRat = Class('BlindRat', Safari, {
        id = 111158,
        rewards = {
            Achievement({id = 11233, criteria = 33140, oneline = true}),
            Pet({id = 1915})
        }
    }),
    BurrowSpiderling = Class('BurrowSpiderling', Safari, {
        id = 97236,
        rewards = {
            Achievement({id = 11233, criteria = 33113, oneline = true}),
            Pet({id = 1726})
        }
    }),
    CoastalSandpiper = Class('CoastalSandpiper', Safari, {
        id = 110826,
        rewards = {
            Achievement({id = 11233, criteria = 33139, oneline = true}),
            Achievement({id = 14729, criteria = 50225}), -- To All the Squirrels ...
            Pet({id = 1914})
        }
    }),
    CoralbackFiddler = Class('CoralbackFiddler', Safari, {
        id = 98428,
        rewards = {
            Achievement({id = 11233, criteria = 33132, oneline = true}),
            Pet({id = 1775})
        }
    }),
    CrystallineBroodling = Class('CrystallineBroodling', Safari, {
        id = 99527,
        rewards = {
            Achievement({id = 11233, criteria = 33136, oneline = true}),
            Pet({id = 1809})
        }
    }),
    DustBunny = Class('DustBunny', Safari, {
        id = 98506,
        rewards = {
            Achievement({id = 11233, criteria = 33134, oneline = true}),
            Pet({id = 1778})
        }
    }),
    EchoBatling = Class('EchoBatling', Safari, {
        id = 88542,
        rewards = {
            Achievement({id = 11233, criteria = 33127, oneline = true}),
            Achievement({id = 14729, criteria = 50234}), -- To All the Squirrels ...
            Pet({id = 1761})
        }
    }),
    EldritchManafiend = Class('EldritchManafiend', Safari, {
        id = 98386,
        rewards = {
            Achievement({id = 11233, criteria = 33131, oneline = true}),
            Pet({id = 1774})
        }
    }),
    EruditeManafiend = Class('EruditeManafiend', Safari, {
        id = 98385,
        rewards = {
            Achievement({id = 11233, criteria = 33130, oneline = true}),
            Pet({id = 1773})
        }
    }),
    Felspider = Class('Felspider', Safari, {
        id = 97323,
        rewards = {
            Achievement({id = 11233, criteria = 33116, oneline = true}),
            Achievement({id = 14729, criteria = 50222}), -- To All the Squirrels ...
            Pet({id = 1731})
        }
    }),
    FledglingKingfeather = Class('FledglingKingfeather', Safari, {
        id = 97076,
        rewards = {
            Achievement({id = 11233, criteria = 33108, oneline = true}),
            Pet({id = 1709})
        }
    }),
    FledglingOliveback = Class('FledglingOliveback', Safari, {
        id = 97078,
        rewards = {
            Achievement({id = 11233, criteria = 33109, oneline = true}),
            Pet({id = 1710})
        }
    }),
    GleamhoofFawn = Class('GleamhoofFawn', Safari, {
        id = 110741,
        rewards = {
            Achievement({id = 11233, criteria = 33138, oneline = true}),
            Achievement({id = 14729, criteria = 50227}), -- To All the Squirrels ...
            Pet({id = 1913})
        }
    }),
    GoldenEaglet = Class('GoldenEaglet', Safari, {
        id = 97080,
        rewards = {
            Achievement({id = 11233, criteria = 33110, oneline = true}),
            Achievement({id = 14729, criteria = 50232}), -- To All the Squirrels ...
            Pet({id = 1712})
        }
    }),
    HogNosedBat = Class('HogNosedBat', Safari, {
        id = 98192,
        rewards = {
            Achievement({id = 11233, criteria = 33128, oneline = true}),
            Pet({id = 1762})
        }
    }),
    JuvenileScuttleback = Class('JuvenileScuttleback', Safari, {
        id = 97283,
        rewards = {
            Achievement({id = 11233, criteria = 33114, oneline = true}),
            Pet({id = 1728})
        }
    }),
    LongEaredOwl = Class('LongEaredOwl', Safari, {
        id = 97118,
        rewards = {
            Achievement({id = 11233, criteria = 33111, oneline = true}),
            Achievement({id = 14729, criteria = 50231}), -- To All the Squirrels ...
            Pet({id = 1713})
        }
    }),
    MistFoxKit = Class('MistFoxKit', Safari, {
        id = 97743,
        rewards = {
            Achievement({id = 11233, criteria = 33124, oneline = true}),
            Pet({id = 1744})
        }
    }),
    MudshellConch = Class('MudshellConch', Safari, {
        id = 98446,
        rewards = {
            Achievement({id = 11233, criteria = 33133, oneline = true}),
            Pet({id = 1776})
        }
    }),
    NorthernHawkOwl = Class('NorthernHawkOwl', Safari, {
        id = 97126,
        rewards = {
            Achievement({id = 11233, criteria = 33112, oneline = true}),
            Pet({id = 1714})
        }
    }),
    OlivetailHare = Class('OlivetailHare', Safari, {
        id = 97294,
        rewards = {
            Achievement({id = 11233, criteria = 33115, oneline = true}),
            Pet({id = 1729})
        }
    }),
    RoseTaipan = Class('RoseTaipan', Safari, {
        id = 97840,
        rewards = {
            Achievement({id = 11233, criteria = 33125, oneline = true}),
            Pet({id = 1749})
        }
    }),
    ShimmeringAquafly = Class('ShimmeringAquafly', Safari, {
        id = 97511,
        rewards = {
            Achievement({id = 11233, criteria = 33117, oneline = true}),
            Pet({id = 1734})
        }
    }),
    SlitheringBrownscale = Class('SlitheringBrownscale', Safari, {
        id = 97542,
        rewards = {
            Achievement({id = 11233, criteria = 33119, oneline = true}),
            Pet({id = 1736})
        }
    }),
    SpiketailBeaver = Class('SpiketailBeaver', Safari, {
        id = 98211,
        rewards = {
            Achievement({id = 11233, criteria = 33129, oneline = true}),
            Pet({id = 1763})
        }
    }),
    SpringStrider = Class('SpringStrider', Safari, {
        id = 97559,
        rewards = {
            Achievement({id = 11233, criteria = 33122, oneline = true}),
            Pet({id = 1739})
        }
    }),
    StormstruckBeaver = Class('StormstruckBeaver', Safari, {
        id = 111172,
        rewards = {
            Achievement({id = 11233, criteria = 33141, oneline = true}),
            Pet({id = 1917})
        }
    }),
    TerrorLarva = Class('TerrorLarva', Safari, {
        id = 97531,
        rewards = {
            Achievement({id = 11233, criteria = 33118, oneline = true}),
            Pet({id = 1735})
        }
    }),
    ThornclawBroodling = Class('ThornclawBroodling', Safari, {
        id = 99528,
        rewards = {
            Achievement({id = 11233, criteria = 33137, oneline = true}),
            Pet({id = 1810})
        }
    }),
    TinyApparition = Class('TinyApparition', Safari, {
        id = 97952,
        rewards = {
            Achievement({id = 11233, criteria = 33126, oneline = true}),
            Achievement({id = 14729, criteria = 50233}), -- To All the Squirrels ...
            Pet({id = 1750})
        }
    }),
    ValeFlitter = Class('ValeFlitter', Safari, {
        id = 97547,
        rewards = {
            Achievement({id = 11233, criteria = 33120, oneline = true}),
            Pet({id = 1737})
        }
    }),
    ViciousBroodling = Class('ViciousBroodling', Safari, {
        id = 99513,
        rewards = {
            Achievement({id = 11233, criteria = 33135, oneline = true}),
            Pet({id = 1807})
        }
    })
}

-------------------------------------------------------------------------------
-------------------------- ANOMALOUS ANIMALS OF ARGUS -------------------------
-------------------------------------------------------------------------------

ns.node.AnomalousAnimal = Class('AnomalousAnimal', ns.node.Collectible,
    {group = ns.groups.PET_BATTLE, icon = 'paw_g'})

function ns.node.AnomalousAnimal:Initialize(id, i)
    ns.node.Collectible.Initialize(self)
    self.id = id
    self.rewards = {
        Achievement({id = 12088, criteria = i, oneline = true}), -- Anomalous Animals of Argus
        ns.reward.Spacer(),
        Achievement({id = 12089, criteria = i, oneline = true}), -- Aquatic
        Achievement({id = 12091, criteria = i, oneline = true}), -- Beast
        Achievement({id = 12092, criteria = i, oneline = true}), -- Critter
        Achievement({id = 12093, criteria = i, oneline = true}), -- Dragon
        Achievement({id = 12094, criteria = i, oneline = true}), -- Elemental
        Achievement({id = 12095, criteria = i, oneline = true}), -- Flying
        Achievement({id = 12096, criteria = i, oneline = true}), -- Humanoid
        Achievement({id = 12097, criteria = i, oneline = true}), -- Magic
        Achievement({id = 12098, criteria = i, oneline = true}), -- Mechanical
        Achievement({id = 12099, criteria = i, oneline = true}) -- Undead
    }
end

-------------------------------------------------------------------------------
-------------------------------- WORLD BOSSES ---------------------------------
-------------------------------------------------------------------------------

ns.hooks.worldquest.Add(ns.groups.RARE, {
    [42270] = { -- Nithogg
        Transmog({item = 141414, slot = L['cloth']}), -- Hood of Scorned Brood
        Transmog({item = 141418, slot = L['leather']}), -- Helm of the Mountain Recluse
        Transmog({item = 141420, slot = L['mail']}), -- Coif of Unstable Discharge
        Transmog({item = 141424, slot = L['plate']}), -- Stormbattered Casque
        Transmog({item = 141541, slot = L['cloak']}) -- Windwhipped Greatcloak
    },
    [42269] = { -- The Soultakers
        Transmog({item = 141434, slot = L['cloth']}), -- Cord of Kept Souls
        Transmog({item = 141444, slot = L['leather']}), -- Hel-Cursed Belt
        Transmog({item = 141436, slot = L['mail']}), -- Helchain Waistguard
        Transmog({item = 141442, slot = L['plate']}) -- Sea-Reaver's Girdle
    },
    [42779] = { -- Shar'thos
        Transmog({item = 141495, slot = L['cloth']}), -- Robe of Fever Dreams
        Transmog({item = 141487, slot = L['leather']}), -- Raiments of Waking Nightmares
        Transmog({item = 141491, slot = L['mail']}), -- Hauberk of the Snarled Vale
        Transmog({item = 141481, slot = L['plate']}), -- Chestplate of Blackened Emeralds
        Transmog({item = 141542, slot = L['cloak']}) -- Despoiled Dreamthread Cloak
    },
    [43192] = { -- Levantus
        Transmog({item = 141435, slot = L['cloth']}), -- Whirlpool Gloves
        Transmog({item = 141440, slot = L['leather']}), -- Seaweed "Leather" Mitts
        Transmog({item = 141431, slot = L['mail']}), -- Hook-Fingered Gauntlets
        Transmog({item = 141441, slot = L['plate']}) -- Chum-Chopper Gauntlets
    },
    [42819] = { -- Humongris
        Transmog({item = 141416, slot = L['cloth']}), -- Padawsen's Squished Pauldrons
        Transmog({item = 141445, slot = L['leather']}), -- Mantle of the Aspiring Spellgiant
        Transmog({item = 141422, slot = L['mail']}), -- Shoulderguards of Unimaginative Magic
        Transmog({item = 141426, slot = L['plate']}), -- Shoulderplates of Oversized Sorcery
        Transmog({item = 141540, slot = L['cloak']}) -- Coerced Wizard's Cloak
    },
    [43193] = { -- Calamir
        Transmog({item = 141443, slot = L['cloth']}), -- Sandals of Frozen Ash
        Transmog({item = 141430, slot = L['leather']}), -- Mana-Tanned Sandals
        Transmog({item = 141432, slot = L['mail']}), -- Frostburned Sabatons
        Transmog({item = 141437, slot = L['plate']}) -- Warboots of Smoldering Fury
    },
    [43513] = { -- Na'zak the Fiend
        Transmog({item = 141415, slot = L['cloth']}), -- Na'zak's Dusty Pantaloons
        Transmog({item = 141417, slot = L['leather']}), -- Desiccated Leather Pants
        Transmog({item = 141421, slot = L['mail']}), -- Venomscarred Chain Leggings
        Transmog({item = 141425, slot = L['plate']}) -- Avalanche Resistant Legplates
    },
    [43448] = { -- Drugon the Frostblood
        Transmog({item = 141428, slot = L['cloth']}), -- Snowdrift Bracers
        Transmog({item = 141429, slot = L['leather']}), -- Wax-Sealed Leather Bracers
        Transmog({item = 141433, slot = L['mail']}), -- Assorted Dragonscale Bracers
        Transmog({item = 141439, slot = L['plate']}), -- Ettinbone Bracers
        Transmog({item = 141538, slot = L['cloak']}) -- Giant's Handkerchief
    },
    [43512] = { -- Ana-Mouz
        Transmog({item = 141427, slot = L['cloth']}), -- Sheer Felthreaded Robe
        Transmog({item = 141419, slot = L['leather']}), -- Skimpy Demonleather Tunic
        Transmog({item = 141423, slot = L['mail']}), -- Crop Top Chain Hauberk
        Transmog({item = 141413, slot = L['plate']}), -- Low-Cut Chestplate
        Transmog({item = 141448, slot = L['cloak']}) -- Imp Mother's Loincloth
    },
    [43985] = { -- Flotsam
        Transmog({item = 141470, slot = L['cloth']}), -- Faded Bloodsail Handwraps
        Transmog({item = 141475, slot = L['leather']}), -- Salt-Stained Tuskarr Gloves
        Transmog({item = 141466, slot = L['mail']}), -- Blackwater Raider Handguards
        Transmog({item = 141476, slot = L['plate']}), -- Kezan Pirate's Mitts
        Transmog({item = 141539, slot = L['cloak']}) -- Ragged Azsharan Sail Fragment
    },
    [44287] = { -- Withered J'im
        Transmog({item = 141449, slot = L['cloth']}), -- Mana Scavenger's Mask
        Transmog({item = 141453, slot = L['leather']}), -- Magic-Warped Hood
        Transmog({item = 141455, slot = L['mail']}), -- Cave Skulker's Helm
        Transmog({item = 141459, slot = L['plate']}), -- Manacrystal-Adorned Helmet
        Transmog({item = 141543, slot = L['cloak']}) -- Drape of the Mana-Starved
    },
    [46947] = { -- Brutallus
        Transmog({item = 147732, slot = L['cloth']}), -- Leggings of Echoing Calamity
        Transmog({item = 147739, slot = L['leather']}), -- Rigid Meteorguard Gauntlets
        Transmog({item = 147742, slot = L['leather']}), -- Violent Zealot's Shoulderpads
        Transmog({item = 147747, slot = L['mail']}), -- Armbands of Crude Strategy
        Transmog({item = 147748, slot = L['plate']}), -- Gauntlets of Dreadful Tenacity
        Transmog({item = 147749, slot = L['plate']}) -- Polished Felfury Helmet
    },
    [91790] = { -- Brutallus
        Transmog({item = 147732, slot = L['cloth']}), -- Leggings of Echoing Calamity
        Transmog({item = 147739, slot = L['leather']}), -- Rigid Meteorguard Gauntlets
        Transmog({item = 147742, slot = L['leather']}), -- Violent Zealot's Shoulderpads
        Transmog({item = 147747, slot = L['mail']}), -- Armbands of Crude Strategy
        Transmog({item = 147748, slot = L['plate']}), -- Gauntlets of Dreadful Tenacity
        Transmog({item = 147749, slot = L['plate']}) -- Polished Felfury Helmet
    },
    [46948] = { -- Malificus
        Transmog({item = 147735, slot = L['cloth']}), -- Cuffs of Fearful Service
        Transmog({item = 147733, slot = L['cloth']}), -- Doomsayer's Ritualistic Vestment
        Transmog({item = 147740, slot = L['leather']}), -- Plague-Resistant Headcover
        Transmog({item = 147741, slot = L['leather']}), -- Legguards of Unholy Disdain
        Transmog({item = 147745, slot = L['mail']}), -- Taloned Brain-Scrapers
        Transmog({item = 147744, slot = L['mail']}), -- Treads of Disorderly Retreat
        Transmog({item = 147750, slot = L['plate']}), -- Malicious Zealot's Legplates
        Transmog({item = 147764, slot = L['cloak']}) -- Cloak of Growing Mistrust
    },
    [91791] = { -- Malificus
        Transmog({item = 147735, slot = L['cloth']}), -- Cuffs of Fearful Service
        Transmog({item = 147733, slot = L['cloth']}), -- Doomsayer's Ritualistic Vestment
        Transmog({item = 147740, slot = L['leather']}), -- Plague-Resistant Headcover
        Transmog({item = 147741, slot = L['leather']}), -- Legguards of Unholy Disdain
        Transmog({item = 147745, slot = L['mail']}), -- Taloned Brain-Scrapers
        Transmog({item = 147744, slot = L['mail']}), -- Treads of Disorderly Retreat
        Transmog({item = 147750, slot = L['plate']}), -- Malicious Zealot's Legplates
        Transmog({item = 147764, slot = L['cloak']}) -- Cloak of Growing Mistrust
    },
    [46945] = { -- Si'vash
        Transmog({item = 147731, slot = L['cloth']}), -- Cowl of Plumbed Depths
        Transmog({item = 147736, slot = L['cloth']}), -- Dockthrasher Cinch
        Transmog({item = 147737, slot = L['leather']}), -- Shorebreaker Robes
        Transmog({item = 147746, slot = L['mail']}), -- Glistening Seaspray Legguards
        Transmog({item = 147751, slot = L['plate']}), -- Si'vashi Guard's Breastplate
        Transmog({item = 147752, slot = L['plate']}) -- Pauldrons of the Engulfing Tide
    },
    [91792] = { -- Si'vash
        Transmog({item = 147731, slot = L['cloth']}), -- Cowl of Plumbed Depths
        Transmog({item = 147736, slot = L['cloth']}), -- Dockthrasher Cinch
        Transmog({item = 147737, slot = L['leather']}), -- Shorebreaker Robes
        Transmog({item = 147746, slot = L['mail']}), -- Glistening Seaspray Legguards
        Transmog({item = 147751, slot = L['plate']}), -- Si'vashi Guard's Breastplate
        Transmog({item = 147752, slot = L['plate']}) -- Pauldrons of the Engulfing Tide
    },
    [47061] = { -- Apocron
        Transmog({item = 147730, slot = L['cloth']}), -- Ashen Worldscorcher Gloves
        Transmog({item = 147734, slot = L['cloth']}), -- Spaulders of Forgotten Worlds
        Transmog({item = 147738, slot = L['leather']}), -- Doom-Herald's Footpads
        Transmog({item = 147743, slot = L['mail']}), -- Harness of Devouring Flame
        Transmog({item = 147753, slot = L['plate']}) -- Reaver's Rattling Girdle
    },
    [91789] = { -- Apocron
        Transmog({item = 147730, slot = L['cloth']}), -- Ashen Worldscorcher Gloves
        Transmog({item = 147734, slot = L['cloth']}), -- Spaulders of Forgotten Worlds
        Transmog({item = 147738, slot = L['leather']}), -- Doom-Herald's Footpads
        Transmog({item = 147743, slot = L['mail']}), -- Harness of Devouring Flame
        Transmog({item = 147753, slot = L['plate']}) -- Reaver's Rattling Girdle
    }
})
