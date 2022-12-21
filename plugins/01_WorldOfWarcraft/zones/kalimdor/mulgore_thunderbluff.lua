-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 7, settings = true})
local thunderbluff = Map({id = 88, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[45404440] = Safari.GazelleFawn({
    pois = {
        POI({
            32402360, 32602400, 33404240, 33404260, 34003080, 34004540,
            34004560, 34005140, 34005160, 34807680, 35803840, 35803880,
            36405020, 36605000, 37003420, 37006340, 37006380, 37404500,
            37405620, 37604440, 37604460, 37605580, 37607040, 37607060,
            38406120, 39403820, 39403860, 39603820, 40004920, 40005380,
            40201160, 40201900, 40201960, 40401120, 41005900, 41006700,
            42205360, 42404260, 42604320, 42605340, 42605360, 43801780,
            44003840, 44203860, 44401120, 44401160, 44406940, 44406980,
            44606940, 44606960, 45404440, 45404460, 45602880, 45604440,
            45604460, 46804880, 47001960, 47401940, 47403980, 47603980,
            48203460, 48403440, 48601360, 48603420, 48806860, 49001340,
            49006840, 49602600, 50004340, 50204360, 51203180, 51401180,
            51406640, 51406660, 51601140, 51601160, 51603700, 51606640,
            51606700, 53001700, 53002400, 53406180, 53602800, 53602880,
            54406900, 54604620, 54606920, 54803440, 54803460, 55004680,
            55405620, 55605620, 56002740, 56002760, 58006300, 58006760,
            58405040, 58405060, 59602440, 61405800, 61605820, 62806600, 66606100
        })
    }
}) -- Gazelle Fawn
