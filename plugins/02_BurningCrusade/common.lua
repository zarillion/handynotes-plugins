-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group

-------------------------------------------------------------------------------

ns.expansion = 2

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.NETHERWING_EGGS = Group('netherwing_eggs', 134430,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
----------------------------------- SAFARI ------------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    Adder = Class('Adder', Safari, {
        id = 61325,
        rewards = {
            Achievement({id = 6585, criteria = 21509}),
            Achievement({id = 6586, criteria = 21509}),
            Achievement({id = 6587, criteria = 21509}), Pet({id = 635})
        }
    }), -- Also in Drustvar, BfA; Hellfire Peninsula, Nagrand, BC; Spires of Arak, Legion;
    AshViper = Class('AshViper', Safari, {
        id = 61385,
        rewards = {
            Achievement({id = 6586, criteria = 21624}),
            Achievement({id = 6587, criteria = 21624}), Pet({id = 425})
        }
    }), -- Also in Suramar, Legion; Shadowmoon Valley, BC
    Cat = Class('Cat', Safari, {
        id = 62019,
        rewards = {
            Achievement({id = 6586, criteria = 21610}),
            Achievement({id = 6587, criteria = 21610}),
            Achievement({id = 8397, criteria = 23580}), Pet({id = 459})
        }
    }),
    ClefthoofRunt = Class('ClefthoofRunt', Safari, {
        id = 62620,
        rewards = {
            Achievement({id = 6587, criteria = 21761}),
            Pet({id = 518})
        }
    }),
    FelFlame = Class('FelFlame', Safari, {
        id = 62621,
        rewards = {
            Achievement({id = 6587, criteria = 21764}),
            Pet({id = 519})
        }
    }), -- Also in Tanaan, Draenor
    FlayerYoungling = Class('FlayerYoungling', Safari, {
        id = 62555,
        rewards = {
            Achievement({id = 6587, criteria = 21760}),
            Pet({id = 514})
        }
    }),
    FledglingNetherRay = Class('FledglingNetherRay', Safari, {
        id = 62627,
        rewards = {
            Achievement({id = 6587, criteria = 	21762}),
            Pet({id = 521})
        }
    }),
    NetherRoach = Class('NetherRoach', Safari, {
        id = 62625,
        rewards = {
            Achievement({id = 6587, criteria = 21763}),
            Pet({id = 638})
        }
    }),
    PrairieDog = Class('PrairieDog', Safari, {
        id = 61141,
        rewards = {
            Achievement({id = 6585, criteria = 21613}),
            Achievement({id = 6586, criteria = 21613}),
            Achievement({id = 6587, criteria = 21613}), Pet({id = 386})
        }
    }), -- also in Nagrand, Draenor
    Rabbit = Class('Rabbit', Safari, {
        id = 61080,
        rewards = {
            Achievement({id = 6585, criteria = 21508}),
            Achievement({id = 6586, criteria = 21508}),
            Achievement({id = 6587, criteria = 21508}),
            Achievement({id = 6588, criteria = 21508}), Pet({id = 378})
        }
    }),
    Rat = Class('Rat', Safari, {
        id = 61366,
        rewards = {
            Achievement({id = 6585, criteria = 21516}),
            Achievement({id = 6586, criteria = 21516}),
            Achievement({id = 6587, criteria = 21516}),
            Achievement({id = 6588, criteria = 21516}), Pet({id = 417})
        }
    }), -- Also in Terrok Forest, Nagrand, Outland; Drustvar, BFA; Highmountain, Spires of Arak, Legion; Howling Fjord, Northrend
    RockViper = Class('RockViper', Safari, {
        id = 62184,
        rewards = {
            Achievement({id = 6585, criteria = 21699}),
            Achievement({id = 6587, criteria = 21699}), Pet({id = 482})
        }
    }), -- Also in Mount Hyjal, Cataclysm, Blades Edge Mountains, Outland
    ScaldedBasiliskHatchling = Class('ScaldedBasiliskHatchling', Safari, {
        id = 62628,
        rewards = {
            Achievement({id = 6587, criteria = 21759}),
            Pet({id = 528})
        }
    }),
    Scorpid = Class('Scorpid', Safari, {
        id = 61326,
        rewards = {
            Achievement({id = 6585, criteria = 21622}),
            Achievement({id = 6586, criteria = 21622}),
            Achievement({id = 6587, criteria = 21622}), Pet({id = 414})
        }
    }), -- Also in Hellfire Peninsula, Shadowmoon Valley, Blades Edge Mountains, Outland; Twilight Highlands, Cataclysm
    SkitteringCavernCrawler = Class('SkitteringCavernCrawler', Safari, {
        id = 62638,
        rewards = {
            Achievement({id = 6587, criteria = nil}),
            Pet({id = nil})
        }
    }),
    Skunk = Class('Skunk', Safari, {
        id = 61255,
        rewards = {
            Achievement({id = 6585, criteria = 21633}),
            Achievement({id = 6586, criteria = 21633}),
            Achievement({id = 6587, criteria = 21633}),
            Achievement({id = 6588, criteria = 21633}), Pet({id = 397})
        }
    }), -- also in Terrok Forest, Outland; Howling Fjord, Northrend; Nagrand, Draenor; Val'sharah, Legion
    SmallFrog = Class('SmallFrog', Safari, {
        id = 61071,
        rewards = {
            Achievement({id = 6585, criteria = 21518}),
            Achievement({id = 6586, criteria = 21518}),
            Achievement({id = 6587, criteria = 21518}), Pet({id = 419})
        }
    }), -- also in Zangarmarsh, Outland
    Snake = Class('Snake', Safari, {
        id = 61142,
        rewards = {
            Achievement({id = 6585, criteria = 21519}),
            Achievement({id = 6586, criteria = 21519}),
            Achievement({id = 6587, criteria = 21519}),
            Achievement({id = 6588, criteria = 21519}), Pet({id = 387})
        }
    }), -- Also in Zangarmarsh, Outland; Sholazar Basin, Zuldrak, Northrend
    SporelingSprout = Class('SporelingSprout', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6587, criteria = nil}),
            Pet({id = nil})
        }
    })
    Squirrel = Class('Squirrel', Safari, {
        id = 61081,
        rewards = {
            Achievement({id = 6585, criteria = 21522}),
            Achievement({id = 6586, criteria = 21522}),
            Achievement({id = 6587, criteria = 21522}),
            Achievement({id = 6588, criteria = 21522}), Pet({id = 379})
        }
    }), -- also in Terrokar Forest, Nagrand, Blades Edge Mountains, Outland; Crystalsong Forest, Howling Fjord, Sholzar Basin, Northrend; Drustvar, BFA; Highmountain, Legion; Spires of Arak, Nagrand, Draenor
    StripeTailedScorpid = Class('StripeTailedScorpid', Safari, {
        id = 61440,
        rewards = {
            Achievement({id = 6585, criteria = 21620}),
            Achievement({id = 6586, criteria = 21620}),
            Achievement({id = 6587, criteria = 21620}), Pet({id = 432})
        }
    }), -- also in Terrokar Forest, Outland
    TaintedCockroach = Class('TaintedCockroach', Safari, {
        id = 62314,
        rewards = {
            Achievement({id = 6585, criteria = 21723}),
            Achievement({id = 6587, criteria = 21723}), Pet({id = 497})
        }
    }), -- also in Shadowmoon Valley, Outland
    Toad = Class('Toad', Safari, {
        id = 61369,
        rewards = {
            Achievement({id = 6585, criteria = 21646}),
            Achievement({id = 6586, criteria = 21646}),
            Achievement({id = 6587, criteria = 21646}),
            Achievement({id = 6588, criteria = 21646}), Pet({id = 420})
        }
    }), -- also in Nagrand, Outland
    WarpstalkerHatchlin = Class('WarpstalkerHatchlin', Safari, {
        id = nil,
        rewards = {
            Achievement({id = 6587, criteria = nil}),
            Pet({id = nil})
        }
    })
}
