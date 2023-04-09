-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local Class = ns.Class
local L = ns.locale

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 646, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

----------------------------- PORTAL STONE RARES ------------------------------

map.nodes[05505400] = Rare({
    id = 120675,
    quest = nil,
    requires = {
        ns.requirement.Item(146919) -- Portal-Stone: An'thyna
    },
    rewards = {
        Achievement({id = 11841, criteria = 36672}) -- Naxt Victim
    },
    pois = {
        POI({
            32603240, 33203420, 34203420, 34403340, 38203120, 38403180,
            38603160, 38802760, 39202560, 41604640, 42804240, 43404120,
            44204120, 44204200, 44403640, 44404040, 44604080, 44604740,
            44604780, 44803940, 44804000, 45204900, 45205040, 45205200,
            45403580, 45403840, 45805320, 48804420, 48804480, 49204340,
            50201080, 50601060, 51404600, 51604480, 51604580, 51806680,
            52404120, 53201540, 53404140, 53604120, 54001520, 54406740,
            54601340, 54801240, 54806800, 55201380, 55406700, 56206600,
            58404860, 58604580, 58604940, 58804400, 58804480, 58804960,
            59404240, 59404320, 59604220, 61404720, 61804800, 76202480,
            76202640, 76402420, 81005080, 81205040, 81402800, 81802700,
            81802840, 82002900, 82202620, 82602500, 82605060, 82802620,
            82802660, 83404980, 83604920
        })
    },
    ArePoiID = nil
}) -- An'thyna

map.nodes[07505400] = Rare({
    id = 120681,
    quest = nil,
    requires = {
        ns.requirement.Item(146920) -- Portal-Stone: Fel Obliterator
    },
    rewards = {
        Achievement({id = 11841, criteria = 36673}) -- Naxt Victim
    },
    ArePoiID = nil
}) -- Fel Obliterator

map.nodes[09505400] = Rare({
    id = 120665,
    quest = nil,
    requires = {
        ns.requirement.Item(146918) -- Portal-Stone: Force-Commander Xillious
    },
    rewards = {
        Achievement({id = 11841, criteria = 36671}) -- Naxt Victim
    },
    ArePoiID = nil
}) -- Force-Commander Xillious

map.nodes[11505400] = Rare({
    id = 120686,
    quest = nil,
    requires = {
        ns.requirement.Item(146921) -- Portal-Stone: Illisthyndria
    },
    rewards = {
        Achievement({id = 11841, criteria = 36674}) -- Naxt Victim
    },
    ArePoiID = nil
}) -- Illisthyndria

map.nodes[13505400] = Rare({
    id = 120641,
    quest = nil,
    requires = {
        ns.requirement.Item(146917) -- Portal-Stone: Skulguloth
    },
    rewards = {
        Achievement({id = 11841, criteria = 36670}) -- Naxt Victim
    },
    ArePoiID = nil
}) -- Skulguloth

map.nodes[15505400] = Rare({
    id = 120583,
    quest = nil,
    requires = {
        ns.requirement.Item(146916) -- Portal-Stone: Than'otalion
    },
    rewards = {
        Achievement({id = 11841, criteria = 36669}) -- Naxt Victim
    },
    ArePoiID = nil
}) -- Than'otalion

------------------------------- ZONE WIDE RARES -------------------------------

map.nodes[17505400] = Rare({
    id = 121077,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Lambent Felhunter

map.nodes[19505400] = Rare({
    id = 121092,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Anomalous Observer

map.nodes[05505700] = Rare({
    id = 121049,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Baleful Knight-Captain

map.nodes[07505700] = Rare({
    id = 121090,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Demented Shivarra

map.nodes[09505700] = Rare({
    id = 121073,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Deranged Succubus

map.nodes[11505700] = Rare({
    id = 121056,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Malformed Terrorguard

map.nodes[13505700] = Rare({
    id = 121108,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Ruinous Overfiend

map.nodes[15505700] = Rare({
    id = 121051,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Unstable Abyssal

map.nodes[17505700] = Rare({
    id = 121068,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Volatile Imp

map.nodes[19505700] = Rare({
    id = 121088,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Warped Voidlord

-------------------------------------------------------------------------------

map.nodes[60006200] = Rare({
    id = 121124,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Apocron

map.nodes[53977893] = Rare({
    id = 121016,
    quest = 46953,
    rewards = {},
    ArePoiID = 5301
}) -- Aqueux

map.nodes[39602890] = Rare({
    id = 121029,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Brood Mother Nix

map.nodes[78003900] = Rare({
    id = 121046,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Brother Badatin

map.nodes[59002800] = Rare({
    id = 117239,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Brutallus

map.nodes[60975338] = Rare({
    id = 116953,
    quest = 46101,
    rewards = {},
    ArePoiID = 5295
}) -- Corrupted Bonebreaker

map.nodes[4978835] = Rare({
    id = 117136,
    quest = 46097,
    rewards = {},
    ArePoiID = 5291
}) -- Doombringer Zar'thoz

map.nodes[58033184] = Rare({
    id = 117095,
    quest = 46098,
    rewards = {},
    AreaPoiID = 5292,
    pois = {Path({58563253, 58033184, 57583103, 57283032})}
}) -- Dreadblade Annihilator

map.nodes[37237993] = Rare({
    id = 118993,
    quest = 46202,
    rewards = {},
    ArePoiID = 5297,
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
    quest = nil,
    rewards = {},
    ArePoiID = 5306
}) -- Duke Sithizi

map.nodes[52404350] = Rare({
    id = 117086,
    quest = 46093,
    rewards = {},
    ArePoiID = 5287
}) -- Emberfire

map.nodes[64513030] = Rare({
    id = 116166,
    quest = 47068,
    note = L['in_small_cave'],
    rewards = {},
    ArePoiID = 5307,
    pois = {POI({66733459})}
}) -- Eye of Gurgh

map.nodes[58934572] = Rare({
    id = 117093,
    quest = 46099,
    rewards = {},
    ArePoiID = 5293,
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
    ArePoiID = 5296
}) -- Felcaller Zelthae

map.nodes[39194209] = Rare({
    id = 117091,
    quest = 46095,
    rewards = {},
    ArePoiID = 5289
}) -- Felmaw Emberfiend

map.nodes[40415969] = Rare({
    id = 120998,
    quest = 46951,
    note = L['in_small_cave'],
    rewards = {},
    ArePoiID = 5300,
    pois = {POI({39206019})}
}) -- Flllurlokkr

map.nodes[77782364] = Rare({
    id = 121037,
    quest = nil,
    rewards = {},
    ArePoiID = 5303
}) -- Grossir

map.nodes[61004400] = Rare({
    id = 119718,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Imp Mother Bruva

map.nodes[62163821] = Rare({
    id = 117089,
    quest = 46096, -- 47133
    rewards = {},
    ArePoiID = nil
}) -- Inquisitor Chillbane

map.nodes[41001600] = Rare({
    id = 121107,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Lady Eldrathe

map.nodes[44645318] = Rare({
    id = 119629,
    quest = 46304,
    rewards = {ns.reward.Mount({item = 142233, id = 931})},
    ArePoiID = 5298
}) -- Lord Hel'Nurath

map.nodes[56002730] = Rare({
    id = 117141,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Malgrazoth

map.nodes[60002700] = Rare({
    id = 117303,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Malificus

map.nodes[42324284] = Rare({
    id = 117094,
    quest = 46092, -- 47133
    rewards = {},
    ArePoiID = nil
}) -- Malorus the Soulkeeper

map.nodes[56985648] = Rare({
    id = 117096,
    quest = 46094,
    rewards = {},
    ArePoiID = 5288
}) -- Potionmaster Gloop

map.nodes[67482957] = Rare({
    id = 117140,
    quest = 46091,
    rewards = {},
    ArePoiID = 5285,
    pois = {
        Path({
            69932924, 69262927, 68542941, 68012948, 67482957, 66952962,
            66563005, 66173037, 65813073, 65553116, 65223159, 64763190
        })
    }
}) -- Salethan the Broodwalker

map.nodes[89603360] = Rare({
    id = 117470,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Si'vash

map.nodes[32006000] = Rare({
    id = 121112,
    quest = nil,
    rewards = {},
    ArePoiID = nil
}) -- Somber Dawn

map.nodes[49134792] = Rare({
    id = 117090,
    quest = 46100,
    rewards = {},
    ArePoiID = 5294
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

map.nodes[28306040] = HiddenWyrmtongueCache({devnote = '1'})
map.nodes[29406010] = HiddenWyrmtongueCache({devnote = '2'})
map.nodes[30106690] = HiddenWyrmtongueCache({devnote = '3'})
map.nodes[30705780] = HiddenWyrmtongueCache({devnote = '4'})
map.nodes[30903320] = HiddenWyrmtongueCache({devnote = '5'})
map.nodes[31004960] = HiddenWyrmtongueCache({devnote = '6'})
map.nodes[31103210] = HiddenWyrmtongueCache({devnote = '7'})
map.nodes[32903220] = HiddenWyrmtongueCache({devnote = '8'})
map.nodes[33805400] = HiddenWyrmtongueCache({devnote = '9'})
map.nodes[36602430] = HiddenWyrmtongueCache({devnote = '10'})
map.nodes[36797162] = HiddenWyrmtongueCache()
map.nodes[37806130] = HiddenWyrmtongueCache({devnote = '12'})
map.nodes[37904290] = HiddenWyrmtongueCache({devnote = '13'})
map.nodes[38613456] = HiddenWyrmtongueCache({
    note = L['in_small_cave'],
    pois = {POI({39672974})}
})
map.nodes[39045826] = HiddenWyrmtongueCache()
map.nodes[40106110] = HiddenWyrmtongueCache({devnote = '16'})
map.nodes[40607290] = HiddenWyrmtongueCache({devnote = '17'})
map.nodes[41205120] = HiddenWyrmtongueCache({devnote = '18'})
map.nodes[41303650] = HiddenWyrmtongueCache({devnote = '19'})
map.nodes[41603460] = HiddenWyrmtongueCache({devnote = '22'})
map.nodes[42001580] = HiddenWyrmtongueCache({devnote = '23'})
map.nodes[42006710] = HiddenWyrmtongueCache({devnote = '24'})
map.nodes[42104280] = HiddenWyrmtongueCache({devnote = '25'})
map.nodes[42906200] = HiddenWyrmtongueCache({devnote = '26'})
map.nodes[43402660] = HiddenWyrmtongueCache({devnote = '28'})
map.nodes[43404690] = HiddenWyrmtongueCache({devnote = '29'})
map.nodes[43505220] = HiddenWyrmtongueCache({devnote = '30'})
map.nodes[44623358] = HiddenWyrmtongueCache()
map.nodes[45704680] = HiddenWyrmtongueCache({devnote = '33'})
map.nodes[45906380] = HiddenWyrmtongueCache({devnote = '34'})
map.nodes[46044344] = HiddenWyrmtongueCache()
map.nodes[46205060] = HiddenWyrmtongueCache({devnote = '37'})
map.nodes[47416695] = HiddenWyrmtongueCache()
map.nodes[47494686] = HiddenWyrmtongueCache()
map.nodes[47603470] = HiddenWyrmtongueCache({devnote = '41'})
map.nodes[48113412] = HiddenWyrmtongueCache()
map.nodes[48263705] = HiddenWyrmtongueCache()
map.nodes[49001870] = HiddenWyrmtongueCache({devnote = '44'})
map.nodes[49804650] = HiddenWyrmtongueCache({devnote = '46'})
map.nodes[50324990] = HiddenWyrmtongueCache()
map.nodes[50805970] = HiddenWyrmtongueCache({devnote = '48'})
map.nodes[51707050] = HiddenWyrmtongueCache({devnote = '49'})
map.nodes[51907700] = HiddenWyrmtongueCache({devnote = '50'})
map.nodes[52104140] = HiddenWyrmtongueCache({devnote = '52'})
map.nodes[52302990] = HiddenWyrmtongueCache({devnote = '53'})
map.nodes[52405940] = HiddenWyrmtongueCache({devnote = '54'})
map.nodes[53008180] = HiddenWyrmtongueCache({devnote = '58'})
map.nodes[53401940] = HiddenWyrmtongueCache({devnote = '59'})
map.nodes[53602790] = HiddenWyrmtongueCache({devnote = '60'})
map.nodes[53604560] = HiddenWyrmtongueCache({devnote = '61'})
map.nodes[54607400] = HiddenWyrmtongueCache({devnote = '62'})
map.nodes[56306510] = HiddenWyrmtongueCache({devnote = '63'})
map.nodes[57041407] = HiddenWyrmtongueCache()
map.nodes[56975688] = HiddenWyrmtongueCache({note = L['in_horde_ship']})
map.nodes[55225973] = HiddenWyrmtongueCache()
map.nodes[57255290] = HiddenWyrmtongueCache()
map.nodes[57434353] = HiddenWyrmtongueCache()
map.nodes[58033095] = HiddenWyrmtongueCache()
map.nodes[58005600] = HiddenWyrmtongueCache({devnote = '69'})
map.nodes[58155875] = HiddenWyrmtongueCache({
    note = L['in_cave'],
    pois = {POI({55136318})}
})
map.nodes[60702830] = HiddenWyrmtongueCache({devnote = '71'})
map.nodes[60901170] = HiddenWyrmtongueCache({devnote = '72'})
map.nodes[60985844] = HiddenWyrmtongueCache()
map.nodes[61414996] = HiddenWyrmtongueCache()
map.nodes[61424308] = HiddenWyrmtongueCache()
map.nodes[61733148] = HiddenWyrmtongueCache()
map.nodes[62003910] = HiddenWyrmtongueCache({devnote = '80'})
map.nodes[62445501] = HiddenWyrmtongueCache({note = L['in_horde_ship']})
map.nodes[62855388] = HiddenWyrmtongueCache({note = L['in_horde_ship']})
map.nodes[62905260] = HiddenWyrmtongueCache({devnote = '82'})
map.nodes[63002480] = HiddenWyrmtongueCache({devnote = '83'})
map.nodes[63305170] = HiddenWyrmtongueCache({devnote = '84'})
map.nodes[63903090] = HiddenWyrmtongueCache({
    note = L['in_small_cave'],
    pois = {POI({66733459})}
})
map.nodes[64201800] = HiddenWyrmtongueCache({devnote = '86'})
map.nodes[64704540] = HiddenWyrmtongueCache({devnote = '87'})
map.nodes[67904210] = HiddenWyrmtongueCache({devnote = '89'})
map.nodes[68401980] = HiddenWyrmtongueCache({devnote = '90'})
map.nodes[69503800] = HiddenWyrmtongueCache({devnote = '92'})
map.nodes[70101900] = HiddenWyrmtongueCache({devnote = '93'})
map.nodes[70703190] = HiddenWyrmtongueCache({devnote = '94'})
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
map.nodes[75903600] = HiddenWyrmtongueCache({devnote = '101'})
map.nodes[79003730] = HiddenWyrmtongueCache({devnote = '102'})
map.nodes[82203130] = HiddenWyrmtongueCache({devnote = '103'})
map.nodes[82534592] = HiddenWyrmtongueCache()
map.nodes[85505410] = HiddenWyrmtongueCache({devnote = '107'})
map.nodes[85802990] = HiddenWyrmtongueCache({devnote = '108'})

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
