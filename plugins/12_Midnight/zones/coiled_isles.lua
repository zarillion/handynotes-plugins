-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local LoreObject = ns.node.LoreObject
local PT = ns.node.ProfessionTreasures
local Rare = ns.node.Rare
local RareElite = ns.node.RareElite
local Safari = ns.node.Safari
local SkyridingGlyph = ns.node.SkyridingGlyph
local Telescope = ns.node.Telescope
local Treasure = ns.node.Treasure

local HonoredDead = ns.node.HonoredDead

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Item = ns.reward.Item
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy
local Reputation = ns.reward.Reputation
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer

local Gray = ns.status.Gray

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 2512, settings = true})
local vault_map = Map({id = 2509, settings = true, parent = 2512})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[53777204] = Rare({
    id = 264854,
    quest = 96491,
    rewards = {Achievement({id = 63358, criteria = 115279})}
}) -- Farthik the Plunderer - click the chest to spawn/agro rare

map.nodes[50006907] = Rare({
    id = 268049,
    quest = 97112,
    rewards = {Achievement({id = 63358, criteria = 115280})}
}) -- Siltmouth

map.nodes[24897354] = Rare({
    id = 268090,
    quest = 97122,
    rewards = {Achievement({id = 63358, criteria = 115784})}
}) -- Kari'zah the Forgotten

map.nodes[31665672] = Rare({
    id = 265237,
    quest = 96456,
    rewards = {Achievement({id = 63358, criteria = 115284})}
}) -- Lockjaw

map.nodes[43855086] = Rare({
    id = 265262,
    quest = 96464,
    rewards = {Achievement({id = 63358, criteria = 115281})}
}) -- Hisstara

map.nodes[00000000] = Rare({
    id = 0,
    quest = 96030,
    rewards = {Achievement({id = 63358, criteria = 115282})}
}) -- Szarith the Fanged

map.nodes[70174529] = Rare({
    id = 258916,
    quest = 94856,
    rewards = {Achievement({id = 63358, criteria = 110172})}
}) -- Garsecg

map.nodes[52064479] = Rare({
    id = 258920,
    quest = 94860,
    rewards = {Achievement({id = 63358, criteria = 115283})}
}) -- Nar'zira - coords maybe?

map.nodes[57216417] = Rare({
    id = 257906,
    quest = 94619,
    rewards = {Achievement({id = 63358, criteria = 115285})}
}) -- Coin-Eye Skully

map.nodes[70036344] = Rare({
    id = 256631,
    quest = 93829,
    rewards = {Achievement({id = 63358, criteria = 115286})}
}) -- Big Mon / Ancient Hulk -- patrols

map.nodes[58534006] = Rare({
    id = 261109,
    quest = 95447,
    rewards = {Achievement({id = 63358, criteria = 115287})}
}) -- Sss'alik

map.nodes[52053229] = Rare({
    id = 261142,
    quest = 95452,
    rewards = {Achievement({id = 63358, criteria = 115288})}
}) -- Destra

-- Oppose the Foes (Rare Elite) - Achievement 63601

vault_map.nodes[00000000] = RareElite({
    id = 0,
    quest = 0,
    rewards = {Achievement({id = 63601, criteria = 116325})}
}) -- Congealed Malice

vault_map.nodes[00000000] = RareElite({
    id = 0,
    quest = 0,
    rewards = {Achievement({id = 63601, criteria = 116326})}
}) -- Khu'tulak

vault_map.nodes[00000000] = RareElite({
    id = 0,
    quest = 0,
    rewards = {Achievement({id = 63601, criteria = 116327})}
}) -- Susarikk

-------------------------------------------------------------------------------
------------------------------- TREASURES ------------------------------------
-------------------------------------------------------------------------------
---
---
---

map.nodes[71886666] = Treasure({
    quest = 94569,
    rewards = {
        Achievement({id = 63359, criteria = 115289}),
        Reputation({id = 2772, gain = 50, quest = 94569})
    }
}) -- Abandoned Amani Privateer's Cache

map.nodes[45916628] = Treasure({
    quest = 95938,
    rewards = {
        Achievement({id = 63359, criteria = 115313}),
        Reputation({id = 2772, gain = 50, quest = 95938})
    }
}) -- Fangbound Sack

map.nodes[65440560] = Treasure({
    quest = 95907,
    rewards = {
        Achievement({id = 63359, criteria = 115290}),
        Reputation({id = 2772, gain = 50, quest = 95907})
    }
}) -- Sunken Diver's Chest

map.nodes[67264846] = Treasure({
    quest = 95956,
    rewards = {
        Achievement({id = 63359, criteria = 115291}),
        Reputation({id = 2772, gain = 50, quest = 95956})
    }
}) -- Grave of Someone Forgotten

map.nodes[00000000] = Treasure({
    quest = 95941,
    rewards = {
        Achievement({id = 63359, criteria = 115292}),
        Reputation({id = 2772, gain = 50, quest = 95941})
    }
}) -- Profane Ritual Spoils

map.nodes[70637663] = Treasure({
    quest = 95995,
    rewards = {
        Achievement({id = 63359, criteria = 115294}),
        Reputation({id = 2772, gain = 50, quest = 95995})
    }
}) -- Brine-Crusted Chest / Anceint Amani Chest

map.nodes[31438349] = Treasure({
    quest = 96985,
    rewards = {
        Achievement({id = 63359, criteria = 115295}),
        Reputation({id = 2772, gain = 50, quest = 96985})
    }
}) -- Posessed Vase

map.nodes[75376833] = Treasure({
    quest = 95164,
    rewards = {
        Achievement({id = 63359, criteria = 115306}),
        Reputation({id = 2772, gain = 50, quest = 95164}),
        Toy({item = 268504}) -- [Malfunctioning Staff]
    }
}) -- Malfunctioning Staff

map.nodes[55213796] = Treasure({
    quest = 95563,
    rewards = {
        Achievement({id = 63359, criteria = 115307}),
        Reputation({id = 2772, gain = 50, quest = 95563})
    }
}) -- Tarnished Amani Glaive

map.nodes[60435946] = Treasure({
    quest = 95566,
    rewards = {
        Achievement({id = 63359, criteria = 115309}),
        Reputation({id = 2772, gain = 50, quest = 95566}),
        Toy({item = 277954})
    }
}) -- Jaktu's Cursed Blade

map.nodes[68056590] = Treasure({
    quest = 95571,
    rewards = {
        Achievement({id = 63359, criteria = 115310}),
        Reputation({id = 2772, gain = 50, quest = 95571})
    },
    note = 'return the Forgotten Trinket to the lost spirit',
    pois = {
        POI({points = {70226450}, label = '{item:269935}'})
    }
}) -- Lost Spirit

map.nodes[58144355] = Treasure({
    quest = 95594,
    rewards = {
        Achievement({id = 63359, criteria = 115312}),
        Reputation({id = 2772, gain = 50, quest = 95594})
    }
}) -- Cracked Skull

map.nodes[46862957] = Treasure({
    quest = 95596,
    rewards = {
        Achievement({id = 63359, criteria = 115296}),
        Reputation({id = 2772, gain = 50, quest = 95596})
    }
}) -- Damaged Loa Trinket

map.nodes[00000000] = Treasure({
    quest = 95835,
    rewards = {
        Achievement({id = 63359, criteria = 115298}),
        Reputation({id = 2772, gain = 50, quest = 95835})
    }
}) -- Venomjade Necklace

map.nodes[00000000] = Treasure({
    quest = 95836,
    rewards = {
        Achievement({id = 63359, criteria = 115299}),
        Reputation({id = 2772, gain = 50, quest = 95836})
    }
}) -- Ornate Bottle

map.nodes[53094310] = Treasure({
    quest = 95841,
    rewards = {
        Achievement({id = 63359, criteria = 115300}),
        Reputation({id = 2772, gain = 50, quest = 95841})
    }
}) -- Stinking Vessel /Intact Vessel

map.nodes[49483198] = Treasure({
    quest = 95854,
    rewards = {
        Achievement({id = 63359, criteria = 115301}),
        Reputation({id = 2772, gain = 50, quest = 95854})
    }
}) -- Waterlogged Basket

map.nodes[00000000] = Treasure({
    quest = 95855,
    rewards = {
        Achievement({id = 63359, criteria = 115302}),
        Reputation({id = 2772, gain = 50, quest = 95855})
    }
}) -- Smoldering Incense

map.nodes[00000000] = Treasure({
    quest = 95558,
    rewards = {
        Achievement({id = 63359, criteria = 115308}),
        Reputation({id = 2772, gain = 50, quest = 95558})
    }
}) -- Crumbling Urn

map.nodes[64917889] = Treasure({
    quest = 95591,
    rewards = {
        Achievement({id = 63359, criteria = 115314}),
        Reputation({id = 2772, gain = 50, quest = 95591})
    }
}) -- Forgotten Mask

map.nodes[58194572] = Treasure({
    quest = 95976,
    rewards = {
        Achievement({id = 63359, criteria = 115293}),
        Reputation({id = 2772, gain = 50, quest = 95976})
    }
}) -- Vul'zahn's Smuggled Treasure

map.nodes[00000000] = Treasure({
    quest = 95727,
    rewards = {
        Achievement({id = 63359, criteria = 115297}),
        Reputation({id = 2772, gain = 50, quest = 95727})
    }
}) -- Zul'jan's Stash

-------------------------------------------------------------------------------
--------------------------- SKYRIDING GLYPHS --------------------------------
-------------------------------------------------------------------------------

map.nodes[37416053] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115491})}
}) -- The Fangs, the Coiled Isles

map.nodes[26636314] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115766})}
}) -- The Forum, the Coiled Isles

map.nodes[28827523] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115768})}
}) -- The Wreck of Sethralis's Scales, the Coiled Isles

map.nodes[40559049] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115769})}
}) -- Southern Island, the Coiled Isles

map.nodes[45846493] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115770})}
}) -- Gate of the Eastern Fang, the Coiled Isles

map.nodes[58944891] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115771})}
}) -- Tokka's Landing, the Coiled Isles

map.nodes[64126065] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115772})}
}) -- The Whispering Marsh, the Coiled Isles

map.nodes[70284816] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115773})}
}) -- The Wreck of Paku's Talon, the Coiled Isles

map.nodes[52013841] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115774})}
}) -- The Serpent's Tail, the Coiled Isles

map.nodes[42883059] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115775})}
}) -- Blistering Terrace, the Coiled Isles

map.nodes[43824419] = SkyridingGlyph({
    rewards = {Achievement({id = 63395, criteria = 115776})}
}) -- Gate of the Serpent's Eye, the Coiled Isles

-------------------------------------------------------------------------------
------------------------------- THE HONORED DEAD ------------------------------
-------------------------------------------------------------------------------

vault_map.nodes[49505659] = HonoredDead({
    quest = 98029,
    rewards = {Achievement({id = 63610, criteria = 116407})}
}) -- To  daughter

vault_map.nodes[00000000] = HonoredDead({
    quest = 98030,
    rewards = {Achievement({id = 63610, criteria = 116408})}
}) -- To a lover

vault_map.nodes[00000000] = HonoredDead({
    quest = 98031,
    rewards = {Achievement({id = 63610, criteria = 116409})}
}) -- To parents

vault_map.nodes[55624060] = HonoredDead({
    quest = 98032,
    rewards = {Achievement({id = 63610, criteria = 116410})}
}) -- To a dream

vault_map.nodes[52913390] = HonoredDead({
    quest = 98033,
    rewards = {Achievement({id = 63610, criteria = 116411})}
}) -- To a captain

vault_map.nodes[00000000] = HonoredDead({
    quest = 98034,
    rewards = {Achievement({id = 63610, criteria = 116412})}
}) -- To sons

vault_map.nodes[45816179] = HonoredDead({
    quest = 98035,
    rewards = {Achievement({id = 63610, criteria = 116413})}
}) -- To Failure

vault_map.nodes[00000000] = HonoredDead({
    quest = 98036,
    rewards = {Achievement({id = 63610, criteria = 116414})}
}) -- To a father

vault_map.nodes[00000000] = HonoredDead({
    quest = 98037,
    rewards = {Achievement({id = 63610, criteria = 116415})}
}) -- To a sister

vault_map.nodes[00000000] = HonoredDead({
    quest = 98038,
    rewards = {Achievement({id = 63610, criteria = 116416})}
}) -- To Comrades

vault_map.nodes[00000000] = HonoredDead({
    quest = 98039,
    rewards = {Achievement({id = 63610, criteria = 116417})}
}) -- To a stranger

vault_map.nodes[00000000] = HonoredDead({
    quest = 98040,
    rewards = {Achievement({id = 63610, criteria = 116418})}
}) -- To a shield-bearer
