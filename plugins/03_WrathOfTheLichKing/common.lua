-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

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
            Achievement({id = 6588, criteria = 21779, oneline = false}),
            Pet({id = 558})
        }
    }),
    ArcticHare = Class('ArcticHare', Safari, {
        id = 62693,
        rewards = {
            Achievement({id = 6588, criteria = 21767, oneline = false}),
            Pet({id = 641})
        }
    }),
    Biletoad = Class('Biletoad', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }),
    BoreanMarmot = Class('BoreanMarmot', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Chicken = Class('Chicken', Safari, {
        id = 62664,
        rewards = {
            Achievement({id = 6585, criteria = 21629, oneline = true}),
            Achievement({id = 6586, criteria = 21629, oneline = true}),
            Achievement({id = 6588, criteria = 21629, oneline = true}),
            Pet({id = 646})
        }
    }), -- TODO
    Cockroach = Class('Cockroach', Safari, {
        id = 61384,
        rewards = {
            Achievement({id = 6585, criteria = 21625, oneline = true}),
            Achievement({id = 6586, criteria = 21625, oneline = true}),
            Achievement({id = 6588, criteria = 21625, oneline = true}),
            Pet({id = 393})
        }
    }), -- TODO
    DevouringMaggot = Class('DevouringMaggot', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    DragonboneHatchling = Class('DragonboneHatchling', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Fawn = Class('Fawn', Safari, {
        id = 61165,
        rewards = {
            Achievement({id = 6586, criteria = 21639, oneline = true}),
            Achievement({id = 6588, criteria = 21639, oneline = true}),
            Pet({id = 447})
        }
    }), -- TODO
    FjordRat = Class('FjordRat', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    FjordWorgPup = Class('FjordWorgPup', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    GrizzlySquirrel = Class('GrizzlySquirrel', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    HugeToad = Class('HugeToad', Safari, {
        id = 61368,
        rewards = {
            Achievement({id = 6586, criteria = 21649, oneline = true}),
            Achievement({id = 6588, criteria = 21649, oneline = true}),
            Pet({id = 648})
        }
    }), -- TODO --  Also in Zul'Drak, Northrend; Twilight Highlands, Cataclysm
    ImperialEagleChick = Class('ImperialEagleChick', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Maggot = Class('Maggot', Safari, {
        id = 61753,
        rewards = {
            Achievement({id = 6585, criteria = 21514, oneline = true}),
            Achievement({id = 6586, criteria = 21514, oneline = true}),
            Achievement({id = 6588, criteria = 21514, oneline = true}),
            Pet({id = 450})
        }
    }), -- TODO -- also in Howling Fjord, Northrend
    MountainSkunk = Class('MountainSkunk', Safari, {
        id = 61677,
        rewards = {
            Achievement({id = 6585, criteria = 21688, oneline = true}),
            Achievement({id = 6586, criteria = 21688, oneline = true}),
            Achievement({id = 6588, criteria = 21688, oneline = true}),
            Pet({id = 633})
        }
    }), -- TODO -- also in Storm Peaks, Grizzly Hills, Northrend; Stormheim, Legion
    Mouse = Class('Mouse', Safari, {
        id = 61143,
        rewards = {
            Achievement({id = 6585, criteria = 21631, oneline = true}),
            Achievement({id = 6586, criteria = 21631, oneline = true}),
            Achievement({id = 6587, criteria = 21631, oneline = true}),
            Achievement({id = 6588, criteria = 21631, oneline = true}),
            Pet({id = 385})
        }
    }), -- TODO -- Also in Crystalsong Forest, Northrend
    OilySlimeling = Class('OilySlimeling', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Rabbit = Class('Rabbit', Safari, {
        id = 61080,
        rewards = {
            Achievement({id = 6585, criteria = 21508, oneline = true}),
            Achievement({id = 6586, criteria = 21508, oneline = true}),
            Achievement({id = 6587, criteria = 21508, oneline = true}),
            Achievement({id = 6588, criteria = 21508, oneline = true}),
            Pet({id = 378})
        }
    }), -- TODO
    Rat = Class('Rat', Safari, {
        id = 61366,
        rewards = {
            Achievement({id = 6585, criteria = 21516, oneline = true}),
            Achievement({id = 6586, criteria = 21516, oneline = true}),
            Achievement({id = 6587, criteria = 21516, oneline = true}),
            Achievement({id = 6588, criteria = 21516, oneline = true}),
            Pet({id = 417})
        }
    }), -- TODO -- Also in Terrok Forest, Nagrand, Outland; Drustvar, BFA; Highmountain, Spires of Arak, Legion; Howling Fjord, Northrend
    ScourgedWhelpling = Class('ScourgedWhelpling', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Roach = Class('Roach', Safari, {
        id = 61169,
        rewards = {
            Achievement({id = 6585, criteria = 21517, oneline = true}),
            Achievement({id = 6586, criteria = 21517, oneline = true}),
            Achievement({id = 6588, criteria = 21517, oneline = true}),
            Pet({id = 424})
        }
    }), -- TODO -- Also in Drustvar, BFA;
    ShoreCrab = Class('ShoreCrab', Safari, {
        id = 61158,
        rewards = {
            Achievement({id = 6585, criteria = 21706, oneline = true}),
            Achievement({id = 6588, criteria = 21706, oneline = true}),
            Achievement({id = 6589, criteria = 21706, oneline = true}),
            Pet({id = 388})
        }
    }), -- TODO -- also in Borean Tundra, Howling Fjord, Northrend; Twilight Highlands, Cataclysm; Waking Shores, Azure Span, Dragonflight; Nagrand, Draenor
    Skunk = Class('Skunk', Safari, {
        id = 61255,
        rewards = {
            Achievement({id = 6585, criteria = 21633, oneline = true}),
            Achievement({id = 6586, criteria = 21633, oneline = true}),
            Achievement({id = 6587, criteria = 21633, oneline = true}),
            Achievement({id = 6588, criteria = 21633, oneline = true}),
            Pet({id = 397})
        }
    }), -- TODO -- also in Terrok Forest, Outland; Howling Fjord, Northrend; Nagrand, Draenor; Val'sharah, Legion
    Snake = Class('Snake', Safari, {
        id = 61142,
        rewards = {
            Achievement({id = 6585, criteria = 21519, oneline = true}),
            Achievement({id = 6586, criteria = 21519, oneline = true}),
            Achievement({id = 6587, criteria = 21519, oneline = true}),
            Achievement({id = 6588, criteria = 21519, oneline = true}),
            Pet({id = 387})
        }
    }), -- TODO -- Also in Zangarmarsh, Outland; Sholazar Basin, Zuldrak, Northrend
    Spider = Class('Spider', Safari, {
        id = 61327,
        rewards = {
            Achievement({id = 6585, criteria = 21521, oneline = true}),
            Achievement({id = 6586, criteria = 21521, oneline = true}),
            Achievement({id = 6588, criteria = 21521, oneline = true}),
            Pet({id = 412})
        }
    }), -- TODO
    Squirrel = Class('Squirrel', Safari, {
        id = 61081,
        rewards = {
            Achievement({id = 6585, criteria = 21522, oneline = true}),
            Achievement({id = 6586, criteria = 21522, oneline = true}),
            Achievement({id = 6587, criteria = 21522, oneline = true}),
            Achievement({id = 6588, criteria = 21522, oneline = true}),
            Pet({id = 379})
        }
    }), -- TODO -- also in Terrokar Forest, Nagrand, Blades Edge Mountains, Outland; Crystalsong Forest, Howling Fjord, Sholzar Basin, Northrend; Drustvar, BFA; Highmountain, Legion; Spires of Arak, Nagrand, Draenor
    StrandCrab = Class('StrandCrab', Safari, {
        id = 61312,
        rewards = {
            Achievement({id = 6585, criteria = 21659, oneline = true}),
            Achievement({id = 6586, criteria = 21659, oneline = true}),
            Achievement({id = 6588, criteria = 21659, oneline = true}),
            Pet({id = 401})
        }
    }), -- TODO -- also in spires of arak, Draenor
    StuntedShardhorn = Class('StuntedShardhorn', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Toad = Class('Toad', Safari, {
        id = 61369,
        rewards = {
            Achievement({id = 6585, criteria = 21646, oneline = true}),
            Achievement({id = 6586, criteria = 21646, oneline = true}),
            Achievement({id = 6587, criteria = 21646, oneline = true}),
            Achievement({id = 6588, criteria = 21646, oneline = true}),
            Pet({id = 420})
        }
    }), -- TODO -- also in Nagrand, Outland
    TundraPenguin = Class('TundraPenguin', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    Turkey = Class('Turkey', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }), -- TODO
    WaterWaveling = Class('WaterWaveling', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6588, criteria = nil, oneline = false}),
            Pet({id = nil})
        }
    }) -- TODO
}
