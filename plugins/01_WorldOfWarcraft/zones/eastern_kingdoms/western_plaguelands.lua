-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 22, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[49807780] = Safari.BlackRat({
    pois = {POI({47206760, 49807780, 52607880})}
}) -- Black Rat

map.nodes[43005220] = Safari.Squirrel({
    pois = {POI({32006060, 37606740, 43005220, 50404780})}
}) -- Squirrel
