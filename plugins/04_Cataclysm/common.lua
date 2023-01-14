-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 4

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
------------------------- HYJAL / MOLTEN FRONT PHASE --------------------------
-------------------------------------------------------------------------------

local HyjalPhase = Class('HyjalPhase', ns.requirement.Requirement)

function HyjalPhase:Initialize(phase) self.phase = phase end

function HyjalPhase:GetText()
    local phase = {
        [0] = L['hyjal_phase0'],
        [1] = L['hyjal_phase1'],
        [2] = L['hyjal_phase2'],
        [3] = L['hyjal_phase3'],
        [41] = L['hyjal_phase4a'],
        [42] = L['hyjal_phase4b'],
        [5] = L['hyjal_phase5']
    }
    return phase[self.phase] or UNKNOWN
end

function HyjalPhase:IsMet()
    local qc = C_QuestLog.IsQuestFlaggedCompleted
    if self.phase == 0 and qc(25372) then return true end -- Phase 0 - Pre Invasion
    if self.phase == 1 and qc(29389) then return true end -- Phase 1 - Invasion
    if self.phase == 2 and qc(29198) then return true end -- Phase 2 - The Sanctuary of Malorne
    if self.phase == 3 and qc(29201) then return true end -- Phase 3 - The Molten Front
    if self.phase == 41 and qc(29182) then return true end -- Phase 4a - The Druids of the Talon Area
    if self.phase == 42 and qc(29215) then return true end -- Phase 4b - The Shadow Wardens Area
    if self.phase == 5 and qc(29182) and qc(29215) then return true end -- Phase 5 - The Regrowth
    return false
end

ns.requirement.HyjalPhase = HyjalPhase

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    AlpineChipmunk = Class('AlpineChipmunk', Safari, {
        id = 62189,
        rewards = {
            Achievement({id = 6585, criteria = 21728, oneline = true}),
            Pet({id = 487})
        }
    }), -- Also in Highmountain, Legion; Drustvar, BfA;
    AmethystShaleHatchling = Class('AmethystShaleHatchling', Safari, {
        id = 62182,
        rewards = {
            Achievement({id = 6585, criteria = 21711, oneline = true}),
            Pet({id = 838})
        }
    }),
    AshLizard = Class('AshLizard', Safari, {
        id = 62364,
        rewards = {
            Achievement({id = 6585, criteria = 21729, oneline = true}),
            Pet({id = 632})
        }
    }),
    CarrionRat = Class('CarrionRat', Safari, {
        id = 62885,
        rewards = {Achievement({id = 6585, criteria = 21730}), Pet({id = 540})}
    }),
    Cockroach = Class('Cockroach', Safari, {
        id = 61384,
        rewards = {
            Achievement({id = 6585, criteria = 21625, oneline = true}),
            Achievement({id = 6586, criteria = 21625, oneline = true}),
            Achievement({id = 6588, criteria = 21625, oneline = true}),
            Pet({id = 393})
        }
    }), -- also in Val'sharah, Legion; Gorgrond, Draenor
    DeathsHeadCockroach = Class('DeathsHeadCockroach', Safari, {
        id = 62887,
        rewards = {Achievement({id = 6585, criteria = 21731}), Pet({id = 755})}
    }),
    DesertSpider = Class('DesertSpider', Safari, {
        id = 62186,
        rewards = {
            Achievement({id = 6585, criteria = 21712, oneline = true}),
            Pet({id = 484})
        }
    }),
    DungBeetle = Class('DungBeetle', Safari, {
        id = 62115,
        rewards = {
            Achievement({id = 6585, criteria = 21719, oneline = true}),
            Pet({id = 467})
        }
    }),
    ElfinRabbit = Class('ElfinRabbit', Safari, {
        id = 62178,
        rewards = {
            Achievement({id = 6585, criteria = 21713, oneline = true}),
            Pet({id = 479})
        }
    }), -- Also in Val'sharah, The Dreamgrove, Legion
    EmeraldBoa = Class('EmeraldBoa', Safari, {
        id = 62127,
        rewards = {
            Achievement({id = 6585, criteria = 21738, oneline = true}),
            Pet({id = 631})
        }
    }),
    FireBeetle = Class('FireBeetle', Safari, {
        id = 61328,
        rewards = {
            Achievement({id = 6585, criteria = 21621, oneline = true}),
            Achievement({id = 6586, criteria = 21621, oneline = true}),
            Pet({id = 415})
        }
    }),
    FireProofRoach = Class('FireProofRoach', Safari, {
        id = 62886,
        rewards = {Achievement({id = 6585, criteria = 21732}), Pet({id = 541})}
    }),
    GrizzlySquirrel = Class('GrizzlySquirrel', Safari, {
        id = 62818,
        rewards = {
            Achievement({id = 6586, criteria = 21679}),
            Achievement({id = 6588, criteria = 21679}), Pet({id = 647})
        }
    }), -- also in Azsuna, Stormheim, Legion;
    HighlandsMouse = Class('HighlandsMouse', Safari, {
        id = 62905,
        rewards = {Achievement({id = 6586, criteria = 21680}), Pet({id = 550})}
    }), -- also in Stormheim, Legion
    HighlandsSkunk = Class('HighlandsSkunk', Safari, {
        id = 62907,
        rewards = {Achievement({id = 6586, criteria = 21681}), Pet({id = 823})}
    }),
    HighlandsTurkey = Class('HighlandsTurkey', Safari, {
        id = 62906,
        rewards = {Achievement({id = 6586, criteria = 21682}), Pet({id = 645})}
    }), -- also in Stormheim, Legion
    HornedLizard = Class('HornedLizard', Safari, {
        id = 62894,
        rewards = {Achievement({id = 6585, criteria = 21701}), Pet({id = 851})}
    }),
    HugeToad = Class('HugeToad', Safari, {
        id = 61368,
        rewards = {
            Achievement({id = 6586, criteria = 21649, oneline = true}),
            Achievement({id = 6588, criteria = 21649, oneline = true}),
            Pet({id = 648})
        }
    }),
    LeopardScorpid = Class('LeopardScorpid', Safari, {
        id = 62896,
        rewards = {Achievement({id = 6585, criteria = 21751}), Pet({id = 545})}
    }),
    Locust = Class('Locust', Safari, {
        id = 62893,
        rewards = {Achievement({id = 6585, criteria = 21752}), Pet({id = 543})}
    }),
    MacFrog = Class('MacFrog', Safari, {
        id = 62892,
        rewards = {Achievement({id = 6585, criteria = 21753}), Pet({id = 542})}
    }),
    NordrassilWisp = Class('NordrassilWisp', Safari, {
        id = 62888,
        rewards = {Achievement({id = 6585, criteria = 21734}), Pet({id = 547})}
    }),
    OasisMoth = Class('OasisMoth', Safari, {
        id = 62895,
        rewards = {Achievement({id = 6585, criteria = 21754}), Pet({id = 544})}
    }),
    Rattlesnake = Class('Rattlesnake', Safari, {
        id = 61439,
        rewards = {
            Achievement({id = 6585, criteria = 21617, oneline = true}),
            Achievement({id = 6586, criteria = 21617, oneline = true}),
            Pet({id = 431})
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
    Scorpid = Class('Scorpid', Safari, {
        id = 61326,
        rewards = {
            Achievement({id = 6585, criteria = 21622, oneline = true}),
            Achievement({id = 6586, criteria = 21622, oneline = true}),
            Achievement({id = 6587, criteria = 21622, oneline = true}),
            Pet({id = 414})
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
    }), -- also in Waking Shores, Azure Span, Dragonflight; Nagrand, Draenor
    Sidewinder = Class('Sidewinder', Safari, {
        id = 62523,
        rewards = {
            Achievement({id = 6585, criteria = 21741, oneline = true}),
            Pet({id = 511})
        }
    }),
    SilkyMoth = Class('SilkyMoth', Safari, {
        id = 62373,
        rewards = {
            Achievement({id = 6585, criteria = 21727, oneline = true}),
            Pet({id = 503})
        }
    }),
    TolvirScarab = Class('TolvirScarab', Safari, {
        id = 62899,
        rewards = {Achievement({id = 6585, criteria = 21755}), Pet({id = 546})}
    }),
    TopazShaleHatchling = Class('TopazShaleHatchling', Safari, {
        id = 62181,
        rewards = {
            Achievement({id = 6585, criteria = 21718, oneline = true}),
            Pet({id = 480})
        }
    }),
    TwilightBeetle = Class('TwilightBeetle', Safari, {
        id = 62118,
        rewards = {
            Achievement({id = 6585, criteria = 21700, oneline = true}),
            Pet({id = 469})
        }
    }),
    TwilightFiendling = Class('TwilightFiendling', Safari, {
        id = 62914,
        rewards = {Achievement({id = 6586, criteria = 21683}), Pet({id = 552})}
    }),
    TwilightSpider = Class('TwilightSpider', Safari, {
        id = 62117,
        rewards = {
            Achievement({id = 6585, criteria = 21684, oneline = true}),
            Achievement({id = 6586, criteria = 21684, oneline = true}),
            Pet({id = 470})
        }
    }),
    WaterSnake = Class('WaterSnake', Safari, {
        id = 61367,
        rewards = {
            Achievement({id = 6585, criteria = 21661, oneline = true}),
            Achievement({id = 6586, criteria = 21661, oneline = true}),
            Pet({id = 418})
        }
    }),
    WildhammerGryphonHatchling = Class('WildhammerGryphonHatchling', Safari, {
        id = 62900,
        rewards = {Achievement({id = 6586, criteria = 21685}), Pet({id = 548})}
    }),
    YellowBelliedMarmot = Class('YellowBelliedMarmot', Safari, {
        id = 62904,
        rewards = {Achievement({id = 6586, criteria = 21686}), Pet({id = 549})}
    })
}
