-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Safari = ns.node.Safari

local Mount = ns.reward.Mount
local Spacer = ns.reward.Spacer
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 71, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64405070] = ns.node.AnniversaryRare({
    id = 167749,
    quest = 60214,
    rewards = {
        Transmog({item = 186460, slot = L['cloth']}), -- Anger-Spark Gloves
        Transmog({item = 186461, slot = L['cloth']}), -- Gilded Trousers of Benediction
        Transmog({item = 186463, slot = L['leather']}), -- Terrorweave Tunic
        Transmog({item = 186475, slot = L['leather']}), -- Hellstiched Mantle
        Transmog({item = 186464, slot = L['mail']}), -- Fathom-Helm of the Deeps
        Transmog({item = 186481, slot = L['mail']}), -- Darkcrest Waistguard
        Transmog({item = 186465, slot = L['plate']}), -- Faceguard of the Endless Watch
        Transmog({item = 186484, slot = L['plate']}), -- Voidforged Greaves
        Transmog({item = 186462, slot = L['cloak']}), -- Black-Iron Battlecloak
        Transmog({item = 186506, slot = L['1h_axe']}), -- Akama's Edge
        Transmog({item = 186467, slot = L['gun']}), -- Barrel-Blade Longrifle
        Transmog({item = 186466, slot = L['2h_axe']}), -- Ethereum Nexus-Reaver
        Transmog({item = 186468, slot = L['dagger']}), -- Talon of the Tempest
        Spacer(), Mount({item = 186469, id = 293}), -- Illidari Doomhawk
        Toy({item = 186501}) -- Doomwalker Trophy Stand
    }
}) -- Doomwalker

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[64602340] = Safari.DesertSpider({
    pois = {
        POI({
            24206880, 28008100, 29008080, 30805800, 31005300, 31806180,
            32603120, 33405100, 33405260, 33605460, 36406100, 36604080,
            39802500, 41404280, 41602680, 41605660, 42205920, 43405020,
            44005880, 44203060, 44205840, 44405060, 50806360, 52206080,
            53000640, 53801240, 54206900, 54800900, 56001440, 56002280,
            56006880, 56401640, 57201540, 57202420, 57408540, 58601960,
            59202160, 59403000, 59607540, 60002720, 60002960, 60003200,
            60407680, 60809060, 61202100, 62402720, 62802500, 63203020,
            63406280, 63802200, 64602340, 64802020, 66002540, 66003100,
            66806860, 67402300, 67603160, 68004940, 68405420, 69204460,
            69403220, 69403500, 69404980, 70002560, 70405540, 70602960,
            70604140, 70604160, 70803520, 71001540, 71001560, 71404700,
            72202280, 72603700, 72805680, 73004900, 73402140, 73402160,
            73602140, 73602160, 73802700, 73803000, 74005160, 74202480,
            74204560, 74602460, 75403340, 75603360, 76001780, 76002360,
            76402540, 76603340, 77601840, 77801860, 77802540, 78002560,
            78802140, 80201720
        })
    }
}) -- Desert Spider
