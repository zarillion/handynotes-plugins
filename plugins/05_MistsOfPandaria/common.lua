-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog

-------------------------------------------------------------------------------

ns.expansion = 5

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.KROSHIK = Group('kroshik', 458255, {defaults = ns.GROUP_HIDDEN})
ns.groups.LOREWALKER = Group('lorewalker', 645218, {defaults = ns.GROUP_HIDDEN})
-- ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------

ns.node.Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})

-------------------------------------------------------------------------------

ns.node.Lorewalker = Class('Lorewalker', Collectible,
    {icon = 645218, group = ns.groups.LOREWALKER})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

-- local Safari = Class('Safari', Collectible,
--     {icon = 'paw_g', group = ns.groups.SAFARI})

-- ns.node.Safari = {
--     AlpineFoxling = Class('AlpineFoxling', Safari, {
--         id = 63550,
--         rewards = {
--             Achievement({id = 6589, criteria = 21823, oneline = false}),
--             Pet({id = 733})
--         }
--     }),
--     AlpineFoxlingKit = Class('AlpineFoxlingKit', Safari, {
--         id = 63551,
--         rewards = {
--             Achievement({id = 6589, criteria = 21824, oneline = false}),
--             Pet({id = 725})
--         }
--     }),
--     AmberMoth = Class('AmberMoth', Safari, {
--         id = 65187,
--         rewards = {
--             Achievement({id = 6589, criteria = 21832, oneline = false}),
--             Pet({id = 732})
--         }
--     }),
--     AmethystSpiderling = Class('AmethystSpiderling', Safari, {
--         id = 63288,
--         rewards = {
--             Achievement({id = 6589, criteria = 21809, oneline = false}),
--             Pet({id = 716})
--         }
--     }),
--     Bandicoon = Class('Bandicoon', Safari, {
--         id = 63062,
--         rewards = {
--             Achievement({id = 6589, criteria = 21798, oneline = false}),
--             Pet({id = 706})
--         }
--     }), -- Also in Azsuna, Legion
--     BandicoonKit = Class('BandicoonKit', Safari, {
--         id = 63064,
--         rewards = {
--             Achievement({id = 6589, criteria = 21799, oneline = false}),
--             Pet({id = 707})
--         }
--     }),
--     BucktoothFlapper = Class('BucktoothFlapper', Safari, {
--         id = 62992,
--         rewards = {
--             Achievement({id = 6589, criteria = 21781, oneline = false}),
--             Pet({id = 380})
--         }
--     }), -- also in Stormheim, and Val'sharah
--     CloudedHedgehog = Class('CloudedHedgehog', Safari, {
--         id = 64242,
--         rewards = {
--             Achievement({id = 6589, criteria = 21838, oneline = false}),
--             Pet({id = 742})
--         }
--     }),
--     CrunchyScorpion = Class('CrunchyScorpion', Safari, {
--         id = 63548,
--         rewards = {
--             Achievement({id = 6589, criteria = 21839, oneline = false}),
--             Pet({id = 745})
--         }
--     }),
--     EmeraldTurtle = Class('EmeraldTurtle', Safari, {
--         id = 62994,
--         rewards = {
--             Achievement({id = 6589, criteria = 21782, oneline = false}),
--             Pet({id = 564})
--         }
--     }),
--     EmperorCrab = Class('EmperorCrab', Safari, {
--         id = 65203,
--         rewards = {
--             Achievement({id = 6589, criteria = 21840, oneline = false}),
--             Pet({id = 746})
--         }
--     }),
--     FeverbiteHatchling = Class('FeverbiteHatchling', Safari, {
--         id = 65054,
--         rewards = {
--             Achievement({id = 6589, criteria = 21810, oneline = false}),
--             Pet({id = 714})
--         }
--     }),
--     GardenFrog = Class('GardenFrog', Safari, {
--         id = 63002,
--         rewards = {
--             Achievement({id = 6589, criteria = 21784, oneline = false}),
--             Pet({id = 569})
--         }
--     }),
--     GardenMoth = Class('GardenMoth', Safari, {
--         id = 65215,
--         rewards = {
--             Achievement({id = 6589, criteria = 21785, oneline = false}),
--             Pet({id = 753})
--         }
--     }),
--     GrasslandHopper = Class('GrasslandHopper', Safari, {
--         id = 63549,
--         rewards = {
--             Achievement({id = 6589, criteria = 21833, oneline = false}),
--             Pet({id = 733})
--         }
--     }),
--     GroveViper = Class('GroveViper', Safari, {
--         id = 63004,
--         rewards = {
--             Achievement({id = 6589, criteria = 21786, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     JumpingSpider = Class('JumpingSpider', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21787, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     JungleDarter = Class('JungleDarter', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21788, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     JungleGrub = Class('JungleGrub', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21811, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     KuitanMongoose = Class('KuitanMongoose', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21834, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     LeopardTreeFrog = Class('LeopardTreeFrog', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21789, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     LuyuMoth = Class('LuyuMoth', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21812, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MalayanQuillrat = Class('MalayanQuillrat', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21800, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MalayanQuillratPup = Class('MalayanQuillratPup', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21801, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MarshFiddler = Class('MarshFiddler', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21802, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MaskedTanuki = Class('MaskedTanuki', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21790, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MaskedTanukiPup = Class('MaskedTanukiPup', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21791, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MeiLiSparkler = Class('MeiLiSparkler', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21814, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MirrorStrider = Class('MirrorStrider', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21792, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     Mongoose = Class('Mongoose', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21835, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     MongoosePup = Class('MongoosePup', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21836, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     PlainsMonitor = Class('PlainsMonitor', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21825, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     PrairieMouse = Class('PrairieMouse', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21826, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     RapanaWhelk = Class('RapanaWhelk', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21841, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     ResilientRoach = Class('ResilientRoach', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21843, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SandyPetrel = Class('SandyPetrel', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21793, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SavoryBeetle = Class('SavoryBeetle', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21815, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SeaGull = Class('SeaGull', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21640, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     ShoreCrab = Class('ShoreCrab', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21706, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     ShrineFly = Class('ShrineFly', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21794, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     ShyBandicoon = Class('ShyBandicoon', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21803, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SifangOtter = Class('SifangOtter', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21797, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SifangOtterPup = Class('SifangOtterPup', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21816, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SilentHedgehog = Class('SilentHedgehog', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21842, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SilkbeadSnail = Class('SilkbeadSnail', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21795, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SoftshellSnapling = Class('SoftshellSnapling', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21806, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SpinyTerrapin = Class('SpinyTerrapin', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21817, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SpireboundCrab = Class('SpireboundCrab', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21796, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SummitKid = Class('SummitKid', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21827, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     SzechuanChicken = Class('SzechuanChicken', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21828, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     TempleSnake = Class('TempleSnake', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21805, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     TolaiHare = Class('TolaiHare', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21829, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     TolaiHarePup = Class('TolaiHarePup', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21830, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     Yakrat = Class('Yakrat', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21837, oneline = false}),
--             Pet({id = nil})
--         }
--     }), -- TODO
--     ZooeySnake = Class('ZooeySnake', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 6589, criteria = 21831, oneline = false}),
--             Pet({id = nil})
--         }
--     }) -- TODO
-- }

-------------------------------------------------------------------------------
----------------------------- WORLD BOSS REWARDS ------------------------------
-------------------------------------------------------------------------------
-- Adds Rewards to World Boss tooltips.

local WORLD_BOSS_ENCOUNTER_IDS = {
    [691] = { -- Sha of Anger
        Achievement({id = 6480}), -- Settle Down, Bro
        Achievement({id = 6926, criteria = 19136}), -- Tranquil Master
        ns.reward.Spacer(), --
        Mount({item = 87771, id = 473}) -- Heavenly Onyx Cloud Serpent
    },
    [725] = { -- Galleon
        Mount({item = 89783, id = 515}), -- Son of Galleon
        ns.reward.Spacer(), --
        Transmog({item = 90419, slot = L['leather']}), -- Fireproofed Chestguard
        Transmog({item = 90451, slot = L['leather']}), -- Cannoneer's Gunpowder Carrier
        Transmog({item = 90442, slot = L['leather']}), -- Flamefoot Tabi
        Transmog({item = 90449, slot = L['cloth']}), -- Belt of Detonation
        Transmog({item = 90450, slot = L['leather']}), -- Carrot-Holder Belt
        Transmog({item = 90421, slot = L['mail']}), -- Chain of Unseized Skies
        Transmog({item = 90411, slot = L['leather']}), -- Facemask of Unrepentant Banditry
        Transmog({item = 90454, slot = L['plate']}), -- Girdle of the Galloping Giant
        Transmog({item = 90412, slot = L['mail']}), -- Helm of Restoring Wind
        Transmog({item = 90418, slot = L['cloth']}), -- Robes of the Lightning Rider
        Transmog({item = 90441, slot = L['leather']}), -- Stompdodger Boots
        Transmog({item = 90443, slot = L['mail']}), -- Burnmender Boots
        Transmog({item = 90448, slot = L['cloth']}), -- Cannonfire Cord
        Transmog({item = 90410, slot = L['leather']}), -- Cap of Wandering Pride
        Transmog({item = 90413, slot = L['mail']}), -- Crest of the Grand Warband
        Transmog({item = 90445, slot = L['plate']}), -- Firerider Treads
        Transmog({item = 90420, slot = L['leather']}), -- Flameshot Wrap
        Transmog({item = 90439, slot = L['cloth']}), -- Open Steppe Sandals
        Transmog({item = 90409, slot = L['cloth']}), -- Sky-Sear Cowl
        Transmog({item = 90452, slot = L['mail']}), -- Sparkmaker Girdle
        Transmog({item = 90447, slot = L['plate']}), -- Stompers of Vigorous Stomping
        Transmog({item = 90444, slot = L['mail']}), -- Treads of Gentle Nudges
        Transmog({item = 90422, slot = L['mail']}), -- Armor of the Single Cloud
        Transmog({item = 90425, slot = L['plate']}), -- Carapace of Crushed Conviction
        Transmog({item = 90456, slot = L['plate']}), -- Cord of Crazed Strength
        Transmog({item = 90416, slot = L['plate']}), -- Crown of Ranging Invasion
        Transmog({item = 90408, slot = L['cloth']}), -- Free Spirit Hood
        Transmog({item = 90415, slot = L['plate']}), -- Giantfoot Headguard
        Transmog({item = 90453, slot = L['mail']}), -- Girdle of the Raging Rider
        Transmog({item = 90455, slot = L['plate']}), -- Greatbelt of Livid Fury
        Transmog({item = 90424, slot = L['plate']}), -- Ravaging Warrior's Chestplate
        Transmog({item = 90446, slot = L['plate']}), -- Silverspur Warboots
        Transmog({item = 90440, slot = L['cloak']}), -- Slippers of Fiery Retribution
        Transmog({item = 90423, slot = L['plate']}), -- Chestguard of the Unbowed Back
        Transmog({item = 90414, slot = L['plate']}), -- Greathelm of the Monstrous Mushan
        Transmog({item = 90417, slot = L['cloth']}) -- Robes of Blue Skies
    },
    [814] = { -- Nalak <The Storm Lord>
        Achievement({id = 8028}), -- Praise the Sun!
        ns.reward.Spacer(), --
        Mount({item = 95057, id = 542}) -- Thundering Cobalt Cloud Serpent
    },
    [826] = {}, -- Oondasta
    [857] = {Achievement({id = 8535, criteria = 23743})}, -- Chi-Ji, The Red Crane
    [858] = {Achievement({id = 8535, criteria = 23744})}, -- Yu'lon, The Jade Serpent
    [859] = {Achievement({id = 8535, criteria = 23745})}, -- Niuzao, The Black Ox
    [860] = {Achievement({id = 8535, criteria = 23746})}, -- Xuen, The White Tiger
    [861] = {Achievement({id = 8533})} -- Ordos, Fire-God of the Yaungol
}

ns.hooks.encounter.Add(nil, WORLD_BOSS_ENCOUNTER_IDS)
