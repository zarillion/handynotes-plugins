-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Reputation = ns.reward.Reputation
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 12

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.DELVE_REWARDS = Group('delve_rewards', 4203076, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    HasEnabledNodes = function() return true end
})

ns.groups.ABUNDANCE_REWARDS = Group('abundance_rewards', 464342, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    HasEnabledNodes = function() return true end
})

ns.groups.STORMARION_ASSAULT = Group('stormarion_assault', 7431083, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION,
    HasEnabledNodes = function() return true end
})

ns.groups.PROFESSION_TREASURES = Group('profession_treasures', 4620676, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

ns.groups.SKYRIDING_GLYPH = Group('skyriding_glyph', 4728198, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

ns.groups.TELESCOPE = Group('telescope', 134442, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62057
})

ns.groups.MIDNIGHT_LORE_HUNTER = Group('midnight_lore_hunter', 4549135, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62104
})

ns.groups.SAFARI = Group('safari', 2205238, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.COLLECTIBLE,
    achievement = 61091
})

------------------------------ EVERSONG WOODS ---------------------------------

ns.groups.RUNESTONE_RUSH = Group('runestone_rush', 134423, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 61961
})

ns.groups.EVER_PAINTING = Group('ever_painting', 7549082, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62185
})

--------------------------------- HARANDAR ------------------------------------
---
ns.groups.GLOWING_MOTH = Group('glowing_moth', 1003597, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 61052
})

ns.groups.MORE_THAN_JUST_THIER_ROOTS = Group('more_than_just_thier_roots',
    236160, {
        defaults = ns.GROUP_HIDDEN,
        type = ns.group_types.ACHIEVEMENT,
        achievement = 62188
    })

--------------------------------- ZUL'AMAN ------------------------------------

ns.groups.FROG_PRINCESS = Group('frog_princess', 2399262, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62201
})

ns.groups.SONG_SEEKER = Group('song_seeker', 6119037, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 61455
})

ns.groups.SPIRITPAW_MARATHON = Group('spiritpaw_marathon', 4891426, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 62202
})
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------- SKYRIDING GLYPH -------------------------------
-------------------------------------------------------------------------------

local SkyridingGlyph = Class('SkyridingGlyph', Collectible, {
    icon = 4728198,
    label = L['skyriding_glyph'],
    group = ns.groups.SKYRIDING_GLYPH
})

ns.node.SkyridingGlyph = SkyridingGlyph

-------------------------------------------------------------------------------
------------------------- MIDNIGHT: THE HIGHEST PEAKS -------------------------
-------------------------------------------------------------------------------

local Telescope = Class('Telescope', Collectible, {
    icon = 1723999,
    label = L['midnight_telescope'], -- Midnight Highest Peak Telescope
    group = ns.groups.TELESCOPE,
    getters = {
        rewards = function(self)
            return {
                Achievement({id = self.achievement, criteria = self.criteria}),
                Reputation({id = self.repfaction, gain = 100})
            }
        end
    },
    IsCompleted = function(self)
        return C_QuestLog.IsQuestFlaggedCompleted(self.quest[1])
    end
})

ns.node.Telescope = Telescope

-------------------------------------------------------------------------------
----------------------------- MIDNIGHT LORE HUNTER ----------------------------
-------------------------------------------------------------------------------

local LoreObject = Class('LoreObject', Collectible, {
    icon = 4549135,
    group = ns.groups.MIDNIGHT_LORE_HUNTER
})

ns.node.LoreObject = LoreObject

-------------------------------------------------------------------------------
------------------------------- RUNESTONE RUSH --------------------------------
-------------------------------------------------------------------------------

local RuneStone = Class('RuneStone', Collectible,
    {icon = 134423, group = ns.groups.RUNESTONE_RUSH})

function RuneStone:Initialize(criteria)
    ns.node.Collectible.Initialize(self)
    self.rewards = {Achievement({id = 61961, criteria = criteria})}
end

ns.node.RuneStoneRush = RuneStone

-------------------------------------------------------------------------------
-------------------------------- EVER PAINTING --------------------------------
-------------------------------------------------------------------------------

local Painting = Class('Painting', Collectible,
    {icon = 7549082, group = ns.groups.EVER_PAINTING})

function Painting:Initialize(criteria, location)
    ns.node.Collectible.Initialize(self)
    self.location = location or nil
    self.rewards = {Achievement({id = 62185, criteria = criteria})}
end

ns.node.EverPainting = Painting

-------------------------------------------------------------------------------
------------------------- MORE THAN JUST THIER ROOTS --------------------------
-------------------------------------------------------------------------------

local MoreThanJustThierRoots = Class('MoreThanJustThierRoots', Collectible, {
    icon = 236160,
    group = ns.groups.MORE_THAN_JUST_THIER_ROOTS
})

ns.node.MoreThanJustThierRoots = MoreThanJustThierRoots

-------------------------------------------------------------------------------
-------------------------------- FROG PRINCESS --------------------------------
-------------------------------------------------------------------------------

local FrogPrincess = Class('frog_princess', Collectible,
    {icon = 2399262, group = ns.groups.FROG_PRINCESS})

function FrogPrincess:Initialize(criteria, location)
    ns.node.Collectible.Initialize(self)
    self.parent = location or nil
    self.rewards = {Achievement({id = 62201, criteria = criteria})}
end

ns.node.FrogPrincess = FrogPrincess

-------------------------------------------------------------------------------
-------------------------------- SONG SEEKER ----------------------------------
-------------------------------------------------------------------------------

local Songseeker = Class('Songseeker', Collectible,
    {icon = 6119037, group = ns.groups.SONG_SEEKER})

ns.node.Songseeker = Songseeker
-------------------------------------------------------------------------------
------------------------- MORE THAN JUST THIER ROOTS --------------------------
-------------------------------------------------------------------------------

local SpiritpawMarathon = Class('SpiritpawMarathon', ns.node.Collectible, {
    icon = 4891426,
    group = ns.groups.SPIRITPAW_MARATHON
})

ns.node.SpiritpawMarathon = SpiritpawMarathon

-------------------------------------------------------------------------------
------------------------------- DUST 'EM OFF ----------------------------------
-------------------------------------------------------------------------------

local Moth = Class('Moth', ns.node.Collectible, {
    label = L['glowing_moth'],
    icon = 1003597,
    group = ns.groups.GLOWING_MOTH,
    rewards = {
        Achievement({id = 61052, criteria = {id = 1, qty = true}}),
        ns.reward.Currency({id = 3385}) -- Luminous Dust
    }
})

function Moth.getters:requires()
    return ns.requirement.Reputation(2704, self.renown, true)
end

ns.node.Moth = Moth

-------------------------------------------------------------------------------
------------------------------- MIDNIGHT SAFARI -------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {

    AkilFledgling = Class('AkilFledgling', Safari, {
        id = 249812,
        rewards = {
            Achievement({id = 61091, criteria = 112790, oneline = true}),
            Pet({id = 4874})
        }
    }), -- Akil Fledgling

    AmberTreeflitter = Class('AmberTreeflitter', Safari, {
        id = 241500,
        rewards = {
            Achievement({id = 61091, criteria = 112791, oneline = true}),
            Pet({id = 3277})
        }
    }), -- Amber Treeflitter

    AzureSporebat = Class('AzureSporebat', Safari, {
        id = 249822,
        rewards = {
            Achievement({id = 61091, criteria = 112792, oneline = true}),
            Pet({id = 4882})
        }
    }), -- Azure Sporebat

    Blistercreepling = Class('Blistercreepling', Safari, {
        id = 249819,
        rewards = {
            Achievement({id = 61091, criteria = 112793, oneline = true}),
            Pet({id = 4879})
        }
    }), -- Blistercreepling

    DevouringRunt = Class('DevouringRunt', Safari, {
        id = 240014,
        rewards = {
            Achievement({id = 61091, criteria = 112794, oneline = true}),
            Pet({id = 4790})
        }
    }), -- Devouring Runt

    DragonhawkMosswing = Class('DragonhawkMosswing', Safari, {
        id = 249824,
        rewards = {
            Achievement({id = 61091, criteria = 112795, oneline = true}),
            Pet({id = 4883})
        }
    }), -- Dragonhawk Mosswing

    EbonSnapling = Class('EbonSnapling', Safari, {
        id = 249818,
        rewards = {
            Achievement({id = 61091, criteria = 112796, oneline = true}),
            Pet({id = 4878})
        }
    }), -- Ebon Snapling

    Pangolil = Class('Pangolil', Safari, {
        id = 249825,
        rewards = {
            Achievement({id = 61091, criteria = 112797, oneline = true}),
            Pet({id = 4884})
        }
    }), -- Pangolil

    GloomToad = Class('GloomToad', Safari, {
        id = 249826,
        rewards = {
            Achievement({id = 61091, criteria = 112798, oneline = true}),
            Pet({id = 4885})
        }
    }), -- Gloom Toad

    MudPotadpole = Class('MudPotadpole', Safari, {
        id = 249816,
        rewards = {
            Achievement({id = 61091, criteria = 112799, oneline = true}),
            Pet({id = 4876})
        }
    }), -- Mud Potadpole

    NetherFamiliar = Class('NetherFamiliar', Safari, {
        id = 250571,
        rewards = {
            Achievement({id = 61091, criteria = 112800, oneline = true}),
            Pet({id = 4889})
        }
    }), -- Nether Familiar

    RiftbladeFamiliar = Class('RiftbladeFamiliar', Safari, {
        id = 250680,
        rewards = {
            Achievement({id = 61091, criteria = 112801, oneline = true}),
            Pet({id = 4892})
        }
    }), -- Riftblade Familiar

    RootlingNester = Class('RootlingNester', Safari, {
        id = 249815,
        rewards = {
            Achievement({id = 61091, criteria = 112802, oneline = true}),
            Pet({id = 4875})
        }
    }), -- Rootling Nester

    Silkcrawler = Class('Silkcrawler', Safari, {
        id = 249827,
        rewards = {
            Achievement({id = 61091, criteria = 112803, oneline = true}),
            Pet({id = 4886})
        }
    }), -- Silkcrawler

    StripedSnakebiter = Class('StripedSnakebiter', Safari, {
        id = 192368,
        rewards = {
            Achievement({id = 61091, criteria = 112804, oneline = true}),
            Pet({id = 3364})
        }
    }), -- Striped Snakebiter

    SwampBiter = Class('SwampBiter', Safari, {
        id = 249820,
        rewards = {
            Achievement({id = 61091, criteria = 112805, oneline = true}),
            Pet({id = 4880})
        }
    }), -- Swamp Biter

    VibrantManaling = Class('VibrantManaling', Safari, {
        id = 250572,
        rewards = {
            Achievement({id = 61091, criteria = 112806, oneline = true}),
            Pet({id = 4890})
        }
    }), -- Vibrant Manaling

    VioletChick = Class('VioletChick', Safari, {
        id = 249817,
        rewards = {
            Achievement({id = 61091, criteria = 112807, oneline = true}),
            Pet({id = 4877})
        }
    }), -- Violet Chick

    Voidcrawler = Class('Voidcrawler', Safari, {
        id = 241439,
        rewards = {
            Achievement({id = 61091, criteria = 112808, oneline = true}),
            Pet({id = 4795})
        }
    }), -- Voidcrawler

    Waddles = Class('Waddles', Safari, {
        id = 222077,
        rewards = {
            Achievement({id = 61091, criteria = 112809, oneline = true}),
            Pet({id = 4497})
        }
    }), -- Waddles

    WrathfulWyrm = Class('WrathfulWyrm', Safari, {
        id = 250573,
        rewards = {
            Achievement({id = 61091, criteria = 112810, oneline = true}),
            Pet({id = 4891})
        }
    }) -- Wrathful Wyrm
}
