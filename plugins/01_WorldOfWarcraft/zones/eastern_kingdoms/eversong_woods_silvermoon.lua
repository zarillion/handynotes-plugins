-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 94, settings = true})
local sunstrider_isle = ns.Map({id = 467, settings = true})
local silvermoon = ns.Map({id = 110, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

sunstrider_isle.nodes[59404120] = Safari.Cat({
    parent = map.id,
    pois = {POI({59404120, 61004120})}
}) -- Cat

silvermoon.nodes[91205600] = Safari.Cat({
    parent = map.id,
    pois = {POI({91205600, 91805780})}
}) -- Cat

map.nodes[45805160] = Safari.RubySapling({
    pois = {
        POI({
            25007500, 25408000, 25608020, 27407100, 27607100, 27808020,
            29205640, 29205660, 30008320, 30008360, 30206000, 31608040,
            31608060, 32005340, 32007260, 32205360, 32207240, 33405940,
            33405980, 33605940, 33605960, 34406240, 34407640, 34407660,
            34606240, 34607640, 34607660, 35807300, 36205620, 36205680,
            36406600, 36606600, 37205960, 38007500, 38403500, 39003580,
            39003840, 39006340, 39006360, 39203380, 39405500, 39605480,
            39607240, 39607260, 40203300, 40405800, 40406920, 40605820,
            40606600, 40606920, 40606960, 41003080, 41004020, 41404320,
            41404380, 41405440, 41405460, 41604400, 41605440, 41803640,
            41803660, 42203040, 42402780, 42806940, 43004220, 43005940,
            43005960, 43006960, 43008380, 43203060, 43203540, 43203560,
            43205140, 43205160, 43403040, 43408820, 43603540, 43604200,
            43608820, 43608860, 43806540, 43806560, 44202800, 44403960,
            44404600, 44603080, 44603940, 44603980, 44604600, 45408400,
            45608380, 45805140, 45805160, 46005660, 46204440, 46204460,
            46404140, 46404160, 46406800, 46606800, 46803620, 46806240,
            46806260, 48005380, 48008960, 48405340, 50208740, 50208760,
            52008440, 52008480, 52205440, 52205460, 52205820, 52805140,
            52805160, 52807680, 52808100, 53406580, 53605460, 53805440,
            54206140, 54206160, 54208080, 54805080, 54805880, 54807060,
            55007040, 55407420, 55407460, 55607440, 56207020, 56207080,
            56405380, 56605400, 57405900, 57406440, 57406460, 57408280,
            57606460, 57608280, 57805560, 58005520, 58405140, 58405180,
            58407100, 58605180, 58607080, 59007380, 59406080, 60206540,
            60206560, 60605620, 60805240, 60805260, 61206900, 61605880,
            62006480, 62207540, 62207560, 63405800, 63605780, 63806340,
            63806380, 64006740, 64006760, 64806080, 65406940, 65406960,
            65606940, 65606960, 66005780, 66404820, 66407140, 66407160,
            66604820, 66607140, 66607160, 66806780, 67604420, 67604460,
            69203780, 69405000, 69605980, 70004360
        })
    }
}) -- Ruby Sapling

map.nodes[43804220] = Safari.SmallFrog({
    pois = {
        POI({
            39405900, 43603700, 43803600, 43804220, 46004160, 46204380,
            57005800, 60806740, 66207900
        })
    }
}) -- Small Frog

map.nodes[44003540] = Safari.Snake({
    pois = {
        POI({
            42404060, 43203500, 44003540, 45604660, 45803520, 47603480,
            47604220, 47803640, 47803660, 47804380, 63007880, 67005600,
            68205740, 68607020
        })
    }
}) -- Snake
