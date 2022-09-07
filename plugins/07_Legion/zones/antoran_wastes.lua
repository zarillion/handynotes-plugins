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
    rewards = {Achievement({id = 12078, criteria = 37605})}
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
    rewards = {Achievement({id = 12078, criteria = 37614})}
}) -- Void Warden Valsuran

map.nodes[55804610] = Rare({
    id = 122999,
    quest = 49241,
    rewards = {Achievement({id = 12078, criteria = 37656})}
}) -- Gar'zoth

map.nodes[57403350] = Rare({
    id = 122947,
    quest = 49240,
    rewards = {Achievement({id = 12078, criteria = 37658})}
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
    rewards = {Achievement({id = 12078, criteria = 37608})}
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
    rewards = {Achievement({id = 12078, criteria = 37611})}
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
    rewards = {Achievement({id = 12078, criteria = 37662})},
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
    rewards = {Achievement({id = 12074, criteria = 37696})}
}) -- Ancient Legion War Cache

map.nodes[57406360] = Treasure({
    quest = 49159,
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {Achievement({id = 12074, criteria = 37960})}
}) -- Missing Augari Chest

map.nodes[49005930] = Treasure({
    quest = 49020,
    rewards = {Achievement({id = 12074, criteria = 37698})}
}) -- Legion Treasure Hoard

map.nodes[75705260] = Treasure({
    quest = 49021,
    rewards = {Achievement({id = 12074, criteria = 37699})}
}) -- Timeworn Fel Chest

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
