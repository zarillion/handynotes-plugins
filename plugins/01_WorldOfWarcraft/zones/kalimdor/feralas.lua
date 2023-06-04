-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 69, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[51601080] = ns.node.AnniversaryRare({
    id = 121912,
    quest = 47463,
    rewards = {
        Transmog({item = 150391, slot = L['cloth']}), -- Jade Inlaid Vestments
        Transmog({item = 150397, slot = L['cloth']}), -- Belt of the Dark Bog
        Transmog({item = 150396, slot = L['leather']}), -- Boots of Fright
        Transmog({item = 150389, slot = L['mail']}), -- Leggings of the Demented Mind
        Transmog({item = 150387, slot = L['plate']}), -- Acid Inscribed Pauldrons
        Transmog({item = 150409, slot = L['offhand']}), -- Trance Stone
        Spacer(), Section(L['shared_drops']), Spacer(),
        Transmog({item = 150429, slot = L['dagger']}), -- Emerald Dragonfang
        Transmog({item = 150412, slot = L['1h_mace']}), -- Hammer of Bestial Fury
        Transmog({item = 150393, slot = L['1h_sword']}), -- Nightmare Blade
        Transmog({item = 150403, slot = L['crossbow']}), -- Polished Ironwood Crossbow
        Transmog({item = 150408, slot = L['staff']}), -- Staff of Rampant Growth
        Transmog({item = 150411, slot = L['cloak']}), -- Green Dragonskin Cloak
        Transmog({item = 150383, slot = L['staff']}) -- Amberseal Keeper
    }
}) -- Ysondre

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[61003160] = Safari.NetherFaerieDragon({
    pois = {
        POI({
            54004520, 55404440, 55404460, 55404720, 55604720, 56604320,
            56604440, 56604460, 57404740, 57604740, 58004280, 58404540,
            58404560, 59004240, 59004260, 59004540, 59004640, 59203600,
            59203940, 59404840, 59404860, 59604840, 59604860, 60404280,
            61002640, 61002800, 61003160, 61003600, 61004440, 61004460,
            61403360, 62003920, 62004380, 62403000, 62403240, 62403260,
            62602980, 63002620, 63003600, 63404540, 63404560, 63803380,
            64002620, 64002760, 64003140, 64003160, 64202740, 64603600,
            64604440, 64604460
        })
    }
}) -- Nether Faerie Dragon

map.nodes[53001060] = Safari.Snake({
    pois = {
        POI({
            39602400, 39802080, 41603600, 41802160, 42002140, 42203740,
            43200960, 45206700, 45802240, 45802360, 46201400, 46400800,
            46401040, 46401540, 46402480, 46402960, 46602940, 47203680,
            47406080, 48605060, 48802520, 49001580, 49004960, 49202840,
            49403240, 49403260, 49801500, 49802540, 49803340, 49803360,
            50202940, 50203180, 50401060, 50602400, 50801780, 51201560,
            52201600, 52204960, 53001060, 53001640, 53204700, 53401480,
            53804880, 54005380, 54606500, 55404960, 57004440, 57004460,
            57005100, 57005200, 57805060, 59404840, 59405160, 61605360,
            62005300, 67004780, 68204460, 69405100, 69604380, 73605440,
            74205040, 74205860, 74605840, 75203640, 75205340, 75605720,
            76404020, 78804340, 80604000, 80804460
        })
    }
}) -- Snake

map.nodes[54005360] = Safari.Squirrel({
    pois = {
        POI({
            39002060, 43002180, 46003900, 46201520, 46402940, 48805040,
            49001580, 49405100, 49801500, 49802540, 50003320, 50202960,
            50203160, 50401060, 51002220, 51003320, 51201560, 52201600,
            53204680, 53401480, 54005360, 54206940, 54807520, 55205840,
            55805640, 56606900, 57004460, 58405540, 58605240, 60205120,
            68204460, 68805640, 70606140, 70805020, 70805720, 71405360,
            72206300, 72403660, 72404640, 75803860, 80804460, 81204020, 84403860
        })
    }
}) -- Squirrel

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[64125436] = ns.node.Dragonrace({
    label = '{quest:75470}',
    normal = {2323, 94, 89},
    advanced = {2353, 88, 83},
    reverse = {2383, 88, 83},
    rewards = {
        Achievement({id = 17712, criteria = 12, oneline = true}), -- normal bronze
        Achievement({id = 17713, criteria = 12, oneline = true}), -- normal silver
        Achievement({id = 17714, criteria = 12, oneline = true}), -- normal gold
        Achievement({id = 17715, criteria = 12, oneline = true}), -- advanced bronze
        Achievement({id = 17716, criteria = 12, oneline = true}), -- advanced silver
        Achievement({id = 17717, criteria = 12, oneline = true}), -- advanced gold
        Achievement({id = 17718, criteria = 12, oneline = true}), -- reverse bronze
        Achievement({id = 17719, criteria = 12, oneline = true}), -- reverse silver
        Achievement({id = 17720, criteria = 12, oneline = true}) -- reverse gold
    }
}) -- Feralas Ruins Ramble
