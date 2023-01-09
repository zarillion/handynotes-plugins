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
            Achievement({id = 6585, criteria = 21509, oneline = true}),
            Achievement({id = 6586, criteria = 21509, oneline = true}),
            Achievement({id = 6587, criteria = 21509, oneline = true}),
            Pet({id = 635})
        }
    }), -- Also in Drustvar, BfA; Hellfire Peninsula, Nagrand, BC; Spires of Arak, Legion;
    AlpineChipmunk = Class('AlpineChipmunk', Safari, {
        id = 62189,
        rewards = {
            Achievement({id = 6585, criteria = 21728, oneline = true}),
            Pet({id = 487})
        }
    }), -- Also in Mount Hyjal, Cataclysm; Highmountain, Legion; Drustvar, BfA;
    AlpineHare = Class('AlpineHare', Safari, {
        id = 61690,
        rewards = {
            Achievement({id = 6585, criteria = 21510, oneline = true}),
            Achievement({id = 6586, criteria = 21510, oneline = true}),
            Pet({id = 441})
        }
    }),
    AmethystShaleHatchling = Class('AmethystShaleHatchling', Safari, {
        id = 62182,
        rewards = {
            Achievement({id = 6585, criteria = 21711, oneline = true}),
            Pet({id = 838})
        }
    }), -- Also in Deepholm, Cataclysm
    AshLizard = Class('AshLizard', Safari, {
        id = 62364,
        rewards = {
            Achievement({id = 6585, criteria = 21729, oneline = true}),
            Pet({id = 632})
        }
    }), -- Also in Mount Hyjal, Cataclysm
    AshSpiderling = Class('AshSpiderling', Safari, {
        id = 61420,
        rewards = {
            Achievement({id = 6586, criteria = 21665, oneline = true}),
            Pet({id = 427})
        }
    }), -- Also in Talador, Draenor
    AshViper = Class('AshViper', Safari, {
        id = 61385,
        rewards = {
            Achievement({id = 6586, criteria = 21624, oneline = true}),
            Achievement({id = 6587, criteria = 21624, oneline = true}),
            Pet({id = 425})
        }
    }), -- Also in Suramar, Legion; Shadowmoon Valley, BC
    BabyApe = Class('BabyApe', Safari, {
        id = 61324,
        rewards = {
            Achievement({id = 6586, criteria = 21668, oneline = true}),
            Pet({id = 411})
        }
    }),
    Bat = Class('Bat', Safari, {
        id = 61829,
        rewards = {
            Achievement({id = 6585, criteria = 21635, oneline = true}),
            Achievement({id = 6586, criteria = 21635, oneline = true}),
            Pet({id = 626})
        }
    }),
    Beetle = Class('Beetle', Safari, {
        id = 61319,
        rewards = {
            Achievement({id = 6585, criteria = 21615, oneline = true}),
            Achievement({id = 6586, criteria = 21615, oneline = true}),
            Pet({id = 406})
        }
    }),
    BlackLamb = Class('BlackLamb', Safari, {
        id = 60649,
        rewards = {
            Achievement({id = 6586, criteria = 22886, oneline = true}),
            Pet({id = 374})
        }
    }),
    BlackRat = Class('BlackRat', Safari, {
        id = 61257,
        rewards = {
            Achievement({id = 6585, criteria = 21511, oneline = true}),
            Achievement({id = 6586, criteria = 21511, oneline = true}),
            Pet({id = 398})
        }
    }), -- Also in Drustvar, BfA
    BlightedSquirrel = Class('BlightedSquirrel', Safari, {
        id = 61890,
        rewards = {
            Achievement({id = 6586, criteria = 21667, oneline = true}),
            Pet({id = 455})
        }
    }),
    BrownMarmot = Class('BrownMarmot', Safari, {
        id = 61752,
        rewards = {
            Achievement({id = 6586, criteria = 21674, oneline = true}),
            Achievement({id = 6587, criteria = 21674, oneline = true}),
            Pet({id = 449})
        }
    }), -- Also in Gorgrond, Draenor
    Cat = Class('Cat', Safari, {
        id = 62019,
        rewards = {
            Achievement({id = 6586, criteria = 21610, oneline = true}),
            Achievement({id = 6587, criteria = 21610, oneline = true}),
            Achievement({id = 8397, criteria = 23580, oneline = true}),
            Pet({id = 459})
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
    CheetahCub = Class('CheetahCub', Safari, {
        id = 62129,
        rewards = {
            Achievement({id = 6585, criteria = 21737, oneline = true}),
            Achievement({id = 8397, criteria = 23581, oneline = true}),
            Pet({id = 474})
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
    }), -- Twilight Highlands, Cataclysm; Val'sharah, Legion; Gorgrond, Draenor
    CoralSnake = Class('CoralSnake', Safari, {
        id = 62190,
        rewards = {
            Achievement({id = 6585, criteria = 21743, oneline = true}),
            Pet({id = 488})
        }
    }),
    CreepyCrawly = Class('CreepyCrawly', Safari, {
        id = 62116,
        rewards = {
            Achievement({id = 6585, criteria = 21698, oneline = true}),
            Pet({id = 468})
        }
    }),
    CrestedOwl = Class('CrestedOwl', Safari, {
        id = 62242,
        rewards = {
            Achievement({id = 6585, criteria = 22540, oneline = true}),
            Pet({id = 507})
        }
    }),
    CrimsonMoth = Class('CrimsonMoth', Safari, {
        id = 61314,
        rewards = {
            Achievement({id = 6586, criteria = 21654, oneline = true}),
            Pet({id = 421})
        }
    }),
    CrystalSpider = Class('CrystalSpider', Safari, {
        id = 62435,
        rewards = {
            Achievement({id = 6585, criteria = 21512, oneline = true}),
            Pet({id = 634})
        }
    }),
    DarkshoreCub = Class('DarkshoreCub', Safari, {
        id = 62250,
        rewards = {
            Achievement({id = 6585, criteria = 21697, oneline = true}),
            Pet({id = 508})
        }
    }),
    DesertSpider = Class('DesertSpider', Safari, {
        id = 62186,
        rewards = {
            Achievement({id = 6585, criteria = 21712, oneline = true}),
            Pet({id = 484})
        }
    }), -- Also in Uldum, Cataclysm
    DiemetradonHatchling = Class('DiemetradonHatchling', Safari, {
        id = 62375,
        rewards = {
            Achievement({id = 6585, criteria = 21750, oneline = true}),
            Pet({id = 504})
        }
    }),
    DungBeetle = Class('DungBeetle', Safari, {
        id = 62115,
        rewards = {
            Achievement({id = 6585, criteria = 21719, oneline = true}),
            Pet({id = 467})
        }
    }), -- Also in Uldum, Cataclysm
    DuskSpiderling = Class('DuskSpiderling', Safari, {
        id = 61253,
        rewards = {
            Achievement({id = 6586, criteria = 21630, oneline = true}),
            Pet({id = 396})
        }
    }), -- Also in Azsuna, Val'sharah, Legion
    ElfinRabbit = Class('ElfinRabbit', Safari, {
        id = 62178,
        rewards = {
            Achievement({id = 6585, criteria = 21713, oneline = true}),
            Pet({id = 479})
        }
    }), -- Also in Mount Hyjal, Cataclysm; Val'sharah, The Dreamgrove, Legion
    EmeraldBoa = Class('EmeraldBoa', Safari, {
        id = 62127,
        rewards = {
            Achievement({id = 6585, criteria = 21738, oneline = true}),
            Pet({id = 631})
        }
    }), -- Also in Uldum, Cataclysm
    Fawn = Class('Fawn', Safari, {
        id = 61165,
        rewards = {
            Achievement({id = 6586, criteria = 21639, oneline = true}),
            Achievement({id = 6588, criteria = 21639, oneline = true}),
            Pet({id = 447})
        }
    }),
    FesteringMaggot = Class('FesteringMaggot', Safari, {
        id = 61830,
        rewards = {
            Achievement({id = 6586, criteria = 21636, oneline = true}),
            Pet({id = 457})
        }
    }),
    FireBeetle = Class('FireBeetle', Safari, {
        id = 61328,
        rewards = {
            Achievement({id = 6585, criteria = 21621, oneline = true}),
            Achievement({id = 6586, criteria = 21621, oneline = true}),
            Pet({id = 415})
        }
    }), -- Also in Mount Hyjal, Cataclysm
    FledglingBuzzard = Class('FledglingBuzzard', Safari, {
        id = 61171,
        rewards = {
            Achievement({id = 6586, criteria = 21662, oneline = true}),
            Pet({id = 395})
        }
    }),
    ForestMoth = Class('ForestMoth', Safari, {
        id = 62177,
        rewards = {
            Achievement({id = 6585, criteria = 21702, oneline = true}),
            Pet({id = 478})
        }
    }), -- Also in Tiragarde Sound, BfA; Azsuna, Legion
    ForestSpiderling = Class('ForestSpiderling', Safari, {
        id = 61320,
        rewards = {
            Achievement({id = 6586, criteria = 21655, oneline = true}),
            Pet({id = 407})
        }
    }), -- Also in Shadowmoon Valley, Draenor; Drustvar, BfA; Highmountain, Legion
    Frog = Class('Frog', Safari, {
        id = 62312,
        rewards = {
            Achievement({id = 6585, criteria = 21691, oneline = true}),
            Pet({id = 495})
        }
    }),
    GazelleFawn = Class('GazelleFawn', Safari, {
        id = 62176,
        rewards = {
            Achievement({id = 6585, criteria = 21735, oneline = true}),
            Pet({id = 477})
        }
    }),
    GiraffeCalf = Class('GiraffeCalf', Safari, {
        id = 62130,
        rewards = {
            Achievement({id = 6585, criteria = 21742, oneline = true}),
            Pet({id = 475})
        }
    }),
    GoldBeetle = Class('GoldBeetle', Safari, {
        id = 61438,
        rewards = {
            Achievement({id = 6585, criteria = 21616, oneline = true}),
            Achievement({id = 6586, criteria = 21616, oneline = true}),
            Pet({id = 430})
        }
    }), -- Also in Gorgrond, Draenor
    GrasslandsCottontail = Class('GrasslandsCottontail', Safari, {
        id = 61704,
        rewards = {
            Achievement({id = 6586, criteria = 21611, oneline = true}),
            Pet({id = 443})
        }
    }),
    GreyMoth = Class('GreyMoth', Safari, {
        id = 62050,
        rewards = {
            Achievement({id = 6585, criteria = 21708, oneline = true}),
            Pet({id = 464})
        }
    }), -- Also in Azsuna, Legion
    Hare = Class('Hare', Safari, {
        id = 61751,
        rewards = {
            Achievement({id = 6585, criteria = 21612, oneline = true}),
            Achievement({id = 6586, criteria = 21612, oneline = true}),
            Pet({id = 448})
        }
    }),
    HornyToad = Class('HornyToad', Safari, {
        id = 62185,
        rewards = {
            Achievement({id = 6585, criteria = 21715, oneline = true}),
            Pet({id = 483})
        }
    }), -- Also in Tanaan Jungle, Draenor
    HugeToad = Class('HugeToad', Safari, {
        id = 61368,
        rewards = {
            Achievement({id = 6586, criteria = 21649, oneline = true}),
            Achievement({id = 6588, criteria = 21649, oneline = true}),
            Pet({id = 648})
        }
    }), -- Twilight Highlands, Cataclysm
    InfectedFawn = Class('InfectedFawn', Safari, {
        id = 61827,
        rewards = {
            Achievement({id = 6585, criteria = 21637, oneline = true}),
            Achievement({id = 6586, criteria = 21637, oneline = true}),
            Pet({id = 628})
        }
    }),
    InfectedSquirrel = Class('InfectedSquirrel', Safari, {
        id = 61828,
        rewards = {
            Achievement({id = 6585, criteria = 21638, oneline = true}),
            Achievement({id = 6586, criteria = 21638, oneline = true}),
            Pet({id = 627})
        }
    }),
    InfestedBearCub = Class('InfestedBearCub', Safari, {
        id = 61758,
        rewards = {
            Achievement({id = 6586, criteria = 21650, oneline = true}),
            Pet({id = 453})
        }
    }),
    IrradiatedRoach = Class('IrradiatedRoach', Safari, {
        id = 61691,
        rewards = {
            Achievement({id = 6586, criteria = 21507, oneline = true}),
            Pet({id = 442})
        }
    }),
    JadeOozeling = Class('JadeOozeling', Safari, {
        id = 61718,
        rewards = {
            Achievement({id = 6586, criteria = 21675, oneline = true}),
            Pet({id = 446})
        }
    }),
    KingSnake = Class('KingSnake', Safari, {
        id = 61443,
        rewards = {
            Achievement({id = 6586, criteria = 21618, oneline = true}),
            Pet({id = 438})
        }
    }),
    Larva = Class('Larva', Safari, {
        id = 62022,
        rewards = {
            Achievement({id = 6586, criteria = 21647, oneline = true}),
            Pet({id = 461})
        }
    }),
    LavaBeetle = Class('LavaBeetle', Safari, {
        id = 61386,
        rewards = {
            Achievement({id = 6586, criteria = 21626, oneline = true}),
            Pet({id = 429})
        }
    }),
    LavaCrab = Class('LavaCrab', Safari, {
        id = 61383,
        rewards = {
            Achievement({id = 6586, criteria = 21627, oneline = true}),
            Pet({id = 423})
        }
    }),
    LittleBlackRam = Class('LittleBlackRam', Safari, {
        id = 61459,
        rewards = {
            Achievement({id = 6586, criteria = 21653, oneline = true}),
            Pet({id = 437})
        }
    }),
    LizardHatchling = Class('LizardHatchling', Safari, {
        id = 61321,
        rewards = {
            Achievement({id = 6586, criteria = 21656, oneline = true}),
            Pet({id = 408})
        }
    }),
    LongTailedMole = Class('LongTailedMole', Safari, {
        id = 61317,
        rewards = {
            Achievement({id = 6585, criteria = 21513, oneline = true}),
            Achievement({id = 6586, criteria = 21513, oneline = true}),
            Pet({id = 404})
        }
    }),
    LostOfLordaeron = Class('LostOfLordaeron', Safari, {
        id = 61905,
        rewards = {
            Achievement({id = 6586, criteria = 21676, oneline = true}),
            Pet({id = 458})
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
    Minfernal = Class('Minfernal', Safari, {
        id = 62317,
        rewards = {
            Achievement({id = 6585, criteria = 21722, oneline = true}),
            Pet({id = 500})
        }
    }),
    Moccasin = Class('Moccasin', Safari, {
        id = 61372,
        rewards = {
            Achievement({id = 6586, criteria = 21671, oneline = true}),
            Pet({id = 422})
        }
    }),
    MoltenHatchling = Class('Moccasin', Safari, {
        id = 61425,
        rewards = {
            Achievement({id = 6586, criteria = 21666, oneline = true}),
            Pet({id = 428})
        }
    }),
    MountainCottontail = Class('Moccasin', Safari, {
        id = 61167,
        rewards = {
            Achievement({id = 6585, criteria = 21663, oneline = true}),
            Achievement({id = 6586, criteria = 21663, oneline = true}),
            Pet({id = 391})
        }
    }), -- also in Highmountain, Legion
    MountainSkunk = Class('MountainSkunk', Safari, {
        id = 61677,
        rewards = {
            Achievement({id = 6585, criteria = 21688, oneline = true}),
            Achievement({id = 6586, criteria = 21688, oneline = true}),
            Achievement({id = 6588, criteria = 21688, oneline = true}),
            Pet({id = 633})
        }
    }), -- Stormheim, Legion
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
    NetherFaerieDragon = Class('NetherFaerieDragon', Safari, {
        id = 62395,
        rewards = {
            Achievement({id = 6585, criteria = 21726, oneline = true}),
            Pet({id = 557})
        }
    }),
    Parrot = Class('Parrot', Safari, {
        id = 61313,
        rewards = {
            Achievement({id = 6585, criteria = 21657, oneline = true}),
            Achievement({id = 6586, criteria = 21657, oneline = true}),
            Pet({id = 403})
        }
    }),
    Polly = Class('Polly', Safari, {
        id = 61322,
        rewards = {
            Achievement({id = 6586, criteria = 21658, oneline = true}),
            Pet({id = 409})
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
    QirajiGuardling = Class('QirajiGuardling', Safari, {
        note = L['summer_only'],
        id = 62526,
        rewards = {
            Achievement({id = 6585, criteria = 21739, oneline = true}),
            Pet({id = 513})
        }
    }),
    Rabbit = Class('Rabbit', Safari, {
        id = 61080,
        rewards = {
            Achievement({id = 6585, criteria = 21508, oneline = true}),
            Achievement({id = 6586, criteria = 21508, oneline = true}),
            Achievement({id = 6587, criteria = 21508, oneline = true}),
            Achievement({id = 6588, criteria = 21508, oneline = true}),
            Pet({id = 378})
        }
    }),
    RabidNutVarmint5000 = Class('RabidNutVarmint5000', Safari, {
        id = 62120,
        rewards = {
            Achievement({id = 6585, criteria = 21704, oneline = true}),
            Pet({id = 472})
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
    }), -- Also in Terrok Forest, Nagrand, Outland; Drustvar, BFA; Highmountain, Spires of Arak, Legion;
    RatSnake = Class('RatSnake', Safari, {
        id = 61258,
        rewards = {
            Achievement({id = 6586, criteria = 21632, oneline = true}),
            Pet({id = 399})
        }
    }),
    Rattlesnake = Class('Rattlesnake', Safari, {
        id = 61439,
        rewards = {
            Achievement({id = 6585, criteria = 21617, oneline = true}),
            Achievement({id = 6586, criteria = 21617, oneline = true}),
            Pet({id = 431})
        }
    }), -- also in Twilight Highlands, Cataclysm
    RavagerHatchling = Class('RavagerHatchling', Safari, {
        id = 62051,
        rewards = {
            Achievement({id = 6585, criteria = 21709, oneline = true}),
            Pet({id = 465})
        }
    }),
    RedTailedChipmunk = Class('RedTailedChipmunk', Safari, {
        id = 61757,
        rewards = {
            Achievement({id = 6585, criteria = 21651, oneline = true}),
            Achievement({id = 6586, criteria = 21651, oneline = true}),
            Pet({id = 452})
        }
    }), -- Also in Talador, Legion
    RedridgeRat = Class('RedridgeRat', Safari, {
        id = 61168,
        rewards = {
            Achievement({id = 6586, criteria = 21664, oneline = true}),
            Pet({id = 392})
        }
    }),
    RestlessShadeling = Class('RestlessShadeling', Safari, {
        id = 61375,
        rewards = {
            Achievement({id = 6586, criteria = 21628, oneline = true}),
            Pet({id = 439})
        }
    }),
    Roach = Class('Roach', Safari, {
        id = 61169,
        rewards = {
            Achievement({id = 6585, criteria = 21517, oneline = true}),
            Achievement({id = 6586, criteria = 21517, oneline = true}),
            Achievement({id = 6588, criteria = 21517, oneline = true}),
            Pet({id = 424})
        }
    }), -- Also in Drustvar, BFA;
    RoboChick = Class('RoboChick', Safari, {
        id = 62119,
        rewards = {
            Achievement({id = 6585, criteria = 21705, oneline = true}),
            Pet({id = 471})
        }
    }),
    RockViper = Class('RockViper', Safari, {
        id = 62184,
        rewards = {
            Achievement({id = 6585, criteria = 21699, oneline = true}),
            Achievement({id = 6587, criteria = 21716, oneline = true}),
            Pet({id = 482})
        }
    }), -- Also in Mount Hyjal, Cataclysm, Blades Edge Mountains, Outland
    RubySapling = Class('RubySapling', Safari, {
        id = 62020,
        rewards = {
            Achievement({id = 6586, criteria = 21644, oneline = true}),
            Pet({id = 460})
        }
    }),
    RustySnail = Class('RustySnail', Safari, {
        id = 62313,
        rewards = {
            Achievement({id = 6585, criteria = 21703, oneline = true}),
            Pet({id = 496})
        }
    }), -- also in Highmountain, Legion
    SandKitten = Class('SandKitten', Safari, {
        id = 62257,
        rewards = {
            Achievement({id = 6585, criteria = 21746, oneline = true}),
            Achievement({id = 8397, criteria = 23589, oneline = true}),
            Pet({id = 491})
        }
    }),
    ScarabHatchling = Class('ScarabHatchling', Safari, {
        id = 62524,
        rewards = {
            Achievement({id = 6585, criteria = 21740, oneline = true}),
            Pet({id = 512})
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
    }), -- Also in Hellfire Peninsula, Shadowmoon Valley, Blades Edge Mountains, Outland; Twilight Highlands, Cataclysm
    Scorpling = Class('Scorpling', Safari, {
        id = 61329,
        rewards = {
            Achievement({id = 6586, criteria = 21623, oneline = true}),
            Pet({id = 416})
        }
    }),
    SeaGull = Class('SeaGull', Safari, {
        id = 62953,
        rewards = {
            Achievement({id = 6585, criteria = 21640, oneline = true}),
            Achievement({id = 6586, criteria = 21640, oneline = true}),
            Achievement({id = 6589, criteria = 21640, oneline = true}),
            Pet({id = 560})
        }
    }), -- Also in Frostfire Ridge, Draenor
    ShimmershellSnail = Class('ShimmershellSnail', Safari, {
        id = 62246,
        rewards = {
            Achievement({id = 6585, criteria = 21710, oneline = true}),
            Pet({id = 493})
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
    Sidewinder = Class('Sidewinder', Safari, {
        id = 62523,
        rewards = {
            Achievement({id = 6585, criteria = 21741, oneline = true}),
            Pet({id = 511})
        }
    }), -- also in Uldum, Cataclysm
    SilithidHatchling = Class('SilithidHatchling', Safari, {
        id = 62258,
        rewards = {
            Achievement({id = 6585, criteria = 21747, oneline = true}),
            Pet({id = 494})
        }
    }),
    SilkyMoth = Class('SilkyMoth', Safari, {
        id = 62373,
        rewards = {
            Achievement({id = 6585, criteria = 21727, oneline = true}),
            Pet({id = 503})
        }
    }), -- also in Mount Hyjal, Cataclysm
    Skunk = Class('Skunk', Safari, {
        id = 61255,
        rewards = {
            Achievement({id = 6585, criteria = 21633, oneline = true}),
            Achievement({id = 6586, criteria = 21633, oneline = true}),
            Achievement({id = 6587, criteria = 21633, oneline = true}),
            Achievement({id = 6588, criteria = 21633, oneline = true}),
            Pet({id = 397})
        }
    }), -- also in Terrok Forest, Outland; Nagrand, Draenor; Val'sharah, Legion
    SmallFrog = Class('SmallFrog', Safari, {
        id = 61071,
        rewards = {
            Achievement({id = 6585, criteria = 21518, oneline = true}),
            Achievement({id = 6586, criteria = 21518, oneline = true}),
            Achievement({id = 6587, criteria = 21518, oneline = true}),
            Pet({id = 419})
        }
    }), -- also in Zangarmarsh, Outland
    Snake = Class('Snake', Safari, {
        id = 61142,
        rewards = {
            Achievement({id = 6585, criteria = 21519, oneline = true}),
            Achievement({id = 6586, criteria = 21519, oneline = true}),
            Achievement({id = 6587, criteria = 21519, oneline = true}),
            Achievement({id = 6588, criteria = 21519, oneline = true}),
            Pet({id = 387})
        }
    }), -- Also in Zangarmarsh, Outland;
    SnowCub = Class('SnowCub', Safari, {
        id = 61689,
        rewards = {
            Achievement({id = 6586, criteria = 21520, oneline = true}),
            Achievement({id = 8397, criteria = 23593, oneline = true}),
            Pet({id = 440})
        }
    }),
    SnowshoeHare = Class('SnowshoeHare', Safari, {
        id = 61755,
        rewards = {
            Achievement({id = 6586, criteria = 21652, oneline = true}),
            Pet({id = 640})
        }
    }),
    SnowyOwl = Class('SnowyOwl', Safari, {
        id = 7554,
        rewards = {
            Achievement({id = 6585, criteria = 21757, oneline = true}),
            Pet({id = 69})
        }
    }),
    SpawnOfOnyxia = Class('SpawnOfOnyxia', Safari, {
        id = 62201,
        rewards = {
            Achievement({id = 6585, criteria = 21721, oneline = true}),
            Pet({id = 489})
        }
    }),
    Spider = Class('Spider', Safari, {
        id = 61327,
        rewards = {
            Achievement({id = 6585, criteria = 21521, oneline = true}),
            Achievement({id = 6586, criteria = 21521, oneline = true}),
            Achievement({id = 6588, criteria = 21521, oneline = true}),
            Pet({id = 412})
        }
    }),
    SpikyLizard = Class('SpikyLizard', Safari, {
        id = 61441,
        rewards = {
            Achievement({id = 6585, criteria = 21619, oneline = true}),
            Achievement({id = 6586, criteria = 21619, oneline = true}),
            Pet({id = 433})
        }
    }),
    SpinyLizard = Class('SpinyLizard', Safari, {
        id = 62114,
        rewards = {
            Achievement({id = 6585, criteria = 21720, oneline = true}),
            Pet({id = 466})
        }
    }),
    SpiritCrab = Class('SpiritCrab', Safari, {
        id = 62034,
        rewards = {
            Achievement({id = 6586, criteria = 21648, oneline = true}),
            Pet({id = 463})
        }
    }),
    SpottedBellFrog = Class('SpottedBellFrog', Safari, {
        id = 62370,
        rewards = {
            Achievement({id = 6585, criteria = 21756, oneline = true}),
            Pet({id = 502})
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
    }), -- also in Terrokar Forest, Nagrand, Blades Edge Mountains, Outland; Drustvar, BFA; Highmountain, Legion; Spires of Arak, Nagrand, Draenor
    Stinkbug = Class('Stinkbug', Safari, {
        id = 62256,
        rewards = {
            Achievement({id = 6585, criteria = 21748, oneline = true}),
            Pet({id = 492})
        }
    }),
    StoneArmadillo = Class('StoneArmadillo', Safari, {
        id = 62187,
        rewards = {
            Achievement({id = 6585, criteria = 21717, oneline = true}),
            Pet({id = 485})
        }
    }),
    StormwindRat = Class('StormwindRat', Safari, {
        id = 62954,
        rewards = {
            Achievement({id = 6586, criteria = 21641, oneline = true}),
            Pet({id = 675})
        }
    }),
    StrandCrab = Class('StrandCrab', Safari, {
        id = 61312,
        rewards = {
            Achievement({id = 6585, criteria = 21659, oneline = true}),
            Achievement({id = 6586, criteria = 21659, oneline = true}),
            Achievement({id = 6588, criteria = 21659, oneline = true}),
            Pet({id = 401})
        }
    }), -- also in spires of arak, Draenor
    StripeTailedScorpid = Class('StripeTailedScorpid', Safari, {
        id = 61440,
        rewards = {
            Achievement({id = 6585, criteria = 21620, oneline = true}),
            Achievement({id = 6586, criteria = 21620, oneline = true}),
            Pet({id = 432})
        }
    }), -- also in Terrokar Forest, Outland
    SwampMoth = Class('SwampMoth', Safari, {
        id = 61370,
        rewards = {
            Achievement({id = 6586, criteria = 21672, oneline = true}),
            Pet({id = 402})
        }
    }),
    TaintedCockroach = Class('TaintedCockroach', Safari, {
        id = 62314,
        rewards = {
            Achievement({id = 6585, criteria = 21723, oneline = true}),
            Achievement({id = 6587, criteria = 21723, oneline = true}),
            Pet({id = 497})
        }
    }), -- also in Shadowmoon Valley, Outland
    TaintedMoth = Class('TaintedMoth', Safari, {
        id = 62315,
        rewards = {
            Achievement({id = 6585, criteria = 21724, oneline = true}),
            Pet({id = 498})
        }
    }),
    TaintedRat = Class('TaintedRat', Safari, {
        id = 62316,
        rewards = {
            Achievement({id = 6585, criteria = 21725, oneline = true}),
            Pet({id = 499})
        }
    }),
    TinyBogBeast = Class('TinyBogBeast', Safari, {
        id = 61686,
        rewards = {
            Achievement({id = 6586, criteria = 21689, oneline = true}),
            Pet({id = 509})
        }
    }),
    TinyHarvester = Class('TinyHarvester', Safari, {
        id = 61160,
        rewards = {
            Achievement({id = 6586, criteria = 21687, oneline = true}),
            Pet({id = 389})
        }
    }),
    TinyTwister = Class('TinyTwister', Safari, {
        id = 61703,
        rewards = {
            Achievement({id = 6586, criteria = 21614, oneline = true}),
            Pet({id = 445})
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
    }), -- also in Nagrand, Outland
    TopazShaleHatchling = Class('TopazShaleHatchling', Safari, {
        id = 62181,
        rewards = {
            Achievement({id = 6585, criteria = 21718, oneline = true}),
            Pet({id = 480})
        }
    }), -- also in Deepholm, Cataclysm
    TreePython = Class('TreePython', Safari, {
        id = 61318,
        rewards = {
            Achievement({id = 6585, criteria = 21660, oneline = true}),
            Achievement({id = 6586, criteria = 21660, oneline = true}),
            Pet({id = 405})
        }
    }), -- also in Tanaan jungle, Draenor
    TurquoiseTurtle = Class('TurquoiseTurtle', Safari, {
        id = 62121,
        rewards = {
            Achievement({id = 6585, criteria = 21707, oneline = true}),
            Pet({id = 473})
        }
    }),
    TwilightBeetle = Class('TwilightBeetle', Safari, {
        id = 62118,
        rewards = {
            Achievement({id = 6585, criteria = 21700, oneline = true}),
            Pet({id = 469})
        }
    }), -- also in mount Hyjal, Deepholm,  Cataclysm
    TwilightIguana = Class('TwilightIguana', Safari, {
        id = 62255,
        rewards = {
            Achievement({id = 6585, criteria = 21749, oneline = true}),
            Pet({id = 505})
        }
    }),
    TwilightSpider = Class('TwilightSpider', Safari, {
        id = 62117,
        rewards = {
            Achievement({id = 6585, criteria = 21684, oneline = true}),
            Achievement({id = 6586, criteria = 21684, oneline = true}),
            Pet({id = 470})
        }
    }), -- also in Twilight Highlands, Deepholm,  Cataclysm
    UndercityRat = Class('UndercityRat', Safari, {
        id = 61889,
        rewards = {
            Achievement({id = 6586, criteria = 21677, oneline = true}),
            Pet({id = 454})
        }
    }),
    VenomspitterHatchling = Class('VenomspitterHatchling', Safari, {
        id = 62191,
        rewards = {
            Achievement({id = 6585, criteria = 21684, oneline = true}),
            Pet({id = 506})
        }
    }),
    WaterSnake = Class('WaterSnake', Safari, {
        id = 61367,
        rewards = {
            Achievement({id = 6585, criteria = 21661, oneline = true}),
            Achievement({id = 6586, criteria = 21661, oneline = true}),
            Pet({id = 418})
        }
    }), -- also in Twilight Highlands, Cataclysm
    WharfRat = Class('WharfRat', Safari, {
        id = 61323,
        rewards = {
            Achievement({id = 6586, criteria = 21670, oneline = true}),
            Pet({id = 410})
        }
    }),
    WidowSpiderling = Class('WidowSpiderling', Safari, {
        id = 61259,
        rewards = {
            Achievement({id = 6586, criteria = 21634, oneline = true}),
            Pet({id = 400})
        }
    })
}

-------------------------------------------------------------------------------
------------------------------- CRAZY FOR CATS --------------------------------
-------------------------------------------------------------------------------

ns.node.CrazyForCats = Class('CrazyForCats', Collectible,
    {icon = 656579, group = ns.groups.CRAZYFORCATS})
