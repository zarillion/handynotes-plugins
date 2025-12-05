-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
-- local Pet = ns.reward.Pet
-- local Spacer = ns.reward.Spacer

-- local POI = ns.poi.POI
-- local Path = ns.poi.Path

-------------------------------------------------------------------------------

local map = Map({id = 1, settings = true}) -- Placeholder

-- local atn = Map({id = nil, settings = false}) -- Atal'aman
local she = Map({id = 2502, settings = false}) -- The Shadow Enclave
local par = Map({id = 2545, settings = false}) -- Parhelion Plaza
local cal = Map({id = 2547, settings = false}) -- Collegiate Calamity
local tdw = Map({id = nil, settings = false}) -- The Darkway
-- local tcr = Map({id = nil, settings = false}) -- Twilight Crypts
local gru = Map({id = 2510, settings = false}) -- The Grudge Pit
local gom = Map({id = 2505, settings = false}) -- The Gulf of Memory
local sks = Map({id = 2528, settings = false}) -- Sunkiller Sanctum - or 2540
local sgp = Map({id = 2506, settings = false}) -- Shadowguard Point

-- local tor = Map({id = 2507, settings = false}) -- Torment's Rise ?

-------------------------------------------------------------------------------

local SturdyChestCriteria = {
    id = 1,
    qty = true,
    suffix = L['sturdy_chest_suffix']
}

local SturdyChest = Class('SturdyChest', Treasure, {
    icon = 'chest_yw',
    label = L['sturdy_chest'],
    scale = 1.25,
    getters = {
        rewards = function(self)
            return {
                Achievement({
                    id = self.achievementID,
                    criteria = SturdyChestCriteria
                })
            }
        end
    }
}) -- Sturdy Chest

-------------------------------------------------------------------------------
---------------------------------- ATAL'AMAN ----------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = SturdyChest({
    achievementID = 61863,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

map.nodes[10002000] = SturdyChest({
    achievementID = 61863,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

map.nodes[10003000] = SturdyChest({
    achievementID = 61863,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

map.nodes[10004000] = SturdyChest({
    achievementID = 61863,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
------------------------------ THE SHADOW ENCLAVE -----------------------------
-------------------------------------------------------------------------------

she.nodes[54598488] = SturdyChest({
    achievementID = 61892,
    quest = 94001,
    rlabel = ns.status.Gray('#1')
})

she.nodes[54634885] = SturdyChest({
    achievementID = 61892,
    quest = 94002,
    rlabel = ns.status.Gray('#2')
})

she.nodes[10002000] = SturdyChest({
    achievementID = 61892,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

she.nodes[10003000] = SturdyChest({
    achievementID = 61892,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
------------------------------- PARHELION PLAZA -------------------------------
-------------------------------------------------------------------------------

par.nodes[10001000] = SturdyChest({
    achievementID = 61893,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

par.nodes[10002000] = SturdyChest({
    achievementID = 61893,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

par.nodes[10003000] = SturdyChest({
    achievementID = 61893,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

par.nodes[10004000] = SturdyChest({
    achievementID = 61893,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
----------------------------- COLLEGIATE CALAMITY -----------------------------
-------------------------------------------------------------------------------

cal.nodes[10001000] = SturdyChest({
    achievementID = 61894,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

cal.nodes[10002000] = SturdyChest({
    achievementID = 61894,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

cal.nodes[10003000] = SturdyChest({
    achievementID = 61894,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

cal.nodes[10004000] = SturdyChest({
    achievementID = 61894,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
--------------------------------- THE DARKWAY ---------------------------------
-------------------------------------------------------------------------------

tdw.nodes[10001000] = SturdyChest({
    achievementID = 61895,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

tdw.nodes[10002000] = SturdyChest({
    achievementID = 61895,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

tdw.nodes[10003000] = SturdyChest({
    achievementID = 61895,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

tdw.nodes[10004000] = SturdyChest({
    achievementID = 61895,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
------------------------------- TWILIGHT CRYPTS -------------------------------
-------------------------------------------------------------------------------

map.nodes[10001000] = SturdyChest({
    achievementID = 61896,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

map.nodes[10002000] = SturdyChest({
    achievementID = 61896,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

map.nodes[10003000] = SturdyChest({
    achievementID = 61896,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

map.nodes[10004000] = SturdyChest({
    achievementID = 61896,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
-------------------------------- THE GRUDGE PIT -------------------------------
-------------------------------------------------------------------------------

gru.nodes[10001000] = SturdyChest({
    achievementID = 61897,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

gru.nodes[10002000] = SturdyChest({
    achievementID = 61897,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

gru.nodes[10003000] = SturdyChest({
    achievementID = 61897,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

gru.nodes[10004000] = SturdyChest({
    achievementID = 61897,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
------------------------------ THE GULF OF MEMORY -----------------------------
-------------------------------------------------------------------------------

gom.nodes[54232518] = SturdyChest({
    achievementID = 61898,
    quest = 94023,
    rlabel = ns.status.Gray('#1')
})

gom.nodes[10002000] = SturdyChest({
    achievementID = 61898,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

gom.nodes[10003000] = SturdyChest({
    achievementID = 61898,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

gom.nodes[10004000] = SturdyChest({
    achievementID = 61898,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
------------------------------ SUNKILLER SANCTUM ------------------------------
-------------------------------------------------------------------------------

sks.nodes[10001000] = SturdyChest({
    achievementID = 91899,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

sks.nodes[10002000] = SturdyChest({
    achievementID = 91899,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

sks.nodes[10003000] = SturdyChest({
    achievementID = 91899,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

sks.nodes[10004000] = SturdyChest({
    achievementID = 91899,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})

-------------------------------------------------------------------------------
------------------------------ SHADOWGUARD POINT ------------------------------
-------------------------------------------------------------------------------

sgp.nodes[10001000] = SturdyChest({
    achievementID = 61900,
    quest = nil,
    rlabel = ns.status.Gray('#1')
})

sgp.nodes[10002000] = SturdyChest({
    achievementID = 61900,
    quest = nil,
    rlabel = ns.status.Gray('#2')
})

sgp.nodes[10003000] = SturdyChest({
    achievementID = 61900,
    quest = nil,
    rlabel = ns.status.Gray('#3')
})

sgp.nodes[10004000] = SturdyChest({
    achievementID = 61900,
    quest = nil,
    rlabel = ns.status.Gray('#4')
})
