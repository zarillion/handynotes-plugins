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

local map = Map({id = 102, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[86009120] = Rare({
    id = 18682,
    rewards = {
        Achievement({id = 1312, criteria = 4505}), -- Bloody Rare
        Transmog({item = 31250, slot = L['cloth']}), -- Bog Mantle
        Transmog({item = 31249, slot = L['leather']}), -- Bog Spaulders
        Transmog({item = 31248, slot = L['mail']}), -- Bog Epaulets
        Transmog({item = 31247, slot = L['plate']}) -- Bog Pauldrons
    },
    pois = {
        POI({
            23002140, 24402060, 28202320, 40206180, 44805900, 49205820,
            84807960, 86008420, 86008960
        })
    }
}) -- Bog Lurker

map.nodes[74807700] = Rare({
    id = 18681,
    rewards = {
        Achievement({id = 1312, criteria = 4507}), -- Bloody Rare
        Transmog({item = 31246, slot = L['cloth']}), -- Nagahide Leggings
        Transmog({item = 31244, slot = L['leather']}), -- Nagahide Pants
        Transmog({item = 31243, slot = L['mail']}), -- Nagascale Legguards
        Transmog({item = 31242, slot = L['plate']}) -- Nagascale Legplates
    },
    pois = {
        POI({
            25403740, 25403760, 25804240, 25804260, 26204660, 26404640,
            26604660, 59803640, 60003680, 62006920, 62006960, 63003800,
            63404380, 63806500, 64406940, 64406960, 64804140, 70407280,
            70607280, 72207600, 73408240
        })
    }
}) -- Coilfang Emissary

map.nodes[78805360] = Rare({
    id = 18680,
    rewards = {
        Achievement({id = 1312, criteria = 4516}), -- Bloody Rare
        Transmog({item = 31254, slot = L['cloak']}) -- Striderhide Cloak
    },
    pois = {
        ns.poi.Path({
            37933933, 38013865, 38103792, 38173721, 38293649, 38443578,
            38513509, 38653438, 38933376, 39423325, 40063341, 40743338,
            41373315, 42003337, 42473387, 42663451, 42933513, 43633497,
            44153454, 44653408, 45173364, 45813345, 46493357, 46763295,
            47033228, 47253166, 47343099, 47453024, 48072994, 48713013,
            49393037, 49973073, 50333133, 50723190, 51353224, 52023240,
            52613284, 53243306, 53893327, 54463369, 55083395
        }), POI({
            09805220, 10804720, 10805520, 11005040, 11204640, 13404540,
            14004460, 14604460, 14804440, 15004040, 15004340, 16003820,
            16803620, 17603460, 37803840, 38803380, 40403360, 41403320,
            42203360, 42603440, 43003460, 43603480, 44603420, 47003200,
            47403060, 47803000, 50003080, 52403240, 52803300, 54003300,
            54803380, 70203980, 70403740, 73603620, 73804660, 75204720,
            75804840, 77005140
        })
    }
}) -- Marticar

-------------------------------------------------------------------------------
------------------------------- OUTLAND SAFARI --------------------------------
-------------------------------------------------------------------------------

map.nodes[51008220] = Safari.SmallFrog({
    pois = {
        POI({
            17205380, 18404680, 20805340, 29405460, 39405520, 48403300,
            53203440, 55804880, 63804660, 65006400, 66206940, 66606460,
            66607300, 67407960, 68006300, 70606700, 73808460, 74005180,
            79805720, 81605580, 82208540, 82407960, 82805440, 82807880
        })
    }
}) -- Small Frog

map.nodes[62804520] = Safari.Snake({
    pois = {
        POI({
            17404960, 33804740, 35805520, 43605440, 45003460, 46003500,
            49603120, 60803880, 62804520, 65605040, 69206600, 73808460,
            77605380, 78205660, 82408080, 84805020, 85408440
        })
    }
}) -- Snake

map.nodes[19205040] = Safari.SporelingSprout({
    pois = {
        POI({
            17204840, 17204860, 17205140, 17205160, 17405020, 17605020,
            17804720, 17805400, 18005200, 18404640, 18405080, 18405340,
            18604640, 18604660, 18805180, 19205040, 19205060, 19404900,
            19405300, 19405420, 19604920, 20005140, 20005160, 20205320, 20605180
        })
    }
}) -- Sporeling Sprout

local ScavengerPool = ns.Class('scavengerpool', ns.node.Collectible, {
    icon = 132765,
    rewards = {Achievement({id = 1257, criteria = 3872})}
})

map.nodes[11704910] = ScavengerPool()
map.nodes[12605450] = ScavengerPool()
map.nodes[14104660] = ScavengerPool()
map.nodes[16105370] = ScavengerPool()
map.nodes[16304890] = ScavengerPool()
map.nodes[17004030] = ScavengerPool()
map.nodes[18104500] = ScavengerPool()
map.nodes[19503610] = ScavengerPool()
map.nodes[21105000] = ScavengerPool()
map.nodes[21803370] = ScavengerPool()
map.nodes[23705020] = ScavengerPool()
map.nodes[23803740] = ScavengerPool()
map.nodes[24304290] = ScavengerPool()
map.nodes[25203350] = ScavengerPool()
map.nodes[42004230] = ScavengerPool()
map.nodes[43903720] = ScavengerPool()
map.nodes[44004500] = ScavengerPool()
map.nodes[47103570] = ScavengerPool()
map.nodes[47204710] = ScavengerPool()
map.nodes[49303350] = ScavengerPool()
map.nodes[50904660] = ScavengerPool()
map.nodes[52203490] = ScavengerPool()
map.nodes[54204730] = ScavengerPool()
map.nodes[54206250] = ScavengerPool()
map.nodes[55603510] = ScavengerPool()
map.nodes[55905800] = ScavengerPool()
map.nodes[56004270] = ScavengerPool()
map.nodes[57206710] = ScavengerPool()
map.nodes[58004150] = ScavengerPool()
map.nodes[58404540] = ScavengerPool()
map.nodes[59003700] = ScavengerPool()
map.nodes[59105660] = ScavengerPool()
map.nodes[59806660] = ScavengerPool()
map.nodes[60604110] = ScavengerPool()
map.nodes[61506360] = ScavengerPool()
map.nodes[62305860] = ScavengerPool()
map.nodes[71607960] = ScavengerPool()
map.nodes[72206910] = ScavengerPool()
map.nodes[72507510] = ScavengerPool()
map.nodes[73106480] = ScavengerPool()
map.nodes[74308170] = ScavengerPool()
map.nodes[76508000] = ScavengerPool()
map.nodes[77006420] = ScavengerPool()
map.nodes[77406930] = ScavengerPool()
map.nodes[77807550] = ScavengerPool()
