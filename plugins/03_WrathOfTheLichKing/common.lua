-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Achievement = ns.reward.Achievement
local Collectible = ns.node.Collectible
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 3

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS WHO SHARED MY LIFE -------------------
-------------------------------------------------------------------------------

local Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})
ns.node.Squirrel = Squirrel

-------------------------------------------------------------------------------
----------------------------------- SAFARI ------------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    ArcticFoxKit = Class('ArcticFoxKit', Safari, {
        id = 62864,
        rewards = {
            Achievement({id = 6588, criteria = 21779, oneline = true}),
            Pet({id = 558})
        }
    }),
    ArcticHare = Class('ArcticHare', Safari, {
        id = 62693,
        rewards = {
            Achievement({id = 6588, criteria = 21767, oneline = true}),
            Pet({id = 641})
        }
    }),
    Biletoad = Class('Biletoad', Safari, {
        id = 62815,
        rewards = {
            Achievement({id = 6585, criteria = 21736, oneline = true}),
            Achievement({id = 6588, criteria = 21736, oneline = true}),
            Pet({id = 649})
        }
    }),
    BoreanMarmot = Class('BoreanMarmot', Safari, {
        id = 62695,
        rewards = {
            Achievement({id = 6588, criteria = 21768, oneline = true}),
            Pet({id = 639})
        }
    }),
    Chicken = Class('Chicken', Safari, {
        id = 62664,
        rewards = {
            Achievement({id = 6585, criteria = 21629, oneline = true}),
            Achievement({id = 6586, criteria = 21629, oneline = true}),
            Achievement({id = 6588, criteria = 21629, oneline = true}),
            Pet({id = 646})
        }
    }),
    Cockroach = Class('Cockroach', Safari, {
        id = 61384,
        rewards = {
            Achievement({id = 6585, criteria = 21625, oneline = true}),
            Achievement({id = 6586, criteria = 21625, oneline = true}),
            Achievement({id = 6588, criteria = 21625, oneline = true}),
            Pet({id = 393})
        }
    }),
    DevouringMaggot = Class('DevouringMaggot', Safari, {
        id = 62640,
        rewards = {
            Achievement({id = 6588, criteria = 21773, oneline = true}),
            Pet({id = 523})
        }
    }),
    DragonboneHatchling = Class('DragonboneHatchling', Safari, {
        id = 62852,
        rewards = {
            Achievement({id = 6588, criteria = 21771, oneline = true}),
            Pet({id = 537})
        }
    }),
    FjordRat = Class('FjordRat', Safari, {
        id = 62641,
        rewards = {
            Achievement({id = 6588, criteria = 21774, oneline = true}),
            Pet({id = 644})
        }
    }),
    FjordWorgPup = Class('FjordWorgPup', Safari, {
        id = 62669,
        rewards = {
            Achievement({id = 6588, criteria = 21775, oneline = true}),
            Pet({id = 529})
        }
    }),
    GrizzlySquirrel = Class('GrizzlySquirrel', Safari, {
        id = 62818,
        rewards = {
            Achievement({id = 6588, criteria = 21679, oneline = true}),
            Pet({id = 647})
        }
    }), -- also in Azsuna, Stormheim, Legion; Twilight Highlands, Cataclysm
    HugeToad = Class('HugeToad', Safari, {
        id = 61368,
        rewards = {
            Achievement({id = 6586, criteria = 21649, oneline = true}),
            Achievement({id = 6588, criteria = 21649, oneline = true}),
            Pet({id = 648})
        }
    }), --  Also in Twilight Highlands, Cataclysm
    ImperialEagleChick = Class('ImperialEagleChick', Safari, {
        id = 62819,
        rewards = {
            Achievement({id = 6588, criteria = 21772, oneline = true}),
            Pet({id = 534})
        }
    }),
    Maggot = Class('Maggot', Safari, {
        id = 61753,
        rewards = {
            Achievement({id = 6585, criteria = 21514, oneline = true}),
            Achievement({id = 6586, criteria = 21514, oneline = true}),
            Achievement({id = 6588, criteria = 21514, oneline = true}),
            Pet({id = 450})
        }
    }),
    MountainSkunk = Class('MountainSkunk', Safari, {
        id = 61677,
        rewards = {
            Achievement({id = 6585, criteria = 21688, oneline = true}),
            Achievement({id = 6586, criteria = 21688, oneline = true}),
            Achievement({id = 6588, criteria = 21688, oneline = true}),
            Pet({id = 633})
        }
    }), -- also in Stormheim, Legion
    Mouse = Class('Mouse', Safari, {
        id = 61143,
        rewards = {
            Achievement({id = 6585, criteria = 21631, oneline = true}),
            Achievement({id = 6586, criteria = 21631, oneline = true}),
            Achievement({id = 6587, criteria = 21631, oneline = true}),
            Achievement({id = 6588, criteria = 21631, oneline = true}),
            Pet({id = 385})
        }
    }),
    OilySlimeling = Class('OilySlimeling', Safari, {
        id = 62697,
        rewards = {
            Achievement({id = 6588, criteria = 21769, oneline = true}),
            Pet({id = 530})
        }
    }),
    Rat = Class('Rat', Safari, {
        id = 61366,
        rewards = {
            Achievement({id = 6585, criteria = 21516, oneline = true}),
            Achievement({id = 6586, criteria = 21516, oneline = true}),
            Achievement({id = 6587, criteria = 21516, oneline = true}),
            Achievement({id = 6588, criteria = 21516, oneline = true}),
            Pet({id = 417})
        }
    }), -- Drustvar, BFA; Highmountain, Spires of Arak, Legion;
    ScourgedWhelpling = Class('ScourgedWhelpling', Safari, {
        id = 62854,
        rewards = {
            Achievement({id = 6588, criteria = 21777, oneline = true}),
            Pet({id = 538})
        }
    }),
    ShoreCrab = Class('ShoreCrab', Safari, {
        id = 61158,
        rewards = {
            Achievement({id = 6585, criteria = 21706, oneline = true}),
            Achievement({id = 6588, criteria = 21706, oneline = true}),
            Achievement({id = 6589, criteria = 21706, oneline = true}),
            Pet({id = 388})
        }
    }), -- also in Twilight Highlands, Cataclysm; Waking Shores, Azure Span, Dragonflight; Nagrand, Draenor
    Skunk = Class('Skunk', Safari, {
        id = 61255,
        rewards = {
            Achievement({id = 6585, criteria = 21633, oneline = true}),
            Achievement({id = 6586, criteria = 21633, oneline = true}),
            Achievement({id = 6587, criteria = 21633, oneline = true}),
            Achievement({id = 6588, criteria = 21633, oneline = true}),
            Pet({id = 397})
        }
    }), -- also in Nagrand, Draenor; Val'sharah, Legion
    Snake = Class('Snake', Safari, {
        id = 61142,
        rewards = {
            Achievement({id = 6585, criteria = 21519, oneline = true}),
            Achievement({id = 6586, criteria = 21519, oneline = true}),
            Achievement({id = 6587, criteria = 21519, oneline = true}),
            Achievement({id = 6588, criteria = 21519, oneline = true}),
            Pet({id = 387})
        }
    }),
    Squirrel = Class('Squirrel', Safari, {
        id = 61081,
        rewards = {
            Achievement({id = 6585, criteria = 21522, oneline = true}),
            Achievement({id = 6586, criteria = 21522, oneline = true}),
            Achievement({id = 6587, criteria = 21522, oneline = true}),
            Achievement({id = 6588, criteria = 21522, oneline = true}),
            Pet({id = 379})
        }
    }), -- Drustvar, BFA; Highmountain, Legion; Spires of Arak, Nagrand, Draenor
    StuntedShardhorn = Class('StuntedShardhorn', Safari, {
        id = 62816,
        rewards = {
            Achievement({id = 6588, criteria = 21778, oneline = true}),
            Pet({id = 532})
        }
    }),
    TundraPenguin = Class('TundraPenguin', Safari, {
        id = 62835,
        rewards = {
            Achievement({id = 6588, criteria = 21770, oneline = true}),
            Pet({id = 536})
        }
    }),
    Turkey = Class('Turkey', Safari, {
        id = 62648,
        rewards = {
            Achievement({id = 6588, criteria = 21776, oneline = true}),
            Pet({id = 525})
        }
    }),
    WaterWaveling = Class('WaterWaveling', Safari, {
        id = 62820,
        rewards = {
            Achievement({id = 6588, criteria = 21780, oneline = true}),
            Pet({id = 535})
        }
    })
}
