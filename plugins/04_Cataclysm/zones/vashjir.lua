-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare

local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

-- local forest = Map({id = 201, settings = true})
local depths = Map({id = 204, settings = true})
local expanse = Map({id = 205, settings = true})

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.WHALE_SHARK = ns.Group('whale_shark', 237311, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 4975,
    label = '{achievement:4975}'
})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Poseidus = Rare({
    id = 50005,
    fgroup = 'poseidus',
    rewards = {
        Mount({item = 67151, id = 420}),
        Transmog({item = 67131, slot = L['cloak']}),
        Transmog({item = 67132, slot = L['cloth']}),
        Transmog({item = 67133, slot = L['cloth']}),
        Transmog({item = 67134, slot = L['cloak']}),
        Transmog({item = 67135, slot = L['leather']}),
        Transmog({item = 67140, slot = L['cloak']}),
        Transmog({item = 67141, slot = L['plate']}),
        Transmog({item = 67142, slot = L['cloak']}),
        Transmog({item = 67143, slot = L['plate']}),
        Transmog({item = 67144, slot = L['plate']}),
        Transmog({item = 67145, slot = L['shield']}),
        Transmog({item = 67146, slot = L['cloth']}),
        Transmog({item = 67147, slot = L['cloth']}),
        Transmog({item = 67148, slot = L['mail']}),
        Transmog({item = 67149, slot = L['offhand']}),
        Transmog({item = 67150, slot = L['mail']})
    }
}) -- Poseidus

depths.nodes[40407380] = Poseidus
expanse.nodes[44604960] = Poseidus
expanse.nodes[39406880] = Poseidus
expanse.nodes[65804320] = Poseidus
expanse.nodes[57208080] = Poseidus

expanse.nodes[57006960] = Rare({id = 50052, rewards = {Toy({item = 134022})}}) -- Burgy Blackheart

depths.nodes[63123162] = Rare({
    id = 50009,
    rewards = {
        Transmog({item = 69843, slot = L['polearm']}),
        Transmog({item = 67131, slot = L['cloak']}),
        Transmog({item = 67132, slot = L['cloth']}),
        Transmog({item = 67133, slot = L['cloth']}),
        Transmog({item = 67134, slot = L['cloak']}),
        Transmog({item = 67135, slot = L['leather']}),
        Transmog({item = 67140, slot = L['cloak']}),
        Transmog({item = 67141, slot = L['plate']}),
        Transmog({item = 67142, slot = L['cloak']}),
        Transmog({item = 67143, slot = L['plate']}),
        Transmog({item = 67144, slot = L['plate']}),
        Transmog({item = 67145, slot = L['shield']}),
        Transmog({item = 67146, slot = L['cloth']}),
        Transmog({item = 67147, slot = L['cloth']}),
        Transmog({item = 67148, slot = L['mail']}),
        Transmog({item = 67149, slot = L['offhand']}),
        Transmog({item = 67150, slot = L['mail']})
    },
    pois = {Path({ns.poi.Circle({origin = 70502950, radius = 7.5})})}
}) -- Mobus

depths.nodes[46202980] = Rare({
    id = 50050,
    rewards = {Transmog({item = 67233, slot = L['plate']})},
    pois = {POI({41803280, 48203440, 51003220, 48402640, 48002760})}
}) -- Shok'sharak

expanse.nodes[56804220] = Rare({
    id = 40728,
    rewards = {ns.reward.Achievement({id = 4975})}, -- From Hell's Heart I Stab at Thee
    group = {ns.groups.RARE, ns.groups.WHALE_SHARK},
    pois = {
        Path({
            64403820, 60404000, 55804280, 52804440, 50204800, 48805280,
            48806000, 50606500, 53806980, 60007100
        })
    }
}) -- Whale Shark
