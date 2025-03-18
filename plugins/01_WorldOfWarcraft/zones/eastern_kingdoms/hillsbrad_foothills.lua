-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Rare = ns.node.Rare
local Safari = ns.node.Safari

local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = ns.Map({id = 25, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[43603880] = Rare({
    id = 2452,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 3011, type = L['leather']}), -- Feathered Headdress
        Transmog({item = 6331, type = L['dagger']}) -- Howling Blade
    }
}) -- Skhowl

map.nodes[56295470] = Rare({
    id = 51022,
    location = L['in_water'],
    rewards = {Transmog({item = 6578, type = L['mail']})} -- Defender Leggings
}) -- Chordix

map.nodes[51808680] = Rare({
    id = 50967,
    rewards = {Transmog({item = 9805, type = L['cloak']})} -- Superior Cloak
}) -- Craw the Ravager

map.nodes[63168567] = Rare({
    id = 14275,
    faction = 'Horde',
    note = L['lower_floor'],
    rewards = {
        Transmog({item = 3053, type = L['mail']}), -- Humbert's Chestpiece
        Transmog({item = 3693, type = L['unknown']}) -- Humbert's Sword
    }
}) -- Tamra Stormpike

map.nodes[49401840] = Rare({
    id = 2453,
    location = L['in_small_cave'],
    rewards = {
        Transmog({item = 6327, type = L['2h_mace']}), -- The Pacifier
        Transmog({item = 4810, type = L['leather']}), -- Boulder Pads
        Transmog({item = 1678, type = L['mail']}) -- Black Ogre Kickers
    }
}) -- Lo'Grosh

map.nodes[46807600] = Rare({
    id = 50955,
    rewards = {Transmog({item = 6578, type = L['mail']})} -- Defender Leggings
}) -- Carcinak

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[60604480] = Safari.HugeToad({
    pois = {
        POI({
            52406960, 53006980, 53007120, 53206740, 53206760, 53806400,
            54406320, 56406140, 56406160, 57206020, 57406160, 57606140,
            58205920, 58206040, 59405820, 60405160, 60405300, 60405480,
            60405740, 60604480, 60604620, 60604680, 60804420, 60804980,
            60805100, 61005560, 61204760, 61204920, 62004260, 62404020,
            62603980, 64403840, 64403860, 64603840, 65003740, 66403520,
            67403520, 67403580, 67603320, 69003220, 69802940, 73002620
        })
    }
}) -- Huge Toad

map.nodes[34406740] = Safari.InfestedBearCub({
    pois = {
        POI({
            29606840, 29806880, 30406700, 30407020, 30606680, 30607020,
            31406780, 31606780, 31606980, 31807120, 32006640, 32206660,
            32207340, 32207360, 32806940, 32806960, 33406800, 33606800,
            34406740, 34406880, 34407800, 34606740, 34607800, 34806760,
            34807520, 35207060, 35406920, 35406960, 35407680, 35607100,
            36006940, 36206980, 36207240, 36207260, 36207840, 36407600, 36607560
        })
    }
}) -- Infested Bear Cub

map.nodes[49206960] = Safari.Maggot({
    pois = {
        POI({
            36206040, 36206060, 36606060, 38405720, 38406420, 38406460,
            38606440, 39006280, 39606440, 39806340, 48006880, 48807180,
            49206940, 49206960, 50006800, 50007060, 50206860, 50207040,
            51007080, 51407020, 51607000, 54605180, 55604840, 56404900, 58204600
        })
    }
}) -- Maggot

map.nodes[34003460] = Safari.Rat({
    pois = {
        POI({
            28604420, 30204360, 32204240, 32404280, 32604280, 32804360,
            33003120, 33203180, 33604140, 33803080, 34003340, 34003460,
            34203420, 48806980, 49006780, 55402500, 56202500, 56602660,
            56802640, 56804680, 57602480, 57802440
        })
    }
}) -- Rat

map.nodes[43607060] = Safari.RedTailedChipmunk({
    pois = {
        POI({
            28006200, 29006700, 30404640, 30804600, 31004900, 31406080,
            31606060, 32405220, 33405440, 33605420, 34605420, 35207740,
            35403140, 35403560, 35604240, 35604400, 35606920, 35803160,
            36003440, 36203520, 36803860, 36806900, 37007720, 37207240,
            37207760, 37403820, 37607180, 37803840, 37803920, 38207460,
            38404500, 38804180, 39004780, 39204980, 39403960, 39604460,
            39803980, 40204580, 40804600, 40806860, 41606520, 43004740,
            43404780, 43405040, 43607060, 44206840, 45404880, 46406340,
            47206240, 47206280, 47206400, 47404820, 50205000, 51006040,
            52206140, 52803940, 52804440, 54004320, 54206060, 54607020,
            54607340, 55204340, 55206100, 56406640, 56606640, 57605480,
            58006520, 58205180, 58804180, 59205000, 59604660, 59604960,
            59804640, 59807140, 59807160, 61004220, 61207260, 61405240,
            61607280, 62805820, 62806280, 63004820, 63007160, 63007540,
            64603640, 65207080, 65406920, 65806900, 66207480, 66207560,
            66407140, 66807560, 68406740, 68606680, 68805400, 68806620,
            68806820, 69005680
        })
    }
}) -- Red-Tailed Chipmunk

map.nodes[51202240] = Safari.SnowshoeHare({
    pois = {
        POI({
            40002980, 40802700, 41002760, 42404060, 42604080, 43002180,
            46403520, 46603520, 46802040, 46802060, 47602100, 49802100,
            50802320, 51202240, 52202320, 53402480, 53602500
        })
    }
}) -- Snowshoe Hare

map.nodes[31606780] = Safari.Spider({
    pois = {
        POI({
            30006820, 30607040, 31407140, 31606780, 32806720, 32806820,
            32807000, 34407460
        })
    }
}) -- Spider

map.nodes[60604640] = Safari.Toad({
    pois = {
        POI({
            53606420, 54406280, 57206000, 58005960, 60405280, 60604640,
            60805560, 61405120, 62804080, 64203860, 64403840, 66603520, 73402700
        })
    }
}) -- Toad

-------------------------------------------------------------------------------
------------------------------- CRYZY FOR CATS --------------------------------
-------------------------------------------------------------------------------

map.nodes[40404740] = ns.node.CrazyForCats({
    id = 49116,
    faction = 'Horde',
    note = L['cfc_blacktabby'],
    fgroup = 'blacktabby',
    rewards = {
        ns.reward.Achievement({id = 8397, criteria = 23577, oneline = true}),
        ns.reward.Pet({item = 8491, id = 42})
    },
    pois = {
        POI({
            color = 'Red',
            points = {
                39404820, 39404880, 39604960, 40404740, 40404780, 40404860,
                40604860, 40804800, 41404740, 41604740, 41604780
            }
        })
    }
}) -- Black Tabby Cat

map.nodes[39405920] = ns.node.CrazyForCats({
    id = 48017,
    note = L['cfc_blacktabby'],
    fgroup = 'blacktabby',
    rewards = {
        ns.reward.Achievement({id = 8397, criteria = 23577, oneline = true}),
        ns.reward.Pet({item = 8491, id = 42})
    },
    pois = {
        POI({
            color = 'Green',
            points = {
                38205900, 38406020, 39206060, 39405920, 39405960, 39605920,
                39606020
            }
        })
    }
}) -- Black Tabby Cat

map.nodes[45605280] = ns.node.CrazyForCats({
    id = 2248,
    note = L['cfc_blacktabby'],
    fgroup = 'blacktabby',
    rewards = {
        ns.reward.Achievement({id = 8397, criteria = 23577, oneline = true}),
        ns.reward.Pet({item = 8491, id = 42})
    },
    pois = {
        POI({
            color = 'Blue',
            points = {
                44005340, 44205460, 44405400, 44805320, 45205120, 45205380,
                45404980, 45405240, 45605020, 45605280, 45605380, 45805220,
                45805560, 46005540, 46605440, 46605460, 46605560, 46805340,
                47605360
            }
        })
    }
}) -- Black Tabby Cat

-------------------------------------------------------------------------------
-------------------------- THE SCAVENGER ACHIEVEMENT --------------------------
-------------------------------------------------------------------------------

map.nodes[28803040] = ns.node.ScavengerPool(3874)
map.nodes[29608360] = ns.node.ScavengerPool(3874)
map.nodes[31902970] = ns.node.ScavengerPool(3874)
map.nodes[32607880] = ns.node.ScavengerPool(3874)
map.nodes[34302640] = ns.node.ScavengerPool(3874)
map.nodes[35208110] = ns.node.ScavengerPool(3874)
map.nodes[37002340] = ns.node.ScavengerPool(3874)
map.nodes[39101900] = ns.node.ScavengerPool(3874)
map.nodes[39107920] = ns.node.ScavengerPool(3874)
map.nodes[40401530] = ns.node.ScavengerPool(3874)
map.nodes[42207860] = ns.node.ScavengerPool(3874)
map.nodes[42701200] = ns.node.ScavengerPool(3874)
map.nodes[47107610] = ns.node.ScavengerPool(3874)
map.nodes[49307390] = ns.node.ScavengerPool(3874)
map.nodes[52207000] = ns.node.ScavengerPool(3874)
map.nodes[52407550] = ns.node.ScavengerPool(3874)
map.nodes[53807960] = ns.node.ScavengerPool(3874)
map.nodes[54006460] = ns.node.ScavengerPool(3874)
map.nodes[56808360] = ns.node.ScavengerPool(3874)
map.nodes[57606150] = ns.node.ScavengerPool(3874)
map.nodes[59008730] = ns.node.ScavengerPool(3874)
map.nodes[59305860] = ns.node.ScavengerPool(3874)
map.nodes[60705280] = ns.node.ScavengerPool(3874)
map.nodes[61204380] = ns.node.ScavengerPool(3874)
map.nodes[63403860] = ns.node.ScavengerPool(3874)
map.nodes[67203490] = ns.node.ScavengerPool(3874)
map.nodes[69303000] = ns.node.ScavengerPool(3874)
