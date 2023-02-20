-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Node = ns.node.Node
local Rare = ns.node.Rare
local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 104, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[71606180] = Rare({
    id = 18695,
    rewards = {
        Achievement({id = 1312, criteria = 4504}), -- Bloody Rare
        Transmog({item = 31225, slot = L['cloth']}), -- Illidari Bindings
        Transmog({item = 31224, slot = L['leather']}), -- Illidari Bracers
        Transmog({item = 31223, slot = L['mail']}), -- Illidari Wristguards
        Transmog({item = 31221, slot = L['plate']}) -- Illidari Vambraces
    },
    pois = {
        POI({
            28004840, 28204920, 29005500, 29205040, 29405100, 29605120,
            29605260, 29805180, 30605820, 45002880, 45003060, 45603120,
            46202880, 46402800, 46406600, 46406940, 46407020, 46602620,
            46602760, 46607100, 46802660, 47206560, 47206860, 47806720,
            55803800, 56203560, 57003860, 57403500, 57403700, 57403840,
            57603660, 57803600, 57803780, 58603640, 58603660, 68006120,
            68406200, 68805980, 68806180, 71006220
        })
    }
}) -- Ambassador Jerrikar

map.nodes[73602900] = Rare({
    id = 18694,
    rewards = {
        Achievement({id = 1312, criteria = 4508}), -- Bloody Rare
        Transmog({item = 31220, slot = L['cloth']}), -- Amethyst Beholder Eye
        Transmog({item = 31219, slot = L['leather']}), -- Emerald Beholder Eye
        Transmog({item = 31218, slot = L['mail']}), -- Fiery Beholder Eye
        Transmog({item = 31217, slot = L['plate']}) -- Crimson Beholder Eye
    },
    pois = {
        POI({
            36604500, 37004420, 37604320, 39404280, 40004380, 40204300,
            55007120, 58807040, 59207060, 66602620, 67202320, 70602880, 73003020
        })
    }
}) -- Collidus the Warp-Watcher

map.nodes[59604660] = Rare({
    id = 18696,
    rewards = {
        Achievement({id = 1312, criteria = 4515}), -- Bloody Rare
        Transmog({item = 31216, slot = L['cloth']}), -- Abyssal Cloth Footwraps
        Transmog({item = 31215, slot = L['leather']}), -- Abyssal Leather Treads
        Transmog({item = 31214, slot = L['mail']}), -- Abyssal Mail Greaves
        Transmog({item = 31213, slot = L['plate']}) -- Abyssal Plate Sabatons
    },
    pois = {
        POI({
            31004520, 31004580, 41804060, 42003940, 42004040, 42006880,
            42406840, 45401240, 45401260, 45601240, 45601260, 59404640,
            59404680, 59604640
        })
    }
}) -- Kraator

-------------------------------------------------------------------------------
------------------------------- NETHERWING EGGS -------------------------------
-------------------------------------------------------------------------------

local NetherwingEgg = Node({
    label = L['netherwing_egg'],
    icon = 'peg_gn',
    group = ns.groups.NETHERWING_EGGS
})

map.nodes[59847826] = NetherwingEgg
map.nodes[60218708] = NetherwingEgg
map.nodes[62308947] = NetherwingEgg
map.nodes[62807478] = NetherwingEgg
map.nodes[63448289] = NetherwingEgg
map.nodes[63948604] = NetherwingEgg
map.nodes[63968740] = NetherwingEgg
map.nodes[64098403] = NetherwingEgg
map.nodes[64198674] = NetherwingEgg
map.nodes[64588643] = NetherwingEgg
map.nodes[64608732] = NetherwingEgg
map.nodes[64668312] = NetherwingEgg
map.nodes[64758520] = NetherwingEgg
map.nodes[64928377] = NetherwingEgg
map.nodes[64929095] = NetherwingEgg
map.nodes[65068213] = NetherwingEgg
map.nodes[65168586] = NetherwingEgg
map.nodes[65178491] = NetherwingEgg
map.nodes[65468866] = NetherwingEgg
map.nodes[65498475] = NetherwingEgg
map.nodes[65638773] = NetherwingEgg
map.nodes[65688419] = NetherwingEgg
map.nodes[65689408] = NetherwingEgg
map.nodes[65968055] = NetherwingEgg
map.nodes[66108388] = NetherwingEgg
map.nodes[66288222] = NetherwingEgg
map.nodes[66928201] = NetherwingEgg
map.nodes[66929153] = NetherwingEgg
map.nodes[67157962] = NetherwingEgg
map.nodes[67226134] = NetherwingEgg
map.nodes[67246236] = NetherwingEgg
map.nodes[67278623] = NetherwingEgg
map.nodes[67878737] = NetherwingEgg
map.nodes[67888544] = NetherwingEgg
map.nodes[67958247] = NetherwingEgg
map.nodes[68055974] = NetherwingEgg
map.nodes[68138182] = NetherwingEgg
map.nodes[68149467] = NetherwingEgg
map.nodes[68295981] = NetherwingEgg
map.nodes[68317932] = NetherwingEgg
map.nodes[68536115] = NetherwingEgg
map.nodes[68628290] = NetherwingEgg
map.nodes[68688362] = NetherwingEgg
map.nodes[68838579] = NetherwingEgg
map.nodes[68876249] = NetherwingEgg
map.nodes[68898358] = NetherwingEgg
map.nodes[69068137] = NetherwingEgg
map.nodes[69108822] = NetherwingEgg
map.nodes[69268432] = NetherwingEgg
map.nodes[69338656] = NetherwingEgg
map.nodes[69386377] = NetherwingEgg
map.nodes[69468006] = NetherwingEgg
map.nodes[69625854] = NetherwingEgg
map.nodes[69678434] = NetherwingEgg
map.nodes[69858208] = NetherwingEgg
map.nodes[70076201] = NetherwingEgg
map.nodes[70086030] = NetherwingEgg
map.nodes[70218812] = NetherwingEgg
map.nodes[70278392] = NetherwingEgg
map.nodes[70408697] = NetherwingEgg
map.nodes[70518397] = NetherwingEgg
map.nodes[70718568] = NetherwingEgg
map.nodes[70888218] = NetherwingEgg
map.nodes[70916264] = NetherwingEgg
map.nodes[70948145] = NetherwingEgg
map.nodes[70968911] = NetherwingEgg
map.nodes[71058081] = NetherwingEgg
map.nodes[71148469] = NetherwingEgg
map.nodes[71376074] = NetherwingEgg
map.nodes[71458645] = NetherwingEgg
map.nodes[71558410] = NetherwingEgg
map.nodes[71588129] = NetherwingEgg
map.nodes[72007470] = NetherwingEgg
map.nodes[72248790] = NetherwingEgg
map.nodes[72278638] = NetherwingEgg
map.nodes[72508373] = NetherwingEgg
map.nodes[72598373] = NetherwingEgg
map.nodes[72648886] = NetherwingEgg
map.nodes[72829032] = NetherwingEgg
map.nodes[72898217] = NetherwingEgg
map.nodes[73218428] = NetherwingEgg
map.nodes[73308573] = NetherwingEgg
map.nodes[73358715] = NetherwingEgg
map.nodes[73429035] = NetherwingEgg
map.nodes[73588511] = NetherwingEgg
map.nodes[73808599] = NetherwingEgg
map.nodes[73978306] = NetherwingEgg
map.nodes[74068587] = NetherwingEgg
map.nodes[74208239] = NetherwingEgg
map.nodes[74288554] = NetherwingEgg
map.nodes[74318974] = NetherwingEgg
map.nodes[74348729] = NetherwingEgg
map.nodes[74588840] = NetherwingEgg
map.nodes[74618466] = NetherwingEgg
map.nodes[75198645] = NetherwingEgg
map.nodes[75228248] = NetherwingEgg
map.nodes[75658606] = NetherwingEgg
map.nodes[75769165] = NetherwingEgg
map.nodes[76068134] = NetherwingEgg
map.nodes[76408566] = NetherwingEgg
map.nodes[76558335] = NetherwingEgg
map.nodes[77269548] = NetherwingEgg
map.nodes[77368586] = NetherwingEgg
map.nodes[77619255] = NetherwingEgg
map.nodes[78108112] = NetherwingEgg
map.nodes[78828644] = NetherwingEgg
map.nodes[78867961] = NetherwingEgg
map.nodes[78888334] = NetherwingEgg
map.nodes[79588800] = NetherwingEgg

-------------------------------------------------------------------------------
------------------------------- OUTLAND SAFARI --------------------------------
-------------------------------------------------------------------------------

map.nodes[37203620] = Safari.AshViper({
    pois = {
        POI({
            22203440, 22403460, 25002200, 25003680, 26603180, 27802840,
            28603400, 29204360, 31005700, 31203360, 31204700, 32002800,
            32404420, 32804360, 33404000, 33803400, 35602900, 36202300,
            36404560, 37203620, 37403200, 37404180, 37405660, 39404880,
            39603480, 39604880, 40402900, 40404380, 40602900, 40604400,
            42405340, 42603520, 43607100, 43806580, 45002080, 45003060,
            45005820, 45803200, 45803720, 46007100, 46605340, 47402440,
            47402460, 49003120, 50406060, 51603140, 51803160, 52202100,
            52406980, 53402240, 54803020, 55803560, 55803900, 55805520,
            56003540, 56604840, 57603180, 58202380, 58204540, 58205800,
            59403700, 60604900, 61204360, 61405640, 62803660, 62806060,
            64203500, 64404040, 64604020, 64608840, 65808160, 66005980,
            66606340, 67003740, 67203760, 69204460, 75808340
        })
    }
}) -- Ash Viper

map.nodes[46604580] = Safari.FelFlame({
    pois = {
        POI({
            37403080, 37803080, 37803180, 38404140, 39003720, 39004540,
            39004560, 39203940, 39203960, 39604500, 39604560, 41403680,
            41404080, 41603660, 41803540, 41803560, 42004140, 42004160,
            42403340, 43404400, 44004440, 44404480, 44404560, 44804660,
            45004440, 45204580, 45206140, 45206200, 45404480, 45604480,
            45604880, 45606160, 45804020, 45804640, 46004200, 46004740,
            46005000, 46206120, 46404300, 46404820, 46603920, 46604580,
            47204420, 47404240, 47404260, 47404800, 47604620, 47803840,
            47803860, 48004140, 48004420, 48004920, 48203640, 48204960,
            48404820, 48405120, 48603900, 48603980, 48604600, 48803380,
            49003540, 49003620, 49004940, 49004960, 49005100, 49204780,
            49205320, 49403660, 49403840, 49405200, 49603520, 49605440,
            49803640, 49804920, 49805260, 50003660, 50005040, 50005060,
            50005240, 50603520, 50605340, 50804200, 51003600, 51004600,
            51204020, 51405380, 51405460, 51603640, 51603660, 51605380,
            51605460, 52403980, 52404720, 52405240, 52405260, 52803600,
            52804540, 53405120, 53604620, 54405080, 54405300, 56005340,
            56204300, 56404120, 56404200, 56405140, 56405160, 56604120,
            56604200, 56604300, 56605300, 57205180, 57805260, 58005180,
            58404160, 58605200, 58804140, 59204180, 59205140, 60004220,
            60804020, 61604100, 62404040, 62604040, 63804100
        })
    }
}) -- Fel Flame

map.nodes[45603180] = Safari.Scorpid({
    pois = {
        POI({
            22403460, 23402820, 24802220, 25003680, 26603180, 32002800,
            32005240, 33404000, 37203620, 37404180, 40402900, 42603520,
            43204920, 45202100, 45603180, 45803720, 51803140, 54803020,
            55803560, 55803900, 55805540, 56604840, 57603180, 58404540,
            59403700, 61204400, 62803660, 63006060, 64203500, 64604020,
            66404400, 70406700
        })
    }
}) -- Scorpid

map.nodes[45005820] = Safari.TaintedCockroach({
    pois = {
        POI({
            22403460, 27605040, 29204360, 31204700, 32002800, 33204020,
            34203380, 35402880, 36404580, 37203620, 37403220, 37404180,
            39603500, 40604400, 42405340, 42405360, 43204900, 43404960,
            44006600, 45002080, 45005820, 45603740, 46605300, 51803160,
            52602140, 54803020, 55803580, 55803900, 56604840, 59403700,
            61405660, 61406600, 62803660, 64203500, 66204400, 70406700
        })
    }
}) -- Tainted Cockroach
