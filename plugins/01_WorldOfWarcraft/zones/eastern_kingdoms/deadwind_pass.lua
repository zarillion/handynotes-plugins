-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map

local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 42, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[46007140] = Safari.RestlessShadeling({
    pois = {
        POI({
            41206480, 41406820, 41407300, 41407360, 41606820, 41607320,
            41607360, 41806320, 41806600, 41807600, 42407140, 42407200,
            42606440, 42606460, 42607160, 42807000, 43007560, 43407100,
            43407360, 43607040, 43607060, 43807380, 44207460, 45207200,
            45407800, 45607800, 46007140, 46007160, 46407880, 46607880,
            46807560, 47007540, 50407900, 50607900, 51607920, 53009080,
            53408040, 53408060, 53608060, 54207840, 54207860, 54208520,
            54407640, 54408020, 54408780, 54607620, 54608040, 54608060,
            54608280, 54609100, 54807400, 54807800
        })
    }
}) -- Restless Shadeling

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = ns.node.Dragonrace({
    label = '{quest:76380}',
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 18566, criteria = 5, oneline = true}), -- normal bronze
        Achievement({id = 18567, criteria = 5, oneline = true}), -- normal silver
        Achievement({id = 18568, criteria = 5, oneline = true}), -- normal gold
        Achievement({id = 18569, criteria = 5, oneline = true}), -- advanced bronze
        Achievement({id = 18570, criteria = 5, oneline = true}), -- advanced silver
        Achievement({id = 18571, criteria = 5, oneline = true}), -- advanced gold
        Achievement({id = 18572, criteria = 5, oneline = true}), -- reverse bronze
        Achievement({id = 18573, criteria = 5, oneline = true}), -- reverse silver
        Achievement({id = 18574, criteria = 5, oneline = true}) -- reverse gold
    }
}) -- Deadwind Derby
