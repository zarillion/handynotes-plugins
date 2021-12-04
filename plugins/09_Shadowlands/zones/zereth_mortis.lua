-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local L = ns.locale
local Map = ns.Map

local Rare = ns.node.Rare
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement

local Arrow = ns.poi.Arrow
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 1970, settings = true})
local microd = Map({id = 2030}) -- name pending

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[64743369] = Rare({
    id = 179006,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52977}) -- Adventurer of Zereth Mortis
    }
}) -- Akkaris

map.nodes[49566751] = Rare({
    id = 183596,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52978}) -- Adventurer of Zereth Mortis
    }
}) -- Chitali the Eldest

map.nodes[47486228] = Rare({
    id = 183953,
    quest = 65273,
    note = L['corrupted_architect_note'],
    rewards = {
        -- Achievement?
    }
}) -- Corrupted Architect

map.nodes[53634435] = Rare({
    id = 180917,
    quest = 64716,
    rewards = {
        Achievement({id = 15391, criteria = 52974}) -- Adventurer of Zereth Mortis
    }
}) -- Destabilized Core

map.nodes[47474516] = Rare({
    id = 184409,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52982}) -- Adventurer of Zereth Mortis
    }
}) -- Euv'ouk

map.nodes[61826060] = Rare({
    id = 178229,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52973}) -- Adventurer of Zereth Mortis
    }
}) -- Feasting

map.nodes[59862111] = Rare({
    id = 182318,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52985}) -- Adventurer of Zereth Mortis
    }
}) -- General Zarathura

map.nodes[53089305] = Rare({
    id = 178778,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52971}) -- Adventurer of Zereth Mortis
    }
}) -- Gluttonous Overgrowth

map.nodes[52612503] = Rare({
    id = 178563,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52984}) -- Adventurer of Zereth Mortis
    }
}) -- Hadeon the Stonebreaker

microd.nodes[38100710] = Rare({
    id = 183814,
    parent = map.id,
    quest = nil,
    rewards = {
        -- Achievement?
    }
}) -- Interred Colossus

map.nodes[54083493] = Rare({
    id = 178508,
    quest = nil,
    rewards = {
        -- Achievement?
    },
    pois = {POI({55963261})} -- Cave entrance
}) -- Mother Phestis

map.nodes[57998454] = Rare({
    id = 179043,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52981}) -- Adventurer of Zereth Mortis
    },
    pois = {Path({57998454, 57968395, 58558374, 58808289})}
}) -- Orixal

map.nodes[43308762] = Rare({
    id = 183746,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52972}) -- Adventurer of Zereth Mortis
    }
}) -- Otiosen

map.nodes[54154870] = Rare({
    id = 183927,
    note = L['sand_matriarch_note'],
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52975}) -- Adventurer of Zereth Mortis
    }
}) -- Sand Matriarch Ileus

map.nodes[42342097] = Rare({
    id = 184413,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52988}) -- Adventurer of Zereth Mortis
    }
}) -- Shifting Stargorger

map.nodes[35877121] = Rare({
    id = 183722,
    quest = 65240,
    rewards = {
        Achievement({id = 15391, criteria = 52980}) -- Adventurer of Zereth Mortis
    }
}) -- Sorranos

map.nodes[49783914] = Rare({
    id = 183925,
    quest = 65272,
    rewards = {
        Achievement({id = 15391, criteria = 52979}) -- Adventurer of Zereth Mortis
    }
}) -- Tahkwitz

map.nodes[54507344] = Rare({
    id = 181249,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52987}) -- Adventurer of Zereth Mortis
    }
}) -- Tethos

map.nodes[39555737] = Rare({
    id = 181360,
    quest = 65239,
    rewards = {
        -- Achievement?
    }
}) -- Vexis

map.nodes[47044698] = Rare({
    id = 183747,
    quest = nil,
    rewards = {
        Achievement({id = 15391, criteria = 52983}) -- Adventurer of Zereth Mortis
    }
}) -- Vitiane

map.nodes[64054975] = Rare({
    id = 183737,
    quest = 65241,
    rewards = {
        Achievement({id = 15391, criteria = 52976}) -- Adventurer of Zereth Mortis
    }
}) -- Xy'rath the Covetous

map.nodes[43513294] = Rare({
    id = 183764,
    quest = 65251,
    rewards = {
        -- Achievement?
    }
}) -- Zatojin

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- 38977321 Gnawed Valise (Gnawed Lockbox on minimap) (quest=65480)
-- 42025181 Provis Cache (requires Provis Cache Key)
-- 51550989 Fallen Vault (quest=65487)
-- 56746416 Crushed Supply Crate (under rocks, not interactable)
-- 60011798 Mawsworn Cache (second one? this one requires Dominance Key)

map.nodes[38253724] = Treasure({
    quest = 64667,
    rewards = {
        Achievement({id = 15331, criteria = 52965}) -- Treasures of Zereth Mortis
    }
}) -- Damaged Jiro Stash

map.nodes[58847706] = Treasure({
    quest = 64667,
    rewards = {
        Achievement({id = 15331, criteria = 52887}) -- Treasures of Zereth Mortis
    },
    pois = {POI({59238144})} -- Cave entrance
}) -- Library Vault (Lost Scroll)

map.nodes[60593053] = Treasure({
    quest = 65441,
    rewards = {
        Achievement({id = 15331, criteria = 52969}) -- Treasures of Zereth Mortis
    }
}) -- Mawsworn Cache

map.nodes[37906520] = Treasure({
    quest = 65447,
    note = L['stolen_relic_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52970}) -- Treasures of Zereth Mortis
    }
}) -- Stolen Relic

-- Not going to give answer in the note for now, instead I explain how to solve it
-- Solution: 183951 (se) => 183950 (nw) => 183948 (sw) => 183952 (ne)
map.nodes[52596297] = Treasure({
    quest = 65270,
    note = L['symphonic_vault_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52968}) -- Treasures of Zereth Mortis
    }
}) -- Symphonic Vault

microd.nodes[51618820] = Treasure({
    quest = 65175,
    parent = map.id,
    note = L['template_archive_note'],
    rewards = {
        Achievement({id = 15331, criteria = 52966}) -- Treasures of Zereth Mortis
    },
    pois = {POI({72024882}), Arrow({72024882, 63855973})}
}) -- Template Archive

-------------------------------------------------------------------------------
-------------------------------- MISCELLANEOUS --------------------------------
-------------------------------------------------------------------------------

-- 43042150 Mysterious Cypher (spell=363311, "barrier")
-- 44872237 Mysterious Cypher (spell=363345, "barrier")
-- 68695320 Interior Locus Arrangement (quest=65330)
