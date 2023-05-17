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

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

-- map.nodes[10001000] = ns.node.Dragonrace({
--     label = '{quest:76510}',
--     normal = {nil, nil, nil},
--     advanced = {nil, nil, nil},
--     reverse = {nil, nil, nil},
--     rewards = {
--         Achievement({id = nil, criteria = nil, oneline = true}), -- normal bronze
--         Achievement({id = nil, criteria = nil, oneline = true}), -- normal silver
--         Achievement({id = nil, criteria = nil, oneline = true}), -- normal gold
--         Achievement({id = nil, criteria = nil, oneline = true}), -- advanced bronze
--         Achievement({id = nil, criteria = nil, oneline = true}), -- advanced silver
--         Achievement({id = nil, criteria = nil, oneline = true}), -- advanced gold
--         Achievement({id = nil, criteria = nil, oneline = true}), -- reverse bronze
--         Achievement({id = nil, criteria = nil, oneline = true}), -- reverse silver
--         Achievement({id = nil, criteria = nil, oneline = true}) -- reverse gold
--     }
-- }) -- Plaguelands Plunge
