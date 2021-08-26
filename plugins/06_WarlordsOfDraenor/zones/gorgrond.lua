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
local Pet = ns.reward.Pet
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

map.nodes[49003300] = Rare({
    id=86562,
    quest=37363,
    rewards={
        Achievement({id=9655, criteria=26542}),
        Item({item=119230, note=L["neck"]}) -- Unpopped Pustule Pendant
    }
}) -- Maniacal Madgard

map.nodes[48202100] = Rare({
    id=86566,
    quest=37362,
    rewards={
        Achievement({id=9655, criteria=26543}),
        Transmog({item=119224, slot=L["polearm"]}) -- Foereaver Polearm
    }
}) -- Defector Dazgo

map.nodes[49802380] = Rare({
    id=86571,
    quest=37366,
    rewards={
        Achievement({id=9655, criteria=26544}),
        Transmog({item=119225, slot=L["leather"]}) -- Studded Gronn-Stitched Girdle
    }
}) -- Durp the Hated

map.nodes[47603080] = Rare({
    id=86574,
    quest=37367,
    rewards={
        Achievement({id=9655, criteria=26545}),
        Transmog({item=119226, slot=L["gun"]}) -- Blammo's Blammer
    }
}) -- Inventor Blammo

map.nodes[45802660] = Rare({
    id=86577,
    quest=37365,
    rewards={
        Achievement({id=9655, criteria=26548}),
        Transmog({item=119229, slot=L["mail"]}) -- Horgg's Bandolier
    }
}) -- Horgg

map.nodes[45803300] = Rare({
    id=86579,
    quest=37368,
    rewards={
        Achievement({id=9655, criteria=26550}),
        Transmog({item=119228, slot=L["cloth"]}) -- Ro'gor's Slippers of Silence
    }
}) -- Blademaster Ro'gor

map.nodes[46602300] = Rare({
    id=86582,
    quest=37364,
    rewards={
        Achievement({id=9655, criteria=26551}),
        Transmog({item=119227, slot=L["plate"]}) -- Morgo's Unstoppable Ramming Helm
    }
}) -- Morgo Kain

map.nodes[59603200] = Rare({
    id=88582,
    quest=37374,
    rewards={
        Achievement({id=9678, criteria=26593}),
        Transmog({item=119367, slot=L["mail"]}) -- Flayerscale Carapace Stompers
    }
}) -- Swift Onyx Flayer

map.nodes[61603920] = Rare({
    id=88586,
    quest=37376,
    rewards={
        Achievement({id=9678, criteria=26594}),
        Transmog({item=119391, slot=L["shield"]}) -- Etched Osteoderm Shield
    }
}) -- Mogamago

map.nodes[69204460] = Rare({
    id=86257,
    quest=37369,
    rewards={
        Achievement({id=9678, criteria=26595}),
        Toy({item=119432}), -- Botani Camouflage
        Transmog({item=119357, slot=L["cloth"]}) -- Grovetender's Cummerbund
    }
}) -- Basten

map.nodes[63403080] = Rare({
    id=86266,
    quest=37372,
    rewards={
        Achievement({id=9678, criteria=26596}),
        Transmog({item=119395, slot=L["dagger"]}) -- Hydratooth Dagger
    }
}) -- Venolasix

map.nodes[72604060] = Rare({
    id=82058,
    quest=37370,
    rewards={
        Achievement({id=9678, criteria=26598}),
        Transmog({item=119406, slot=L["polearm"]}) -- Depthroot's Forearm
    }
}) -- Depthroot

map.nodes[57803660] = Rare({
    id=88580,
    quest=37373,
    rewards={
        Achievement({id=9678, criteria=26599}),
        Transmog({item=119381, slot=L["plate"]}) -- Grash's Fireproof Handguards
    }
}) -- Firestarter Grash

map.nodes[59604300] = Rare({
    id=88583,
    quest=37375,
    rewards={
        Achievement({id=9678, criteria=26600}),
        Transmog({item=119414, slot=L["cloak"]}) -- Yal's Leafwrap Cloak
    }
}) -- Grove Warden Yal

map.nodes[54804620] = Rare({
    id=88672,
    quest=37377,
    rewards={
        Achievement({id=9678, criteria=26606}),
        Transmog({item=119412, slot=L["bow"]}) -- Bal'ra's Compound Bow
    }
}) -- Hunter Bal'ra

local Alkali = Rare({
    id=86268,
    quest=37371,
    note=L["alkali_note"],
    rewards={
        Achievement({id=9678, criteria=26597}),
        Transmog({item=119361, slot=L["leather"]}) -- Thorn-Knuckled Gloves
    }
}) -- Alkali

nodes[56204080] = Alkali
nodes[58604120] = Alkali
nodes[71404040] = Alkali

map.nodes[53407820] = Rare({
    id=76473,
    quest=34726,
    rewards={
        Transmog({item=118208, slot=L["dagger"]}) -- Broodmother's Kiss
    }
}) -- Mother Araneae

-- @todo check location
map.nodes[53305390] = Rare({
    id=78269,
    quest=37413,
    note=L["in_cave"],
    rewards={
        Transmog({item=119397, slot=L["fist"]}) -- Gnarled Goren Jaw
    },
    pois={
        POI({54105580}) -- Entrance
    }
}) -- Gnarljaw

map.nodes[38206620] = Rare({
    id=79629,
    quest=35910,
    rewards={
        Toy({item=118224}) -- Ogre Brewing Kit
    }
}) -- Stomper Kreego

map.nodes[40606020] = Rare({
    id=80725,
    quest=36394,
    rewards={
        Toy({item=114227}) -- Bubble Wand
    }
}) -- Sulfurious

map.nodes[46005080] = Rare({
    id=80868,
    quest=36204,
    rewards={
        Item({item=118229, note=L["trinket"]}) -- Resonant Hidecrystal of the Gorger
    }
}) -- Glut

map.nodes[41804560] = Rare({
    id=81038,
    quest=36391,
    rewards={
        Item({item=118230, note=L["trinket"]}) -- Smoldering Cerulean Stone
    }
}) -- Gelgor of the Blue Flame

map.nodes[40007900] = Rare({
    id=82085,
    quest=35335,
    rewards={
        Toy({item=118222}) -- Spirit of Bashiok
    }
}) -- Bashiok

map.nodes[53604460] = Rare({
    id=82311,
    quest=35503,
    rewards={
        Transmog({item=118212, slot=L["2h_mace"]}) -- Char's Smoldering Fist
    }
}) -- Char the Burning

map.nodes[52207020] = Rare({
    id=83522,
    quest=35908,
    rewards={
        Transmog({item=118209, slot=L["1h_axe"]}) -- Skrikka's Mandible
    }
}) -- Hive Queen Skrikka

map.nodes[50605320] = Rare({
    id=84406,
    quest=36178,
    rewards={
        Pet({item=118709, id=1564}) -- Doom Bloom
    }
}) -- Mandrakor

map.nodes[46804300] = Rare({
    id=84431,
    quest=36186,
    rewards={
        Transmog({item=118210, slot=L["1h_mace"]}) -- Greldrok's Facesmasher
    }
}) -- Greldrok the Cunning

map.nodes[57406860] = Rare({
    id=85250,
    quest=36387,
    rewards={
        Toy({item=118221}) -- Petrification Stone
    }
}) -- Fossilwood the Petrified

map.nodes[54407140] = Rare({
    id=86520,
    quest=36837,
    rewards={
        Transmog({item=118228, slot=L["2h_mace"]}) -- Smashalupagus
    }
}) -- Stompalupagus

map.nodes[44609220] = Rare({
    id=86137,
    quest=36656,
    rewards={
        Transmog({item=118223, slot=L["fist"]}) -- Sunclaw
    }
}) -- Sunclaw
