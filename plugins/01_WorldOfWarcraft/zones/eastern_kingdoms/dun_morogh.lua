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
local new_tinkertown = ns.Map({id = 30, settings = true})
local coldridge_valley = ns.Map({id = 427, settings = true}) -- needs to be checked

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
