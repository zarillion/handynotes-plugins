-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 66, settings = true})
local wickedgrotto = ns.Map({id = 67, settings = true})
local foulspore = ns.Map({id = 68, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[29206256] = Safari.AmethystShaleHatchling({note = L['in_cave']}) -- Amethyst Shale Hatchling

wickedgrotto.nodes[28302985] = Safari.AmethystShaleHatchling({
    note = L['in_cave']
}) -- Amethyst Shale Hatchling

foulspore.nodes[45264885] = Safari.AmethystShaleHatchling({
    pois = {
        POI({
            32414403, 32415046, 40441513, 42057937, 42058418, 43653600,
            45262958, 45264243, 45264885, 45265688, 46862958, 46864725,
            46865528, 46867776, 50076170, 53296491, 56506973
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

map.nodes[67807340] = Safari.StoneArmadillo({
    pois = {
        POI({
            42003680, 42408180, 42408320, 42608200, 43403920, 43403960,
            44004120, 44204180, 46803580, 47003540, 48403240, 48403260,
            49203440, 49403460, 49603480, 50203420, 56801540, 56801560,
            58002060, 58202020, 59007940, 59007980, 59407660, 59607640,
            59607660, 59607880, 59802220, 59802440, 59802460, 60208040,
            60402680, 60402940, 60402960, 60407820, 60602940, 60602960,
            60607640, 60607660, 60607800, 60806640, 60806660, 60806840,
            60806880, 61402800, 61406980, 61606980, 61802800, 61806740,
            62006760, 63006740, 63206800, 63402940, 63802940, 63802960,
            64802960, 65002920, 65802920, 65802960, 66607140, 67002980,
            67202740, 67202780, 67802920, 67807340, 67807360, 67807600,
            68406100, 68606100, 69203940, 69203960, 69205000, 69206420,
            69207380, 69403020, 69403060, 69404440, 69404460, 69404940,
            69406020, 69603040, 69603080, 69604440, 69604460, 69606020,
            70006780, 70404040, 70404060, 70404640, 70404700, 70404840,
            70404860, 70604020, 70604640, 70604840, 70604860, 70804140,
            70804660, 70806120, 71004160, 71403040, 71403060, 71404340,
            71406240, 71406260, 71406540, 71406560, 71603040, 71603060,
            71606240, 71606260, 71606540, 71606560, 71804340, 71804360,
            72203220, 72204580, 72806140, 73006200, 73404480, 73604480
        })
    }
}) -- Stone Armadillo

map.nodes[28916256] = Safari.TopazShaleHatchling({note = L['in_cave']}) -- Topaz Shale Hatchling
wickedgrotto.nodes[28005140] = Safari.TopazShaleHatchling({
    pois = {
        POI({
            27405260, 27805360, 28005140, 30405780, 31206300, 51005440,
            51606520, 51805400, 52006760, 57408280, 57807280, 58808760,
            59807140, 60806520, 61006740, 61403380, 61806620, 62408940,
            63405040, 63408660, 63608740, 64208620, 64804980, 64805280,
            65205500, 65605540, 65805580, 66007460, 68801500, 69202720,
            69602260, 70006040, 71801720, 72603260, 73403060, 74403440,
            78404600, 79805120
        })
    }
}) -- Topaz Shale Hatchling

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = ns.node.Dragonrace({
    label = '{quest:75409}',
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17640, criteria = 9, oneline = true}), -- normal bronze
        Achievement({id = 17641, criteria = 9, oneline = true}), -- normal silver
        Achievement({id = 17642, criteria = 9, oneline = true}), -- normal gold
        Achievement({id = 17643, criteria = 9, oneline = true}), -- advanced bronze
        Achievement({id = 17644, criteria = 9, oneline = true}), -- advanced silver
        Achievement({id = 17645, criteria = 9, oneline = true}), -- advanced gold
        Achievement({id = 17646, criteria = 9, oneline = true}), -- reverse bronze
        Achievement({id = 17647, criteria = 9, oneline = true}), -- reverse silver
        Achievement({id = 17648, criteria = 9, oneline = true}) -- reverse gold
    }
}) -- Desolace Drift
