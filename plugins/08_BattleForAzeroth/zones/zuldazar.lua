-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale

local Map = ns.Map
local Treasure = ns.node.Treasure
local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Path = ns.poi.Path

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=862, settings=true })
local daz = Map({ id=1165, settings=true })

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- Daily treasures? Junk?
-- 52564719  862 50722 Treasure Chest
-- 42031415 1165 49142 Treasure Chest

-------------------------------------------------------------------------------

local voodoo = Treasure({
    label='{item:161443}',
    quest=52269,
    note=L["tiny_voodoo_mask_note"],
    rewards={
        Item({item=161443, quest=52269})
    }
}) -- A Tiny Voodoo Mask

daz.nodes[39001580] = voodoo
map.nodes[54303440] = voodoo

local cache_of_secrets = Treasure({
    quest=51338,
    note=L["cache_of_secrets_note"],
    rewards={
        Achievement({id=12851, criteria=40996})
    }
}) -- Cache of Secrets

daz.nodes[44472690] = cache_of_secrets
map.nodes[56123806] = cache_of_secrets

local white_shark = Treasure({
    quest=50947,
    note=L["da_white_shark_note"],
    rewards={
        Achievement({id=12851, criteria=40994})
    }
}) -- Da White Shark's Bounty

daz.nodes[59308866] = white_shark
map.nodes[61065863] = white_shark

map.nodes[38793444] = Treasure({
    quest=50707,
    note=L["dazars_forgotten_chest_note"],
    rewards={
        Achievement({id=12851, criteria=40993})
    },
    pois={
        Path({41953562, 41583471, 41063381, 40623270, 39913279, 39453364, 38793444})
    }
}) -- Dazar's Forgotten Chest

map.nodes[51442661] = Treasure({
    quest=50582,
    note=L["gift_of_the_brokenhearted_note"],
    rewards={
        Achievement({id=12851, criteria=40991})
    }
}) -- Gift of the Brokenhearted

local offerings = Treasure({
    quest=48938,
    note=L["offerings_of_the_chosen_note"],
    rewards={
        Achievement({id=12851, criteria=40988})
    }
}) -- Offerings of the Chosen

daz.nodes[38280714] = offerings
map.nodes[54093150] = offerings

local riches = Treasure({
    quest=51624,
    note=L["riches_of_tornowa_note"],
    rewards={
        Achievement({id=12851, criteria=40997})
    }
}) -- Riches of Tor'nowa

daz.nodes[34905440] = riches
map.nodes[52974719] = riches

local spoils = Treasure({
    quest=49936,
    note=L["spoils_of_pandaria_note"],
    rewards={
        Achievement({id=12851, criteria=40990})
    }
}) -- Spoils of Pandaria

map.nodes[51718690] = spoils
Map({id=1177}).nodes[23132391] = spoils

map.nodes[71821677] = Treasure({
    quest=50949,
    note=L["in_small_cave"],
    rewards={
        Achievement({id=12851, criteria=40995})
    }
}) -- The Exile's Lament

map.nodes[49506526] = Treasure({
    quest=49257,
    note=L["warlords_cache_note"],
    rewards={
        Achievement({id=12851, criteria=40992})
    }
}) -- Warlord's Cache

map.nodes[64712167] = Treasure({
    quest=50259,
    rewards={
        Achievement({id=12851, criteria=40989})
    }
}) -- Witch Doctor's Hoard
