-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local Safari = ns.node.Safari

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 50, settings = true})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[49004340] = Safari.Beetle({
    parent = 224,
    pois = {
        POI({
            37204720, 40205520, 40407820, 42204940, 42407720, 43603240,
            44004220, 44007680, 44604200, 44803460, 45203680, 45804260,
            46005560, 46005920, 46601920, 47205260, 47604960, 47605880,
            47802000, 47804940, 48003640, 48201380, 48601880, 48604640,
            48604660, 48606540, 48803100, 49004340, 49804760, 50005180,
            50005660, 50402520, 51405000, 51602760, 55403820, 56004020,
            57202760, 57808080, 58207620, 58207800, 58208340, 58404700,
            58407660, 58802920, 58804320, 59408540, 59408560, 59608540,
            60202100, 60208780, 60407740, 60607760, 61408680, 61608680,
            62007820, 62208120, 62608100, 62808040, 63007780, 63008600,
            63402920, 63402960, 63403120
        })
    }
}) -- Beetle

map.nodes[41804000] = Safari.CrimsonMoth({
    parent = 224,
    pois = {
        POI({
            38803980, 38804220, 39003740, 39003820, 39203520, 39204080,
            39603680, 39803620, 39803760, 39803860, 40004300, 40004360,
            40404000, 40604380, 40803420, 40803680, 40803800, 41004040,
            41004060, 41203620, 41204220, 41403920, 41603660, 41803440,
            41803460, 41803860, 41804000, 41804160, 42203600, 42404260,
            42603740, 42603760, 42604000, 42804060, 43004340, 43204420,
            43603940, 43803960, 43804320, 44004220, 44204060, 44604360
        })
    }
}) -- Crimson Moth

map.nodes[63603400] = Safari.ForestSpiderling({
    parent = 224,
    pois = {
        POI({
            33202900, 39603720, 43203880, 44804220, 47006260, 47404120,
            47605280, 48803000, 49601540, 51406920, 52406800, 53601800,
            56206200, 58403200, 58406040, 61003900, 63003760, 63603400
        })
    }
}) -- Forest Spiderling

map.nodes[53602540] = Safari.LizardHatchling({
    parent = 224,
    pois = {
        POI({
            26402480, 27801980, 28402200, 31401960, 31601960, 32402540,
            34202040, 34402100, 35403180, 36203420, 36604140, 37004440,
            37603620, 37603880, 37802700, 39403040, 39603380, 39604340,
            40003880, 41202440, 41203300, 41602820, 41604360, 42402380,
            42604680, 43002240, 43002260, 43203840, 43203880, 43403640,
            44005860, 44204460, 44206420, 44405440, 44405460, 44804220,
            45602320, 45802360, 46004300, 46204820, 46402920, 46405040,
            46603080, 47404100, 47405280, 47604120, 47605280, 48003400,
            48006260, 48403820, 49201620, 49203980, 49601540, 49601560,
            50605540, 50605560, 51401820, 51406500, 52406820, 52606840,
            52802040, 52804340, 52804360, 52805920, 53202300, 53402120,
            53402540, 53601800, 53602540, 53806180, 54002260, 54004120,
            54006540, 54802620, 54805780, 54806320, 55203860, 55404040,
            55404300, 55605760, 55806740, 56406360, 56605320, 56606360,
            56803500, 56804880, 57005100, 57203880, 57204300, 57603160,
            57606840, 57807240, 58202160, 58403520, 59607100, 60202200,
            60207220, 60403620, 60602980, 60803620, 61204300, 61402580,
            61403240, 61606740, 62205860, 62604780, 63004260, 63403100,
            63803120, 63805300, 64205040, 64805260, 65403140, 66203540,
            66403040, 66405340, 66803800, 68805300, 68805360, 76804420,
            79202700, 82004720, 84002600
        })
    }
}) -- Lizard Hatchling

map.nodes[48404500] = Safari.Polly({
    parent = 224,
    pois = {
        POI({
            24801920, 25001980, 28002040, 28002060, 28802480, 29403040,
            29403060, 29603040, 29603060, 32402700, 32602700, 32803140,
            32803180, 33002140, 33202160, 34201840, 34201880, 34803980,
            35402180, 35602180, 36203440, 36203460, 36602740, 36802780,
            37204200, 37204700, 37401900, 37403080, 37403980, 37601900,
            37603080, 37603980, 38003640, 38203660, 39403040, 39403080,
            39602540, 39603080, 39802560, 40003320, 40004340, 40204580,
            41005140, 41005160, 42202320, 42202360, 42404700, 42604700,
            44005840, 44005860, 44205240, 44205260, 44206420, 44402620,
            44602600, 45402340, 45602340, 45602360, 46402940, 46402980,
            47405020, 47406240, 47406260, 47605020, 47606240, 47606260,
            47803440, 48003460, 48003740, 48003760, 48005840, 48005860,
            48401640, 48401660, 48404500, 48601640, 48601660, 48604500,
            48803040, 49003060, 49004000, 50205840, 50405860, 50602000,
            51005340, 51005360, 51006640, 51006660, 51402440, 51402460,
            51405020, 51602420, 51605020, 52402740, 52602720, 53202280,
            53204600, 54404040, 54404060, 54405000, 54604060, 54802620,
            55005740, 55005780, 55406220, 55406260, 56403040, 56403060,
            57402200, 57602200, 57606820, 57801940, 57801960, 57806200,
            58204940, 58204960, 58206480, 58407280, 58804440, 58804460,
            58805540, 58805580, 59002840, 59002860, 60404700, 60604680,
            61202100, 61407000, 61605340, 61607020, 61805020, 61805360,
            62005060, 62006200, 62402500, 62403100, 62403880, 62602520,
            62603120, 62603840, 62603860, 64206460, 64406440, 64805580, 65203800
        })
    }
}) -- Polly

map.nodes[44602040] = Safari.StrandCrab({
    parent = 224,
    pois = {
        POI({
            17402400, 20002840, 20002860, 20204020, 20402540, 20602540,
            21402260, 21602960, 22003100, 22203200, 22403380, 23003580,
            23403300, 23603300, 25803400, 26203340, 27803560, 29003540,
            30803660, 31003640, 32403840, 33203780, 33403880, 34204220,
            34204380, 34404340, 34604960, 34804680, 36601680, 37401800,
            37601760, 38205280, 38205500, 38601920, 38601960, 39205340,
            39805400, 40401980, 40405600, 40601980, 41405500, 42802180,
            43406080, 43606080, 44402060, 44602040, 44602060, 45205540,
            45205560, 45205760, 46002140, 46002160, 46005680, 47005580,
            48405240, 48405260, 48405520, 48605240, 49204780, 49205020,
            49205060, 49603340, 49603360, 49803980, 50003180, 50005280,
            50203120, 50402400, 50402900, 50404840, 50404860, 50405000,
            50405140, 50405160, 50602880, 51202520, 51204460, 51402600,
            51404020, 51404300, 51404360, 51602620, 51602660, 51604020,
            51802780, 52802940, 53003940, 53202960, 53403960, 53603060,
            54403200, 54403600, 54603540, 54603560
        })
    }
}) -- Strand Crab

map.nodes[53002040] = Safari.TreePython({
    parent = 224,
    pois = {
        POI({
            23802220, 26602000, 27801980, 28003020, 28402200, 29002460,
            29403120, 30602300, 31401940, 32402560, 33202900, 34402080,
            34804020, 35203020, 36604140, 36604160, 37204680, 37402400,
            37602400, 37802740, 37803540, 37804040, 37804060, 38003560,
            38402040, 38804300, 39603360, 39604300, 40002340, 40003880,
            40603620, 41002440, 41203520, 41404940, 41604360, 41604960,
            42402400, 42404680, 42604660, 42605440, 43002240, 43002260,
            43203860, 43403620, 43603640, 44002600, 44005840, 44005860,
            44204480, 44206440, 44404440, 44405440, 44405460, 44804220,
            44805080, 45802340, 46004300, 46402920, 46403080, 46404840,
            46404860, 46605040, 47206260, 47404120, 47604120, 47605280,
            47806240, 47806260, 48003400, 48403820, 48404480, 48604480,
            49003000, 49201620, 49203960, 49601540, 49601560, 50005760,
            50405560, 50605540, 50605560, 51401840, 51406480, 51406920,
            51601820, 51606500, 52004300, 52406840, 52604960, 52606820,
            52804340, 52804360, 52805940, 53002040, 53002280, 53402100,
            53601800, 53604720, 53802540, 53806180, 54002280, 54004140,
            54006540, 54602620, 54805780, 54806300, 55203880, 55404040,
            55404060, 55404280, 55605740, 55806740, 56401920, 56403780,
            56603500, 56604920, 56605320, 57005100, 57204300, 57406860,
            57603160, 57604500, 57606840, 57807220, 58002160, 58006200,
            58403520, 58803740, 59002740, 59004600, 59603960, 59607100,
            60202780, 60207220, 60603640, 61003720, 61402140, 61402620,
            61403520, 61404300, 61606720, 61802480, 61806260, 62205840,
            62405640, 62405880, 62604780, 62605240, 62605280, 62606980,
            62806940, 63002340, 63002360, 63002940, 63004260, 63203760,
            63403380, 63405460, 63603100, 63604120, 64003740, 64005280,
            64006100, 64206780, 64403980, 64803400, 64804380, 65004800,
            65007000, 65403120, 65804220, 66203540, 66204320, 66403040,
            66405340, 66803820, 76603160, 80202300, 80401940, 83603520,
            87602320, 88602940, 89202540
        })
    }
}) -- Tree Python

-------------------------------------------------------------------------------
-------------------------- THE SCAVENGER ACHIEVEMENT --------------------------
-------------------------------------------------------------------------------

map.nodes[12102850] = ns.node.ScavengerPool(3873)
map.nodes[12103180] = ns.node.ScavengerPool(3873)
map.nodes[17602520] = ns.node.ScavengerPool(3873)
map.nodes[17804000] = ns.node.ScavengerPool(3873)
map.nodes[19802890] = ns.node.ScavengerPool(3873)
map.nodes[19904310] = ns.node.ScavengerPool(3873)
map.nodes[20803800] = ns.node.ScavengerPool(3873)
map.nodes[21503260] = ns.node.ScavengerPool(3873)
map.nodes[23404150] = ns.node.ScavengerPool(3873)
map.nodes[26003510] = ns.node.ScavengerPool(3873)
map.nodes[28303610] = ns.node.ScavengerPool(3873)
map.nodes[31603800] = ns.node.ScavengerPool(3873)
map.nodes[34004230] = ns.node.ScavengerPool(3873)
map.nodes[34004710] = ns.node.ScavengerPool(3873)
map.nodes[36105060] = ns.node.ScavengerPool(3873)
map.nodes[37401660] = ns.node.ScavengerPool(3873)
map.nodes[38805350] = ns.node.ScavengerPool(3873)
map.nodes[40101860] = ns.node.ScavengerPool(3873)
map.nodes[41305490] = ns.node.ScavengerPool(3873)
map.nodes[45005590] = ns.node.ScavengerPool(3873)
map.nodes[46702050] = ns.node.ScavengerPool(3873)
map.nodes[48105350] = ns.node.ScavengerPool(3873)
map.nodes[49602500] = ns.node.ScavengerPool(3873)
map.nodes[49704930] = ns.node.ScavengerPool(3873)
map.nodes[50104360] = ns.node.ScavengerPool(3873)
map.nodes[50303260] = ns.node.ScavengerPool(3873)
map.nodes[50303840] = ns.node.ScavengerPool(3873)
map.nodes[53103040] = ns.node.ScavengerPool(3873)
map.nodes[54503680] = ns.node.ScavengerPool(3873)
