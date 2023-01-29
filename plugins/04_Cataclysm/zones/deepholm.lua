-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Safari = ns.node.Safari
local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 207, settings = true})

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.FUNGAL_FRENZY = Group('fungal_frenzy', 134528, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5450,
    label = '{achievement:5450}'
})

ns.groups.ROCK_LOVER = Group('rock_lover', 136024, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5449,
    label = '{achievement:5449}'
})

ns.groups.GLOP_FAMILY = Group('glop_family', 134533, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5446,
    label = '{achievement:5446}'
})

ns.groups.FUNGALOPHOBIA = Group('fungalophobia', 134527, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5445,
    label = '{achievement:5445}'
})

ns.groups.BROODMOTHER = Group('broodmother', 433446, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 5447,
    label = '{achievement:5447}'
})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Aeonaxx = Class('Aeonaxx', Rare, {
    id = 50062,
    fgroup = 'aeonaxx',
    rewards = {Mount({item = 63042, id = 393})}
})

map.nodes[42004360] = Aeonaxx() -- Spawn Point North West
map.nodes[43005080] = Aeonaxx() -- Spawn Point West
map.nodes[49105560] = Aeonaxx() -- Spawn Point Center
map.nodes[50506350] = Aeonaxx() -- Spawn Point South
map.nodes[53703970] = Aeonaxx() -- Spawn Point North East
map.nodes[55005410] = Aeonaxx() -- Spawn Point East

map.nodes[37608160] = Rare({
    id = 50059,
    rewards = {Transmog({item = 67237, slot = L['cloth']})},
    pois = {POI({32807640, 39208360, 43208660, 45808420})}
}) -- Golgarok

map.nodes[61202260] = Rare({
    id = 49822,
    rewards = {Pet({item = 64494, id = 279})},
    pois = {POI({58402560})}
}) -- Jadefang

map.nodes[55202440] = Rare({
    id = 50060,
    rewards = {Transmog({item = 67238, slot = L['plate']})}
}) -- Terborus

map.nodes[43106080] = Rare({
    id = 50061,
    rewards = {Transmog({item = 69876, slot = L['mail']})},
    pois = {Path({ns.poi.Circle({origin = 50005250, radius = 9})})}
}) -- Xariona

-------------------------------------------------------------------------------
-------------------------------- FUNGAL FRENZY --------------------------------
-------------------------------------------------------------------------------

map.nodes[58301342] = Collectible({
    id = 43804,
    icon = 134528,
    note = L['fungal_frenzy_note'],
    rewards = {Achievement({id = 5450})},
    group = ns.groups.FUNGAL_FRENZY,
    pois = {
        Path({59351425, 58301342, 57341248}), POI({
            color = 'Bronze',
            size = 0.5,
            points = {
                74944321, 73393093, 73433153, 73843092, 74993046, 74703444,
                75323678, 72753283, 72523287, 68714152, 70124452, 70934434,
                71144487, 71934410, 69004671, 68694656, 67664552, 67884760,
                67664553, 68474510, 70514052, 69964098, 70164116, 70104220,
                69924162, 69674154
            }
        }), -- Shrinkshroom
        POI({
            color = 'Red',
            size = 0.5,
            points = {
                72594267, 73994102, 74233102, 74473286, 74564066, 74903530,
                75013425, 75223122, 75244218, 75534088, 75673462, 75864208,
                75913588, 76094066, 76373921, 76765423, 76785302, 77364263,
                77624847, 77634370, 77634513, 77674341, 77764047, 77775098,
                77814567, 78053889, 78174957, 78184792, 78424764
            }
        }), -- Poolstool
        POI({
            color = 'Blue',
            size = 0.5,
            points = {
                67653798, 67783380, 67813654, 67933895, 68134942, 68353377,
                68403651, 68404790, 68493595, 68493890, 68634030, 68663163,
                68663806, 68744987, 68833437, 68973677, 69524740, 69534742,
                69563906, 69644934, 70013255, 70303207, 70603191, 70653302,
                70915011, 71113027, 71724521, 74135185, 74513752, 75314349,
                76604439, 77124459, 75373822
            }
        }), -- Shuffletruffle
        POI({
            color = 'LightBlue',
            size = 0.5,
            points = {
                69453588, 69543862, 69653635, 69663698, 69773679, 69783821,
                69803526, 69863725, 71073972, 71653404, 72224002, 72233395,
                72744725, 72873993, 73074916, 73153407, 73294977, 73323537,
                73513595, 73893655, 74934977, 75385315, 76035238, 76294901,
                76724605, 76734635
            }
        }) -- Trapcap
    }
})

map.nodes[55371414] = Collectible({
    id = 44945,
    icon = 136024,
    quest = 26710,
    note = L['rock_lover_note'],
    group = ns.groups.ROCK_LOVER,
    rewards = {
        Achievement({id = 5449, criteria = {id = 15644, qty = true}}), -- Rock Lover
        Pet({item = 60869, id = 265}) -- Pebble
    },
    pois = {
        Path({
            63072089, 63082021, 63311965, 63931923, 64541959, 64832051,
            64632146, 64182247, 63882393, 64072480, 64862571, 65372769,
            64082798, 62812727, 62162731, 61182668, 60072634, 59102615, 58402560
        }), POI({58402560}), POI({63072089, icon = 136024, size = 0.8})
    }
}) -- Pyrite Stonetender

map.nodes[59591404] = Collectible({
    id = 44973,
    icon = 134527,
    quest = 28390,
    group = {ns.groups.GLOP_FAMILY, ns.groups.FUNGALOPHOBIA},
    rewards = {
        Achievement({id = 5446, criteria = {id = 15640, qty = true}}), -- The Glop Family Line
        Achievement({id = 5445}) -- Fungalophobia
    }
}) -- Ruberick

map.nodes[54581430] = Collectible({
    id = 43806,
    icon = 433446,
    quest = 28391,
    group = ns.groups.BROODMOTHER,
    rewards = {Achievement({id = 5447})} -- My Very Own Broodmother
}) -- Terrath the Steady

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

map.nodes[57401100] = Safari.AmethystShaleHatchling({
    pois = {
        POI({
            41004660, 44008340, 45806020, 46206160, 46404260, 52006080,
            52206300, 52604380, 52803740, 54401420, 54801460, 55601320,
            56004280, 56005620, 56401380, 56801280, 56805480, 57001420,
            57201220, 57204760, 57205380, 57401100, 58401340, 58604680,
            58801380, 59001260, 69603560, 69803220, 71204600, 71406300,
            71606280, 72006400, 73606440, 74405120, 74605120
        })
    }
}) -- Amethyst Shale Hatchling

map.nodes[69603860] = Safari.TopazShaleHatchling({
    pois = {
        POI({
            55801360, 56001320, 56801240, 56801260, 57201400, 57801300,
            68203680, 68602940, 68602980, 69403580, 69403660, 69403860,
            69406800, 69603240, 69603280, 69603860, 69606780, 69803740,
            69806740, 70203380, 70203840, 70403520, 70603880, 71003740,
            71003760, 71006440, 71006460, 71206340, 72806340, 73006020,
            73206120, 73406200, 73806000, 73806420, 74206140, 74206160
        })
    }
}) -- Topaz Shale Hatchling

map.nodes[56808480] = Safari.TwilightBeetle({
    pois = {POI({59603800, 60404600, 61603160, 63003020})}
}) -- Twilight Beetle

map.nodes[63405440] = Safari.TwilightSpider({
    pois = {
        POI({
            36806900, 38007040, 38206560, 44406760, 59003980, 60204360,
            60404000, 60404340, 60404580, 60603180, 60603340, 61405340,
            61603340, 63003020, 63203460, 63405440, 63803140, 64003920,
            64403360, 64603240, 64603400
        })
    }
}) -- Twilight Spider

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[49275030] = ns.node.Node({
    label = L['portal_to_therazane'],
    icon = 'portal_gy',
    pois = {Path({49275030, 57241355})},
    fgroup = 'therazane_portal'
})

map.nodes[57241355] = ns.node.Node({
    label = L['portal_to_earth_temple'],
    icon = 'portal_gy',
    fgroup = 'therazane_portal'
})
