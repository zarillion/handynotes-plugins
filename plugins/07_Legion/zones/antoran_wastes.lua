-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 885, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[50905540] = Rare({
    id = 127118,
    quest = 48820,
    rewards = {
        Achievement({id = 12078, criteria = 37605}),
        Transmog({item = 153312, slot = L['2h_sword']}), -- Praetor's Ornamental Greatsword
        Transmog({item = 152886, slot = L['cloth']}), -- Zealous Felslinger's Visage
        Transmog({item = 152888, slot = L['cloth']}), -- Zealous Felslinger's Epaulets
        Transmog({item = 152884, slot = L['cloth']}), -- Zealous Felslinger's Robe
        Transmog({item = 152881, slot = L['cloth']}), -- Zealous Felslinger's Girdle
        Transmog({item = 152887, slot = L['cloth']}), -- Zealous Felslinger's Leggings
        Transmog({item = 152883, slot = L['cloth']}), -- Zealous Felslinger's Boots
        Transmog({item = 152889, slot = L['cloth']}), -- Zealous Felslinger's Cuffs
        Transmog({item = 152885, slot = L['cloth']}) -- Zealous Felslinger's Handwraps
    }
}) -- Worldsplitter Skuul

map.nodes[53002930] = Rare({
    id = 127291,
    quest = 48822,
    rewards = {Achievement({id = 12078, criteria = 37613})}
}) -- Watcher Aival

map.nodes[53003600] = Rare({
    id = 126199,
    quest = 48810,
    rewards = {
        Achievement({id = 12078, criteria = 37649}),
        Mount({item = 152903, id = 981}) -- Biletooth Gnasher
    }
}) -- Vrax'thul

map.nodes[55302160] = Rare({
    id = 127300,
    quest = 48824,
    rewards = {
        Achievement({id = 12078, criteria = 37614}),
        Transmog({item = 153319, slot = L['2h_mace']}), -- Ardent Vindicator's Greatmace
        Transmog({item = 152886, slot = L['cloth']}), -- Zealous Felslinger's Visage
        Transmog({item = 152888, slot = L['cloth']}), -- Zealous Felslinger's Epaulets
        Transmog({item = 152884, slot = L['cloth']}), -- Zealous Felslinger's Robe
        Transmog({item = 152881, slot = L['cloth']}), -- Zealous Felslinger's Girdle
        Transmog({item = 152887, slot = L['cloth']}), -- Zealous Felslinger's Leggings
        Transmog({item = 152883, slot = L['cloth']}), -- Zealous Felslinger's Boots
        Transmog({item = 152889, slot = L['cloth']}), -- Zealous Felslinger's Cuffs
        Transmog({item = 152885, slot = L['cloth']}) -- Zealous Felslinger's Handwraps
    }
}) -- Void Warden Valsuran

map.nodes[55804610] = Rare({
    id = 122999,
    quest = 49241,
    rewards = {Achievement({id = 12078, criteria = 37656})}
}) -- Gar'zoth

map.nodes[57403350] = Rare({
    id = 122947,
    quest = 49240,
    rewards = {
        Achievement({id = 12078, criteria = 37658}),
        Transmog({item = 153327, slot = L['dagger']}), -- Mystic Wakener's Dagger
        Transmog({item = 152946, slot = L['plate']}), -- World-Defiler's Casque
        Transmog({item = 152944, slot = L['plate']}), -- World-Defiler's Shoulderplates
        Transmog({item = 152949, slot = L['plate']}), -- World-Defiler's Cuirass
        Transmog({item = 152943, slot = L['plate']}), -- World-Defiler's Girdle
        Transmog({item = 152945, slot = L['plate']}), -- World-Defiler's Tuille
        Transmog({item = 152948, slot = L['plate']}), -- World-Defiler's Sabatons
        Transmog({item = 152942, slot = L['plate']}), -- World-Defiler's Wristguards
        Transmog({item = 152947, slot = L['plate']}) -- World-Defiler's Gauntlets
    }
}) -- Mistress Il'thendra

map.nodes[58501180] = Rare({
    id = 127703,
    quest = 48968,
    note = L['doomcaster_suprax_note'],
    rewards = {
        Achievement({id = 12078, criteria = 37663}), Toy({item = 153194}) -- Legion Communication Orb
    }
}) -- Doomcaster Suprax

map.nodes[60704800] = Rare({
    id = 126946,
    quest = 48815,
    rewards = {
        Achievement({id = 12078, criteria = 37608}), Item({item = 151543}) -- Technique: Glyph of Fel-Touched Shards
    }
}) -- Inquisitor Vethroz

map.nodes[61302130] = Rare({
    id = 127376,
    quest = 48865,
    rewards = {Achievement({id = 12078, criteria = 37606})}
}) -- Chief Alchemist Munculus

map.nodes[61306520] = Rare({
    id = 126338,
    quest = 48814,
    rewards = {
        Achievement({id = 12078, criteria = 37616}), Toy({item = 153126}) -- Micro-Artillery Controller
    }
}) -- Wrath-Lord Yarez

map.nodes[61803690] = Rare({
    id = 122958,
    quest = 49183,
    rewards = {
        Achievement({id = 12078, criteria = 37657}),
        Mount({item = 152905, id = 979}) -- Crimson Slavermaw
    }
}) -- Blistermaw

map.nodes[62205350] = Rare({
    id = 126254,
    quest = 48813,
    rewards = {Achievement({id = 12078, criteria = 37612})}
}) -- Lieutenant Xakaar

map.nodes[63952175] = Rare({
    id = 127288,
    quest = 48821,
    rewards = {
        Achievement({id = 12078, criteria = 37615}),
        Mount({item = 152790, id = 955}) -- Vile Fiend
    },
    pois = {POI({62902500})}
}) -- Houndmaster Kerrax

map.nodes[64102090] = Rare({
    id = 126040,
    quest = 48809,
    rewards = {
        Achievement({id = 12078, criteria = 37647}),
        Mount({item = 152903, id = 981}) -- Biletooth Gnasher
    },
    pois = {POI({65602640})}
}) -- Puscilla

map.nodes[64935150] = Rare({
    id = 126208,
    quest = 48812,
    note = L['drops_fel_spotted_egg'],
    rewards = {
        Achievement({id = 12078, criteria = 37607}),
        Section(L['fel_spotted_egg_contains']),
        Mount({item = 152840, id = 976}), -- Scintillating Mana Ray
        Mount({item = 152841, id = 975}), -- Felglow Mana Ray
        Mount({item = 152842, id = 974}), -- Vibrant Mana Ray
        Mount({item = 152843, id = 906}), -- Darkspore Mana Ray
        Pet({item = 153054, id = 2118}), -- Docile Skyfin
        Pet({item = 153055, id = 2119}) -- Fel-Afflicted Skyfin
    },
    pois = {POI({64244811})}
}) -- Varga

map.nodes[65005300] = Rare({
    id = 126115,
    quest = 48811,
    note = L['ven_orn_note'],
    rewards = {Achievement({id = 12078, criteria = 37648})},
    pois = {POI({65005600})}
}) -- Ven'orn

map.nodes[65008240] = Rare({
    id = 127706,
    quest = 48971,
    note = L['reziera_the_seer_note'],
    rewards = {
        Achievement({id = 12078, criteria = 37664}), Toy({item = 153293}) -- Sightless Eye
    },
    pois = {POI({59494489}), Path({59494489, 65008240})}
}) -- Reziera the Seer

map.nodes[66701800] = Rare({
    id = 127705,
    quest = 48970,
    note = L['mother_rosula_note'],
    rewards = {
        Achievement({id = 12078, criteria = 37665}),
        Mount({item = 152903, id = 981}), -- Biletooth Gnasher
        Pet({item = 153252, id = 2135}) -- Rebellious Imp
    },
    pois = {POI({65602640})}
}) -- Mother Rosula

map.nodes[73607200] = Rare({
    id = 127090,
    quest = 48817,
    rewards = {
        Achievement({id = 12078, criteria = 37611}),
        Transmog({item = 153324, slot = L['shield']}), -- Eredath Vigilant's Bastion
        Transmog({item = 152886, slot = L['cloth']}), -- Zealous Felslinger's Visage
        Transmog({item = 152888, slot = L['cloth']}), -- Zealous Felslinger's Epaulets
        Transmog({item = 152884, slot = L['cloth']}), -- Zealous Felslinger's Robe
        Transmog({item = 152881, slot = L['cloth']}), -- Zealous Felslinger's Girdle
        Transmog({item = 152887, slot = L['cloth']}), -- Zealous Felslinger's Leggings
        Transmog({item = 152883, slot = L['cloth']}), -- Zealous Felslinger's Boots
        Transmog({item = 152889, slot = L['cloth']}), -- Zealous Felslinger's Cuffs
        Transmog({item = 152885, slot = L['cloth']}) -- Zealous Felslinger's Handwraps
    }
}) -- Admiral Rel'var

map.nodes[76405590] = Rare({
    id = 127096,
    quest = 48818,
    rewards = {Achievement({id = 12078, criteria = 37609})}
}) -- All-Seer Xanarian

map.nodes[84358112] = Rare({
    id = 127700,
    quest = 48967,
    requires = ns.requirement.Quest(49007), -- Commander On Deck!
    note = L['squadron_commander_vishax_note'],
    rewards = {
        Achievement({id = 12078, criteria = 37662}), Toy({item = 153253}) -- S.F.E. Interceptor
    },
    pois = {
        POI({77577478}), POI({87788010}), Path({77577478, 87788010, 84358112})
    }
}) -- Squadron Commander Vishax

map.nodes[82676554] = Rare({
    id = 127084,
    quest = 48816,
    note = L['commander_texlaz_note'],
    rewards = {Achievement({id = 12078, criteria = 37610})},
    pois = {
        POI({80456267}), POI({81147061}), Path({80456267, 81147061, 82676554})
    }
}) -- Commander Texlaz

-------------------------------------------------------------------------------
--------------------------- THE MANY-FACED DEVOURER ---------------------------
-------------------------------------------------------------------------------

local TheManyFacedDevourer = Class('TheManyFacedDevourer', Rare, {
    id = 127581,
    quest = 48966,
    requiredItems = {152786, 152991, 152992, 152993},
    rewards = {
        Achievement({id = 12078, criteria = 37660}),
        Pet({item = 153195, id = 2136}) -- Uuna's Doll
    },
    pois = {
        POI({53003600}), -- (152786) Call of the Devourer
        Path({54803910, 53003600}), -- Bone Effigy >> Call of the Devourer
        POI({52403530}), -- (152991) Fiend Bone
        Path({54803910, 52403530}), -- Bone Effigy >> Fiend Bone
        POI({65602640}), -- (152992) Imp Bone (Entrance)
        Path({54803910, 65602640}), -- Bone Effigy >> Imp Bone (Entrance)
        POI({65901940}), -- (152992) Imp Bone
        Path({65602640, 65901940}), -- Imp Bone (Entrance) >> Imp Bone
        POI({50405600}), -- (152993) Ur'zul Bone
        Path({54803910, 50405600}) -- Bone Effigy >> Ur'zul Bone
    }
})

function TheManyFacedDevourer.getters:note()
    local function collected(i)
        if ns.PlayerHasItem(self.requiredItems[i]) then
            return ns.status.Green('x')
        else
            return ns.status.Red('x')
        end
    end

    local note = L['the_many_faced_devourer_note'] .. '\n'
    note = note .. '\n' .. L['the_many_faced_devourer_checklist']
    note = note .. '\n' .. collected(1) .. ' {item:152786}'
    note = note .. '\n' .. collected(2) .. ' {item:152991}'
    note = note .. '\n' .. collected(3) .. ' {item:152992}'
    note = note .. '\n' .. collected(4) .. ' {item:152993}'
    return note
end

map.nodes[54803910] = TheManyFacedDevourer()

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[58906140] = Treasure({
    quest = 49017,
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37695})}
}) -- Forgotten Legion Supplies

map.nodes[52102720] = Treasure({
    quest = 49019,
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37697})}
}) -- Fel-Bound Chest

map.nodes[65903980] = Treasure({
    quest = 49018,
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37696}),
        Transmog({item = 153308, slot = L['1h_mace']}) -- Unyielding Peacekeeper's Cudgel
    }
}) -- Ancient Legion War Cache

map.nodes[57406360] = Treasure({
    quest = 49159,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {
        Achievement({id = 12074, criteria = 37960}),
        Transmog({item = 153285, slot = L['cloth']}) -- Augari Wakener's Mantle
    }
}) -- Missing Augari Chest

map.nodes[49005930] = Treasure({
    quest = 49020,
    rewards = {
        Achievement({id = 12074, criteria = 37698}),
        Transmog({item = 153291, slot = L['staff']}) -- Spectral Censorite's Staff
    }
}) -- Legion Treasure Hoard

map.nodes[75705260] = Treasure({
    quest = 49021,
    rewards = {Achievement({id = 12074, criteria = 37699})}
}) -- Timeworn Fel Chest

-------------------------------------------------------------------------------
------------------------------ DAILY CHESTS -----------------------------------
-------------------------------------------------------------------------------

local LWSupplies = Class('LWSupplies', Treasure, {
    group = ns.groups.LEGION_WAR_SUPPLIES,
    label = L['legion_war_supplies'],
    note = L['legion_war_supplies_note'],
    rewards = {
        Transmog({item = 153339, slot = L['plate']}), -- Triumvirate High Guard's Casque
        Transmog({item = 153342, slot = L['plate']}), -- Triumvirate High Guard's Pauldrons
        Transmog({item = 153340, slot = L['plate']}), -- Triumvirate High Guard's Breastplate
        Transmog({item = 153341, slot = L['plate']}), -- Triumvirate High Guard's Greatbelt
        Transmog({item = 153338, slot = L['plate']}), -- Triumvirate High Guard's Leggings
        Transmog({item = 153345, slot = L['plate']}), -- Triumvirate High Guard's Warboots
        Transmog({item = 153344, slot = L['plate']}), -- Triumvirate High Guard's Bracers
        Transmog({item = 153343, slot = L['plate']}), -- Triumvirate High Guard's Gauntlets
        Transmog({item = 152886, slot = L['cloth']}), -- Zealous Felslinger's Visage
        Transmog({item = 152888, slot = L['cloth']}), -- Zealous Felslinger's Epaulets
        Transmog({item = 152884, slot = L['cloth']}), -- Zealous Felslinger's Robe
        Transmog({item = 152881, slot = L['cloth']}), -- Zealous Felslinger's Girdle
        Transmog({item = 152887, slot = L['cloth']}), -- Zealous Felslinger's Leggings
        Transmog({item = 152883, slot = L['cloth']}), -- Zealous Felslinger's Boots
        Transmog({item = 152889, slot = L['cloth']}), -- Zealous Felslinger's Cuffs
        Transmog({item = 152885, slot = L['cloth']}) -- Zealous Felslinger's Handwraps
    }
})

local LWS1 = LWSupplies({quest = 48387, icon = 'chest_pp'})
local LWS2 = LWSupplies({quest = 48385, icon = 'chest_yw'})
local LWS3 = LWSupplies({quest = 48390, icon = 'chest_bl'})
local LWS4 = LWSupplies({quest = 48388, icon = 'chest_rd'})
local LWS5 = LWSupplies({quest = 48391, icon = 'chest_gn'})
local LWS6 = LWSupplies({quest = 48382, icon = 'chest_tl'})
local LWS7 = LWSupplies({quest = 48384, icon = 'chest_pk'})
local LWS8 = LWSupplies({quest = 48389, icon = 'chest_bn'})
local LWS9 = LWSupplies({quest = 48383, icon = 'chest_nv'})

map.nodes[65502850] = LWS1
map.nodes[68903350] = LWS1
map.nodes[66703630] = LWS1
map.nodes[63703650] = LWS1
map.nodes[68004020] = LWS1
map.nodes[69503950] = LWS1
map.nodes[72504230] = LWS1
map.nodes[73504670] = LWS1
map.nodes[48305440] = LWS2
map.nodes[50705700] = LWS2
map.nodes[55504750] = LWS2
map.nodes[57205120] = LWS2
map.nodes[56005400] = LWS2
map.nodes[57805890] = LWS2
map.nodes[72105680] = LWS3
map.nodes[78105610] = LWS3
map.nodes[80506160] = LWS3
map.nodes[76605820] = LWS3
map.nodes[76506480] = LWS3
map.nodes[73406860] = LWS3
map.nodes[72607270] = LWS3
map.nodes[77107520] = LWS3
map.nodes[82506750] = LWS3
map.nodes[55901400] = LWS4
map.nodes[59601390] = LWS4
map.nodes[56001720] = LWS4
map.nodes[59301770] = LWS4
map.nodes[55502050] = LWS4
map.nodes[56002660] = LWS4
map.nodes[54202790] = LWS4
map.nodes[51502600] = LWS4
map.nodes[66604670] = LWS5
map.nodes[65105070] = LWS5
map.nodes[68005070] = LWS5
map.nodes[71105450] = LWS5
map.nodes[65105510] = LWS5
map.nodes[63105750] = LWS5
map.nodes[61305400] = LWS6
map.nodes[69406350] = LWS6
map.nodes[71306920] = LWS6
map.nodes[67606990] = LWS6
map.nodes[62206950] = LWS6
map.nodes[57906490] = LWS6
map.nodes[66601720] = LWS7
map.nodes[60902900] = LWS7
map.nodes[59201940] = LWS7
map.nodes[64002750] = LWS7
map.nodes[63602110] = LWS7
map.nodes[61402040] = LWS7
map.nodes[64305050] = LWS8
map.nodes[62905000] = LWS8
map.nodes[64204750] = LWS8
map.nodes[64204230] = LWS8
map.nodes[62104580] = LWS8
map.nodes[60504690] = LWS8
map.nodes[60604090] = LWS8
map.nodes[58704330] = LWS8
map.nodes[52202930] = LWS9
map.nodes[51803530] = LWS9
map.nodes[53703570] = LWS9
map.nodes[55103930] = LWS9
map.nodes[58204030] = LWS9
map.nodes[59903580] = LWS9
map.nodes[58503120] = LWS9

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

map.nodes[60154552] = Collectible({
    id = 128134,
    icon = 1387707,
    note = L['orix_the_all_seer_note'],
    rewards = {
        Item({item = 153226, note = '500'}), -- Observer's Locus Resonator
        Toy({item = 153204, note = '1000'}), -- All-Seer's Eye
        Pet({item = 153026, id = 2115, note = '1000'}) -- Cross Gazer
    },
    pois = {POI({59494489})}
}) -- Orix the All-Seer
