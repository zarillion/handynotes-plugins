-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 1, settings = true})
local orgrimmar = ns.Map({id = 85, settings = true})
-- local cleftofshadow = ns.Map({id = 86, settings = true})
local valleyoftrials = ns.Map({id = 461, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[44201980] = Safari.Adder({
    pois = {
        POI({
            36402560, 37202740, 37602340, 37803000, 39201640, 39201660,
            39202200, 40001860, 40602140, 42402080, 42402940, 42402960,
            42601760, 42602080, 44002720, 44201980, 44402900, 45402560,
            45602940, 45602980, 47203040, 47401240, 47401260, 47802480,
            48201800, 49801240, 50801360, 51801640, 53403580, 54001820,
            54803800, 55603580, 55801800, 56405440, 56603060, 57401740,
            58407320, 59205000
        })
    }
}) -- Adder

map.nodes[49404000] = Safari.Cockroach({pois = {POI({49404000, 49604020})}}) -- Cockroach

map.nodes[48202680] = Safari.CreepyCrawly({
    pois = {
        POI({
            37002800, 37602240, 38805220, 39001640, 39001660, 41205060,
            42002920, 42002960, 43202060, 44204900, 45002940, 45002980,
            45202080, 45402420, 45602420, 46203560, 47001640, 47001660,
            47402100, 47402340, 47402360, 47602080, 47808060, 48003600,
            48202680, 48204120, 48401880, 48403360, 48601880, 48803840,
            49802940, 49808080, 50001240, 50001260, 50002960, 50003920,
            50602620, 50801540, 50801560, 51003460, 51204720, 51402360,
            52005100, 52005740, 52203420, 52606420, 53001100, 53201320,
            53403180, 53405100, 53602180, 53802520, 54003740, 55201320,
            55801760, 55803080, 55803780, 56602160, 58202420
        })
    }
}) -- Creepy Crawly

orgrimmar.nodes[50607940] = Safari.DungBeetle({
    parent = map.id,
    pois = {
        POI({
            30607000, 31005800, 32607540, 34405900, 35204960, 35605000,
            36604320, 37406000, 37408880, 37606020, 38403960, 38803900,
            39003760, 39603820, 40005020, 40203700, 40203980, 40406700,
            40603860, 40606720, 40803840, 40807560, 41007540, 42007740,
            42007780, 42204700, 42206420, 42206460, 42403680, 42404620,
            43403800, 44003720, 44203780, 44406140, 44406940, 44406960,
            44606940, 44606980, 45206180, 45606260, 45803600, 45803700,
            45806180, 46003540, 46407440, 46407460, 46407940, 46407960,
            46607440, 46607480, 46607940, 46607960, 47407560, 47804200,
            47806100, 47807600, 48005460, 48803460, 49203300, 49407740,
            49407760, 49607740, 49607760, 50003300, 50203400, 50407940,
            50408000, 50408240, 50408340, 50408380, 50607940, 50607980,
            50608300, 50608400, 50805260, 51005240, 51207640, 51207680,
            52003360, 52203300, 52206000, 53203480, 53205880, 53405340,
            53406520, 53407640, 53407700, 53603500, 53606160, 53606520,
            53607660, 53806120, 53807620, 54005960, 54205940, 54408340,
            54408380, 54608420, 55207760, 55406000, 55406060, 55806040,
            56606960, 56807180, 57207140, 58206680, 60206400, 63605500,
            64202420, 64604640, 64605640, 64605660, 64801680, 64804680,
            65802640, 65802680, 66002760, 66004740, 66201740, 66201800,
            66202460, 66203940, 66205040, 66205060, 66403960, 67805580,
            68201500, 69001440, 69005540, 69601440, 69801460, 70005080,
            71204740, 71204760, 72404900, 72604980, 73800540, 73800600, 77004880
        })
    }
}) -- Dung Beetle

map.nodes[52403440] = Safari.DungBeetle({
    pois = {
        POI({
            40201580, 42001980, 45602040, 48002120, 48003740, 48003960,
            48203760, 49603540, 51607320, 52004740, 52201680, 52203500,
            52206500, 52403440, 54005920, 54008020, 54408200, 55801000,
            55801540, 55801560, 56000920, 56201800, 56601220, 57001320,
            57201400, 57207880, 58004400, 58201600, 58602940, 59002420, 59002500
        })
    }
}) -- Dung Beetle

map.nodes[42601740] = Safari.Hare({
    pois = {
        POI({
            36402540, 36402580, 36602560, 37202720, 37202760, 37602340,
            37602360, 37803020, 38605300, 39201640, 39201660, 39202200,
            39605120, 40001860, 40401760, 40402140, 40601760, 40602140,
            40602160, 40801720, 41405060, 42401780, 42402080, 42402940,
            42402960, 42601740, 42601760, 42602080, 44002720, 44002760,
            44201980, 44402920, 44402960, 44602920, 44602960, 45202220,
            45402260, 45402540, 45402580, 45601580, 45602240, 45602940,
            45602980, 45603540, 45603560, 46204740, 46601500, 47003400,
            47003880, 47202080, 47203040, 47204800, 47401240, 47401260,
            48002460, 48004540, 48004560, 48201800, 48203580, 48402020,
            48402720, 48403340, 48403360, 48601980, 48603360, 48803860,
            49402900, 49601760, 49604360, 49807460, 50001240, 50203980,
            50402620, 50601340, 50601620, 50603740, 50604580, 50606760,
            50606960, 50801360, 50803040, 50803440, 51007240, 51404840,
            51404860, 51801640, 51801660, 51803200, 51805100, 52005580,
            52006560, 52203400, 52203940, 52403740, 52403760, 52406340,
            52407840, 52407860, 52601440, 52606040, 52606340, 52801220,
            52801460, 52801940, 52802980, 53001040, 53005300, 53006940,
            53008040, 53201060, 53201720, 53201760, 53403180, 53403580,
            53405500, 53603600, 53605080, 53605480, 53803180, 54001560,
            54004740, 54006300, 54006580, 54201800, 54403380, 54405900,
            54406180, 54603020, 54603980, 54607860, 54801440, 54803780,
            54804460, 55003180, 55203140, 55204860, 55407220, 55601640,
            55601660, 55603600, 55604280, 55803800, 56001820, 56002140,
            56002160, 56002300, 56002840, 56002860, 56207740, 56405440,
            56603100, 56604580, 56807040, 56807060, 57401740, 57401760,
            57402560, 57402800, 57802180, 57804860, 58005720, 58202340,
            58205080, 58407340, 58604820, 59005560, 59205020, 59404920,
            59405100, 60004340, 60404440
        })
    }
}) -- Hare

valleyoftrials.nodes[34006300] = Safari.Hare({
    parent = map.id,
    pois = {
        POI({
            32804160, 34006300, 48805960, 50007560, 51805420, 56206160,
            56606660, 58402940
        })
    }
}) -- Hare

orgrimmar.nodes[39608300] = Safari.RoboChick({
    parent = map.id,
    pois = {
        POI({
            38008660, 38208620, 39408240, 39608300, 39808220, 40008060, 40208000
        })
    }
}) -- Robo-Chick

orgrimmar.nodes[47807600] = Safari.SpinyLizard({
    parent = map.id,
    pois = {
        POI({
            34405880, 39403840, 39603820, 40005020, 40606680, 40807560,
            41003860, 41007540, 42007780, 42204700, 42206400, 43804120,
            44406100, 44406940, 44406960, 44604000, 44606940, 44606960,
            45603540, 45603560, 46407440, 46407460, 46407940, 46407960,
            46607920, 46607960, 46807480, 47407580, 47606120, 47807600,
            48005420, 48005500, 48005560, 48204140, 48403400, 49003400,
            49407740, 49407760, 49607740, 49803260, 49807820, 50203420,
            50407940, 50408000, 50408240, 50408340, 50408360, 50607940,
            50607980, 50608340, 50608380, 51207640, 51207680, 53205960,
            53403500, 53406520, 53407700, 53603520, 53606520, 53607660,
            53807640, 54408380, 54607020, 54608420, 55007780, 56606960,
            57007120, 57806680, 63605520, 64202440, 65005680, 65802640,
            65802660, 66003920, 66202460, 66205040, 66205100, 69201440,
            69801460, 70005080, 71004780, 71204740, 72204880
        })
    }
}) -- Spiny Lizard

map.nodes[59002500] = Safari.SpinyLizard({
    pois = {
        POI({
            40201580, 42001980, 45802000, 47802120, 47803740, 49803540,
            50002760, 50805320, 51801640, 51804720, 52201680, 52406800,
            54005920, 54008020, 54408220, 55800920, 56201780, 57001320,
            57401420, 57601560, 58602720, 58602940, 59002400, 59002500
        })
    }
}) -- Spiny Lizard

map.nodes[40804040] = Safari.Toad({
    pois = {
        POI({
            35004340, 35004400, 35004480, 35004940, 35004960, 35005160,
            35202920, 35203000, 35203100, 35205120, 35205280, 35403960,
            35404580, 35602880, 35603020, 35603620, 35604140, 35604160,
            35604560, 35803820, 36003920, 36005260, 36203540, 36205160,
            36603020, 36605280, 36803400, 36804040, 36804120, 36804200,
            36805080, 36805200, 37003820, 37004520, 37404620, 37603140,
            37603160, 37603840, 37604120, 38005000, 38203940, 38204220,
            38204780, 38404500, 38404940, 38604760, 38604920, 38804400,
            39004180, 39004960, 39404600, 39604400, 39804080, 39804840,
            40203780, 40403700, 40603700, 40804040, 41204220, 41404120,
            41404500, 41803700, 41804420, 41804580, 42003980, 42004140,
            42004160, 42403280, 42404340, 42404540, 42404660, 42603280,
            42804060, 42804620, 43404040, 43404440, 43404460, 43803680,
            43804320, 44004100, 44004380, 44004640, 44203800, 44403340,
            44403360, 44404040, 44404160, 44404540, 44603320, 44603360,
            44603540, 45004120, 45004400, 45204300, 45204500, 45403900,
            45603880, 45604580, 45804100, 45804420, 46404220, 47004260
        })
    }
}) -- Toad

orgrimmar.nodes[31606800] = Safari.Toad({
    parent = map.id,
    pois = {
        POI({
            24806660, 25006640, 30406640, 30406660, 30606640, 30806680,
            31406780, 31606800, 36807480, 37407580, 37607600, 45404840,
            45404860, 45604840, 45604860, 46205020, 46405100, 46405160,
            46605040, 46605100, 48204680, 48404840, 48404860, 48604840,
            48604860, 49004640, 49004660, 56405220, 56605220, 56805260,
            57805500, 57805560, 72403640, 72403700, 73403700, 73403760,
            73603700, 74404160, 74804140, 74804160
        })
    }
}) -- Toad

map.nodes[40003700] = Safari.WaterSnake({
    pois = {
        POI({
            35004340, 35004400, 35004480, 35004900, 35005080, 35202940,
            35202960, 35203100, 35205020, 35205300, 35403960, 35404580,
            35405220, 35602880, 35604140, 35604160, 35803820, 35803920,
            35804020, 36003580, 36005280, 36203160, 36203540, 36205160,
            36403000, 36404560, 36603020, 36605280, 36803400, 36804060,
            36804200, 36805060, 36805180, 37003820, 37004040, 37204500,
            37404620, 37603140, 37603160, 37603840, 37604100, 38005000,
            38203940, 38204220, 38204780, 38404480, 38604420, 38604760,
            38604900, 39004160, 39004960, 39404520, 39404600, 39803640,
            39804080, 39804420, 39804840, 40003700, 40203800, 40603980,
            40803940, 40804140, 41204200, 41204520, 41804060, 41804440,
            41804580, 42003960, 42004160, 42204760, 42403280, 42403680,
            42404320, 42404540, 42404660, 42604320, 42604660, 42803980,
            42804060, 42804620, 43404460, 43604040, 43803660, 43804320,
            44003640, 44004100, 44004380, 44004640, 44403340, 44403360,
            44403800, 44404520, 44603340, 44603360, 44603540, 44804120,
            45004380, 45204300, 45204480, 45403900, 45404580, 45603900,
            45604580, 45804100, 46004400, 46404220, 47004260
        })
    }
}) -- Water Snake

orgrimmar.nodes[37407600] = Safari.WaterSnake({
    parent = map.id,
    pois = {
        POI({
            24806680, 30606640, 30806680, 31406760, 31606820, 36807500,
            37407600, 37607600, 45204820, 45204860, 45604840, 46205040,
            46405100, 46405160, 46605040, 46605100, 48204700, 48204840,
            48204860, 48604840, 48604860, 48804680, 49204640, 56405200,
            56605200, 56805260, 58005520, 58005560, 72403700, 73203720,
            73603720, 74604140, 74804160
        })
    }
}) -- Water Snake

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = ns.node.Dragonrace({
    label = '{quest:75385}',
    -- normal = {nil, nil, nil},
    -- advanced = {nil, nil, nil},
    -- reverse = {nil, nil, nil},
    rewards = {
        Achievement({id = 17622, criteria = 7, oneline = true}), -- normal bronze
        Achievement({id = 17623, criteria = 7, oneline = true}), -- normal silver
        Achievement({id = 17624, criteria = 7, oneline = true}), -- normal gold
        Achievement({id = 17625, criteria = 7, oneline = true}), -- advanced bronze
        Achievement({id = 17626, criteria = 7, oneline = true}), -- advanced silver
        Achievement({id = 17627, criteria = 7, oneline = true}), -- advanced gold
        Achievement({id = 17628, criteria = 7, oneline = true}), -- reverse bronze
        Achievement({id = 17629, criteria = 7, oneline = true}), -- reverse silver
        Achievement({id = 17630, criteria = 7, oneline = true}) -- reverse gold
    }
}) -- Durotar Tour
