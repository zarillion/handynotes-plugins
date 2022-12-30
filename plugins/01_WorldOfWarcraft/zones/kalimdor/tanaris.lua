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

map.nodes[49402840] = Safari.GoldBeetle({
    pois = {
        POI({
            31007600, 35207080, 38203020, 38806980, 40407580, 40804700,
            41002580, 41402840, 43805280, 44402880, 44405800, 45603140,
            46202920, 46203240, 48003220, 48202800, 48402580, 48402960,
            48602580, 48802860, 48803020, 48803140, 48803280, 49003680,
            49203360, 49402840, 49602840, 49602960, 49603080, 49603260,
            49803360, 49803460, 50002640, 50002660, 50003200, 50206000,
            50603420, 50803600, 51004140, 51203820, 51402680, 51403120,
            51603420, 52604020, 52802600, 53804460, 53809100, 56805220,
            59805740, 61604540
        })
    }
}) -- Gold Beetle

map.nodes[48602580] = Safari.Rattlesnake({
    pois = {
        POI({
            29805760, 30405160, 30607300, 31807260, 32407100, 33207440,
            33405420, 34807580, 35603600, 36003200, 36003420, 36005640,
            36202780, 36403000, 36405340, 36607700, 36806680, 37205540,
            37403280, 37603460, 37603740, 37604900, 38003020, 38605760,
            39003640, 39005080, 39006720, 39204480, 39204780, 39407120,
            39802560, 40206740, 40403520, 40404280, 40405320, 40603540,
            40604760, 40605000, 41006960, 41007280, 41203220, 41805560,
            41806440, 42203060, 42404940, 42602640, 42603560, 42807420,
            43403340, 43403360, 43406720, 43802580, 43803100, 43805560,
            44203700, 44206040, 44207100, 44402860, 45005160, 45603140,
            45804860, 46007120, 46402920, 46405220, 46405280, 46407380,
            46803760, 47003520, 47005860, 47006720, 47604920, 47606960,
            47803940, 48003200, 48202800, 48202940, 48203460, 48402580,
            48402960, 48405160, 48602580, 48802720, 48802860, 48803140,
            48803280, 48804160, 48804960, 48806540, 49002980, 49003700,
            49004800, 49203360, 49205460, 49205600, 49206560, 49402840,
            49404620, 49406300, 49602840, 49602940, 49602960, 49603260,
            49803360, 49803460, 49804140, 49804160, 49808620, 50002620,
            50002660, 50003200, 50005160, 50403060, 50403720, 50603040,
            50603420, 50603700, 50803600, 50804660, 51004120, 51202680,
            51203840, 51205160, 51403120, 51603120, 51603420, 52005980,
            52604240, 52802600, 52804260, 53005080, 53405780, 53804620,
            53804680, 53805500, 54004460, 54805040, 55004580, 55405220,
            56805820, 57004600, 58005840, 58405380, 59006100, 59404900,
            59805920, 60005160, 60404680, 60805480, 61205980, 62805640,
            63205800, 63605800, 63804400, 65804200, 65805660, 69204340,
            70005320, 70605020, 71004580
        })
    }
}) -- Rattlesnake
