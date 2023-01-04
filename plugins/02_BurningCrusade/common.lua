-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 2

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.NETHERWING_EGGS = Group('netherwing_eggs', 134430,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.CRAZYFORCATS = Group('crazyforcats', 656579,
    {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
----------------------------------- SAFARI ------------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    Adder = Class('Adder', Safari, {
        id = 61325,
        rewards = {
            Achievement({id = 6585, criteria = 21509, oneline = true}),
            Achievement({id = 6586, criteria = 21509, oneline = true}),
            Achievement({id = 6587, criteria = 21509, oneline = true}),
            Pet({id = 635})
        }
    }),
    AshViper = Class('AshViper', Safari, {
        id = 61385,
        rewards = {
            Achievement({id = 6586, criteria = 21624, oneline = true}),
            Achievement({id = 6587, criteria = 21624, oneline = true}),
            Pet({id = 425})
        }
    }),
    ClefthoofRunt = Class('ClefthoofRunt', Safari, {
        id = 62620,
        rewards = {
            Achievement({id = 6587, criteria = 21761, oneline = true}),
            Pet({id = 518})
        }
    }),
    FelFlame = Class('FelFlame', Safari, {
        id = 62621,
        rewards = {
            Achievement({id = 6587, criteria = 21764, oneline = true}),
            Pet({id = 519})
        }
    }),
    FlayerYoungling = Class('FlayerYoungling', Safari, {
        id = 62555,
        rewards = {
            Achievement({id = 6587, criteria = 21760, oneline = true}),
            Pet({id = 514})
        }
    }),
    FledglingNetherRay = Class('FledglingNetherRay', Safari, {
        id = 62627,
        rewards = {
            Achievement({id = 6587, criteria = 21762, oneline = true}),
            Pet({id = 521})
        }
    }),
    NetherRoach = Class('NetherRoach', Safari, {
        id = 62625,
        rewards = {
            Achievement({id = 6587, criteria = 21763, oneline = true}),
            Pet({id = 638})
        }
    }),
    PrairieDog = Class('PrairieDog', Safari, {
        id = 61141,
        rewards = {
            Achievement({id = 6585, criteria = 21613, oneline = true}),
            Achievement({id = 6586, criteria = 21613, oneline = true}),
            Achievement({id = 6587, criteria = 21613, oneline = true}),
            Pet({id = 386})
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
    }),
    RockViper = Class('RockViper', Safari, {
        id = 62184,
        rewards = {
            Achievement({id = 6585, criteria = 21699, oneline = true}),
            Achievement({id = 6587, criteria = 21716, oneline = true}),
            Pet({id = 482})
        }
    }),
    ScaldedBasiliskHatchling = Class('ScaldedBasiliskHatchling', Safari, {
        id = 62628,
        rewards = {
            Achievement({id = 6587, criteria = 21759, oneline = true}),
            Pet({id = 528})
        }
    }),
    Scorpid = Class('Scorpid', Safari, {
        id = 61326,
        rewards = {
            Achievement({id = 6585, criteria = 21622, oneline = true}),
            Achievement({id = 6586, criteria = 21622, oneline = true}),
            Achievement({id = 6587, criteria = 21622, oneline = true}),
            Pet({id = 414})
        }
    }),
    SkitteringCavernCrawler = Class('SkitteringCavernCrawler', Safari, {
        id = 62638,
        rewards = {
            Achievement({id = 6587, criteria = 21758, oneline = true}),
            Pet({id = 637})
        }
    }),
    Skunk = Class('Skunk', Safari, {
        id = 61255,
        rewards = {
            Achievement({id = 6585, criteria = 21633, oneline = true}),
            Achievement({id = 6586, criteria = 21633, oneline = true}),
            Achievement({id = 6587, criteria = 21633, oneline = true}),
            Achievement({id = 6588, criteria = 21633, oneline = true}),
            Pet({id = 397})
        }
    }),
    SmallFrog = Class('SmallFrog', Safari, {
        id = 61071,
        rewards = {
            Achievement({id = 6585, criteria = 21518, oneline = true}),
            Achievement({id = 6586, criteria = 21518, oneline = true}),
            Achievement({id = 6587, criteria = 21518, oneline = true}),
            Pet({id = 419})
        }
    }),
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
    SporelingSprout = Class('SporelingSprout', Safari, {
        id = 62564,
        rewards = {
            Achievement({id = 6587, criteria = 21766, oneline = true}),
            Pet({id = 515})
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
    }),
    StripeTailedScorpid = Class('StripeTailedScorpid', Safari, {
        id = 61440,
        rewards = {
            Achievement({id = 6585, criteria = 21620, oneline = true}),
            Achievement({id = 6586, criteria = 21620, oneline = true}),
            Achievement({id = 6587, criteria = 21620, oneline = true}),
            Pet({id = 432})
        }
    }),
    TaintedCockroach = Class('TaintedCockroach', Safari, {
        id = 62314,
        rewards = {
            Achievement({id = 6585, criteria = 21723, oneline = true}),
            Achievement({id = 6587, criteria = 21723, oneline = true}),
            Pet({id = 497})
        }
    }),
    Toad = Class('Toad', Safari, {
        id = 61369,
        rewards = {
            Achievement({id = 6585, criteria = 21646, oneline = true}),
            Achievement({id = 6586, criteria = 21646, oneline = true}),
            Achievement({id = 6587, criteria = 21646, oneline = true}),
            Achievement({id = 6588, criteria = 21646, oneline = true}),
            Pet({id = 420})
        }
    }),
    WarpstalkerHatchling = Class('WarpstalkerHatchling', Safari, {
        id = 62583,
        rewards = {
            Achievement({id = 6587, criteria = 21765, oneline = true}),
            Pet({id = 517})
        }
    })
}
