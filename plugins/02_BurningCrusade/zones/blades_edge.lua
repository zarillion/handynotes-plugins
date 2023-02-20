-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local L = ns.locale

local Rare = ns.node.Rare
local Safari = ns.node.Safari

local Achievement = ns.reward.Achievement
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 105, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[32605340] = Rare({
    id = 18692,
    rewards = {
        Achievement({id = 1312, criteria = 4514}), -- Bloody Rare
        Transmog({item = 31158, slot = L['cloth']}), -- Drakeweave Raiment
        Transmog({item = 31157, slot = L['leather']}), -- Drakehide Tunic
        Transmog({item = 31156, slot = L['mail']}), -- Drakescale Hauberk
        Transmog({item = 31155, slot = L['plate']}) -- Drakescale Breastplate
    },
    pois = {
        POI({
            28006620, 28206680, 28406440, 28406760, 28606780, 29206360,
            29404940, 29404980, 29407000, 29604880, 29604980, 29804740,
            29804800, 29806440, 29807120, 30004540, 30006500, 30007160,
            30204640, 30206600, 30206740, 30405140, 30806820, 31006900,
            31205220, 31405700, 31805300, 31805560, 32005480
        })
    }
}) -- Hemathion

map.nodes[72002980] = Rare({
    id = 18690,
    rewards = {
        Achievement({id = 1312, criteria = 4518}), -- Bloody Rare
        Transmog({item = 31162, slot = L['cloth']}), -- Felstone Mantle
        Transmog({item = 31161, slot = L['leather']}), -- Felstone Spaulders
        Transmog({item = 31160, slot = L['mail']}), -- Felstone Epaulets
        Transmog({item = 31159, slot = L['plate']}) -- Felstone Pauldrons
    },
    pois = {
        POI({
            60402480, 63405160, 67204780, 67804780, 68006700, 68406940,
            68804660, 71002920
        })
    }
}) -- Morcrush

map.nodes[66802680] = Rare({
    id = 18693,
    rewards = {
        Achievement({id = 1312, criteria = 4521}), -- Bloody Rare
        Transmog({item = 31166, slot = L['cloth']}), -- Nethersteel-Lined Handwraps
        Transmog({item = 31165, slot = L['leather']}), -- Nethersteel-Reinforced Gloves
        Transmog({item = 31164, slot = L['mail']}), -- Nethersteel Gauntlets
        Transmog({item = 31163, slot = L['plate']}) -- Nethersteel Handguards
    },
    pois = {
        POI({
            39205640, 39205660, 39605740, 40205580, 40405540, 40605560,
            40804820, 40804960, 41004880, 41005480, 41405140, 41405420,
            41605180, 41605400, 41805500, 41805600, 42005080, 42405000,
            42408200, 42604940, 42605580, 42808120, 42808160, 43408000,
            43807860, 44407760, 45207640, 45207660, 45607660, 46407800,
            46407860, 46607740, 46607800, 46807640, 47207520, 55803560,
            56002580, 56202480, 56203420, 56402440, 56402700, 56403480,
            56602720, 57002780, 57003360, 57402900, 57402960, 57403340,
            57602880, 57603020, 57603060, 57603340, 57803220, 64401920,
            64401960, 64601940, 65002000, 65202100, 65202160, 65602240,
            66002320, 66202400, 66202520, 66202560, 66402660
        })
    }
}) -- Speaker Mar'grom

-------------------------------------------------------------------------------
------------------------------- OUTLAND SAFARI --------------------------------
-------------------------------------------------------------------------------

map.nodes[35006480] = Safari.RockViper({
    pois = {
        POI({
            29205700, 31404880, 32805940, 39405460, 39607480, 41407860,
            41608280, 43806840, 44207740, 46607180, 47007680, 50404520,
            51404160, 53204580, 54003300, 54603700, 55803180, 57205740,
            57606400, 58606280, 58806880, 59806620, 60207180, 64605640,
            64805240, 64807800, 65401360, 67405560, 67407520, 68003960,
            68005880, 69604300, 72803020
        })
    }
}) -- Rock Viper

map.nodes[72001800] = Safari.ScaldedBasiliskHatchling({
    pois = {
        POI({
            70402020, 70601880, 70602020, 70602180, 70802440, 70802460,
            71002560, 71202100, 71202260, 71802020, 71802140, 71802160,
            71802360, 71802480, 72001800, 72002340, 72802060, 72802280,
            73001940, 73001960, 73002400, 73801800, 73802280, 74401920,
            74802200, 75001800, 75002080, 75401920, 75601920, 75602180,
            76002040, 76002060
        })
    }
}) -- Scalded Basilisk Hatchling

map.nodes[58202840] = Safari.Scorpid({
    pois = {
        POI({
            29606820, 43407580, 44006760, 44807300, 45205700, 46806820,
            56202860, 56406080, 57805420, 58202840, 58806880, 59606580,
            64805240, 67405560, 67407520, 68403240, 68606580, 71003060, 74202300
        })
    }
}) -- Scorpid

map.nodes[51008220] = Safari.SkitteringCavernCrawler({
    label = L['in_cave'],
    pois = {
        POI({
            34408840, 34408860, 34608820, 34808660, 35008520, 36208480,
            36408440, 36608440, 51008220, 51209140, 51408940, 51408980,
            51409240, 51608980, 51609080, 51808440, 52008740, 52008880,
            52209220, 52408540, 52408560, 52408800, 52608560, 52608780, 52608880
        }), POI({size = 2, icon = 'door_down', 51607758, 36938230})
    }
}) -- Skittering Cavern Crawler
