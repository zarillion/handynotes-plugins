-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local Class = ns.Class
local L = ns.locale

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 646, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

----------------------------- PORTAL STONE RARES ------------------------------

local SentinaxArea = {
    Path({ns.poi.Circle({origin = 43434092, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 50584415, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 44384828, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 53186450, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 57414520, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 82514655, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 80352715, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 53091437, radius = 1.5, segments = 12})}),
    Path({ns.poi.Circle({origin = 37382506, radius = 1.5, segments = 12})})
}

map.nodes[05505400] = Rare({
    id = 120675,
    quest = nil,
    note = format(L['sentinax_rare_note'], 120675, 146907, 146913, 146919,
        146913),
    requires = {
        ns.requirement.Item(146919) -- Portal-Stone: An'thyna
    },
    rewards = {
        Achievement({id = 11841, criteria = 36672}) -- Naxt Victim
    },
    pois = SentinaxArea
}) -- An'thyna

map.nodes[07505400] = Rare({
    id = 120681,
    quest = nil,
    note = format(L['sentinax_rare_note'], 120681, 146908, 146914, 146920,
        146914),
    requires = {
        ns.requirement.Item(146920) -- Portal-Stone: Fel Obliterator
    },
    rewards = {
        Achievement({id = 11841, criteria = 36673}) -- Naxt Victim
    },
    pois = SentinaxArea
}) -- Fel Obliterator

map.nodes[09505400] = Rare({
    id = 120665,
    quest = nil,
    note = format(L['sentinax_rare_note'], 120665, 146906, 146912, 146918,
        146912),
    requires = {
        ns.requirement.Item(146918) -- Portal-Stone: Force-Commander Xillious
    },
    rewards = {
        Achievement({id = 11841, criteria = 36671}) -- Naxt Victim
    },
    pois = SentinaxArea
}) -- Force-Commander Xillious

map.nodes[11505400] = Rare({
    id = 120686,
    quest = nil,
    note = format(L['sentinax_rare_note'], 120686, 146909, 146915, 146921,
        146915),
    requires = {
        ns.requirement.Item(146921) -- Portal-Stone: Illisthyndria
    },
    rewards = {
        Achievement({id = 11841, criteria = 36674}) -- Naxt Victim
    },
    pois = SentinaxArea
}) -- Illisthyndria

map.nodes[13505400] = Rare({
    id = 120641,
    quest = nil,
    note = format(L['sentinax_rare_note'], 120641, 146905, 146911, 146917,
        146911),
    requires = {
        ns.requirement.Item(146917) -- Portal-Stone: Skulguloth
    },
    rewards = {
        Achievement({id = 11841, criteria = 36670}) -- Naxt Victim
    },
    pois = SentinaxArea
}) -- Skulguloth

map.nodes[15505400] = Rare({
    id = 120583,
    quest = nil,
    note = format(L['sentinax_rare_note'], 120583, 146903, 146910, 146916,
        146910),
    requires = {
        ns.requirement.Item(146916) -- Portal-Stone: Than'otalion
    },
    rewards = {
        Achievement({id = 11841, criteria = 36669}) -- Naxt Victim
    },
    pois = SentinaxArea
}) -- Than'otalion

------------------------ UNSTABLE NETHER PORTAL RARES -------------------------

-- map.nodes[17505400] = Rare({id = 121077}) -- Lambent Felhunter
-- map.nodes[19505400] = Rare({id = 121092}) -- Anomalous Observer
-- map.nodes[05505700] = Rare({id = 121049}) -- Baleful Knight-Captain
-- map.nodes[07505700] = Rare({id = 121090}) -- Demented Shivarra
-- map.nodes[09505700] = Rare({id = 121073}) -- Deranged Succubus
-- map.nodes[11505700] = Rare({id = 121056}) -- Malformed Terrorguard
-- map.nodes[13505700] = Rare({id = 121108}) -- Ruinous Overfiend
-- map.nodes[15505700] = Rare({id = 121051}) -- Unstable Abyssal
-- map.nodes[17505700] = Rare({id = 121068}) -- Volatile Imp
-- map.nodes[19505700] = Rare({id = 121088}) -- Warped Voidlord

-------------------------------- WORLD BOSSES ---------------------------------

map.nodes[60006200] = Rare({
    id = 121124,
    quest = 47084,
    note = L['broken_shore_worldboss_note'],
    rewards = {
        Achievement({id = 11786, criteria = 36553}) -- Terrors of the Shore
    },
    areaPOI = nil
}) -- Apocron -- World Boss

map.nodes[59002800] = Rare({
    id = 117239,
    quest = 47085,
    note = L['broken_shore_worldboss_note'],
    rewards = {
        Achievement({id = 11786, criteria = 36550}) -- Terrors of the Shore
    },
    areaPOI = nil
}) -- Brutallus -- World Boss

map.nodes[60002700] = Rare({
    id = 117303,
    quest = 47086,
    note = L['broken_shore_worldboss_note'],
    rewards = {
        Achievement({id = 11786, criteria = 36553}) -- Terrors of the Shore
    },
    areaPOI = nil
}) -- Malificus -- World Boss

map.nodes[89603360] = Rare({
    id = 117470,
    quest = 47090,
    note = L['broken_shore_worldboss_note'],
    rewards = {
        Achievement({id = 11786, criteria = 36552}) -- Terrors of the Shore
    },
    areaPOI = nil
}) -- Si'vash -- World Boss

-------------------------------------------------------------------------------

map.nodes[53977893] = Rare({
    id = 121016,
    quest = 46953,
    rewards = {},
    areaPOI = 5301
}) -- Aqueux

map.nodes[39343390] = Rare({
    id = 121029,
    quest = 46965,
    note = L['in_small_cave'],
    rewards = {},
    pois = {POI({39672974})},
    areaPOI = 5302
}) -- Brood Mother Nix

map.nodes[78613939] = Rare({
    id = 121046,
    quest = 47001,
    rewards = {},
    areaPOI = 5308
}) -- Brother Badatin

map.nodes[60975338] = Rare({
    id = 116953,
    quest = 46101,
    rewards = {},
    areaPOI = 5295
}) -- Corrupted Bonebreaker

map.nodes[49783835] = Rare({
    id = 117136,
    quest = 46097,
    rewards = {},
    areaPOI = 5291
}) -- Doombringer Zar'thoz

map.nodes[58033184] = Rare({
    id = 117095,
    quest = 46098,
    rewards = {},
    areaPOI = 5292,
    pois = {Path({58563253, 58033184, 57583103, 57283032})}
}) -- Dreadblade Annihilator

map.nodes[37237993] = Rare({
    id = 118993,
    quest = 46202,
    rewards = {},
    areaPOI = 5297,
    pois = {
        Path({
            42687793, 42077747, 41517762, 41237804, 40927854, 40467879,
            40007903, 39657856, 39587805, 39397751, 39107704, 38697671,
            38237638, 37637626, 37147651, 36817689, 36677741, 36657796,
            36667851, 36657904, 36857952, 37237993, 37768021, 38318047,
            38838063, 39358063, 39908062, 40488059, 41028059, 41538069,
            42028062, 42498033, 42927997, 43467961, 43997960, 44487973,
            44977991, 45477976, 45597916, 45127882, 44537892, 43967904,
            43427923, 42957894, 42817836, 42537776
        })
    }
}) -- Dreadeye

map.nodes[78162785] = Rare({
    id = 121134,
    quest = 47036,
    rewards = {},
    areaPOI = 5306
}) -- Duke Sithizi

map.nodes[52064391] = Rare({
    id = 117086,
    quest = 46093,
    rewards = {},
    areaPOI = 5287
}) -- Emberfire

map.nodes[64513030] = Rare({
    id = 116166,
    quest = 47068,
    note = L['in_small_cave'],
    rewards = {},
    areaPOI = 5307,
    pois = {POI({66733459})}
}) -- Eye of Gurgh

map.nodes[58934572] = Rare({
    id = 117093,
    quest = 46099,
    rewards = {},
    areaPOI = 5293,
    pois = {
        Path({
            56575013, 56884971, 57254916, 57574871, 57854824, 58054777,
            58374729, 58634684, 58794629, 58934572, 58954517, 58894464,
            58844410, 58604366, 58404316, 58194267, 58024212, 57904162
        })
    }
}) -- Felbringer Xar'thok

map.nodes[89553085] = Rare({
    id = 117103,
    quest = 46102,
    rewards = {},
    areaPOI = 5296
}) -- Felcaller Zelthae

map.nodes[39194209] = Rare({
    id = 117091,
    quest = 46095,
    rewards = {},
    areaPOI = 5289
}) -- Felmaw Emberfiend

map.nodes[40415969] = Rare({
    id = 120998,
    quest = 46951,
    note = L['in_small_cave'],
    rewards = {},
    areaPOI = 5300,
    pois = {POI({39206019})}
}) -- Flllurlokkr

map.nodes[77782364] = Rare({
    id = 121037,
    quest = 46995,
    rewards = {},
    areaPOI = 5303
}) -- Grossir

map.nodes[60434503] = Rare({
    id = 119718,
    quest = 46313,
    rewards = {},
    areaPOI = 5299
}) -- Imp Mother Bruva

map.nodes[62163821] = Rare({
    id = 117089,
    quest = 46096,
    rewards = {},
    areaPOI = 5290
}) -- Inquisitor Chillbane

map.nodes[41801667] = Rare({
    id = 121107,
    quest = 47026,
    rewards = {},
    pois = {Path({41261661, 41801667, 42311669, 42801690})},
    areaPOI = 5304
}) -- Lady Eldrathe

map.nodes[44645318] = Rare({
    id = 119629,
    quest = 46304,
    rewards = {ns.reward.Mount({item = 142233, id = 931})},
    areaPOI = 5298
}) -- Lord Hel'Nurath

map.nodes[59752731] = Rare({
    id = 117141,
    quest = 46090,
    note = L['in_small_cave'],
    rewards = {},
    pois = {POI({56462723})},
    areaPOI = 5284
}) -- Malgrazoth

map.nodes[42324284] = Rare({
    id = 117094,
    quest = 46092,
    rewards = {},
    areaPOI = 5286
}) -- Malorus the Soulkeeper

map.nodes[56985648] = Rare({
    id = 117096,
    quest = 46094,
    rewards = {},
    areaPOI = 5288
}) -- Potionmaster Gloop

map.nodes[67482957] = Rare({
    id = 117140,
    quest = 46091,
    rewards = {},
    areaPOI = 5285,
    pois = {
        Path({
            69932924, 69262927, 68542941, 68012948, 67482957, 66952962,
            66563005, 66173037, 65813073, 65553116, 65223159, 64763190
        })
    }
}) -- Salethan the Broodwalker

map.nodes[32006000] = Rare({
    id = 121112,
    quest = 47028,
    rewards = {},
    pois = {
        Path({
            28736141, 29116108, 29146031, 29135971, 29225917, 29375865,
            29875835, 30375847, 30775896, 31025946, 31585985, 32055964,
            32325921, 32545872, 32905823, 32955758, 32815703, 32505661,
            31945635, 31325624, 30785632, 30135631, 29555605, 29035628,
            28555661, 28145716, 27915780, 27875859, 27795928, 27505995,
            27276041, 27066105, 27236157, 27716174, 28286154, 28736141
        })
    },
    areaPOI = 5305
}) -- Somber Dawn

map.nodes[49134792] = Rare({
    id = 117090,
    quest = 46100,
    rewards = {},
    areaPOI = 5294
}) -- Xorogun the Flamecarver

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/guide/comprehensive-broken-shore-guide-5001#treasures

local HiddenWyrmtongueCache = Class('HiddenWyrmtongueCache', ns.node.Node, {
    label = L['hidden_wyrmtongue_cache_label'],
    icon = 'chest_gy',
    rewards = {
        ns.reward.Currency({id = 1226, note = '40-60'}), -- Nethershard
        ns.reward.Currency({id = 1342, note = '2-4'}), -- Legionfall War Supplies
        ns.reward.Currency({id = 1220, note = '30-50'}) -- Order Resources
    }
})

map.nodes[28416046] = HiddenWyrmtongueCache()
map.nodes[29406010] = HiddenWyrmtongueCache({devnote = '2'})
map.nodes[29996697] = HiddenWyrmtongueCache()
map.nodes[30655771] = HiddenWyrmtongueCache()
map.nodes[30923319] = HiddenWyrmtongueCache()
map.nodes[30894947] = HiddenWyrmtongueCache({note = L['in_water']})
map.nodes[31103210] = HiddenWyrmtongueCache({devnote = '7'})
map.nodes[32903226] = HiddenWyrmtongueCache()
map.nodes[33805400] = HiddenWyrmtongueCache({devnote = '9'})
map.nodes[36542434] = HiddenWyrmtongueCache()
map.nodes[36797162] = HiddenWyrmtongueCache()
map.nodes[37806130] = HiddenWyrmtongueCache({devnote = '12'})
map.nodes[37944291] = HiddenWyrmtongueCache()
map.nodes[38613456] = HiddenWyrmtongueCache({
    note = L['in_small_cave'],
    pois = {POI({39672974})}
})
map.nodes[39045826] = HiddenWyrmtongueCache()
map.nodes[40106110] = HiddenWyrmtongueCache({devnote = '16'})
map.nodes[40637287] = HiddenWyrmtongueCache()
map.nodes[41115122] = HiddenWyrmtongueCache()
map.nodes[41373653] = HiddenWyrmtongueCache()
map.nodes[41603460] = HiddenWyrmtongueCache({devnote = '22'})
map.nodes[42001580] = HiddenWyrmtongueCache({devnote = '23'})
map.nodes[42006718] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({45576703})}
})
map.nodes[41994277] = HiddenWyrmtongueCache()
map.nodes[42796199] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({45576703})}
})
map.nodes[43402660] = HiddenWyrmtongueCache({devnote = '28'})
map.nodes[43354694] = HiddenWyrmtongueCache()
map.nodes[43505220] = HiddenWyrmtongueCache({devnote = '30'})
map.nodes[44623358] = HiddenWyrmtongueCache()
map.nodes[45794678] = HiddenWyrmtongueCache()
map.nodes[45876372] = HiddenWyrmtongueCache()
map.nodes[46044344] = HiddenWyrmtongueCache()
map.nodes[46175068] = HiddenWyrmtongueCache()
map.nodes[47416695] = HiddenWyrmtongueCache()
map.nodes[47494686] = HiddenWyrmtongueCache()
map.nodes[47603470] = HiddenWyrmtongueCache({devnote = '41'})
map.nodes[48113412] = HiddenWyrmtongueCache()
map.nodes[48263705] = HiddenWyrmtongueCache()
map.nodes[48881860] = HiddenWyrmtongueCache()
map.nodes[49844639] = HiddenWyrmtongueCache()
map.nodes[50324990] = HiddenWyrmtongueCache()
map.nodes[50805970] = HiddenWyrmtongueCache({devnote = '48'})
map.nodes[51707050] = HiddenWyrmtongueCache({devnote = '49'})
map.nodes[51907700] = HiddenWyrmtongueCache({
    note = L['in_water'],
    devnote = '50'
})
map.nodes[52014149] = HiddenWyrmtongueCache()
map.nodes[52252989] = HiddenWyrmtongueCache()
map.nodes[52405940] = HiddenWyrmtongueCache({devnote = '54'})
map.nodes[53008180] = HiddenWyrmtongueCache({
    note = L['in_water'],
    devnote = '58'
})
map.nodes[53321944] = HiddenWyrmtongueCache()
map.nodes[53542790] = HiddenWyrmtongueCache()
map.nodes[53604560] = HiddenWyrmtongueCache({devnote = '61'})
map.nodes[54607400] = HiddenWyrmtongueCache({
    note = L['in_water'],
    devnote = '62'
})
map.nodes[56306510] = HiddenWyrmtongueCache({devnote = '63'})
map.nodes[57041407] = HiddenWyrmtongueCache()
map.nodes[56975688] = HiddenWyrmtongueCache({note = L['in_horde_ship']})
map.nodes[55225973] = HiddenWyrmtongueCache()
map.nodes[57255290] = HiddenWyrmtongueCache()
map.nodes[57434353] = HiddenWyrmtongueCache()
map.nodes[58033095] = HiddenWyrmtongueCache()
map.nodes[58015611] = HiddenWyrmtongueCache({
    note = L['in_small_cave'],
    pois = {POI({58525411})}
})
map.nodes[58155875] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({55136318})}
})
map.nodes[60702845] = HiddenWyrmtongueCache({
    note = L['in_small_cave'],
    pois = {POI({56462723})}
})
map.nodes[60811167] = HiddenWyrmtongueCache()
map.nodes[60985844] = HiddenWyrmtongueCache()
map.nodes[61414996] = HiddenWyrmtongueCache()
map.nodes[61424308] = HiddenWyrmtongueCache()
map.nodes[61733148] = HiddenWyrmtongueCache()
map.nodes[62003910] = HiddenWyrmtongueCache({devnote = '80'})
map.nodes[62445501] = HiddenWyrmtongueCache({note = L['in_horde_ship']})
map.nodes[62855388] = HiddenWyrmtongueCache({note = L['in_horde_ship']})
map.nodes[62905260] = HiddenWyrmtongueCache({devnote = '82'})
map.nodes[63002480] = HiddenWyrmtongueCache({devnote = '83'})
map.nodes[63215175] = HiddenWyrmtongueCache({note = L['in_water']})
map.nodes[63903090] = HiddenWyrmtongueCache({
    note = L['in_small_cave'],
    pois = {POI({66733459})}
})
map.nodes[64331808] = HiddenWyrmtongueCache()
map.nodes[64694543] = HiddenWyrmtongueCache()
map.nodes[67904210] = HiddenWyrmtongueCache({devnote = '89'})
map.nodes[68371966] = HiddenWyrmtongueCache()
map.nodes[70003756] = HiddenWyrmtongueCache()
map.nodes[70021911] = HiddenWyrmtongueCache()
map.nodes[70723177] = HiddenWyrmtongueCache()
map.nodes[71624155] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({76203977})}
})
map.nodes[72004070] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({76203977})}
})
map.nodes[72803830] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({76203977})}
})
map.nodes[73803650] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({76203977})}
})
map.nodes[74642968] = HiddenWyrmtongueCache()
map.nodes[75993590] = HiddenWyrmtongueCache()
map.nodes[78933723] = HiddenWyrmtongueCache()
map.nodes[82343119] = HiddenWyrmtongueCache()
map.nodes[82534592] = HiddenWyrmtongueCache()
map.nodes[85415397] = HiddenWyrmtongueCache()
map.nodes[85802990] = HiddenWyrmtongueCache({devnote = '108'})
map.nodes[69423802] = HiddenWyrmtongueCache()
map.nodes[49067398] = HiddenWyrmtongueCache({
    note = L['in_water'],
    pois = {POI({49887333})}
})
map.nodes[58927298] = HiddenWyrmtongueCache({note = L['in_water']})
map.nodes[61923303] = HiddenWyrmtongueCache()

-------------------------------------------------------------------------------
-------------------------- BRINGING HOME THE BEACON ---------------------------
-------------------------------------------------------------------------------

local Sentinax = Class('Sentinax', Collectible, {
    icon = 133267,
    requires = ns.requirement.Quest(46935), -- The Shadow of the Sentinax
    group = ns.groups.BRINGING_HOME_THE_BEACON,
    note = L['bringing_home_the_beacon_note']
})

-- areaPOI is in place for (possibly) altering The Sentinax tooltip on hover

map.nodes[43434092] = Sentinax({
    areaPOI = 5252,
    rewards = {Achievement({id = 11802, criteria = 36652})}
}) -- Shadow Fracture

map.nodes[50584415] = Sentinax({
    areaPOI = 5254,
    rewards = {Achievement({id = 11802, criteria = 36661})}
}) -- Soul Ruin

map.nodes[44384828] = Sentinax({
    areaPOI = 5255,
    rewards = {Achievement({id = 11802, criteria = 36662})}
}) -- Dark Stockade

map.nodes[53186450] = Sentinax({
    areaPOI = 5256,
    rewards = {Achievement({id = 11802, criteria = 36663})}
}) -- Coast of Anguish

map.nodes[57414520] = Sentinax({
    areaPOI = 5257,
    rewards = {Achievement({id = 11802, criteria = 36664})}
}) -- Garrison of the Fel

map.nodes[82514655] = Sentinax({
    areaPOI = 5258,
    rewards = {Achievement({id = 11802, criteria = 36665})}
}) -- Felfire Pass

map.nodes[80352715] = Sentinax({
    areaPOI = 5259,
    rewards = {Achievement({id = 11802, criteria = 36666})}
}) -- Felrage Strand

map.nodes[53091437] = Sentinax({
    areaPOI = 5260,
    rewards = {Achievement({id = 11802, criteria = 36667})}
}) -- Crescent Ruins

map.nodes[37382506] = Sentinax({
    areaPOI = 5261,
    rewards = {Achievement({id = 11802, criteria = 36668})}
}) -- The Creeping Grotto
