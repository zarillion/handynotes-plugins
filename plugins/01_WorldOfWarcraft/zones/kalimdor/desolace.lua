-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 66, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[30806020] = Safari.AmethystShaleHatchling({
    pois = {
        POI({
            27805700, 27805780, 28805340, 29006140, 29006200, 29205600,
            29405520, 29405680, 29405760, 29405860, 29605520, 29605740,
            29605840, 29606120, 30005920, 30405960, 30806020
        })
    }
}) -- Amethyst Shale Hatchling

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

map.nodes[53004340] = Safari.ElfinRabbit({
    pois = {POI({49005160, 53004340, 54404640, 55005080, 56003780, 57604040})}
}) -- Elfin Rabbit

map.nodes[57004940] = Safari.ForestMoth({
    pois = {
        POI({
            48204600, 48204920, 49004680, 49805180, 49805620, 50404280,
            50405700, 51204480, 51405740, 52405000, 52604640, 53004880,
            53005760, 53404320, 53404840, 53604860, 53605400, 53804660,
            54606340, 54606360, 54805260, 55205180, 55803680, 56604740,
            56803980, 57004940, 57604580, 58405680, 59005560, 59204500,
            59604740, 59805580, 60204060, 60205140, 60205760, 61203620,
            61204780, 61806020, 62003840, 62405540, 64604160, 65205200, 66005180
        })
    }
}) -- Forest Moth

map.nodes[50806360] = Safari.HornyToad({
    pois = {
        POI({
            24206880, 24407040, 25407020, 25407140, 28008280, 28208100,
            29007740, 29008080, 29207760, 29402960, 29806660, 30005200,
            30006640, 30007000, 30007100, 30408140, 30603300, 30605800,
            30807660, 31607740, 31806180, 33408080, 33607460, 33805480,
            34207580, 34805820, 35008340, 35403900, 36406120, 37603660,
            40605200, 40608520, 41008760, 41205880, 41802520, 42005220,
            42205920, 42403360, 42608240, 43208600, 43404480, 44204260,
            44607720, 45602960, 48006040, 48803600, 49606740, 50206900,
            50602900, 50806360, 51002660, 52203420, 52206080, 53000640,
            54001200, 54403440, 54606820, 54801300, 54803320, 55201000,
            56001420, 56002280, 56202040, 56401620, 57008440, 57201540,
            57202420, 57206420, 57602900, 58601620, 58601980, 59002980,
            59007140, 59202540, 59407580, 59601780, 59607560, 59807420,
            60203220, 60402680, 60407680, 60607680, 61002780, 61007860,
            61207840, 61607340, 61802800, 61807360, 62202660, 62601580,
            62801500, 63002540, 63402200, 63602180, 64601740, 64802340,
            64802360, 64809040, 66001920, 66002540, 66003200, 66202560,
            66203120, 66602760, 66801680, 67002240, 67002260, 67202020,
            67202640, 67402660, 67403200, 67405560, 67603120, 67603900,
            67803220, 68004980, 68402380, 68606100, 68802400, 69203480,
            69204440, 69402560, 69403220, 69404300, 69404960, 69602440,
            69603260, 69603500, 69605880, 70002560, 70202480, 70204720,
            70206500, 70403040, 70404020, 70405500, 70603020, 70604140,
            70803480, 71001540, 71001560, 71404700, 71601780, 71602700,
            71604460, 71605660, 72004180, 72202300, 72203240, 72203260,
            72204980, 72803700, 73003440, 73004960, 73005680, 73204900,
            73402140, 73602140, 73602160, 73603020, 73603440, 73603500,
            73805160, 74002480, 74002700, 74004740, 74004760, 74204540,
            74204560, 75202920, 75203000, 75403340, 75403360, 75802340,
            76002360, 76201780, 76402520, 76402560, 76403400, 76602540,
            76602560, 76603380, 76805220, 77601840, 77601860, 78002520,
            78002560, 78802140, 78802160, 80201720
        })
    }
}) -- Horny Toad

map.nodes[52405880] = Safari.Rat({
    pois = {
        POI({
            49405520, 50206360, 50407440, 52405880, 54006000, 57604760,
            73003600, 74202200, 75403520
        })
    }
}) -- Rat

map.nodes[55605280] = Safari.RedTailedChipmunk({
    pois = {
        POI({
            49005240, 50005100, 50205800, 51005080, 51204960, 52205560,
            52404740, 53204400, 53205040, 53205060, 54404020, 54805000,
            54805840, 55005060, 55605280, 55805240, 57205400, 57805400,
            57805480, 57805980, 58603660, 59005360, 59205340, 60003860,
            60404400, 61004420, 61204840, 61803840, 61804080, 62405060,
            62805340, 63205580, 65405400, 65804300
        })
    }
}) -- Red-Tailed Chipmunk

map.nodes[51405780] = Safari.Roach({
    pois = {
        POI({
            50206360, 51405780, 52405760, 55006680, 59203140, 60606560,
            73003600, 74202200, 75403520
        })
    }
}) -- Roach

map.nodes[63809220] = Safari.RockViper({
    pois = {
        POI({
            24206880, 24207080, 24407040, 25207140, 25407020, 28008280,
            29007900, 29207760, 29806660, 30408140, 30805260, 30806020,
            30807640, 31606180, 32006960, 32007740, 32206920, 33405080,
            33405260, 33805100, 33807460, 35408080, 36406120, 36604080,
            37603660, 39208960, 39403380, 39803500, 40603120, 40806940,
            41002500, 41802500, 41805200, 42203360, 42208620, 42405900,
            42608280, 42608580, 44003920, 44205080, 45001720, 45002760,
            45008800, 47202920, 48603180, 49606740, 49802760, 50206880,
            50606880, 51006380, 52206080, 52806660, 53000640, 53000660,
            54001180, 54008400, 54203440, 54400880, 54600880, 54801300,
            54803300, 54806860, 55201000, 55406640, 55408500, 56001440,
            56001460, 56002280, 56401620, 56808120, 57006440, 57008400,
            57201540, 57201560, 57402420, 57602900, 57606380, 58407780,
            58601620, 58802220, 59001980, 59003000, 59007080, 59202540,
            59207900, 59407340, 59407580, 59607580, 60203220, 60402680,
            60407660, 60607700, 61007800, 61402980, 61802780, 62207280,
            62402700, 62802480, 63809220, 64401740, 64402340, 64403560,
            64601740, 64609040, 64609060, 64802340, 64802360, 65002000,
            65802560, 66002540, 66003080, 66201000, 66201920, 66203160,
            66601720, 67002220, 67002260, 67202040, 67202080, 67202360,
            67202640, 67603140, 67803180, 68002340, 68004980, 68201860,
            68205420, 68401800, 68402400, 68803280, 68805900, 69204440,
            69204460, 69402560, 69403220, 69403520, 69404320, 69404960,
            69604940, 70002560, 70006120, 70204040, 70204720, 70402520,
            70403020, 70405540, 70603020, 70604120, 70605500, 70803520,
            71001540, 71001560, 71003580, 71206040, 71402700, 71404460,
            71404680, 71405660, 71601780, 71602700, 72004180, 72202300,
            72203240, 72203260, 72403700, 72404980, 72801820, 72803300,
            72803680, 72806460, 73004900, 73005680, 73402140, 73402160,
            73602140, 73602160, 73802700, 73803000, 73803440, 74002940,
            74003540, 74004740, 74004760, 74005180, 74202440, 74202500,
            74204560, 75203000, 75203320, 75403360, 76002340, 76002360,
            76201780, 76402500, 76402560, 76403380, 76602540, 76603380,
            76805220, 77402560, 77601840, 77601860, 78002540, 78002560,
            78802120, 80201700
        })
    }
}) -- Rock Viper

map.nodes[64004400] = Safari.SmallFrog({
    pois = {
        POI({
            61204380, 61204620, 62003660, 62004540, 62004740, 62204320,
            62204440, 62404600, 62404820, 62603420, 62804080, 63203540,
            63204900, 63604940, 64004400, 64004500, 64204080, 64204980,
            64404660, 64804600, 65404100, 65803680, 66003960, 66604080, 66604940
        })
    }
}) -- Small Frog
