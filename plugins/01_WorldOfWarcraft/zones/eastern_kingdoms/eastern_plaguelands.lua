-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 23, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[45602780] = Safari.Bat({
    pois = {
        POI({
            4004540, 4004560, 4404300, 5204900, 6805140, 8205320, 8605440,
            8605500, 10205760, 11805680, 12207240, 13202160, 13606460, 14207080,
            14207160, 14602420, 15006420, 15207080, 15402340, 15602100,
            15607140, 16003140, 16401880, 16407200, 16602100, 16807220,
            17003220, 18607840, 18807860, 19007320, 19402340, 20006620,
            20603020, 21002620, 21007760, 21202680, 21406200, 21601860,
            22008160, 22008280, 22203280, 23803420, 23805780, 24006240,
            24006260, 24606160, 25206320, 25807520, 26805900, 26806580,
            27006540, 27201840, 27203360, 27207000, 28003720, 28006720,
            28407680, 28807680, 29006320, 29206700, 29807120, 29807160,
            30006500, 30007540, 30007560, 30203500, 30606680, 30802160,
            30806180, 31002580, 31202340, 31603160, 32406340, 32406620,
            32606360, 32606600, 33007860, 33207840, 33607480, 34202580,
            34602700, 35201640, 35207320, 35401680, 35406300, 35407520,
            35407560, 35606280, 35801840, 35807620, 36601880, 36602940,
            37006300, 37606140, 37606920, 37607100, 37807960, 38206620,
            38403400, 38603040, 38607740, 38607760, 39202420, 39206500,
            39407300, 39606480, 39607080, 39607300, 39806800, 40006740,
            40206940, 40207420, 40606040, 41002800, 41002900, 41003100,
            41203440, 41407300, 41602380, 41607300, 42005980, 42203160,
            42403120, 42603340, 43007280, 43202560, 43802480, 43802680,
            43803600, 43806400, 44202200, 44406160, 44803420, 44805440,
            44805520, 45004960, 45005620, 45007220, 45407040, 45602780,
            46002260, 46003940, 46203980, 46605860, 46805820, 47202560,
            47601860, 48207100, 48603780, 49202840, 49603940, 49803080,
            49807380, 50405000, 50602540, 50607280, 51406720, 51606920,
            51606980, 52201600, 52404240, 52404280, 52407180, 52407440,
            52407460, 52805800, 52807560, 53002920, 53202760, 53204820,
            53401700, 53802220, 53802380, 53804240, 54004280, 55001980,
            55004860, 56004460, 56005200, 56407860, 56607860, 57604280,
            58003180, 58403300, 58405960, 58602100, 58603780, 58605840,
            58606160, 58607820, 58805460, 58806140, 59404500, 59606160,
            59804520, 60003760, 60202520, 60402280, 61003600, 61605920,
            61606280, 61802320, 62002940, 62003740, 62007420, 62402620,
            62407280, 62602620, 63002800, 63004560, 64003200, 64003700,
            64203080, 64205320, 64404480, 64406580, 64604340, 64604500,
            64607260, 64803400, 64803840, 64803860, 64804360, 65004040,
            65203260, 65203600, 65603280, 65606620, 66404880, 67005100,
            67406340, 67802760, 68006980, 68206500, 68403000, 68604600,
            69404880, 69405060, 69406700, 69606720, 69606780, 70007100,
            70204840, 70406500, 71006040, 71006140, 72006360, 72205360,
            72404940, 72605400, 73606100, 73805620
        })
    }
}) -- Bat

map.nodes[11206560] = Safari.BlackRat({
    pois = {POI({10606400, 11206560, 35008520})}
}) -- Black Rat

map.nodes[58804500] = Safari.FesteringMaggot({
    pois = {
        POI({
            10405920, 10605860, 11406900, 11606820, 11606880, 12402640,
            12602620, 13002340, 13002360, 14401920, 14601860, 15003040,
            15403080, 16401500, 16801820, 16802640, 16806300, 17206220,
            18207440, 18207480, 18601280, 20002460, 20003320, 20203360,
            20601540, 20602920, 20602960, 21006120, 21207140, 21207940,
            21407160, 21408460, 21806380, 22206340, 22802880, 23402260,
            23407640, 23602220, 23807680, 25002600, 25605660, 25806300,
            26203400, 26602920, 27002140, 27207500, 27806120, 28402940,
            29006360, 29203560, 29805820, 29806580, 30802400, 31202300,
            31606820, 31805200, 32202740, 32807100, 33203400, 33207480,
            33607500, 33806520, 34006200, 34204840, 34402140, 34402160,
            34608180, 35802660, 36001900, 36002640, 36004860, 36204840,
            36407420, 36601960, 36607420, 37007740, 37007760, 37204440,
            37606540, 37806580, 38803220, 39608340, 40008360, 40207140,
            40207200, 40403380, 40406040, 40603360, 40606040, 40606060,
            42202260, 42203060, 44202680, 44803780, 44805200, 45005960,
            45205920, 45603180, 45603840, 45803140, 47002480, 47202400,
            47202600, 47403440, 47403460, 47603440, 47603480, 47605760,
            48806580, 49806880, 50004400, 50006960, 50402800, 52605000,
            53007240, 53601240, 53801280, 53804280, 54201880, 54407780,
            55405780, 55408020, 55608000, 55805780, 56204440, 56204780,
            56404460, 56602700, 56604400, 58006920, 58403240, 58407020,
            58408000, 58603240, 58603260, 58607980, 58804500, 59402140,
            59606420, 60006340, 61205320, 61604640, 61607720, 61805900,
            62007460, 62203660, 62402680, 62602660, 64003880, 64604240,
            64804280, 65002360, 65003480, 65005900, 65605120, 65605160,
            67003220, 69606340, 69606380, 70607500, 71804760, 72006640,
            73405580, 73605560, 74206080
        })
    }
}) -- Festering Maggot

map.nodes[29806480] = Safari.InfectedFawn({
    pois = {
        POI({
            04204540, 04204580, 04404320, 05204900, 06805120, 08205320,
            08605440, 08605480, 10005800, 10605960, 10805900, 11605680,
            12007260, 13202140, 13806520, 14602460, 14806440, 15207100,
            16203140, 16407260, 16802100, 16807200, 17407260, 17601840,
            17801860, 18407700, 19007300, 20405880, 20601540, 20602900,
            20605860, 20802600, 21401640, 21406240, 22008280, 22203280,
            23805780, 24206260, 24406140, 24406160, 25206320, 25407120,
            25605860, 25807520, 26206660, 26207020, 26406640, 27006520,
            27006560, 27201820, 27206980, 27606940, 28006740, 28006760,
            28407660, 28603680, 28607640, 28806300, 28807660, 29406720,
            29606740, 29806480, 30007540, 30207560, 30602140, 30602160,
            30606680, 30806180, 31006140, 31402360, 31802220, 32606360,
            32606620, 33007860, 33207840, 33607500, 34202580, 34601820,
            35001540, 35201640, 35207340, 35207540, 35406320, 35606300,
            35801780, 35807620, 36001860, 36201680, 36401960, 36402780,
            36601960, 36602980, 36801880, 37006280, 37606120, 37606920,
            37607100, 37801980, 37807560, 37807960, 38007540, 38206620,
            38403040, 38407760, 38607740, 38803080, 39202380, 39406500,
            39407280, 39407620, 39606480, 39607080, 39607300, 39803360,
            40006740, 40006780, 40206960, 40207420, 40406060, 40606040,
            40606060, 41002900, 41407340, 41407360, 41607300, 41802340,
            42002200, 42003160, 42006020, 42603340, 43007300, 43602660,
            43802420, 43802640, 43806420, 44402200, 44406160, 44603060,
            44605440, 45007220, 45205000, 45205600, 45603560, 45607060,
            45802800, 46002300, 46202640, 46603820, 46805820, 47002040,
            47002540, 47401860, 47804780, 48407100, 48603800, 48807020,
            49203240, 49604080, 50405000, 50804580, 51007240, 51007280,
            51206720, 51406960, 51804880, 51806980, 52401520, 52404260,
            52407200, 52407480, 52802900, 52805780, 52807540, 53002760,
            55004960, 55805180, 56004480, 56006820, 56202780, 56204420,
            56403560, 56407880, 56607840, 56607860, 56805020, 56805380,
            57406700, 57407960, 57607000, 57607980, 58006680, 58006920,
            58205240, 58207800, 58207860, 58403300, 58405960, 58602080,
            58603300, 58605260, 58807800, 59004060, 59202960, 59404520,
            60003780, 60202460, 60402280, 61206580, 61206660, 61405960,
            61802340, 61803760, 62003740, 62007440, 62007600, 62007680,
            62602560, 62605000, 63002820, 63403060, 63403160, 63603160,
            63803720, 63804520, 63806300, 64002900, 64405340, 64405600,
            64407000, 64604480, 64607220, 64803840, 64807320, 65003380,
            65004040, 65203580, 65406540, 65406580, 65603280, 66006360,
            66007420, 66204900, 66403540, 66406800, 66603560, 66605040,
            67004840, 67006980, 67203220, 67205200, 67406300, 68004820,
            68006980, 68007160, 68403020, 68804580, 69204800, 69405000,
            69405060, 69604880, 71006000, 71206100, 72005360, 72404960,
            73206540, 73805600
        })
    }
}) -- Infected Fawn

map.nodes[25206300] = Safari.InfectedSquirrel({
    pois = {
        POI({
            04204580, 04404320, 05204880, 06805140, 08205340, 08605440,
            08605460, 10605880, 11605700, 11807240, 13202140, 13202180,
            13806520, 14007100, 15006400, 15202100, 16203100, 16602100,
            16801920, 16802520, 16807220, 19007280, 19606580, 19802580,
            20403040, 20801980, 21001940, 21202640, 21202880, 22208160,
            24202300, 25206300, 25407540, 26207040, 26406660, 27005880,
            27206540, 28003720, 28407660, 28607680, 29006320, 29206360,
            29406720, 30406160, 30606640, 30606680, 30802580, 30806160,
            31403160, 32606600, 32807840, 35406300, 35807600, 37406140,
            37606940, 37807580, 38001960, 38007980, 38603040, 38802560,
            39407300, 39607080, 39607300, 39806740, 40006820, 40406980,
            40803540, 41002760, 41203060, 41802160, 41806000, 42603360,
            44002460, 44406140, 44603420, 44606140, 44805420, 45007220,
            46202300, 46202660, 46203540, 46805760, 47803040, 48007120,
            48803820, 50004400, 50007380, 50605000, 51406980, 51606900,
            51804900, 51806960, 52401560, 52805840, 52807560, 53401740,
            55204760, 56005140, 56204420, 56402820, 56607860, 57804320,
            58405300, 58406960, 58602100, 58806160, 59002940, 59007840,
            59604500, 60005640, 61202680, 61403560, 61406640, 61602320,
            61605960, 62405620, 63206520, 63803100, 63803700, 64002940,
            64005320, 64006740, 64607280, 65003840, 65004320, 66204900,
            66603500, 66805040, 67802720, 67804840, 69604860
        })
    }
}) -- Infected Squirrel
