-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 27, settings = true})
local ironforge = ns.Map({id = 87, settings = true})
local new_tinkertown = ns.Map({id = 469, settings = true})
local coldridge_valley = ns.Map({id = 427, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[55404560] = Safari.AlpineHare({
    pois = {
        POI({
            42805120, 43206320, 44605980, 45605940, 45806000, 46805680,
            47404060, 47406300, 47606440, 47805920, 48005440, 49003440,
            49803840, 50003940, 50006460, 50605020, 50803580, 50804600,
            51803800, 51804520, 51806360, 52005000, 52005140, 52204000,
            52205600, 53804600, 54204300, 54404040, 54406080, 54605300,
            55005360, 55404560, 55405560, 55805340, 56404420, 56404940,
            56604920, 57204640, 57205940, 57404100, 57604080, 58004680,
            58404820, 58804060, 59004040, 59604780, 59803980, 61605640,
            61805680, 62404660, 62405340, 62605400, 62805540, 63004620,
            63405040, 63805020, 64004540, 66004960, 67605620, 69005240,
            69805680, 70205380, 70804640, 71403920, 74005360, 74405120,
            76403080, 76802660, 76803460, 76804100, 77004860, 77403000,
            77403140, 77803040, 78202280, 79401920, 80205900, 80604820,
            80605420, 81404080, 81803980, 82803680, 83003900, 83204840,
            83205740, 85805700, 87202200, 88605160, 88605260
        })
    }
}) -- Alpine Hare

new_tinkertown.nodes[46404640] = Safari.AlpineHare({
    parent = map.id,
    pois = {
        POI({
            31404600, 31804600, 36007240, 37808160, 38607380, 39206920,
            39406800, 40002520, 42002660, 44803680, 46205960, 46404640,
            46804580, 47405920, 47806860, 47807300, 48404920, 49608340,
            50604540, 50807600, 50808760, 51003180, 53207120, 54402880,
            54406280, 58804180, 59806800, 64402760, 71205560, 71805660, 77405600
        })
    }
}) -- Alpine Hare

coldridge_valley.nodes[56204860] = Safari.AlpineHare({
    parent = map.id,
    pois = {
        POI({
            30403460, 41206840, 56204860, 60205380, 62005420, 67405380,
            70603660, 73003520
        })
    }
}) -- Alpine Hare

map.nodes[27203600] = Safari.IrradiatedRoach({
    pois = {
        POI({
            25403660, 25603640, 25803180, 27203600, 27803420, 28003740,
            28003760, 28803760
        })
    }
}) -- Irradiated Roach

ironforge.nodes[42808040] = Safari.LongTailedMole({
    parent = map.id,
    pois = {
        POI({
            21204560, 21602320, 21604740, 22002360, 22401720, 22401800,
            22601740, 22601780, 28602800, 29202880, 38807800, 40404380,
            41401140, 42401100, 42808040, 49808500, 50408400, 53201060,
            53401000, 53805480, 54201100, 55001120, 55205320, 55205360,
            57803860, 58403960, 59002000, 59602880, 63200520, 63600500,
            64200560, 64600500, 72001540, 74601300, 75001080, 75002320, 75602100
        })
    }
}) -- Long-Tailed Mole

map.nodes[56803660] = Safari.SnowCub({
    pois = {
        POI({
            42005800, 43405920, 43405960, 46205980, 47403840, 47403860,
            47805920, 48205400, 48206480, 48405460, 48604100, 49403400,
            49405800, 49605800, 49803940, 50003960, 50005400, 50606440,
            51203620, 51205000, 51404420, 51604420, 51604940, 51805400,
            51805860, 52004620, 52004660, 52005840, 52203940, 52203960,
            52206300, 52603980, 52804140, 52804180, 53005220, 53205800,
            54403840, 54803820, 54803860, 55005340, 55005360, 55806120,
            55806160, 56004300, 56004580, 56203700, 56205760, 56403640,
            56405740, 56603640, 56803660, 56805200, 57204960, 57404940,
            58404820, 58405800, 58604820, 58604860, 58605800, 59004400,
            60805700, 62005660, 62405640, 63004440, 63004460, 63605300,
            63805940, 65004140, 65404960, 65604940, 65604960, 66805840,
            66805860, 68405420, 69005200, 69405140, 69805740, 69805760,
            70405440, 70405460, 72005860, 72404840, 72404860, 72604860,
            72804820, 73405240, 73405280, 73605240, 74204940, 74404160,
            74404960, 77404840, 77404860, 77601760, 77603080, 77802120,
            78005140, 78202840, 80405340, 80605280, 81404880, 82404700,
            82806000, 85205740, 85205780, 86004500, 86004820, 87205600,
            87604140, 87604160, 88005340, 88005360
        })
    }
}) -- Snow Cub

new_tinkertown.nodes[48605740] = Safari.SnowCub({
    parent = map.id,
    pois = {
        POI({
            35206860, 39406740, 39806720, 40006800, 41403540, 41403600,
            41603620, 41803680, 47805800, 48605740, 50204340, 67605080, 72805780
        })
    }
}) -- Snow Cub

coldridge_valley.nodes[62405020] = Safari.SnowCub({
    parent = map.id,
    pois = {POI({56002980, 62405020, 67605680})}
}) -- Snow Cub


-------------------------------------------------------------------------------
------------------------------- CRAZY FOR CATS --------------------------------
-------------------------------------------------------------------------------

new_tinkertown.nodes[45605280] = ns.node.CrazyForCats({
    parent = map.id,
    id = 68838,
    rewards = {
        ns.reward.Achievement({id = 8397, criteria = 23585}),
        ns.reward.Pet({id = 1162})
    },
    pois = {
        POI({
            44005340, 44205460, 44405400, 44805320, 45205120, 45205380,
            45404980, 45405240, 45605020, 45605280, 45605380, 45805220,
            45805560, 46005540, 46605440, 46605460, 46605560, 46805340, 47605360
        })
    }
}) -- Fluxfire Feline