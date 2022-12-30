-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 95, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[44003860] = Safari.Larva({
    pois = {
        POI({
            24002000, 24401460, 24601440, 24601460, 27203860, 27403140,
            28001460, 28604920, 29204700, 30202540, 33004500, 33203040,
            33203060, 35002040, 35002060, 38601680, 40806920, 42405200,
            43803840, 44003860, 44202040, 44402060, 44602080, 45203140,
            45203160, 47203500, 47605340, 48404380, 48604380, 52201920,
            52804400, 55005320, 55205360, 55406140, 55606140, 60004960,
            60405800, 76803240, 78402140
        })
    }
}) -- Larva

map.nodes[39203680] = Safari.Maggot({
    pois = {
        POI({
            28007880, 28008140, 28208160, 29007560, 29008360, 29008600,
            30408300, 30607880, 30608920, 32808560, 34408820, 35808640,
            37006720, 37404600, 37404760, 37406260, 37604780, 38204480,
            38403720, 38404140, 38404160, 38407700, 38607700, 39006100,
            39203420, 39203680, 39204340, 39403120, 39403280, 39404000,
            39603260, 40202960, 40402200, 40402940
        })
    }
}) -- Maggot
