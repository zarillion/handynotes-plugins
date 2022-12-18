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

ns.node.Safari = { -- Maybe add this to core later?
    Adder = Class('Adder', Safari, {
        id = 61325,
        rewards = {
            Achievement({id = 6585, criteria = 21509, oneline = true}),
            Achievement({id = 6586, criteria = 21509}),
            Achievement({id = 6587, criteria = 21509}), Pet({id = 635})
        }
    }),
    AlpineChipmunk = Class('AlpineChipmunk', Safari, {
        id = 62189,
        rewards = {Achievement({id = 6585, criteria = 21728}), Pet({id = 487})}
    }),
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
    }),
    AshLizard = Class('AshLizard', Safari, {
        id = 62364,
        rewards = {Achievement({id = 6585, criteria = 21729}), Pet({id = 632})}
    }),
    -- AshSpiderling
    -- AshViper
    -- BabyApe
    Bat = Class('Bat', Safari, {
        id = 61829,
        rewards = {
            Achievement({id = 6585, criteria = 21635}),
            Achievement({id = 6586, criteria = 21635}), Pet({id = 626})
        }
    }),
    Beetle = Class('Beetle', Safari, {
        id = 61319,
        rewards = {Achievement({id = 6585, criteria = 21615}), Pet({id = 406})}
    }),
    -- Biletoad = Class('Biletoad', Safari, {
    --     id = 62815,
    --     rewards = {Achievement({id = 6585, criteria = 21736}),Achievement({id = 6588, criteria = 21736}), Pet({id = 649})}
    -- }), -- Only in Sholazar Basin, Northrend
    BlackLamb = Class('BlackLamb', Safari, {
        id = 60649,
        rewards = {Achievement({id = 6586, criteria = 22886}), Pet({id = 374})}
    }),
    BlackRat = Class('BlackRat', Safari, {
        id = 61257,
        rewards = {Achievement({id = 6585, criteria = 21511}), Pet({id = 398})}
    }),
    BlightedSquirrel = Class('BlightedSquirrel', Safari, {
        id = 61890,
        rewards = {Achievement({id = 6586, criteria = 21667}), Pet({id = 455})}
    }),
    BrownMarmot = Class('BrownMarmot', Safari, {
        id = 61752,
        rewards = {Achievement({id = 6586, criteria = 21674}), Pet({id = 449})}
    }),
    -- CarrionRat = Class('CarrionRat', Safari, {
    --     id = 62885,
    --     rewards = {Achievement({id = 6585, criteria = 21730}), Pet({id = 540})}
    -- }), -- Only in Mount Hyjal, Cataclysm
    Cat = Class('Cat', Safari, {
        id = 62019,
        rewards = {
            Achievement({id = 6586, criteria = 21610}),
            Achievement({id = 6587, criteria = 21610}), Pet({id = 459})
        }
    }),
    Chicken = Class('Chicken', Safari, {
        id = 62664,
        rewards = {
            Achievement({id = 6585, criteria = 21629}),
            Achievement({id = 6586, criteria = 21629}),
            Achievement({id = 6588, criteria = 21629}), Pet({id = 646})
        }
    }),
    CheetahCub = Class('CheetahCub', Safari, {
        id = 62129,
        rewards = {Achievement({id = 6585, criteria = 21629}), Pet({id = 646})}
    }),
    Cockroach = Class('Cockroach', Safari, {
        id = 61384,
        rewards = {
            Achievement({id = 6585, criteria = 21625}),
            Achievement({id = 6586, criteria = 21625}),
            Achievement({id = 6588, criteria = 21625}), Pet({id = 393})
        }
    })
    -- CoralSnake
    -- CreepyCrawly = Class('CreepyCrawly', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- CrestedOwl
    -- CrimsonMoth
    -- CrystalSpider = Class('CrystalSpider', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- DarkshoreCub
    -- DeathsHeadCockroach = Class('DeathsHeadCockroach', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- DesertSpider
    -- DiemetradonHatchling = Class('DiemetradonHatchling', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- DungBeetle
    -- DuskSpiderling
    -- ElfinRabbit = Class('ElfinRabbit', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- EmeraldBoa
    -- Fawn
    -- FesteringMaggot
    -- FireBeetle = Class('FireBeetle', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- FireProofRoach
    -- FledglingBuzzard
    -- ForestMoth = Class('ForestMoth', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- ForestSpiderling
    -- Frog
    -- GazelleFawn = Class('GazelleFawn', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- GiraffeCalf
    -- GoldBeetle = Class('GoldBeetle', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Grasslands Cottontail
    -- GreyMoth
    -- Grizzly Squirrel
    -- Hare = Class('Hare', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- HighlandsMouse
    -- HighlandsSkunk
    -- HighlandsTurkey
    -- HornedLizard
    -- HornyToad = Class('HornyToad', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- HugeToad
    -- InfectedFawn
    -- InfectedSquirrel = Class('InfectedSquirrel', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- InfestedBearCub
    -- IrradiatedRoach
    -- JadeOozeling
    -- KingSnake
    -- Larva
    -- LavaBeetle
    -- LavaCrab
    -- LeopardScorpid
    -- LittleBlackRam
    -- LizardHatchling
    -- Locust = Class('Locust', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- LongTailedMole
    -- LostOfLordaeron
    -- MacFrog = Class('MacFrog', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Maggot
    -- Minfernal = Class('Minfernal', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Moccasin
    -- MoltenHatchling
    -- MountainCottontail
    -- MountainSkunk = Class('MountainSkunk', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Mouse
    -- NetherFaerieDragon = Class('NetherFaerieDragon', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- NordrassilWisp
    -- OasisMoth = Class('OasisMoth', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Parrot
    -- Polly
    -- PrairieDog = Class('PrairieDog', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- QirajiGuardling
    -- Rabbit = Class('Rabbit', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- RabidNutVarmint5000
    -- Rat = Class('Rat', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- RatSnake
    -- Rattlesnake
    -- RavagerHatchling = Class('RavagerHatchling', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- RedTailedChipmunk
    -- RedridgeRat
    -- RestlessShadeling
    -- Roach = Class('Roach', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- RoboChick
    -- RockViper = Class('RockViper', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- RubySapling
    -- RustySnail
    -- SandKitten = Class('SandKitten', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- ScarabHatchling
    -- Scorpid = Class('Scorpid', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Scorpling
    -- SeaGull
    -- ShimmershellSnail = Class('ShimmershellSnail', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- ShoreCrab
    -- Sidewinder = Class('Sidewinder', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- SilithidHatchling
    -- SilkyMoth = Class('SilkyMoth', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Skunk
    -- SmallFrog = Class('SmallFrog', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Snake
    -- SnowCub
    -- SnowshoeHare
    -- SnowyOwl = Class('SnowyOwl', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- SpawnOfOnyxia
    -- Spider = Class('Spider', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- SpinyLizard = Class('SpinyLizard', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- SpiritCrab
    -- SpottedBellFrog
    -- Squirrel = Class('Squirrel', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- Stinkbug
    -- StoneArmadillo = Class('StoneArmadillo', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- StormwindRat
    -- StrandCrab
    -- StripeTailedScorpid = Class('StripeTailedScorpid', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- SwampMoth
    -- TaintedCockroach
    -- TaintedMoth = Class('TaintedMoth', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- TaintedRat
    -- TinyBogBeast
    -- TinyHarvester
    -- TinyTwister
    -- Toad = Class('Toad', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- TolvirScarab
    -- TopazShaleHatchling = Class('TopazShaleHatchling', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- TreePython
    -- TurquoiseTurtle = Class('TurquoiseTurtle', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),

    -- TwilightBeetle
    -- TwilightFiendling
    -- TwilightIguana = Class('TwilightIguana', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- TwilightSpider
    -- UndercityRat
    -- VenomspitterHatchling = Class('VenomspitterHatchling', Safari, {
    --     id = nil,
    --     rewards = {Achievement({id = 6585, criteria = nil}), Pet({id = nil})}
    -- }),
    -- WaterSnake
    -- WharfRat
    -- WidowSpiderling
    -- WildhammerGryphonHatchling
    -- YellowBelliedMarmot
}
