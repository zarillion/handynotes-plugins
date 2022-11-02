-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Disturbeddirt = ns.node.Disturbeddirt
local Dragonglyph = ns.node.Dragonglyph
local Flag = ns.node.Flag
local Rare = ns.node.Rare
local Scoutpack = ns.node.Scoutpack
local Treasure = ns.node.Treasure
local PetBattle = ns.node.PetBattle

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2023, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- map.nodes[] = Rare({
--     id = 195186,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56092}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Cinta the Forgotten

map.nodes[30546628] = Rare({
    id = 189652,
    quest = nil,
    rewards = {
        Achievement({id = 16677, criteria = 56068}),
        Transmog({item = 189055, slot = L['wand']}) -- Ghendish's Backup Talisman
    },
    pois = {
        Path({
            31686814, 31426810, 31206769, 30796652, 30546628, 30246637,
            29586720, 29286786, 29186827
        })
    }
}) -- Deadwaker Ghendish

map.nodes[49866673] = Rare({
    id = 192020,
    quest = nil,
    rewards = {
        Achievement({id = 16677, criteria = 56077})
        -- Transmog({item = , slot = L['']}) -- Name
    }
}) -- Eaglemaster Niraak

map.nodes[49866673] = Rare({
    id = 192020,
    quest = nil,
    rewards = {
        Achievement({id = 16677, criteria = 56077})
        -- Transmog({item = , slot = L['']}) -- Name
    }
}) -- Eaglemaster Niraak

map.nodes[56718128] = Rare({
    id = 193142,
    quest = 69840,
    note = L['in_small_cave'],
    rewards = {
        Achievement({id = 16677, criteria = 56064})
        -- Transmog({item = , slot = L['']}) -- Name
    }
}) -- Enraged Sapphire

-- map.nodes[] = Rare({ -- reqiured 67030
--     id = 193170,
--     quest = 69856,
--     rewards = {
--         Achievement({id = 16677, criteria = 56075}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Fulgurb

-- map.nodes[] = Rare({
--     id = 187781,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56082}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Hamett

-- map.nodes[] = Rare({
--     id = 188095,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56083}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Hunter of Deep

-- map.nodes[] = Rare({
--     id = 188124,
--     quest = 66356,
--     rewards = {
--         Achievement({id = 16677, criteria = 56084}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Irontree

-- map.nodes[] = Rare({
--     id = 197009,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56067}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Liskheszaera

-- map.nodes[] = Rare({
--     id = 195409,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56094}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Makhra the Ashtouched

map.nodes[71694585] = Rare({
    id = 193212,
    quest = 69871,
    rewards = {Achievement({id = 16677, criteria = 56073})}
}) -- Malsegan

-- map.nodes[] = Rare({ -- reqiured 67030
--     id = 193173,
--     quest = 69857,
--     rewards = {
--         Achievement({id = 16677, criteria = 56070}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Mikrin of the Raging Winds

-- map.nodes[] = Rare({
--     id = 187219,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56081}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Nokhud Warmaster

-- map.nodes[] = Rare({
--     id = 196350,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56096}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Old Stormhide

map.nodes[61212950] = Rare({ -- reqiured 67030
    id = 193235,
    quest = 69877,
    rewards = {Achievement({id = 16677, criteria = 56074})}
}) -- Oshigol

-- map.nodes[] = Rare({
--     id = 191950,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56087}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Porta the Overgrown

-- map.nodes[] = Rare({
--     id = 192557,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56091}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Quackers the Terrible

-- map.nodes[] = Rare({ -- reqiured 67030
--     id = 196010,
--     quest = 70698,
--     rewards = {
--         Achievement({id = 16677, criteria = 56069}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Researcher Sneakwing

-- map.nodes[] = Rare({ -- reqiured 67030
--     id = 193227,
--     quest = 69878,
--     rewards = {
--         Achievement({id = 16677, criteria = 56071}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Ronsak the Decimator

-- map.nodes[] = Rare({
--     id = 195223,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56093}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Rustlily

-- map.nodes[] = Rare({
--     id = 193215,
--     quest = 69865,
--     rewards = {
--         Achievement({id = 16677, criteria = 56079}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Scaleseeker Mezeri

map.nodes[50117517] = Rare({
    id = 193136,
    quest = 69863,
    rewards = {Achievement({id = 16677, criteria = 56063})}
}) -- Scav Notail

map.nodes[61801283] = Rare({
    id = 193188,
    quest = nil,
    rewards = {
        Achievement({id = 16677, criteria = 56065})
        -- Transmog({item = , slot = L['']}) -- Name
    }
}) -- Seeker Teryx

map.nodes[29964103] = Rare({
    id = 187559,
    quest = 69854,
    note = L['shade_of_grief_note'],
    rewards = {
        Achievement({id = 16677, criteria = 56080})
        -- Transmog({item = , slot = L['']}) -- Name
    }
}) -- Shade of Grief

-- map.nodes[] = Rare({
--     id = 193165,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56062}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Sparkspitter Vrak

-- map.nodes[] = Rare({ -- reqiured 67030
--     id = 193123,
--     quest = 69667,
--     rewards = {
--         Achievement({id = 16677, criteria = 56072}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Steamgill

map.nodes[78298276] = Rare({
    id = 191842,
    quest = nil,
    rewards = {Achievement({id = 16677, criteria = 56086})}
}) -- Sulfurion

-- map.nodes[] = Rare({
--     id = 196334,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56095}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- The Great Enla

-- map.nodes[] = Rare({
--     id = 195204,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56088}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- The Jolly Giant

-- map.nodes[] = Rare({
--     id = 192453,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56090}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Vaniik the Stormtouched

-- map.nodes[] = Rare({
--     id = 192364,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56089}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Windscale the Stormborn

-- map.nodes[] = Rare({
--     id = 192045,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56076}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Windseeker Avash

-- map.nodes[] = Rare({
--     id = 193140,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = 56078}),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Zarizz

map.nodes[31456387] = Rare({
    id = 193209,
    quest = nil,
    rewards = {
        Achievement({id = 16677, criteria = 56066}),
        Transmog({item = 200314, slot = L['cloth']}) -- Skyspeaker's Envelope
    }
}) -- Zenet Avis

map.nodes[72232306] = Rare({
    id = 188451,
    quest = nil,
    rewards = {
        Achievement({id = 16677, criteria = 56085})
        -- Transmog({item = , slot = L['']}) -- Name
    }
}) -- Zerimek

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16299/treasures-of-the-ohnahran-plains#comments

map.nodes[18001600] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16299, criteria = 54709})}
}) -- Cracked Centaur Horn

map.nodes[20001600] = Treasure({ -- required 70392, 70391
    quest = nil,
    requires = ns.requirement.Item(198843), -- Emerald Gardens Explorer's Notes
    rewards = {Achievement({id = 16299, criteria = 54700})}
}) -- Emerald Gem Cluster

map.nodes[22001600] = Treasure({
    quest = nil,
    rewards = {Achievement({id = 16299, criteria = 54710})}
}) -- Gold Swog Coin

map.nodes[32423817] = Treasure({ -- required 67046, 67049
    quest = 67049,
    note = L['nokhud_warspear_note'],
    requires = ns.requirement.Item(194540), -- Nokhud Armorer's Notes
    rewards = {Achievement({id = 16299, criteria = 54707})}
}) -- Nokhud Warspear

map.nodes[70603543] = Treasure({
    quest = 67950, -- 67718
    note = L['slightly_chewed_duck_egg_note'],
    requires = ns.requirement.Item(195453), -- Ludo's Stash Map
    rewards = {
        Achievement({id = 16299, criteria = 54708}),
        Pet({item = 199172, id = 3309}) -- Viridescent Duck
    },
    pois = {Path({61044337, 61274149, 61524124, 61754141, 61864232})}
}) -- Slightly Chewed Duck Egg (Dirt Mound)

map.nodes[51985839] = Treasure({
    quest = {70400, 72063}, -- Treasure, Return Yennu's Toy Boat
    label = L['yennus_boat'],
    note = L['yennus_boat_note'],
    rewards = {
        Achievement({id = 16299, criteria = 54711}), Toy({item = 200878}) -- Wheeled Floaty Boaty Controller
    }
}) -- Yennu's Boat

-------------------------------------------------------------------------------
------------------------- LIZI, THUNDERSPINE TRAMPLER -------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/news/lizi-thunderspine-trampler-nurse-a-thunderspine-to-health-for-a-mount-in-328734

local Lizi = Class('Lizi', Collectible, {
    id = 190014, -- Initiate Radiya
    icon = 4008180, -- Inv_thunderlizardprimal_brown
    quest = {71196, 71197, 71198, 71199, 71195}, -- dailys
    questCount = true,
    requires = {
        ns.requirement.Quest(66676), -- Sneaking In
        ns.requirement.Reputation(2503, 9, true) -- Maruuk Centaur
    },
    rewards = {Mount({item = 192799, id = 1639})} -- Lizi's Reins
})

function Lizi.getters:note()
    local function status(i)
        if C_QuestLog.IsQuestFlaggedCompleted(self.quest[i]) then
            return ns.status.Green(i)
        else
            return ns.status.Red(i)
        end
    end

    local note = L['lizi_note']
    note = note .. '\n\n' .. status(1) .. ' ' .. L['lizi_note_day1'] -- Fluorescent Fluid
    note = note .. '\n\n' .. status(2) .. ' ' .. L['lizi_note_day2'] -- High-Fiber Leaf
    note = note .. '\n\n' .. status(3) .. ' ' .. L['lizi_note_day3'] -- Thousandbine Piranha
    note = note .. '\n\n' .. status(4) .. ' ' .. L['lizi_note_day4'] -- Woolly Mountain Pelt
    note = note .. '\n\n' .. status(5) .. ' ' .. L['lizi_note_day5'] -- Meluun's Green Curry
    return note
end

-- map.nodes[nil] = Lizi()

-------------------------------------------------------------------------------
-------------------------------- DRAGON GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[84577779] = Dragonglyph({rewards = {Achievement({id = 16061})}}) -- Dragon Glyphs: Dragonsprings Summit
map.nodes[30126135] = Dragonglyph({rewards = {Achievement({id = 16056})}}) -- Dragon Glyphs: Emerald Gardens
map.nodes[70108668] = Dragonglyph({rewards = {Achievement({id = 16672})}}) -- Dragon Glyphs: Forkriver Crossing (Azure Span)
map.nodes[78312131] = Dragonglyph({rewards = {Achievement({id = 16671})}}) -- Dragon Glyphs: Mirewood Fen
map.nodes[46977284] = Dragonglyph({rewards = {Achievement({id = 16059})}}) -- Dragon Glyphs: Mirror of the Sky
map.nodes[30713557] = Dragonglyph({rewards = {Achievement({id = 16055})}}) -- Dragon Glyphs: Nokhudon Hold
map.nodes[57973111] = Dragonglyph({rewards = {Achievement({id = 16054})}}) -- Dragon Glyphs: Ohn'ahra's Roost
map.nodes[57088047] = Dragonglyph({rewards = {Achievement({id = 16060})}}) -- Dragon Glyphs: Ohn'iri Springs
map.nodes[80011306] = Dragonglyph({rewards = {Achievement({id = 16670})}}) -- Dragon Glyphs: Rubyscale Outpost
map.nodes[86513940] = Dragonglyph({rewards = {Achievement({id = 16062})}}) -- Dragon Glyphs: Rusza'thar Reach
map.nodes[44616457] = Dragonglyph({rewards = {Achievement({id = 16058})}}) -- Dragon Glyphs: Szar Skeleth
map.nodes[29447572] = Dragonglyph({rewards = {Achievement({id = 16057})}}) -- Dragon Glyphs: The Eternal Kurgans
map.nodes[61486436] = Dragonglyph({rewards = {Achievement({id = 16063})}}) -- Dragon Glyphs: Windsong Rise

-------------------------------------------------------------------------------
------------------ DRAGONSCALE EXPEDITION: THE HIGHEST PEAKS ------------------
-------------------------------------------------------------------------------

map.nodes[28317764] = Flag({quest = 71200})
map.nodes[30393646] = Flag({quest = 71207})
map.nodes[57753080] = Flag({quest = 70827})
map.nodes[86313928] = Flag({quest = 71208})

-------------------------------------------------------------------------------
------------------------------- DISTURBED DIRT --------------------------------
-------------------------------------------------------------------------------

map.nodes[36553269] = Disturbeddirt()
map.nodes[41103789] = Disturbeddirt()
map.nodes[42335555] = Disturbeddirt()
map.nodes[43316632] = Disturbeddirt()
map.nodes[49716952] = Disturbeddirt()
map.nodes[55197076] = Disturbeddirt()
map.nodes[51936274] = Disturbeddirt()
map.nodes[62171310] = Disturbeddirt()
map.nodes[63251396] = Disturbeddirt()
map.nodes[65868145] = Disturbeddirt()
map.nodes[66451981] = Disturbeddirt()

-------------------------------------------------------------------------------
-------------------------- EXPEDITION SCOUT'S PACKS ---------------------------
-------------------------------------------------------------------------------

map.nodes[21875784] = Scoutpack()
map.nodes[24745680] = Scoutpack()
map.nodes[25205876] = Scoutpack()
map.nodes[32043887] = Scoutpack()
map.nodes[43486213] = Scoutpack()
map.nodes[44856758] = Scoutpack()
map.nodes[51647211] = Scoutpack()
map.nodes[51797550] = Scoutpack()
map.nodes[60567702] = Scoutpack()
map.nodes[61301817] = Scoutpack()
map.nodes[61781881] = Scoutpack()
map.nodes[64028081] = Scoutpack()
map.nodes[65021064] = Scoutpack()
map.nodes[66798258] = Scoutpack()

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[24384234] = PetBattle({
    id = 197447,
    rewards = {Achievement({id = 16464, criteria = 55486})}
}) -- Stormamu

map.nodes[61964159] = PetBattle({
    id = 197102,
    rewards = {Achievement({id = 16464, criteria = 55492})}
}) -- Bakhushek
