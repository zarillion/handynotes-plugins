-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 14, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[16006560] = Safari.Cat({pois = {POI({16006560, 18406760})}}) -- Cat

map.nodes[37604500] = Safari.GrasslandsCottontail({
    pois = {
        POI({
            09204580, 10403880, 12005500, 12406100, 12606080, 15204180,
            15204580, 15205140, 15405160, 15605120, 18403100, 18603080,
            18803740, 18803780, 20801940, 21001960, 21803040, 21803060,
            22403800, 22603800, 24202100, 24404320, 24604340, 25405620,
            25605600, 27402480, 27402900, 27602460, 27602900, 28203640,
            28403680, 28406620, 28606600, 29402740, 29402760, 29602740,
            29602760, 30406600, 30606620, 31203340, 31203380, 31204620,
            31204660, 32205800, 33202780, 33204040, 33204080, 33403740,
            33403760, 33603740, 34003780, 34006620, 34203040, 34203060,
            37404520, 37604500, 38004340, 38004360, 38805780, 38805860,
            39203660, 39403640, 41003580, 41804040, 42004080, 43403820,
            43403860, 43603820, 45004800, 47007000, 47404340, 47404360,
            50206040, 50207260, 50404800, 50405340, 50405360, 50406060,
            50407240, 50604820, 50605340, 50605360, 52203340, 52203360,
            53404220, 53604220, 53803840, 53803860, 55804640, 55804660,
            56206820, 58005200, 59004040, 59004060, 60404320, 60404380,
            61806280, 62005900, 62804860, 63004820, 63405480, 63605500,
            63803660, 64003640, 64403040, 64603040, 64603060, 65006780,
            65606240, 65804060, 66004040, 66404840, 66404860, 66604840,
            71004340, 71204380
        })
    }
}) -- Grasslands Cottontail

map.nodes[47604500] = Safari.PrairieDog({
    pois = {
        POI({
            18802520, 21003360, 22402200, 22602220, 30403960, 31203880,
            35006340, 35805240, 36005260, 37004020, 37206260, 40605440,
            40605460, 42807820, 47604500, 47806940, 47806980, 48004560,
            48205740, 52406240, 52406720, 52606240, 52606740, 53205200,
            55205160, 57003900, 61405300, 61605260, 65404740, 65604740, 65604760
        })
    }
}) -- PrairieDog

map.nodes[47607880] = Safari.Rat({
    pois = {
        POI({
            12403600, 14203380, 19405840, 25202620, 47607880, 48204120,
            49804060, 49804180, 69003520, 69003560
        })
    }
}) -- Rat
