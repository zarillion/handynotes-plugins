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

local map = Map({id = 36, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[36002840] = Safari.Cockroach({
    pois = {
        POI({
            04205180, 10005080, 15004980, 26204940, 29405560, 30804260,
            31205680, 35202620, 36002840, 38403540, 38406800, 47002580,
            48406220, 50406000, 51605480, 63803480, 68403260, 72406580,
            74406560, 75403940, 77404000
        })
    }
}) -- Cockroach

map.nodes[49805820] = Safari.AshViper({
    pois = {
        POI({
            04605220, 06003840, 10005060, 10205020, 16404400, 19206140,
            20805820, 23206440, 23406460, 24005020, 26204920, 26204980,
            26605100, 26805160, 29405540, 29804660, 29805800, 30004600,
            30605060, 30804240, 30804260, 31005680, 32003940, 33602540,
            34205940, 35004740, 35202640, 35202660, 35206600, 35403940,
            36004060, 36202300, 36203420, 37205840, 38203560, 38606800,
            38805780, 40003320, 40203360, 40402720, 40804440, 40805500,
            41003720, 41605940, 41605980, 42003840, 42003860, 42206260,
            43403300, 43405120, 43603320, 43806280, 44805860, 45806100,
            45806300, 46003440, 46203460, 46805420, 48003380, 48005060,
            48406180, 48606140, 48606180, 49005960, 49404100, 49805820,
            50003000, 50203420, 50405200, 50406040, 50406800, 50606020,
            51405440, 51605460, 55404280, 55405800, 56405800, 56802960,
            57603280, 57604420, 57604460, 59002700, 59804340, 60002740,
            60206020, 60403660, 60603660, 61605740, 63604360, 65006400,
            65602700, 68203220, 68402840, 69405380, 71202660, 71207140,
            72404700, 72603960, 74203320, 74605800, 75204000, 75405140,
            77603860, 79205680
        })
    }
}) -- Ash Viper

map.nodes[39405240] = Safari.FireBeetle({
    pois = {
        POI({
            09804640, 16006640, 20405480, 30004600, 31805520, 34403620,
            34803580, 36405260, 36605280, 37605500, 38005400, 39405240,
            39405260, 39605260, 44805540, 44805560, 47805960, 48005920,
            54205800, 55804660, 56004640, 56803600, 60804620, 61005340,
            61005360, 66403000, 68004280, 69805760, 72803000, 76604700,
            77003540, 77203600
        })
    }
}) -- Fire Beetle

map.nodes[54803160] = Safari.LavaBeetle({
    pois = {
        POI({
            07003220, 08003300, 14204400, 17004240, 17004260, 20406020,
            20806000, 25005220, 25605660, 25805620, 26205520, 26206440,
            26206460, 26605680, 26605880, 26805640, 27006140, 27006160,
            27204560, 27404520, 28403220, 29003520, 29003560, 29803000,
            30202840, 30202860, 31404240, 31604240, 31604260, 32604520,
            32804340, 32804360, 34404360, 34604240, 34604260, 34604360,
            36004280, 36604900, 38404240, 38404260, 38604240, 39406000,
            39606000, 40404220, 40604220, 40803440, 41403480, 41603480,
            44006040, 44804740, 44805980, 49005540, 49005560, 49403900,
            49603900, 51203160, 51403780, 52602600, 52803740, 53803460,
            54206540, 54206560, 54402980, 54602960, 54607140, 54803160,
            55002760, 56003120, 57603140, 58203180, 58206020, 58405780,
            58605780, 58807080, 59205740, 59403140, 59603140, 59603160,
            59607280, 60607140, 60607160, 61203240, 61807280, 63806700,
            64604080, 64803980, 65003940, 65203740, 65203760, 66004960,
            66007160, 66203640, 66204940, 66607160, 66804440, 66807140,
            67204820, 67403700, 67404540, 67404860, 67603700, 67604580,
            68404700, 68603680, 68605020, 68803280, 68803440, 68803460,
            68803640, 69004680
        })
    }
}) -- Lava Beetle
