-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 48, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[24405000] = Safari.LittleBlackRam({
    pois = {
        POI({
            15601940, 15601960, 15809020, 16401240, 16401260, 16408580,
            16608600, 16808360, 17008340, 17202980, 17403300, 17607940,
            17607960, 17608840, 17807120, 18002780, 18007420, 18007460,
            18602540, 18606480, 18801520, 19201940, 19201960, 19202140,
            19402300, 19408940, 19803640, 19803660, 20206940, 20206960,
            20403040, 20403060, 20406740, 20406760, 20601200, 20603040,
            20603060, 20606740, 20801500, 20802480, 21002080, 21008820,
            21205940, 21205960, 21608560, 21808040, 21808060, 22200980,
            22201360, 22203560, 22401340, 22403180, 22403540, 22601340,
            22603180, 22603560, 22804700, 22805340, 22805360, 23002640,
            23004180, 23202660, 23205740, 23206240, 23405780, 23408240,
            23805940, 23805960, 23807820, 24200720, 24405000, 24605000,
            25005640, 25204640, 25406380, 25606380, 26407040, 26407080,
            26607080, 26608260, 27006200, 27208820, 27208860, 27807060,
            28207360, 28408220, 28408260, 28608240, 29000520, 29007880,
            29200620, 29600840, 30600480, 31806540, 32000900, 32402140,
            32601080, 32601920, 33000940, 33000960, 33006740, 33400780,
            33600780, 33802560, 34001480, 34006860, 34201340, 34201360,
            34202120, 34206240, 34608040, 34608060, 35000620, 35200680,
            35202560, 35206540, 35206560, 35605700, 36001100, 36606800,
            36806040, 37202020, 38400740, 38400940, 39404200, 39404260,
            39406300, 40004440, 40803020, 40803400, 41000720, 41201980,
            41204980, 41602640, 42201720, 42206800, 43205420, 43407120,
            43604480, 44806140, 45207120, 45805240, 45805260, 46603620,
            47004620, 47004660, 48803140, 50204320, 55204380, 55801140,
            56007180, 56607380, 56807040, 56807060, 57801040, 57801060,
            58001240, 58001260, 58007700, 59406840, 59406880, 59606840,
            60007420, 61806960, 62207240, 62207260, 63601560, 63801520,
            65002500, 65007940, 65007960, 66001440, 66202740, 66202760,
            66801700, 67001920, 67005480, 67808060, 68001700, 68005480,
            68405600, 68407800, 69804620, 70201760, 70408000, 70608000,
            71008340, 71405600, 71604820, 72001580, 72404680, 72407500,
            72807960, 73007940, 73607440, 73607460, 74407620, 74407660,
            74802280, 75602540, 76407620, 76807840, 77002940, 77203000,
            77205300, 77803820, 77806240, 78003260, 78005100, 78805520,
            79403400, 79403700, 79603340, 79603360, 79605680, 79606980,
            79807360, 80204200, 80403740, 80404540, 80404560, 80406900,
            80603740, 80606900, 80803760, 80807180, 81204580, 81406780,
            81607020, 84805940, 84805960, 84806460, 86005660, 86006300,
            86205620, 86806460
        })
    }
}) -- Little Black Ram

map.nodes[34807660] = Safari.Rat({
    pois = {POI({24403020, 28408020, 34807660, 35206160, 36005820})}
}) -- Rat

map.nodes[55205340] = Safari.SmallFrog({
    pois = {
        POI({
            41804140, 42602240, 42804500, 44002340, 45403780, 45605160,
            46002900, 46003500, 48205720, 49406600, 50005540, 50206560,
            51206520, 51404160, 52401900, 52605660, 52605780, 53202080,
            54606080, 55205340, 56804640, 58004480, 58004960, 58005800,
            59405040, 60804420, 60805180, 61005280
        })
    }
}) -- Small Frog

map.nodes[51405020] = Safari.Snake({
    pois = {POI({42801980, 51405020, 54801920})}
}) -- Snake

map.nodes[32201640] = Safari.Squirrel({
    pois = {
        POI({
            21201780, 25403680, 26206660, 27401280, 27401360, 27402140,
            28401700, 28402880, 29801240, 30004080, 30401280, 30803220,
            31005040, 31405800, 32201640, 33604560, 33804940, 34003500,
            35405140, 37204780, 37404320, 38601980, 38804240, 39201360,
            39203480, 39204820, 39404880, 39804540, 39804700, 41005200
        })
    }
}) -- Squirrel
