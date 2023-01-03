-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible
local NPC = ns.node.NPC
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 1

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.CRAZYFORCATS = Group('crazyforcats', 656579,
    {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
------------------------------ ANNIVERSARY EVENT ------------------------------
-------------------------------------------------------------------------------

--[[

There is a calendar event for the anniversary that remains static every year:

    event=590,title=WoW's Anniversary

However, this event does not actually show up in the C_Calendar API, so we cannot use
it to check if the event is active. The actual event id, title and dates change:

    event=1225,title=WoW's 17th Anniversary,dates=11/15-12/6
    event=1262,title=WoW's 18th Anniversary,dates=11/6-11/27

So as far as I can tell, we cannot look for a single event id or a static date range.
We have two options, we can update this code each year to include the new event id, or
we can pattern match the title for each language we support. I'm going to go with the
latter so no new releases are necessary each year.

If someone knows a better way, let me know!

--]]

local function IsAnniversaryEvent()
    local day = C_DateAndTime.GetCurrentCalendarTime().monthDay
    C_Calendar.SetMonth(0) -- set calendar to current month

    for i = 1, C_Calendar.GetNumDayEvents(0, day) do
        local event = C_Calendar.GetDayEvent(0, day, i)

        -- LuaFormatter off
        if event.calendarType == 'HOLIDAY' and (
            event.title:match('WoW\'s %d%d%l%l Anniversary') or -- enUS
            event.title:match('%d%d. Geburtstag von WoW') or -- deDE
            event.title:match('%d%de anniversaire de Wo') or -- frFR
            event.title:match('%d%d-я годовщина Wo') or -- ruRU
            event.title:match('魔兽世界.*周年') -- zhCN
            -- additional language help needed!
        ) then return true end
        -- LuaFormatter on
    end
end

ns.node.AnniversaryRare = Class('AnniversaryRare', Rare, {
    sublabel = L['anniversary_note'],
    IsEnabled = function(self)
        if not IsAnniversaryEvent() then return false end
        return Rare.IsEnabled(self)
    end
})

ns.node.AnniversaryNPC = Class('AnniversaryNPC', NPC, {
    sublabel = L['anniversary_note'],
    IsEnabled = function(self)
        if not IsAnniversaryEvent() then return false end
        return Rare.IsEnabled(self)
    end
})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
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
    AlpineChipmunk = Class('AlpineChipmunk', Safari, {
        id = 62189,
        rewards = {Achievement({id = 6585, criteria = 21728}), Pet({id = 487})}
    }), -- Also in Mount Hyjal, Cataclysm; Highmountain, Legion; Drustvar, BfA;
    AlpineHare = Class('AlpineHare', Safari, {
        id = 61690,
        rewards = {
            Achievement({id = 6585, criteria = 21510}),
            Achievement({id = 6586, criteria = 21510}), Pet({id = 441})
        }
    }),
    AmethystShaleHatchling = Class('AmethystShaleHatchling', Safari, {
        id = 62182,
        rewards = {Achievement({id = 6585, criteria = 21711}), Pet({id = 838})}
    }), -- Also in Deepholm, Cataclysm
    AshLizard = Class('AshLizard', Safari, {
        id = 62364,
        rewards = {Achievement({id = 6585, criteria = 21729}), Pet({id = 632})}
    }), -- Also in Mount Hyjal, Cataclysm
    AshSpiderling = Class('AshSpiderling', Safari, {
        id = 61420,
        rewards = {Achievement({id = 6586, criteria = 21665}), Pet({id = 427})}
    }), -- Also in Talador, Draenor
    AshViper = Class('AshViper', Safari, {
        id = 61385,
        rewards = {
            Achievement({id = 6586, criteria = 21624}),
            Achievement({id = 6587, criteria = 21624}), Pet({id = 425})
        }
    }), -- Also in Suramar, Legion; Shadowmoon Valley, BC
    BabyApe = Class('BabyApe', Safari, {
        id = 61324,
        rewards = {Achievement({id = 6586, criteria = 21668}), Pet({id = 411})}
    }),
    Bat = Class('Bat', Safari, {
        id = 61829,
        rewards = {
            Achievement({id = 6585, criteria = 21635}),
            Achievement({id = 6586, criteria = 21635}), Pet({id = 626})
        }
    }),
    Beetle = Class('Beetle', Safari, {
        id = 61319,
        rewards = {
            Achievement({id = 6585, criteria = 21615}),
            Achievement({id = 6586, criteria = 21615}), Pet({id = 406})
        }
    }),
    BlackLamb = Class('BlackLamb', Safari, {
        id = 60649,
        rewards = {Achievement({id = 6586, criteria = 22886}), Pet({id = 374})}
    }),
    BlackRat = Class('BlackRat', Safari, {
        id = 61257,
        rewards = {
            Achievement({id = 6585, criteria = 21511}),
            Achievement({id = 6586, criteria = 21511}), Pet({id = 398})
        }
    }), -- Also in Drustvar, BfA
    BlightedSquirrel = Class('BlightedSquirrel', Safari, {
        id = 61890,
        rewards = {Achievement({id = 6586, criteria = 21667}), Pet({id = 455})}
    }),
    BrownMarmot = Class('BrownMarmot', Safari, {
        id = 61752,
        rewards = {
            Achievement({id = 6586, criteria = 21674}),
            Achievement({id = 6587, criteria = 21674}), Pet({id = 449})
        }
    }), -- Also in Gorgrond, Draenor
    Cat = Class('Cat', Safari, {
        id = 62019,
        rewards = {
            Achievement({id = 6586, criteria = 21610}),
            Achievement({id = 6587, criteria = 21610}),
            Achievement({id = 8397, criteria = 23580}), Pet({id = 459})
        }
    }),
    Chicken = Class('Chicken', Safari, {
        id = 62664,
        rewards = {
            Achievement({id = 6585, criteria = 21629}),
            Achievement({id = 6586, criteria = 21629}),
            Achievement({id = 6588, criteria = 21629}), Pet({id = 646})
        }
    }), -- Also in Howling Fjord, WoTLK
    CheetahCub = Class('CheetahCub', Safari, {
        id = 62129,
        rewards = {
            Achievement({id = 6585, criteria = 21629}),
            Achievement({id = 8397, criteria = 23581}), Pet({id = 646})
        }
    }),
    Cockroach = Class('Cockroach', Safari, {
        id = 61384,
        rewards = {
            Achievement({id = 6585, criteria = 21625}),
            Achievement({id = 6586, criteria = 21625}),
            Achievement({id = 6588, criteria = 21625}), Pet({id = 393})
        }
    }), -- Also in Icecrown, WoTLK; Twilight Highlands, Cataclysm; Val'sharah, Legion; Gorgrond, Draenor
    CoralSnake = Class('CoralSnake', Safari, {
        id = 62190,
        rewards = {Achievement({id = 6585, criteria = 21743}), Pet({id = 488})}
    }),
    CreepyCrawly = Class('CreepyCrawly', Safari, {
        id = 62116,
        rewards = {Achievement({id = 6585, criteria = 21698}), Pet({id = 468})}
    }),
    CrestedOwl = Class('CrestedOwl', Safari, {
        id = 62242,
        rewards = {Achievement({id = 6585, criteria = 22540}), Pet({id = 507})}
    }),
    CrimsonMoth = Class('CrimsonMoth', Safari, {
        id = 61314,
        rewards = {Achievement({id = 6586, criteria = 21654}), Pet({id = 421})}
    }),
    CrystalSpider = Class('CrystalSpider', Safari, {
        id = 62435,
        rewards = {Achievement({id = 6585, criteria = 21512}), Pet({id = 634})}
    }),
    DarkshoreCub = Class('DarkshoreCub', Safari, {
        id = 62250,
        rewards = {Achievement({id = 6585, criteria = 21697}), Pet({id = 508})}
    }),
    DesertSpider = Class('DesertSpider', Safari, {
        id = 62186,
        rewards = {Achievement({id = 6585, criteria = 21712}), Pet({id = 484})}
    }), -- Also in Uldum, Cataclysm
    DiemetradonHatchling = Class('DiemetradonHatchling', Safari, {
        id = 62375,
        rewards = {Achievement({id = 6585, criteria = 21750}), Pet({id = 504})}
    }),
    DungBeetle = Class('DungBeetle', Safari, {
        id = 62115,
        rewards = {Achievement({id = 6585, criteria = 21719}), Pet({id = 467})}
    }), -- Also in Uldum, Cataclysm
    DuskSpiderling = Class('DuskSpiderling', Safari, {
        id = 61253,
        rewards = {Achievement({id = 6586, criteria = 21630}), Pet({id = 396})}
    }), -- Also in Azsuna, Val'sharah, Legion
    ElfinRabbit = Class('ElfinRabbit', Safari, {
        id = 62178,
        rewards = {Achievement({id = 6585, criteria = 21713}), Pet({id = 479})}
    }), -- Also in Mount Hyjal, Cataclysm; Val'sharah, The Dreamgrove, Legion
    EmeraldBoa = Class('EmeraldBoa', Safari, {
        id = 62127,
        rewards = {Achievement({id = 6585, criteria = 21738}), Pet({id = 631})}
    }), -- Also in Uldum, Cataclysm
    Fawn = Class('Fawn', Safari, {
        id = 61165,
        rewards = {
            Achievement({id = 6586, criteria = 21639}),
            Achievement({id = 6588, criteria = 21639}), Pet({id = 447})
        }
    }),
    FesteringMaggot = Class('FesteringMaggot', Safari, {
        id = 61830,
        rewards = {Achievement({id = 6586, criteria = 21636}), Pet({id = 457})}
    }),
    FireBeetle = Class('FireBeetle', Safari, {
        id = 61328,
        rewards = {
            Achievement({id = 6585, criteria = 21621}),
            Achievement({id = 6586, criteria = 21621}), Pet({id = 415})
        }
    }), -- Also in Mount Hyjal, Cataclysm
    FledglingBuzzard = Class('FledglingBuzzard', Safari, {
        id = 61171,
        rewards = {Achievement({id = 6586, criteria = 21662}), Pet({id = 395})}
    }),
    ForestMoth = Class('ForestMoth', Safari, {
        id = 62177,
        rewards = {Achievement({id = 6585, criteria = 21702}), Pet({id = 478})}
    }), -- Also in Tiragarde Sound, BfA; Azsuna, Legion
    ForestSpiderling = Class('ForestSpiderling', Safari, {
        id = 61320,
        rewards = {Achievement({id = 6586, criteria = 21655}), Pet({id = 407})}
    }), -- Also in Shadowmoon Valley, Draenor; Drustvar, BfA; Highmountain, Legion
    Frog = Class('Frog', Safari, {
        id = 62312,
        rewards = {Achievement({id = 6585, criteria = 21691}), Pet({id = 495})}
    }),
    GazelleFawn = Class('GazelleFawn', Safari, {
        id = 62176,
        rewards = {Achievement({id = 6585, criteria = 21735}), Pet({id = 477})}
    }),
    GiraffeCalf = Class('GiraffeCalf', Safari, {
        id = 62130,
        rewards = {Achievement({id = 6585, criteria = 21742}), Pet({id = 475})}
    }),
    GoldBeetle = Class('GoldBeetle', Safari, {
        id = 61438,
        rewards = {
            Achievement({id = 6585, criteria = 21616}),
            Achievement({id = 6586, criteria = 21616}), Pet({id = 430})
        }
    }), -- Also in Gorgrond, Draenor
    GrasslandsCottontail = Class('GrasslandsCottontail', Safari, {
        id = 61704,
        rewards = {Achievement({id = 6586, criteria = 21611}), Pet({id = 443})}
    }),
    GreyMoth = Class('GreyMoth', Safari, {
        id = 62050,
        rewards = {Achievement({id = 6585, criteria = 21708}), Pet({id = 464})}
    }), -- Also in Azsuna, Legion
    Hare = Class('Hare', Safari, {
        id = 61751,
        rewards = {
            Achievement({id = 6585, criteria = 21612}),
            Achievement({id = 6586, criteria = 21612}), Pet({id = 448})
        }
    }),
    HornyToad = Class('HornyToad', Safari, {
        id = 62185,
        rewards = {Achievement({id = 6585, criteria = 21715}), Pet({id = 483})}
    }), -- Also in Tanaan Jungle, Draenor
    HugeToad = Class('HugeToad', Safari, {
        id = 61368,
        rewards = {
            Achievement({id = 6586, criteria = 21649}),
            Achievement({id = 6588, criteria = 21649}), Pet({id = 648})
        }
    }), --  Also in Zul'Drak, Northrend; Twilight Highlands, Cataclysm
    InfectedFawn = Class('InfectedFawn', Safari, {
        id = 61827,
        rewards = {
            Achievement({id = 6585, criteria = 21637}),
            Achievement({id = 6586, criteria = 21637}), Pet({id = 628})
        }
    }),
    InfectedSquirrel = Class('InfectedSquirrel', Safari, {
        id = 61828,
        rewards = {
            Achievement({id = 6585, criteria = 21638}),
            Achievement({id = 6586, criteria = 21638}), Pet({id = 627})
        }
    }),
    InfestedBearCub = Class('InfestedBearCub', Safari, {
        id = 61758,
        rewards = {Achievement({id = 6586, criteria = 21650}), Pet({id = 453})}
    }),
    IrradiatedRoach = Class('IrradiatedRoach', Safari, {
        id = 61691,
        rewards = {Achievement({id = 6586, criteria = 21507}), Pet({id = 442})}
    }),
    JadeOozeling = Class('JadeOozeling', Safari, {
        id = 61718,
        rewards = {Achievement({id = 6586, criteria = 21675}), Pet({id = 446})}
    }),
    KingSnake = Class('KingSnake', Safari, {
        id = 61443,
        rewards = {Achievement({id = 6586, criteria = 21618}), Pet({id = 438})}
    }),
    Larva = Class('Larva', Safari, {
        id = 62022,
        rewards = {Achievement({id = 6586, criteria = 21647}), Pet({id = 461})}
    }),
    LavaBeetle = Class('LavaBeetle', Safari, {
        id = 61386,
        rewards = {Achievement({id = 6586, criteria = 21626}), Pet({id = 429})}
    }),
    LavaCrab = Class('LavaCrab', Safari, {
        id = 61383,
        rewards = {Achievement({id = 6586, criteria = 21627}), Pet({id = 423})}
    }),
    LittleBlackRam = Class('LittleBlackRam', Safari, {
        id = 61459,
        rewards = {Achievement({id = 6586, criteria = 21653}), Pet({id = 437})}
    }),
    LizardHatchling = Class('LizardHatchling', Safari, {
        id = 61321,
        rewards = {Achievement({id = 6586, criteria = 21656}), Pet({id = 408})}
    }),
    LongTailedMole = Class('LongTailedMole', Safari, {
        id = 61317,
        rewards = {
            Achievement({id = 6585, criteria = 21513}),
            Achievement({id = 6586, criteria = 21513}), Pet({id = 404})
        }
    }),
    LostOfLordaeron = Class('LostOfLordaeron', Safari, {
        id = 61905,
        rewards = {Achievement({id = 6586, criteria = 21676}), Pet({id = 458})}
    }),
    Maggot = Class('Maggot', Safari, {
        id = 61753,
        rewards = {
            Achievement({id = 6585, criteria = 21514}),
            Achievement({id = 6586, criteria = 21514}),
            Achievement({id = 6588, criteria = 21514}), Pet({id = 450})
        }
    }), -- also in Howling Fjord, Northrend
    Minfernal = Class('Minfernal', Safari, {
        id = 62317,
        rewards = {Achievement({id = 6585, criteria = 21722}), Pet({id = 500})}
    }),
    Moccasin = Class('Moccasin', Safari, {
        id = 61372,
        rewards = {Achievement({id = 6586, criteria = 21671}), Pet({id = 422})}
    }),
    MoltenHatchling = Class('Moccasin', Safari, {
        id = 61425,
        rewards = {Achievement({id = 6586, criteria = 21666}), Pet({id = 428})}
    }),
    MountainCottontail = Class('Moccasin', Safari, {
        id = 61167,
        rewards = {
            Achievement({id = 6585, criteria = 21663}),
            Achievement({id = 6586, criteria = 21663}), Pet({id = 391})
        }
    }), -- also in Highmountain, Legion
    MountainSkunk = Class('MountainSkunk', Safari, {
        id = 61677,
        rewards = {
            Achievement({id = 6585, criteria = 21688}),
            Achievement({id = 6586, criteria = 21688}),
            Achievement({id = 6588, criteria = 21688}), Pet({id = 633})
        }
    }), -- also in Storm Peaks, Grizzly Hills, Northrend; Stormheim, Legion
    Mouse = Class('Mouse', Safari, {
        id = 61143,
        rewards = {
            Achievement({id = 6585, criteria = 21631}),
            Achievement({id = 6586, criteria = 21631}),
            Achievement({id = 6587, criteria = 21631}),
            Achievement({id = 6588, criteria = 21631}), Pet({id = 385})
        }
    }), -- Also in Crystalsong Forest, Northrend
    NetherFaerieDragon = Class('NetherFaerieDragon', Safari, {
        id = 62395,
        rewards = {Achievement({id = 6585, criteria = 21726}), Pet({id = 557})}
    }),
    Parrot = Class('Parrot', Safari, {
        id = 61313,
        rewards = {
            Achievement({id = 6585, criteria = 21657}),
            Achievement({id = 6586, criteria = 21657}), Pet({id = 403})
        }
    }),
    Polly = Class('Polly', Safari, {
        id = 61322,
        rewards = {Achievement({id = 6586, criteria = 21658}), Pet({id = 409})}
    }),
    PrairieDog = Class('PrairieDog', Safari, {
        id = 61141,
        rewards = {
            Achievement({id = 6585, criteria = 21613}),
            Achievement({id = 6586, criteria = 21613}),
            Achievement({id = 6588, criteria = 21613}), Pet({id = 386})
        }
    }),
    QirajiGuardling = Class('QirajiGuardling', Safari, {
        note = L['summer_only'],
        id = 62526,
        rewards = {Achievement({id = 6585, criteria = 21739}), Pet({id = 513})}
    }),
    Rabbit = Class('Rabbit', Safari, {
        id = 61080,
        rewards = {
            Achievement({id = 6585, criteria = 21508}),
            Achievement({id = 6586, criteria = 21508}),
            Achievement({id = 6587, criteria = 21508}),
            Achievement({id = 6588, criteria = 21508}), Pet({id = 378})
        }
    }),
    RabidNutVarmint5000 = Class('RabidNutVarmint5000', Safari, {
        id = 62120,
        rewards = {Achievement({id = 6585, criteria = 21704}), Pet({id = 472})}
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
    RatSnake = Class('RatSnake', Safari, {
        id = 61258,
        rewards = {Achievement({id = 6586, criteria = 21632}), Pet({id = 399})}
    }),
    Rattlesnake = Class('Rattlesnake', Safari, {
        id = 61439,
        rewards = {
            Achievement({id = 6585, criteria = 21617}),
            Achievement({id = 6586, criteria = 21617}), Pet({id = 431})
        }
    }), -- also in Twilight Highlands, Cataclysm
    RavagerHatchling = Class('RavagerHatchling', Safari, {
        id = 62051,
        rewards = {Achievement({id = 6585, criteria = 21709}), Pet({id = 465})}
    }),
    RedTailedChipmunk = Class('RedTailedChipmunk', Safari, {
        id = 61757,
        rewards = {
            Achievement({id = 6585, criteria = 21651}),
            Achievement({id = 6586, criteria = 21651}), Pet({id = 452})
        }
    }), -- Also in Talador, Legion
    RedridgeRat = Class('RedridgeRat', Safari, {
        id = 61168,
        rewards = {Achievement({id = 6586, criteria = 21664}), Pet({id = 392})}
    }),
    RestlessShadeling = Class('RestlessShadeling', Safari, {
        id = 61375,
        rewards = {Achievement({id = 6586, criteria = 21628}), Pet({id = 439})}
    }),
    Roach = Class('Roach', Safari, {
        id = 61169,
        rewards = {
            Achievement({id = 6585, criteria = 21517}),
            Achievement({id = 6586, criteria = 21517}),
            Achievement({id = 6588, criteria = 21517}), Pet({id = 424})
        }
    }), -- Also in Drustvar, BFA;
    RoboChick = Class('RoboChick', Safari, {
        id = 62119,
        rewards = {Achievement({id = 6585, criteria = 21705}), Pet({id = 471})}
    }),
    RockViper = Class('RockViper', Safari, {
        id = 62184,
        rewards = {
            Achievement({id = 6585, criteria = 21699}),
            Achievement({id = 6587, criteria = 21699}), Pet({id = 482})
        }
    }), -- Also in Mount Hyjal, Cataclysm, Blades Edge Mountains, Outland
    RubySapling = Class('RubySapling', Safari, {
        id = 62020,
        rewards = {Achievement({id = 6586, criteria = 21644}), Pet({id = 460})}
    }),
    RustySnail = Class('RustySnail', Safari, {
        id = 62313,
        rewards = {Achievement({id = 6585, criteria = 21703}), Pet({id = 496})}
    }), -- also in Highmountain, Legion
    SandKitten = Class('SandKitten', Safari, {
        id = 62257,
        rewards = {
            Achievement({id = 6585, criteria = 21746}),
            Achievement({id = 8397, criteria = 23589}), Pet({id = 491})
        }
    }),
    ScarabHatchling = Class('ScarabHatchling', Safari, {
        id = 62524,
        rewards = {Achievement({id = 6585, criteria = 21740}), Pet({id = 512})}
    }),
    Scorpid = Class('Scorpid', Safari, {
        id = 61326,
        rewards = {
            Achievement({id = 6585, criteria = 21622}),
            Achievement({id = 6586, criteria = 21622}),
            Achievement({id = 6587, criteria = 21622}), Pet({id = 414})
        }
    }), -- Also in Hellfire Peninsula, Shadowmoon Valley, Blades Edge Mountains, Outland; Twilight Highlands, Cataclysm
    Scorpling = Class('Scorpling', Safari, {
        id = 61329,
        rewards = {Achievement({id = 6586, criteria = 21623}), Pet({id = 416})}
    }),
    SeaGull = Class('SeaGull', Safari, {
        id = 62953,
        rewards = {
            Achievement({id = 6585, criteria = 21640}),
            Achievement({id = 6586, criteria = 21640}),
            Achievement({id = 6589, criteria = 21640}), Pet({id = 560})
        }
    }), -- Also in Frostfire Ridge, Draenor
    ShimmershellSnail = Class('ShimmershellSnail', Safari, {
        id = 62246,
        rewards = {Achievement({id = 6585, criteria = 21710}), Pet({id = 493})}
    }),
    ShoreCrab = Class('ShoreCrab', Safari, {
        id = 61158,
        rewards = {
            Achievement({id = 6585, criteria = 21706}),
            Achievement({id = 6588, criteria = 21706}),
            Achievement({id = 6589, criteria = 21706}), Pet({id = 388})
        }
    }), -- also in Borean Tundra, Howling Fjord, Northrend; Twilight Highlands, Cataclysm; Waking Shores, Azure Span, Dragonflight; Nagrand, Draenor
    Sidewinder = Class('Sidewinder', Safari, {
        id = 62523,
        rewards = {Achievement({id = 6585, criteria = 21741}), Pet({id = 511})}
    }), -- also in Uldum, Cataclysm
    SilithidHatchling = Class('SilithidHatchling', Safari, {
        id = 62258,
        rewards = {Achievement({id = 6585, criteria = 21747}), Pet({id = 494})}
    }),
    SilkyMoth = Class('SilkyMoth', Safari, {
        id = 62373,
        rewards = {Achievement({id = 6585, criteria = 21727}), Pet({id = 503})}
    }), -- also in Mount Hyjal, Cataclysm
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
    SnowCub = Class('SnowCub', Safari, {
        id = 61689,
        rewards = {
            Achievement({id = 6586, criteria = 21520}),
            Achievement({id = 8397, criteria = 23593}), Pet({id = 440})
        }
    }),
    SnowshoeHare = Class('SnowshoeHare', Safari, {
        id = 61755,
        rewards = {Achievement({id = 6586, criteria = 21652}), Pet({id = 640})}
    }),
    SnowyOwl = Class('SnowyOwl', Safari, {
        id = 7554,
        rewards = {Achievement({id = 6585, criteria = 21757}), Pet({id = 69})}
    }),
    SpawnOfOnyxia = Class('SpawnOfOnyxia', Safari, {
        id = 62201,
        rewards = {Achievement({id = 6585, criteria = 21721}), Pet({id = 489})}
    }),
    Spider = Class('Spider', Safari, {
        id = 61327,
        rewards = {
            Achievement({id = 6585, criteria = 21521}),
            Achievement({id = 6586, criteria = 21521}),
            Achievement({id = 6588, criteria = 21521}), Pet({id = 412})
        }
    }),
    SpikyLizard = Class('SpikyLizard', Safari, {
        id = 61441,
        rewards = {
            Achievement({id = 6585, criteria = 21619}),
            Achievement({id = 6586, criteria = 21619}), Pet({id = 433})
        }
    }),
    SpinyLizard = Class('SpinyLizard', Safari, {
        id = 62114,
        rewards = {Achievement({id = 6585, criteria = 21720}), Pet({id = 466})}
    }),
    SpiritCrab = Class('SpiritCrab', Safari, {
        id = 62034,
        rewards = {Achievement({id = 6586, criteria = 21648}), Pet({id = 463})}
    }),
    SpottedBellFrog = Class('SpottedBellFrog', Safari, {
        id = 62370,
        rewards = {Achievement({id = 6585, criteria = 21756}), Pet({id = 502})}
    }),
    Squirrel = Class('Squirrel', Safari, {
        id = 61081,
        rewards = {
            Achievement({id = 6585, criteria = 21522}),
            Achievement({id = 6586, criteria = 21522}),
            Achievement({id = 6587, criteria = 21522}),
            Achievement({id = 6588, criteria = 21522}), Pet({id = 379})
        }
    }), -- also in Terrokar Forest, Nagrand, Blades Edge Mountains, Outland; Crystalsong Forest, Howling Fjord, Sholzar Basin, Northrend; Drustvar, BFA; Highmountain, Legion; Spires of Arak, Nagrand, Draenor
    Stinkbug = Class('Stinkbug', Safari, {
        id = 62256,
        rewards = {Achievement({id = 6585, criteria = 21748}), Pet({id = 492})}
    }),
    StoneArmadillo = Class('StoneArmadillo', Safari, {
        id = 62187,
        rewards = {Achievement({id = 6585, criteria = 21717}), Pet({id = 485})}
    }),
    StormwindRat = Class('StormwindRat', Safari, {
        id = 62954,
        rewards = {Achievement({id = 6586, criteria = 21641}), Pet({id = 675})}
    }),
    StrandCrab = Class('StrandCrab', Safari, {
        id = 61312,
        rewards = {
            Achievement({id = 6585, criteria = 21659}),
            Achievement({id = 6586, criteria = 21659}),
            Achievement({id = 6588, criteria = 21659}), Pet({id = 401})
        }
    }), -- also in spires of arak, Draenor
    StripeTailedScorpid = Class('StripeTailedScorpid', Safari, {
        id = 61440,
        rewards = {
            Achievement({id = 6585, criteria = 21620}),
            Achievement({id = 6586, criteria = 21620}), Pet({id = 432})
        }
    }), -- also in Terrokar Forest, Outland
    SwampMoth = Class('SwampMoth', Safari, {
        id = 61370,
        rewards = {Achievement({id = 6586, criteria = 21672}), Pet({id = 402})}
    }),
    TaintedCockroach = Class('TaintedCockroach', Safari, {
        id = 62314,
        rewards = {
            Achievement({id = 6585, criteria = 21723}),
            Achievement({id = 6587, criteria = 21723}), Pet({id = 497})
        }
    }), -- also in Shadowmoon Valley, Outland
    TaintedMoth = Class('TaintedMoth', Safari, {
        id = 62315,
        rewards = {Achievement({id = 6585, criteria = 21724}), Pet({id = 498})}
    }),
    TaintedRat = Class('TaintedRat', Safari, {
        id = 62316,
        rewards = {Achievement({id = 6585, criteria = 21725}), Pet({id = 499})}
    }),
    TinyBogBeast = Class('TinyBogBeast', Safari, {
        id = 61686,
        rewards = {Achievement({id = 6586, criteria = 21689}), Pet({id = 509})}
    }),
    TinyHarvester = Class('TinyHarvester', Safari, {
        id = 61160,
        rewards = {Achievement({id = 6586, criteria = 21687}), Pet({id = 389})}
    }),
    TinyTwister = Class('TinyTwister', Safari, {
        id = 61703,
        rewards = {Achievement({id = 6586, criteria = 21614}), Pet({id = 445})}
    }),
    Toad = Class('Toad', Safari, {
        id = 61369,
        rewards = {
            Achievement({id = 6585, criteria = 21646}),
            Achievement({id = 6586, criteria = 21646}),
            Achievement({id = 6587, criteria = 21646}),
            Achievement({id = 6588, criteria = 21646}), Pet({id = 420})
        }
    }), -- also in Nagrand, Outland
    TopazShaleHatchling = Class('TopazShaleHatchling', Safari, {
        id = 62181,
        rewards = {Achievement({id = 6585, criteria = 21718}), Pet({id = 480})}
    }), -- also in Deepholm, Cataclysm
    TreePython = Class('TreePython', Safari, {
        id = 61318,
        rewards = {
            Achievement({id = 6585, criteria = 21660}),
            Achievement({id = 6586, criteria = 21660}), Pet({id = 405})
        }
    }), -- also in Tanaan jungle, Draenor
    TurquoiseTurtle = Class('TurquoiseTurtle', Safari, {
        id = 62121,
        rewards = {Achievement({id = 6585, criteria = 21707}), Pet({id = 473})}
    }),
    TwilightBeetle = Class('TwilightBeetle', Safari, {
        id = 62118,
        rewards = {Achievement({id = 6585, criteria = 21700}), Pet({id = 469})}
    }), -- also in mount Hyjal, Deepholm,  Cataclysm
    TwilightIguana = Class('TwilightIguana', Safari, {
        id = 62255,
        rewards = {Achievement({id = 6585, criteria = 21749}), Pet({id = 505})}
    }),
    TwilightSpider = Class('TwilightSpider', Safari, {
        id = 62117,
        rewards = {
            Achievement({id = 6585, criteria = 21684}),
            Achievement({id = 6586, criteria = 21684}), Pet({id = 470})
        }
    }), -- also in Twilight Highlands, Deepholm,  Cataclysm
    UndercityRat = Class('UndercityRat', Safari, {
        id = 61889,
        rewards = {Achievement({id = 6586, criteria = 21677}), Pet({id = 454})}
    }),
    VenomspitterHatchling = Class('VenomspitterHatchling', Safari, {
        id = 62191,
        rewards = {Achievement({id = 6585, criteria = 21684}), Pet({id = 506})}
    }),
    WaterSnake = Class('WaterSnake', Safari, {
        id = 61367,
        rewards = {
            Achievement({id = 6585, criteria = 21661}),
            Achievement({id = 6586, criteria = 21661}), Pet({id = 418})
        }
    }), -- also in Twilight Highlands, Cataclysm
    WharfRat = Class('WharfRat', Safari, {
        id = 61323,
        rewards = {Achievement({id = 6586, criteria = 21670}), Pet({id = 410})}
    }),
    WidowSpiderling = Class('WidowSpiderling', Safari, {
        id = 61259,
        rewards = {Achievement({id = 6586, criteria = 21634}), Pet({id = 400})}
    })
}

-------------------------------------------------------------------------------
------------------------------- CRAZY FOR CATS --------------------------------
-------------------------------------------------------------------------------

ns.node.CrazyForCats = Class('CrazyForCats', Collectible,
    {icon = 656579, group = ns.groups.CRAZYFORCATS})
