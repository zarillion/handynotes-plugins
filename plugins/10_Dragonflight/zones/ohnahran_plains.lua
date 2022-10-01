-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Dragonglyph = ns.node.Dragonglyph
local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet

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
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Cinta the Forgotten
-- map.nodes[] = Rare({
--     id = 189652,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Deadwaker Ghendish
-- map.nodes[] = Rare({
--     id = 192020,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Eaglemaster Niraak
-- map.nodes[] = Rare({
--     id = 193142,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Enraged Sapphire
-- map.nodes[] = Rare({
--     id = 193170,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Fulgurb
-- map.nodes[] = Rare({
--     id = 187781,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Hamett
-- map.nodes[] = Rare({
--     id = 188095,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Hunter of Deep
-- map.nodes[] = Rare({
--     id = 188124,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Irontree
-- map.nodes[] = Rare({
--     id = 197009,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Liskheszaera
-- map.nodes[] = Rare({
--     id = 195409,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Makhra the Ashtouched
-- map.nodes[] = Rare({
--     id = 193212,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Malsegan
-- map.nodes[] = Rare({
--     id = 193173,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Mikrin of the Raging Winds
-- map.nodes[] = Rare({
--     id = 187219,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Nokhud Warmaster
-- map.nodes[] = Rare({
--     id = 196350,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Old Stormhide
-- map.nodes[] = Rare({
--     id = 193235,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Oshigol
-- map.nodes[] = Rare({
--     id = 191950,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Porta the Overgrown
-- map.nodes[] = Rare({
--     id = 192557,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Quackers the Terrible
-- map.nodes[] = Rare({
--     id = 196010,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Researcher Sneakwing
-- map.nodes[] = Rare({
--     id = 193227,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Ronsak the Decimator
-- map.nodes[] = Rare({
--     id = 195223,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Rustlily
-- map.nodes[] = Rare({
--     id = 193215,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Scaleseeker Mezeri
map.nodes[50117517] = Rare({
    id = 193136,
    quest = nil,
    rewards = {Achievement({id = 16677, criteria = 56063})}
}) -- Scav Notail

-- map.nodes[] = Rare({
--     id = 193188,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Seeker Teryx
-- map.nodes[] = Rare({
--     id = 187559,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Shade of Grief
-- map.nodes[] = Rare({
--     id = 193165,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Sparkspitter Vrak
-- map.nodes[] = Rare({
--     id = 193123,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Steamgill
-- map.nodes[] = Rare({
--     id = 191842,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Sulfurion
-- map.nodes[] = Rare({
--     id = 196334,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- The Great Enla
-- map.nodes[] = Rare({
--     id = 195204,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- The Jolly Giant
-- map.nodes[] = Rare({
--     id = 192453,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Vaniik the Stormtouched
-- map.nodes[] = Rare({
--     id = 192364,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Windscale the Stormborn
-- map.nodes[] = Rare({
--     id = 192045,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Windseeker Avash
-- map.nodes[] = Rare({
--     id = 193140,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Zarizz
-- map.nodes[] = Rare({
--     id = 193209,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Zenet Avis
-- map.nodes[] = Rare({
--     id = 188451,
--     quest = ,
--     rewards = {
--         Achievement({id = 16677, criteria = }),
--         Transmog({item = , slot = L['']}) -- Name
--     }
-- }) -- Zerimek
-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/beta/achievement=16299/treasures-of-the-ohnahran-plains#comments

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54709})}
-- }) -- Cracked Centaur Horn

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54700})}
-- }) -- Emerald Gem Cluster

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54710})}
-- }) -- Gold Swog Coin

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54707})}
-- }) -- Nokhud Warspear

map.nodes[70603543] = Treasure({
    quest = 67950, -- 67718
    note = L['slightly_chewed_duck_egg_note'],
    rewards = {
        Achievement({id = 16299, criteria = 54708}),
        Pet({item = 199172, id = 3309}) -- Viridescent Duck
    },
    pois = {Path({61044337, 61274149, 61524124, 61754141, 61864232})}
}) -- Slightly Chewed Duck Egg

-- map.nodes[] = Treasure({
--     quest = nil,
--     rewards = {Achievement({id = 16299, criteria = 54711})}
-- }) -- Yennu's Boat

-------------------------------------------------------------------------------
------------------------- LIZI, THUNDERSPINE TRAMPLER -------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/news/lizi-thunderspine-trampler-nurse-a-thunderspine-to-health-for-a-mount-in-328734

local Lizi = Class('Lizi', Collectible, {
    id = nil,
    icon = 4008180, -- Inv_thunderlizardprimal_brown
    quest = {nil, nil, nil, nil, nil}, -- daily: nil
    questCount = true,
    rewards = {Mount({item = 192799, id = 1639})} -- Thunderspine Behemoth
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
