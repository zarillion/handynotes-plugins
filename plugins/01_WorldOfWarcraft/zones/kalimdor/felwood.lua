-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 77, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[64000760] = Safari.Beetle({
    pois = {POI({64000740, 64000760, 64600580, 65800580})}
}) -- Beetle

map.nodes[43403800] = Safari.Minfernal({
    pois = {
        POI({
            40204020, 40204060, 40204200, 40804340, 41204020, 41204440,
            41204460, 41403820, 41603820, 41603860, 41604180, 41803660,
            42403640, 42404460, 42603640, 42604220, 42604440, 42604460,
            43004340, 43403800, 43403940, 43403960, 43603820, 43804080,
            44004340, 44004360, 44403900, 44604140, 44604180, 45004320,
            45203860, 45403820, 45804240, 46203860, 46204100, 46404000, 46604000
        })
    }
}) -- Minfernal

map.nodes[49008280] = Safari.TaintedCockroach({
    pois = {
        POI({
            35405340, 35405360, 35605920, 35805040, 35805060, 37206140,
            37206160, 37806560, 38805020, 39006740, 39006860, 39405800,
            39605140, 39605180, 40208280, 40605800, 41204600, 41207560,
            41604600, 41606040, 41606060, 42008460, 42805020, 43408560,
            43606440, 43606460, 44807920, 45206640, 45807300, 46208500,
            46409020, 46808820, 48409040, 48809020, 49007740, 49008280,
            49408580, 51208060, 52408380, 52608400, 54008140, 54008160,
            54201740, 54201880, 55402240, 55800800, 56008640, 56008660,
            59402580, 59602580, 59800940, 60401020, 60601000, 60601280,
            61800980, 61802020, 62401340, 62601300, 62801480, 63602140,
            63801060, 63802160, 64001040
        })
    }
}) -- Tainted Cockroach

map.nodes[43606660] = Safari.TaintedMoth({
    pois = {
        POI({
            35806000, 36406600, 37406080, 38805860, 39005840, 39006880,
            39203980, 39204360, 39206840, 39403940, 39404300, 39603920,
            39604300, 40004780, 40007240, 40007260, 40605640, 40803420,
            41402640, 41402660, 41602640, 41806940, 41806960, 42205200,
            42205700, 42406280, 42602780, 42606300, 43208580, 43606660,
            44207740, 44207760, 45403420, 45602360, 45603420, 45802320,
            46008020, 46402840, 46402880, 46607600, 47008960, 47403320,
            48008000, 48008640, 48008680, 48402340, 48402360, 48602340,
            48602360, 49008880, 50402620, 51408500, 51808180, 53008540,
            53608240, 53608260, 54008880, 54808540, 55808780
        })
    }
}) -- Tainted Moth

map.nodes[39803760] = Safari.TaintedRat({
    pois = {
        POI({
            33406580, 34206560, 35205180, 35406560, 36005880, 36206040,
            36206060, 36806040, 37006060, 37006580, 37405020, 37605020,
            37606780, 37806040, 37806060, 37806640, 38006680, 38007080,
            38204340, 38204360, 38205180, 38207200, 38403920, 38403980,
            38404820, 38407340, 38604480, 38604840, 38605940, 38605960,
            38606780, 38607300, 38803840, 38804440, 38805440, 38805460,
            39004000, 39005640, 39204240, 39205320, 39205660, 39404600,
            39404980, 39406640, 39407140, 39407160, 39604640, 39604980,
            39605840, 39608080, 39803760, 40003140, 40003160, 40003340,
            40003360, 40005060, 40007000, 40203520, 40203560, 40205280,
            40205640, 40205660, 40403740, 40404020, 40404380, 40406740,
            40406760, 40406880, 40603740, 40604400, 40803760, 41003140,
            41007200, 41204520, 41207680, 41402520, 41402780, 41402920,
            41403240, 41403260, 41404040, 41404060, 41404180, 41405100,
            41602780, 41602920, 41604040, 41604200, 41605080, 41608440,
            41802500, 41803580, 41804260, 41805340, 41805360, 41805680,
            41805820, 41806460, 41807400, 42002160, 42003800, 42003880,
            42005000, 42005620, 42006040, 42006060, 42006840, 42202120,
            42205220, 42206180, 42206380, 42206860, 42403140, 42403180,
            42407460, 42603160, 42606780, 42803440, 42806740, 43003460,
            43007960, 43201720, 43201840, 43202540, 43202560, 43206240,
            43206260, 43402020, 43402440, 43404240, 43404260, 43406480,
            43601580, 43603920, 43604240, 43606500, 43606740, 43606760,
            43806920, 43807120, 44004400, 44004840, 44204880, 44206240,
            44206440, 44402440, 44402460, 44403440, 44403460, 44403600,
            44404500, 44404680, 44407760, 44408120, 44602440, 44602460,
            44604160, 44604480, 44604640, 44604660, 44607620, 44607660,
            44804140, 44806760, 45001580, 45004320, 45202560, 45403600,
            45406680, 45407320, 45407980, 45603620, 45607280, 45803320,
            45803360, 45803820, 45804180, 45807220, 45808320, 45808520,
            46007420, 46007460, 46203180, 46402540, 46402560, 46403920,
            46404080, 46407700, 46408760, 46602560, 46603940, 46604080,
            46608440, 46608560, 46801720, 46808220, 46808920, 47202460,
            47204000, 47207280, 47402440, 47408460, 47601780, 47607840,
            47608000, 47802720, 47803320, 48007560, 48008100, 48008520,
            48202940, 48202960, 48207380, 48207500, 48401700, 48402220,
            48403100, 48403840, 48403860, 48407700, 48409080, 48601620,
            48601680, 48602140, 48603220, 48603820, 48608920, 48803360,
            49002800, 49003040, 49003060, 49008480, 49207760, 49208720,
            49403540, 49407920, 49603000, 49802000, 49803300, 49808640,
            50003580, 50201500, 50203180, 50402800, 50402860, 50408200,
            50602040, 50602060, 50602820, 50608180, 50608520, 50803320,
            50808060, 51401700, 51403180, 51408300, 51808360, 52002420,
            52408140, 52608600, 52801840, 52808140, 53002860, 53208520,
            53401360, 53402760, 53601320, 53601780, 53608860, 53802840,
            53808480, 54008600, 54008800, 54602080, 54608940, 54608960,
            54801820, 54808560, 55002340, 55208120, 55208400, 55208540,
            55401600, 55408700, 55801020, 55801140, 55801240, 55808940,
            55808960, 56000800, 56001260, 56001480, 56008200, 56201420,
            56208500, 56408280, 56608340, 56808360, 57002040, 57208500,
            58801900, 59601720, 61401880, 61602080, 63001920
        })
    }
}) -- Tainted Rat

map.nodes[41604740] = Safari.Toad({
    pois = {
        POI({
            36204880, 37204840, 38204840, 39004880, 39407060, 39804860,
            40004840, 40005400, 40207160, 40805380, 41005520, 41006940,
            41404720, 41406520, 41406660, 41604740, 41606660, 41807040,
            42204540, 42204560, 42204980, 42206600, 42404880, 42604880,
            43204780, 43404680, 43807600, 44007280, 44607360, 45407100,
            47602380, 47608280, 48402760, 48608200, 48802600, 49402440,
            49402460, 49602440, 49602740, 49802240, 61402260, 61801300
        })
    }
}) -- Toad
