-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 78, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[48204860] = Safari.AshLizard({
    pois = {
        POI({
            43604760, 43804720, 44204880, 44605360, 44804600, 45204540,
            45205680, 45605680, 45805240, 46004660, 46005260, 46005500,
            46804380, 47004580, 47005300, 47204960, 47404280, 47404480,
            48005340, 48005380, 48005680, 48204860, 48404400, 49204240,
            49204260, 49404600, 49405620, 49604640, 49605600, 49805440,
            50804940, 51004560, 51004680, 51005000, 51804660, 51805420,
            51805460, 52005200, 52404540, 52404560, 52604560, 52804540,
            52805580, 53405500, 53604120, 53604160, 53605480, 54004720,
            54004760, 54005420, 54604280, 55405740, 55605720, 56005780, 56204600
        })
    }
}) -- Ash Lizard

map.nodes[64006520] = Safari.Beetle({
    pois = {
        POI({
            21204980, 22603340, 22806660, 30202680, 30403060, 32003600,
            32007780, 32806800, 33007260, 33206520, 33602260, 33607260,
            34002200, 35207380, 35407800, 35607360, 36006220, 38802400,
            38804580, 38806760, 38808060, 40605420, 40605820, 41601800,
            44806640, 46002080, 48201660, 49408540, 50402140, 52402520,
            52408240, 53003240, 55407740, 55602980, 56007960, 56607740,
            57007640, 59005260, 59602520, 59606960, 60606700, 60807800,
            61602700, 61608140, 63207700, 64006520, 64607240, 65803680,
            65806140, 67204800, 67205080, 67206460, 67207000, 68207620,
            68606460, 70806420, 71006240, 71806800, 72006920, 73203700,
            78206740, 79804520, 80004960
        })
    }
}) -- Beetle

map.nodes[48402460] = Safari.Cockroach({
    pois = {
        POI({
            36403120, 36803380, 45201780, 47401980, 47403060, 47801680,
            48402460, 49402100, 51202920, 54602340, 54606020, 55406080,
            56606280, 65407220, 66606660, 69403960
        })
    }
}) -- Cockroach

map.nodes[36606300] = Safari.DiemetradonHatchling({
    pois = {
        POI({
            24606120, 26405880, 26605840, 26605900, 27206480, 27406580,
            27606520, 28205600, 28405520, 28605600, 29007340, 29205500,
            29206200, 29406280, 29407360, 30005940, 30006420, 30205960,
            30206340, 30606440, 30806820, 31005920, 31206320, 31606300,
            32607100, 33606380, 33806460, 34207340, 34407640, 34607340,
            34806540, 34806560, 34807640, 35406120, 35406160, 35606140,
            35806160, 35807080, 36406280, 36606300, 36607120, 38205040,
            38405120, 38406840, 38407080, 38606820, 38607100, 38607640,
            38806660, 39008260, 39406160, 39808140, 40005320, 40005360,
            40005620, 40006520, 40006560, 40205020, 40405080, 40406820,
            40606700, 40606760, 40807440, 41005220, 41005680, 41207480,
            41407620, 41806880, 42005900, 42007660, 42207640, 42405720
        })
    }
}) -- DiemetradonHatchling

map.nodes[66205840] = Safari.EmeraldBoa({
    pois = {
        POI({
            25405040, 25405060, 28005260, 28205220, 29605040, 29605240,
            29605260, 30004740, 30404760, 30604780, 31202480, 31205380,
            31205840, 31402440, 31405320, 32205940, 33402420, 33602640,
            34002660, 34204860, 34602440, 34602460, 35402300, 35602320,
            35805300, 35805400, 35806000, 36005080, 36805960, 37005500,
            37405900, 37602540, 39402820, 40802720, 42402860, 42403060,
            43003720, 43403020, 43602980, 44004020, 44203700, 44804000,
            53403680, 55403900, 58404300, 58804280, 61006860, 62607100,
            63006960, 63604500, 64207200, 64407340, 64605840, 64606920,
            64806320, 64806720, 64806960, 64807180, 65004020, 65007520,
            65206820, 65407640, 65407660, 65606400, 66007120, 66205840,
            66207280, 66404240, 66604260, 67004140, 67004200, 67006440,
            67006460, 67604300, 67607500, 67805220, 67805460, 68007260,
            68206420, 68604720, 69204820, 69205200, 69205260, 69605040,
            69607060, 69805060, 69805620, 69807040, 69807340, 70006320,
            70006360, 70007520, 70007560, 70404300, 70806680, 71204180,
            71204960, 71205880, 71405580, 71605580, 71605840, 71806000,
            72406220, 72604440, 72606240, 72606420, 72804620, 73805680,
            74204940, 74404700, 74404980, 74804840, 75205080
        })
    }
}) -- Emerald Boa

map.nodes[48204880] = Safari.FireBeetle({
    pois = {
        POI({
            44004940, 45005680, 45805460, 47204960, 47404300, 48005360,
            48005700, 48204300, 48204880, 49805420, 51805420, 52005180,
            52604520, 52605620, 53405040
        })
    }
}) -- Fire Beetle
