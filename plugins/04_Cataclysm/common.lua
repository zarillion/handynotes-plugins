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

ns.groups.SAFARI = Group('safari', 4048818, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 6585
})

ns.groups.UNBEATABLE_PTERODACTYL = Group('unbeatable_pterodactyl', 132200, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5860,
    label = '{achievement:5860}'
})

ns.groups.LUDICROUS_SPEED = Group('ludicrous_speed', 132172, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5862,
    label = '{achievement:5862}'
})

ns.groups.HAVE_WE_MET = Group('have_we_met', 135646, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5865,
    label = '{achievement:5865}'
})

ns.groups.SPIDER_HILL = Group('spider_hill', 132196, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5872,
    label = '{achievement:5872}'
})

ns.groups.R4R_2 = Group('r4r_2', 135789, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5873,
    label = '{achievement:5873}'
})

ns.groups.FLAWLESS_VICTORY = Group('flawless_victory', 459027, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5867,
    label = '{achievement:5867}'
})

ns.groups.GANG_WAR = Group('gang_war', 135415, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5864,
    label = '{achievement:5864}'
})

ns.groups.MOLTEN_FLOW_MASTER = Group('molten_flow_master', 135822, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5871,
    label = '{achievement:5871}'
})

ns.groups.CRITTER_REVENGE = Group('critter_revenge', 132200, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5868,
    label = '{achievement:5868}'
})

ns.groups.FIERY_LORDS = Group('fiery_lords', 135790, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5861,
    label = '{achievement:5861}'
})

ns.groups.INFERNAL_AMBASSADORS = Group('infernal_ambassadors', 236191, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5869,
    label = '{achievement:5869}'
})

ns.groups.FIRESIDE_CHAT = Group('fireside_chat', 236450, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5870,
    label = '{achievement:5870}'
})

ns.groups.GANG_WAR = Group('gang_war', 135415, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5864,
    label = '{achievement:5864}'
})

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
