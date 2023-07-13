-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

-- local Achievement = ns.reward.Achievement

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
--         Achievement({id = 18566, criteria = 10, oneline = true}), -- normal bronze
--         Achievement({id = 18567, criteria = 10, oneline = true}), -- normal silver
--         Achievement({id = 18568, criteria = 10, oneline = true}), -- normal gold
--         Achievement({id = 18569, criteria = 10, oneline = true}), -- advanced bronze
--         Achievement({id = 18570, criteria = 10, oneline = true}), -- advanced silver
--         Achievement({id = 18571, criteria = 10, oneline = true}), -- advanced gold
--         Achievement({id = 18572, criteria = 10, oneline = true}), -- reverse bronze
--         Achievement({id = 18573, criteria = 10, oneline = true}), -- reverse silver
--         Achievement({id = 18574, criteria = 10, oneline = true}) -- reverse gold
--     }
-- }) -- Plaguelands Plunge
