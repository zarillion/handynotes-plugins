-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=543, settings=true })
local nodes = map.nodes

-- Quests for Trophy of Glory.
local TrophyOfGloryQuests = {
    ['biolante'] = 36503,
    ['crater lord igneous'] = 35811,
    ['charl doomwing'] = 35815,
    ['khargax devourer'] = 35819,
    ['roardan sky terror'] = 35818,
    ['dessicus dead pools'] = 35810,
    ['erosian violent'] = 35807,
    ['fungal praetorian'] = 35814
}

if UnitFactionGroup('player') == 'Alliance' then
    TrophyOfGloryQuests = {
        ['biolante'] = 36502,
        ['crater lord igneous'] = 35812,
        ['charl doomwing'] = 35816,
        ['khargax devourer'] = 35820,
        ['roardan sky terror'] = 35817,
        ['dessicus dead pools'] = 35809,
        ['erosian violent'] = 35808,
        ['fungal praetorian'] = 35813
    }
end

-------------------------------------------------------------------------------
------------------------------------ NODES ------------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({icon=1094600, label=L['edge_of_reality'], rewards={
    Mount({id=682, item=121815}) -- Voidtalon of the Dark Star
}})

nodes[51603860] = Voidtalon
nodes[54004580] = Voidtalon
nodes[56004070] = Voidtalon
nodes[43203420] = Voidtalon

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Poundfist = Rare({
    id=50985,
    note=L["poundfist_note"],
    rewards={
        Mount({item=116792, id=655}) -- Sunhide Gronnling
    }
}) -- Poundfist

nodes[41902500] = Poundfist
nodes[51604310] = Poundfist
nodes[45204660] = Poundfist
nodes[47405530] = Poundfist
nodes[43005570] = Poundfist

map.nodes[62905520] = Rare({
    id=75207,
    rewards={
        Achievement({id=9400, criteria=25568}),
        Item({item=116160, quest=TrophyOfGloryQuests['biolante']}), -- Writhing Green Tendril
    },
    pois={
        Path({62705420, 62505270, 62005220, 61505230, 61105340, 60605370, 60505490})
    }
}) -- Biolante

map.nodes[43806060] = Rare({
    id=81528,
    rewards={
        Achievement({id=9400, criteria=25570}),
        Item({item=113448, quest=TrophyOfGloryQuests['crater lord igneous']}), -- Chunk of Crater Lord
    }
}) -- Crater Lord Igneous

map.nodes[45205160] = Rare({
    id=81548,
    rewards={
        Achievement({id=9400, criteria=25574}),
        Item({item=113457, quest=TrophyOfGloryQuests['charl doomwing']}), -- Fang of the Doomwing
    },
    pois={
        Path({45404900, 46004680, 47804640})
    }
}) -- Charl Doomwing

map.nodes[53206880] = Rare({
    id=81537,
    rewards={
        Achievement({id=9400, criteria=25572}),
        Item({item=113460, quest=TrophyOfGloryQuests['khargax devourer']}), -- Shimmering Scale
    },
    pois={
        Path({53206880, 52706870, 52206770, 52406660, 53406590, 54006590, 54306710, 54006750, 53806820, 53206880})
    }
}) -- Khargax the Devourer

map.nodes[50806760] = Rare({
    id=77093,
    note=L["roardan_sky_terror_note"],
    rewards={
        Achievement({id=9400, criteria=25569}),
        Item({item=113458, quest=TrophyOfGloryQuests['roardan sky terror']}), -- Ebony Feather
    },
    pois={
        POI({61606200}),
        POI({53106300})
    }
}) -- Roardan the Sky Terror

map.nodes[38805120] = Rare({
    id=81529,
    rewards={
        Achievement({id=9400, criteria=25571}),
        Item({item=113447, quest=TrophyOfGloryQuests['dessicus dead pools']}), -- Globe of Dead Water
    }
}) -- Dessicus of the Dead Pools

map.nodes[51804160] = Rare({
    id=81540,
    rewards={
        Achievement({id=9400, criteria=25573}),
        Item({item=113444, quest=TrophyOfGloryQuests['erosian violent']}), -- Crystalized Steam
    }
}) -- Erosian the Violent

map.nodes[58006360] = Rare({
    id=80785,
    rewards={
        Achievement({id=9400, criteria=25575}),
        Item({item=113453, quest=TrophyOfGloryQuests['fungal praetorian']}), -- Precious Mushroom
    }
}) -- Fungal Praetorian
