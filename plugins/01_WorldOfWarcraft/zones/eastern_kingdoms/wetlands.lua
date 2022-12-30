-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 56, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[60004380] = Safari.Cockroach({
    pois = {
        POI({
            26802520, 34005440, 34005480, 34802780, 53204120, 54203420,
            55403040, 56002540, 56803020, 57803520, 58602460, 60004380,
            60004600, 61404660, 62603740, 69603320
        })
    }
}) -- Cockroach

map.nodes[66605020] = Safari.MountainSkunk({
    pois = {
        POI({
            50001780, 51001540, 51802280, 64005200, 64805100, 65604460,
            66205080, 66605020, 66605480, 66804400, 67205240, 67805060,
            68404900, 68604900, 69004960, 69603700, 69804880, 69804980,
            72403940, 73404200
        })
    }
}) -- Mountain Skunk
