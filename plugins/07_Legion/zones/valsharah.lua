-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map

--local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({ id=641, settings=true })
local pen = Map({ id=642 })

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64408460] = Rare({
    id=93758,
    quest=38900, -- 38903
    note=L["anthydas_note"],
    rewards={
        Achievement({id=11262, criteria=33280})
    },
    pois={
    POI({64558546})
    }
}) -- Antydas Nightcaller

map.nodes[45608880] = Rare({
    id=110562,
    quest=43446,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=11262, criteria=33291}),
        Transmog({item=130135, slot=L["leather"]}) -- Mana-Prowler Leggings
    }
}) -- Bahagar

map.nodes[44065280] = Rare({
    id=92965,
    quest=38767,
    rewards={
        Achievement({id=11262, criteria=33276}),
        Pet({item=130166, id=1804}) -- Risen Saber Kitten
    },
    pois={
        Path({44305193, 44065280, 43575387, 43165443})
    }
}) -- Darkshade

map.nodes[60304425] = Rare({
    id=97517,
    quest=39858,
    rewards={
        Achievement({id=11262, criteria=33288}),
        Transmog({item=130125, slot=L["cloak"]}) -- Dreadbog Fungalflesh Cape
    }
}) -- Dreadbog

map.nodes[67406940] = Rare({
    id=109225,
    quest=43176,
    note=L["elandris_note"],
    rewards={
        Achievement({id=11262, criteria=33290}),
        Transmog({item=130133, slot=L["plate"]}) -- Undergrell Mobilehelm
    }
}) -- Elandris Bladesong ( Undgrell Attack )

map.nodes[49204900] = Rare({ --QUESTID
    id=93679,
    quest=44070,
    note=L["in_cave"].." "..L["gathenak_note"],
    rewards={
        Achievement({id=11262, criteria=32406}),
        Achievement({id=11186, criteria=32406}),
        Transmog({item=132359, slot=L["plate"]}) -- The Subjugator's Shackles
    }
}) -- Gathenak the Subjugator

map.nodes[59717744] = Rare({
    id=92117,
    quest=38468,
    note=L["gorebeak_note"],
    rewards={
        Achievement({id=11262, criteria=33273}),
        Pet({item=130154, id=1907}) -- Pygmy Owl
    }
}) -- Gorebeak

map.nodes[65805345] = Rare({
    quest=40126,
    id=95123,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=11262, criteria=33284}),
        Item({item=130122, note=L["neck"]}) -- Grelda's Ageless Pendant
    }
}) -- Grelda the Hag

map.nodes[58823403] = Rare({
    id=93030,
    quest=40080,
    rewards={
        Achievement({id=11262, criteria=33277}),
        Item({item=130126, note=L["trinket"]}) -- Iron Branch
    }
}) -- Ironbranch

map.nodes[52808750] = Rare({
    id=93686,
    quest=38889,
    note=L["jinikki_note"],
    rewards={
        Pet({item=128690, id=1706}) -- Ashmaw Cub
    }
}) -- Jinikki the Puncturer

map.nodes[34405830] = Rare({
    id=94414,
    quest=39121,
    note=L["kiranys_note"],
    rewards={
        Achievement({id=11262, criteria=33281})
    }
}) -- Kiranys Duskwhisper ( Haunted Manor )

map.nodes[61802955] = Rare({
    id=98241,
    quest=40079,
    rewards={
        Achievement({id=11262, criteria=33289}),
        Transmog({item=130118, slot=L["cloth"]}) -- Moonfeather Handwraps
    }
}) -- Lyrath Moonfeather

map.nodes[47205800] = Rare({
    id=95221,
    quest=39357,
    note=L["mad_henryk_note"],
    rewards={
        Achievement({id=11262, criteria=33285}),
        Toy({item=130214}) -- Worn Doll
    }
}) -- Mad Henryk ( Old Bear Trap )

map.nodes[61056940] = Rare({
    id=95318,
    quest=39596,
    rewards={
        Achievement({id=11262, criteria=33286}),
        Transmog({item=130137, slot=L["mail"]}) -- Bramblevine Spaulders
    }
}) -- Perrexx the Corruptor

map.nodes[67504510] = Rare({
    quest=39130,
    id=94485,
    rewards={
        Achievement({id=11262, criteria=33282}),
        Pet({item=130168, id=1802}) -- Fetid Waveling
    }
}) -- Pollous the Fetid ( Purging the River )

map.nodes[41657825] = Rare({
    id=92180,
    quest=38479,
    rewards={
        Achievement({id=11262, criteria=33274}),
        Toy({item=130171}) -- Cursed Orb
    }
}) -- Seersei

map.nodes[60868773] = Rare({
    id=93654,
    quest=38887,
    note=L["skulvrax_note"],
    rewards={
        Achievement({id=11262, criteria=33279}),
        Transmog({item=130115, slot=L["cloth"]}) -- Darkfiend Slippers
    },
    pois={
        POI({60439072})
    }
}) -- Skul'vrax ( Elindya Featherlight )

map.nodes[38055280] = Rare({
    id=92423,
    quest=38772,
    note=L["theryssia_note"],
    rewards={
        Achievement({id=11262, criteria=33275}),
        Transmog({item=130136, slot=L["cloth"]}) -- Theryssia's White Gown
    }
}) -- Theryssia

map.nodes[62604750] = Rare({
    id=93205,
    quest=38780,
    rewards={
        Achievement({id=11262, criteria=33278}),
        Transmog({item=130121, slot=L["mail"]}) -- Thondrax's Night-Runed Bands
    }
}) -- Thondrax

map.nodes[59757745] = Rare({
    id=92104,
    quest=38466,
    label=L["unguarded_thistleleaf_treasure"],
    rewards={
        Achievement({id=11262, criteria=34537}),
        Toy({item=130147}) -- Thistleleaf Branch
    }
}) -- Unguarded Thistleleaf Treasure

map.nodes[66853685] = Rare({
    quest=39856,
    id=97504,
    rewards={
        Achievement({id=11262, criteria=33287}),
        Transmog({item=130116, slot=L["leather"]}) -- Twisted Wraithtalon Gloves
    }
}) -- Wraithtalon

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- 47 / 68 Treasures (  Missing, criteriatree id = 53804 )

local Treasure = Class('Treasure', Treasure, {
    label=L["small_treasure_chest"],
    rewards={
        Achievement({id=11258, criteria={
            {id=1, qty=true, suffix=" "..L["treasures_discovered"]}
        }})
    }
})

map.nodes[46448630] = Treasure({quest=38277})
map.nodes[64715126] = Treasure({quest=38355, note=L["in_small_cottage"]})
map.nodes[54417419] = Treasure({quest=38359, note=L["in_small_cottage"]})
map.nodes[43397589] = Treasure({quest=38363})
map.nodes[48687381] = Treasure({quest=38366, note=L["treasure_38366"]})
map.nodes[39945460] = Treasure({quest=38369})
map.nodes[73803228] = Treasure({quest=38371})
map.nodes[67395342] = Treasure({quest=38386, note=L["treasure_38386"]})
map.nodes[44358257] = Treasure({quest=38387, note=L["treasure_38387"]})

map.nodes[51517776] = Treasure({
    quest=38388,
    note=L["in_cave"],
    pois={
        POI({50947692})
    }
})

map.nodes[63378841] = Treasure({quest=38389})

map.nodes[54003489] = Treasure({
    quest=38390,
    label=L["glimmering_treasure_chest"],
    note=L["in_cave"],
    pois={
        POI({53193782})
    }
})

map.nodes[65907920] = Treasure({quest=38391, note=L["treasure_38391"]})

map.nodes[69475999] = Treasure({
    quest=38781,
    label=L["treasure_chest"],
    note=L["in_small_cave"]
})

map.nodes[67215928] = Treasure({
    quest=38782,
    label=L["treasure_chest"],
    note=L["in_cave"],
    pois={
        POI({65605630})
    }
})

map.nodes[70225704] = Treasure({quest=38783})
map.nodes[56008376] = Treasure({quest=38861, note=L["in_small_cave"]})

map.nodes[54908056] = Treasure({
    quest=38864,
    note=L["in_water_cave"],
    pois={
        POI({53998224})
    }
})

map.nodes[48998615] = Treasure({quest=38886})

map.nodes[60498216] = Treasure({
    quest=38893,
    note=L["in_cave"],
    pois={
        POI({62168609})
    }
})

map.nodes[59887228] = Treasure({quest=38943, note=L["treasure_38943"]})
map.nodes[62707040] = Treasure({quest=39069, note=L["treasure_39069"]})

map.nodes[63007700] = Treasure({
    quest=39070,
    note=L["in_cave"],
    pois={
    POI({62237614})
    }
})

map.nodes[62076737] = Treasure({
    quest=39071,
    label=L["treasure_chest"],
    note=L["in_waterfall_cave"]
})

map.nodes[56225730] = Treasure({quest=39072})

map.nodes[68334060] = Treasure({
    quest=39073,
    note=L["in_small_cottage"]
})

map.nodes[65398629] = Treasure({
    quest=39074,
    label=L["treasure_chest"],
    note=L["treasure_39074"]
})

map.nodes[42665801] = Treasure({quest=39077, note=L["in_house"]})
map.nodes[38626718] = Treasure({quest=39079})

map.nodes[38456530] = Treasure({
    quest=39080,
    note=L["treasure_39080"],
    pois={
        POI({54785278})
    }
})

map.nodes[33815826] = Treasure({
    quest=39081,
    label=L["treasure_chest"],
    note=L["in_house"]
})

map.nodes[45106120] = Treasure({quest=39083, note=L["treasure_39083"]})

map.nodes[43225488] = Treasure({
    quest=39084,
    label=L["treasure_chest"]
})

pen.nodes[41578920] = Treasure({
    quest=39085,
    note=L["in_darkpens"],
    parent={ id=map.id, pois={ POI({42084569})} }
})

pen.nodes[51075180] = Treasure({
    quest=39086,
    label=L["glimmering_treasure_chest"],
    note=L["in_darkpens"],
    parent={ id=map.id, pois={ POI({42084569})} }
})

map.nodes[61657372] = Treasure({quest=39087})

map.nodes[61073421] = Treasure({
    quest=39088,
    label=L["treasure_chest"],
    note=L["treasure_39088"]
})

map.nodes[61017917] = Treasure({quest=39089, label=L["glimmering_treasure_chest"]})
map.nodes[54187061] = Treasure({quest=39093, note=L["treasure_39093"]})

map.nodes[54506048] = Treasure({
    quest=39097,
    label=L["treasure_chest"],
    note=L["in_small_cave"]
})

map.nodes[63277401] = Treasure({
    quest=39102,
    label=L["treasure_chest"],
    note=L["in_small_cottage"]
})

map.nodes[66604090] = Treasure({quest=39108, label=L["treasure_chest"]})
map.nodes[73795435] = Treasure({quest=44135, note=L["in_small_cave"]})
map.nodes[62708526] = Treasure({quest=44136, note=L["in_small_cave"]})

map.nodes[43068822] = Treasure({
    quest=44138,
    label=L["treasure_chest"],
    note=L["in_cave"],
    pois={
        POI({43778975})
    }
})

map.nodes[63904556] = Treasure({quest=44139, note=L["in_small_cottage"]})
map.nodes[51317849] = Treasure({quest=46954})

map.nodes[38636563] = Treasure({
    label="{npc:92738}",
    quest=39015,
    note=L["grumpy_note"],
    rewards={
        Pet({item=128354, id=1705}) -- Grumpy's Leash
    }
}) -- Grumpy

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[47003960] = PetBattle({
    id=99035,
    note=L["general_pet_tamer_note"].."\n\n"..L["durian_strongfruit_note"],
    rewards={
        Achievement({id=10876, criteria=nil}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=14, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=14, oneline=true}), -- Beast
        Achievement({id=9688, criteria=14, oneline=true}), -- Critter
        Achievement({id=9689, criteria=14, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=14, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=14, oneline=true}), -- Flying
        Achievement({id=9692, criteria=14, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=14, oneline=true}), -- Magic
        Achievement({id=9694, criteria=14, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=14, oneline=true})  -- Undead
    }
}) -- Durian Strongfruit

map.nodes[56206520] = PetBattle({
    id=105093,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31550})
    }
}) -- Fragment of Fire

map.nodes[66033915] = PetBattle({
    id=104992,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31551})
    }
}) -- The Maw

map.nodes[55808860] = PetBattle({
    id=105009,
    note=L["general_pet_tamer_note"],
    rewards={
        Achievement({id=10876, criteria=31552})
    }
}) -- Thistleleaf Bully

map.nodes[63606060] = PetBattle({
    id=104970,
    note=L["general_pet_tamer_note"].."\n\n"..L["xorvasc_note"],
    rewards={
        Achievement({id=10876, criteria=31554}),
        ns.reward.Spacer(),
        Achievement({id=9686, criteria=15, oneline=true}), -- Aquatic
        Achievement({id=9687, criteria=15, oneline=true}), -- Beast
        Achievement({id=9688, criteria=15, oneline=true}), -- Critter
        Achievement({id=9689, criteria=15, oneline=true}), -- Dragon
        Achievement({id=9690, criteria=15, oneline=true}), -- Elemental
        Achievement({id=9691, criteria=15, oneline=true}), -- Flying
        Achievement({id=9692, criteria=15, oneline=true}), -- Humanoid
        Achievement({id=9693, criteria=15, oneline=true}), -- Magic
        Achievement({id=9694, criteria=15, oneline=true}), -- Mechanical
        Achievement({id=9695, criteria=15, oneline=true})  -- Undead
    }
}) -- Xorvasc
