-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group
local Class = ns.Class

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 7

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCIENT_EREDAR_CACHE = Group('ancient_eredar_cache', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.BRINGING_HOME_THE_BEACON = Group('bringing_home_the_beacon', 133267,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.EREDAR_WAR_SUPPLIES = Group('eredar_war_supplies', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.HIGHER_DIMENSIONAL_LEARNING = Group('higher_dimensional_learning',
    134915, {defaults = ns.GROUP_HIDDEN})
ns.groups.LEGION_WAR_SUPPLIES = Group('legion_war_supplies', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.VOID_SEEPED_CACHE = Group('void_seeped_cache', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

local Safari = Class('Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.SAFARI})

ns.node.Safari = {
    AlbatrossChick = Class('AlbatrossChick', Safari, {
        id = 97078,
        rewards = {
            Achievement({id = 11233, criteria = 33107, oneline = true}),
            Pet({id = 1708})
        }
    }),
    AuburnRingtail = Class('AuburnRingtail', Safari, {
        id = 97555,
        rewards = {
            Achievement({id = 11233, criteria = 33121, oneline = true}),
            Pet({id = 1738})
        }
    }),
    BlackFootedFoxKit = Class('BlackFootedFoxKit', Safari, {
        id = 97741,
        rewards = {
            Achievement({id = 11233, criteria = 33123, oneline = true}),
            Pet({id = 1743})
        }
    }),
    BlindRat = Class('BlindRat', Safari, {
        id = 111158,
        rewards = {
            Achievement({id = 11233, criteria = 33140, oneline = true}),
            Pet({id = 1915})
        }
    }),
    BurrowSpiderling = Class('BurrowSpiderling', Safari, {
        id = 97236,
        rewards = {
            Achievement({id = 11233, criteria = 33113, oneline = true}),
            Pet({id = 1726})
        }
    }),
    CoastalSandpiper = Class('CoastalSandpiper', Safari, {
        id = 110826,
        rewards = {
            Achievement({id = 11233, criteria = 33139, oneline = true}),
            Achievement({id = 14729, criteria = 50225}), -- To All the Squirrels ...
            Pet({id = 1914})
        }
    }),
    CoralbackFiddler = Class('CoralbackFiddler', Safari, {
        id = 98428,
        rewards = {
            Achievement({id = 11233, criteria = 33132, oneline = true}),
            Pet({id = 1775})
        }
    }),
    CrystallineBroodling = Class('CrystallineBroodling', Safari, {
        id = 99527,
        rewards = {
            Achievement({id = 11233, criteria = 33136, oneline = true}),
            Pet({id = 1809})
        }
    }),
    DustBunny = Class('DustBunny', Safari, {
        id = 98506,
        rewards = {
            Achievement({id = 11233, criteria = 33134, oneline = true}),
            Pet({id = 1778})
        }
    }),
    EchoBatling = Class('EchoBatling', Safari, {
        id = 88542,
        rewards = {
            Achievement({id = 11233, criteria = 33127, oneline = true}),
            Achievement({id = 14729, criteria = 50234}), -- To All the Squirrels ...
            Pet({id = 1761})
        }
    }),
    EldritchManafiend = Class('EldritchManafiend', Safari, {
        id = 98386,
        rewards = {
            Achievement({id = 11233, criteria = 33131, oneline = true}),
            Pet({id = 1774})
        }
    }),
    EruditeManafiend = Class('EruditeManafiend', Safari, {
        id = 98385,
        rewards = {
            Achievement({id = 11233, criteria = 33130, oneline = true}),
            Pet({id = 1773})
        }
    }),
    Felspider = Class('Felspider', Safari, {
        id = 97323,
        rewards = {
            Achievement({id = 11233, criteria = 33116, oneline = true}),
            Achievement({id = 14729, criteria = 50222}), -- To All the Squirrels ...
            Pet({id = 1731})
        }
    }),
    FledglingKingfeather = Class('FledglingKingfeather', Safari, {
        id = 97076,
        rewards = {
            Achievement({id = 11233, criteria = 33108, oneline = true}),
            Pet({id = 1709})
        }
    }),
    FledglingOliveback = Class('FledglingOliveback', Safari, {
        id = 97078,
        rewards = {
            Achievement({id = 11233, criteria = 33109, oneline = true}),
            Pet({id = 1710})
        }
    }),
    GleamhoofFawn = Class('GleamhoofFawn', Safari, {
        id = 110741,
        rewards = {
            Achievement({id = 11233, criteria = 33138, oneline = true}),
            Achievement({id = 14729, criteria = 50227}), -- To All the Squirrels ...
            Pet({id = 1913})
        }
    }),
    GoldenEaglet = Class('GoldenEaglet', Safari, {
        id = 97080,
        rewards = {
            Achievement({id = 11233, criteria = 33110, oneline = true}),
            Achievement({id = 14729, criteria = 50232}), -- To All the Squirrels ...
            Pet({id = 1712})
        }
    }),
    HogNosedBat = Class('HogNosedBat', Safari, {
        id = 98192,
        rewards = {
            Achievement({id = 11233, criteria = 33128, oneline = true}),
            Pet({id = 1762})
        }
    }),
    JuvenileScuttleback = Class('JuvenileScuttleback', Safari, {
        id = 97283,
        rewards = {
            Achievement({id = 11233, criteria = 33114, oneline = true}),
            Pet({id = 1728})
        }
    }),
    LongEaredOwl = Class('LongEaredOwl', Safari, {
        id = 97118,
        rewards = {
            Achievement({id = 11233, criteria = 33111, oneline = true}),
            Achievement({id = 14729, criteria = 50231}), -- To All the Squirrels ...
            Pet({id = 1713})
        }
    }),
    MistFoxKit = Class('MistFoxKit', Safari, {
        id = 97743,
        rewards = {
            Achievement({id = 11233, criteria = 33124, oneline = true}),
            Pet({id = 1744})
        }
    }),
    MudshellConch = Class('MudshellConch', Safari, {
        id = 98446,
        rewards = {
            Achievement({id = 11233, criteria = 33133, oneline = true}),
            Pet({id = 1776})
        }
    }),
    NorthernHawkOwl = Class('NorthernHawkOwl', Safari, {
        id = 97126,
        rewards = {
            Achievement({id = 11233, criteria = 33112, oneline = true}),
            Pet({id = 1714})
        }
    }),
    OlivetailHare = Class('OlivetailHare', Safari, {
        id = 97294,
        rewards = {
            Achievement({id = 11233, criteria = 33115, oneline = true}),
            Pet({id = 1729})
        }
    }),
    RoseTaipan = Class('RoseTaipan', Safari, {
        id = 97840,
        rewards = {
            Achievement({id = 11233, criteria = 33125, oneline = true}),
            Pet({id = 1749})
        }
    }),
    ShimmeringAquafly = Class('ShimmeringAquafly', Safari, {
        id = 97511,
        rewards = {
            Achievement({id = 11233, criteria = 33117, oneline = true}),
            Pet({id = 1734})
        }
    }),
    SlitheringBrownscale = Class('SlitheringBrownscale', Safari, {
        id = 97542,
        rewards = {
            Achievement({id = 11233, criteria = 33119, oneline = true}),
            Pet({id = 1736})
        }
    }),
    SpiketailBeaver = Class('SpiketailBeaver', Safari, {
        id = 98211,
        rewards = {
            Achievement({id = 11233, criteria = 33129, oneline = true}),
            Pet({id = 1763})
        }
    }),
    SpringStrider = Class('SpringStrider', Safari, {
        id = 97559,
        rewards = {
            Achievement({id = 11233, criteria = 33122, oneline = true}),
            Pet({id = 1739})
        }
    }),
    StormstruckBeaver = Class('StormstruckBeaver', Safari, {
        id = 111172,
        rewards = {
            Achievement({id = 11233, criteria = 33141, oneline = true}),
            Pet({id = 1917})
        }
    }),
    TerrorLarva = Class('TerrorLarva', Safari, {
        id = 97531,
        rewards = {
            Achievement({id = 11233, criteria = 33118, oneline = true}),
            Pet({id = 1735})
        }
    }),
    ThornclawBroodling = Class('ThornclawBroodling', Safari, {
        id = 99528,
        rewards = {
            Achievement({id = 11233, criteria = 33137, oneline = true}),
            Pet({id = 1810})
        }
    }),
    TinyApparition = Class('TinyApparition', Safari, {
        id = 97952,
        rewards = {
            Achievement({id = 11233, criteria = 33126, oneline = true}),
            Achievement({id = 14729, criteria = 50233}), -- To All the Squirrels ...
            Pet({id = 1750})
        }
    }),
    ValeFlitter = Class('ValeFlitter', Safari, {
        id = 97547,
        rewards = {
            Achievement({id = 11233, criteria = 33120, oneline = true}),
            Pet({id = 1737})
        }
    }),
    ViciousBroodling = Class('ViciousBroodling', Safari, {
        id = 99513,
        rewards = {
            Achievement({id = 11233, criteria = 33135, oneline = true}),
            Pet({id = 1807})
        }
    })
}
