-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 1, settings = true})
local orgrimmar = ns.Map({id = 85, settings = true})
local cleftofshadow = ns.Map({id = 86, settings = true})

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

orgrimmar.nodes[53205880] = Safari.DungBeetle({
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
