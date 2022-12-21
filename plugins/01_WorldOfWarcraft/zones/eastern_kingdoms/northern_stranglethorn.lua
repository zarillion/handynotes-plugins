-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 50, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[49004340] = Safari.Beetle({
    pois = {
        POI({
            37204720, 40205520, 40407820, 42204940, 42407720, 43603240,
            44004220, 44007680, 44604200, 44803460, 45203680, 45804260,
            46005560, 46005920, 46601920, 47205260, 47604960, 47605880,
            47802000, 47804940, 48003640, 48201380, 48601880, 48604640,
            48604660, 48606540, 48803100, 49004340, 49804760, 50005180,
            50005660, 50402520, 51405000, 51602760, 55403820, 56004020,
            57202760, 57808080, 58207620, 58207800, 58208340, 58404700,
            58407660, 58802920, 58804320, 59408540, 59408560, 59608540,
            60202100, 60208780, 60407740, 60607760, 61408680, 61608680,
            62007820, 62208120, 62608100, 62808040, 63007780, 63008600,
            63402920, 63402960, 63403120
        })
    }
}) -- Beetle

map.nodes[41804000] = Safari.CrimsonMoth({
    pois = {
        POI({
            38803980, 38804220, 39003740, 39003820, 39203520, 39204080,
            39603680, 39803620, 39803760, 39803860, 40004300, 40004360,
            40404000, 40604380, 40803420, 40803680, 40803800, 41004040,
            41004060, 41203620, 41204220, 41403920, 41603660, 41803440,
            41803460, 41803860, 41804000, 41804160, 42203600, 42404260,
            42603740, 42603760, 42604000, 42804060, 43004340, 43204420,
            43603940, 43803960, 43804320, 44004220, 44204060, 44604360
        })
    }
}) -- Crimson Moth

map.nodes[63603400] = Safari.ForestSpiderling({
    pois = {
        POI({
            33202900, 39603720, 43203880, 44804220, 47006260, 47404120,
            47605280, 48803000, 49601540, 51406920, 52406800, 53601800,
            56206200, 58403200, 58406040, 61003900, 63003760, 63603400
        })
    }
}) -- Forest Spiderling
