-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 83, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[53804920] = Safari.AlpineChipmunk({
    pois = {
        POI({
            22605620, 23605380, 24205140, 24205160, 24605260, 25204640,
            25204980, 26405660, 26405820, 27405220, 27605220, 27605560,
            29805560, 32204720, 33404980, 33405320, 33405600, 33604960,
            35004700, 35005900, 36005720, 36604920, 37805720, 38405080,
            38805640, 39405520, 39405680, 39605680, 41405680, 42005400,
            42205580, 42205880, 44401360, 45401920, 45405940, 45605940,
            46406040, 46603080, 46606040, 47203360, 47403580, 47404300,
            47604000, 47606020, 48203140, 48204260, 48204480, 48204720,
            48403280, 48803700, 49203540, 49604060, 50203520, 50404440,
            50404460, 50805920, 51404780, 51603580, 51603800, 52004340,
            52004360, 52004460, 52205940, 52404600, 52602000, 52606060,
            52804000, 53006320, 53204920, 53205940, 53206160, 53404200,
            53802320, 53804920, 53806540, 54005980, 54202980, 54205840,
            54205860, 54206440, 54206600, 54206780, 54603880, 54604660,
            54806940, 55006700, 55204160, 55206220, 55606660, 55606800,
            55806240, 55806260, 56006980, 56205840, 56205860, 56806220,
            56806460, 56806900, 56808700, 57005600, 57008920, 57204060,
            57404960, 57807400, 57807840, 57807860, 58005040, 58005060,
            58207080, 58208780, 58404040, 58405580, 58602140, 58604040,
            58606360, 58805340, 58805360, 58805960, 58806960, 58807680,
            59005740, 59006780, 59206680, 59208940, 59407080, 59407900,
            60006600, 60008000, 60206300, 60206940, 60206960, 60406720,
            60606960, 61007560, 61008240, 61008260, 61205240, 61205260,
            61207200, 61207860, 61403460, 61406440, 61406460, 61603460,
            61807440, 62205080, 62604360, 62608980, 62805220, 63005440,
            63005460, 63405940, 63405960, 63605540, 63803540, 63806220,
            64005640, 64206940, 64206960, 64404160, 64404640, 64405220,
            64407560, 64407720, 64604320, 64605200, 64607980, 64608800,
            64608940, 65003640, 65404020, 65405640, 65405660, 65603960,
            65605840, 65806940, 66005460, 66203660, 66203860, 66204500,
            66404420, 66405660, 66406720, 66604720, 66803720, 67004220, 68004560
        })
    }
}) -- Alpine Chipmunk

map.nodes[30005420] = Safari.AlpineHare({
    pois = {
        POI({
            21404640, 21404660, 23005120, 23206020, 23604880, 23805080,
            23805960, 24005260, 24005940, 24205780, 24604820, 24606160,
            25205140, 25205180, 25404920, 25405620, 25405800, 25605620,
            25605760, 26004880, 26204980, 26404780, 26405140, 26405200,
            26805020, 27005640, 27005660, 27405060, 27405300, 27405780,
            27604920, 28205340, 28205360, 28205660, 28605480, 28605800,
            29805760, 30005420, 30205540, 30205560, 30805400, 30805700,
            31605720, 32205240, 32604820, 32805300, 32805620, 33004720,
            33205760, 34004940, 34204840, 34204980, 34205660, 34405120,
            34405640, 34805800, 35005240, 35005700, 35605580, 37005720,
            37405620, 38205340, 38205360, 38605540, 38605700, 40005340,
            40605880, 41605820, 42205700, 42805660, 44005740, 44605660,
            44805640, 46005280, 46405380, 46405680, 46406020, 46602060,
            46605380, 46605700, 46805920, 47006020, 47206060, 48002740,
            48203540, 48404440, 48404540, 48404560, 49005980, 49203860,
            49402020, 49404420, 49803360, 49803660, 49803880, 49804600,
            50203800, 50204100, 50404240, 50603860, 50604340, 50604360,
            50604820, 50605900, 51003100, 51204940, 51204960, 51403280,
            51803980, 52004200, 52006240, 52006260, 52204840, 52406120,
            52606120, 53202080, 54003120, 54004020, 54006300, 54006440,
            54006580, 54403360, 54603340, 54603360, 54606660, 54802320,
            55006000, 55403760, 55404420, 55405020, 55604420, 55605020,
            55805740, 55806840, 55806860, 56002260, 56006300, 56006620,
            56203500, 56205380, 56208580, 56408760, 56603960, 56606220,
            56606880, 56806580, 57003140, 57204540, 57204560, 57204720,
            57204760, 57402200, 57403660, 57606240, 57606260, 57606780,
            57807600, 58003400, 58005480, 58205840, 58205860, 58206920,
            58208940, 58407020, 58806760, 58807360, 59204420, 59406640,
            59406660, 59407780, 59606820, 59608860, 59806460, 59806980,
            59807100, 60206660, 60207200, 60406640, 60803880, 60804640,
            60807380, 61003280, 61003620, 61006680, 61206180, 61208000,
            61404140, 61404160, 61407740, 61407760, 62005580, 62203780,
            62205940, 62207040, 62207060, 62405800, 62605780, 62806520,
            62808100, 63403420, 63404380, 63404940, 63404960, 63405280,
            63603680, 63603960, 63604380, 63604940, 63604960, 63605280,
            63607560, 63609020, 63803940, 64007340, 64203000, 64203780,
            64207360, 64207960, 64406800, 64805440, 64805460, 64805820,
            65007620, 65403840, 65406660, 65606640, 65606660, 65803580,
            65804220, 65806280, 66006040, 66006060, 66205820, 66206360, 67404480
        })
    }
}) -- Alpine Hare

map.nodes[50605460] = Safari.CrystalSpider({
    pois = {
        POI({
            48005480, 48005640, 48205660, 48405420, 48605420, 48605540,
            49005640, 49405740, 49405760, 49605560, 49605780, 49805700,
            50005440, 50005460, 50605460, 50805440, 51205340, 51405620,
            51805300, 52005400, 52005540, 52405620, 52605400, 53205480,
            57008060, 57008180, 57208280, 57408380, 58008380, 58608420,
            59408520, 59608440, 59608520, 60608600, 61608700, 61808540,
            62008600, 62608640, 63008680
        })
    }
}) -- Crystal Spider

map.nodes[47404420] = Safari.MountainSkunk({
    pois = {POI({44005900, 47404420, 58408120})}
}) -- Mountain Skunk

map.nodes[60405100] = Safari.RabidNutVarmint5000({
    pois = {
        POI({
            58605140, 59204820, 59204920, 59205040, 59405160, 59605180,
            59805000, 60204800, 60405100, 60405260, 60604840, 60605100,
            61204940, 61204960
        })
    }
}) -- Rabid Nut Varmint 5000

map.nodes[59805000] = Safari.RoboChick({
    pois = {
        POI({
            58605140, 59204820, 59204920, 59205040, 59405160, 59605180,
            59805000, 60204800, 60405100, 60405260, 60604840, 60605100,
            61204940, 61204960, 61205160
        })
    }
}) -- Robo-Chick

map.nodes[57404600] = Safari.SnowyOwl({
    pois = {
        POI({
            22404660, 22604640, 22604660, 23206000, 24405440, 26405680,
            27404940, 27604920, 30405700, 30605700, 34404900, 34405660,
            34605640, 34605660, 40805680, 41204940, 41204960, 44004940,
            45205400, 45401440, 45401460, 45601440, 45601480, 46402840,
            46402860, 46602840, 46602860, 46804800, 46805920, 48203680,
            48401740, 48401760, 48601740, 48601760, 49605020, 50002320,
            50204200, 51403240, 51403260, 51603240, 51603260, 52004900,
            52602640, 52602660, 52806180, 54404080, 55006740, 55806280,
            55807380, 56002200, 56203820, 56208640, 56208660, 56602980,
            56807880, 57007840, 57404600, 57605880, 58008920, 58208400,
            58405520, 58605500, 59007040, 59202280, 60006580, 60404080,
            60409080, 60604080, 60609080, 60807240, 60807260, 61003140,
            61003160, 61007900, 61407020, 61408320, 61607020, 61806140,
            62008620, 62402500, 62602500, 63404920, 63404960, 63604940,
            64407640, 64407660, 64408940, 64608940, 64608960, 64803720,
            64805560, 65403080, 65603100, 66206340, 66206380, 67204380
        })
    }
}) -- Snowy Owl
