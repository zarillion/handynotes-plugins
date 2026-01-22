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

local atn = Map({id = 2535, settings = false}) -- Atal'aman
local she = Map({id = 2502, settings = false}) -- The Shadow Enclave
local par = Map({id = 2545, settings = false}) -- Parhelion Plaza
local cal = Map({id = 2547, settings = false}) -- Collegiate Calamity
local tdw = Map({id = 2525, settings = false}) -- The Darkway
local tcr = Map({id = 2504, settings = false}) -- Twilight Crypts
local gru = Map({id = 2510, settings = false}) -- The Grudge Pit
local gom = Map({id = 2505, settings = false}) -- The Gulf of Memory - (Upper Rootway)
local gml = Map({id = 2575, settings = false}) -- The Gulf of Memory - (Lower Rootway)
local sks = Map({id = 2528, settings = false}) -- Sunkiller Sanctum (Upper)- or 2540
local skl = Map({id = 2571, settings = false}) -- Sunkiller Sanctum (Lower)
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

atn.nodes[48345051] = SturdyChest({
    achievementID = 61863,
    quest = 94014,
    rlabel = ns.status.Gray('#1')
})

atn.nodes[53065795] = SturdyChest({
    achievementID = 61863,
    quest = 94000,
    rlabel = ns.status.Gray('#2')
})

atn.nodes[53006534] = SturdyChest({
    achievementID = 61863,
    quest = 94038,
    rlabel = ns.status.Gray('#3')
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

she.nodes[55903437] = SturdyChest({
    achievementID = 61892,
    quest = 94028,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
------------------------------- PARHELION PLAZA -------------------------------
-------------------------------------------------------------------------------

par.nodes[09635031] = SturdyChest({
    achievementID = 61893,
    quest = 94019,
    rlabel = ns.status.Gray('#1')
})

par.nodes[41168679] = SturdyChest({
    achievementID = 61893,
    quest = 94033,
    rlabel = ns.status.Gray('#2')
})

par.nodes[22446108] = SturdyChest({
    achievementID = 61893,
    quest = 94015,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
----------------------------- COLLEGIATE CALAMITY -----------------------------
-------------------------------------------------------------------------------

cal.nodes[30951246] = SturdyChest({
    achievementID = 61894,
    quest = 94018,
    rlabel = ns.status.Gray('#1')
})

cal.nodes[29545397] = SturdyChest({
    achievementID = 61894,
    quest = 94030,
    rlabel = ns.status.Gray('#2')
})

cal.nodes[81283209] = SturdyChest({
    achievementID = 61894,
    quest = 94029,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
--------------------------------- THE DARKWAY ---------------------------------
-------------------------------------------------------------------------------

tdw.nodes[53104305] = SturdyChest({
    achievementID = 61895,
    quest = 94026,
    rlabel = ns.status.Gray('#1')
})

tdw.nodes[45814550] = SturdyChest({
    achievementID = 61895,
    quest = 94045,
    rlabel = ns.status.Gray('#2')
})

tdw.nodes[41584824] = SturdyChest({
    achievementID = 61895,
    quest = 94027,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
------------------------------- TWILIGHT CRYPTS -------------------------------
-------------------------------------------------------------------------------

tcr.nodes[56828579] = SturdyChest({
    achievementID = 61896,
    quest = 94020,
    rlabel = ns.status.Gray('#1')
})

tcr.nodes[21743629] = SturdyChest({
    achievementID = 61896,
    quest = 94034,
    rlabel = ns.status.Gray('#2')
})

tcr.nodes[46934989] = SturdyChest({
    achievementID = 61896,
    quest = 94037,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
-------------------------------- THE GRUDGE PIT -------------------------------
-------------------------------------------------------------------------------

gru.nodes[69763165] = SturdyChest({
    achievementID = 61897,
    quest = 94022,
    rlabel = ns.status.Gray('#1')
})

gru.nodes[36972865] = SturdyChest({
    achievementID = 61897,
    quest = 94039,
    rlabel = ns.status.Gray('#2')
})

gru.nodes[67535956] = SturdyChest({
    achievementID = 61897,
    quest = 94021,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
------------------------------ THE GULF OF MEMORY -----------------------------
-------------------------------------------------------------------------------

gom.nodes[54232518] = SturdyChest({
    achievementID = 61898,
    quest = 94023,
    rlabel = ns.status.Gray('#1')
})

gml.nodes[52598146] = SturdyChest({
    achievementID = 61898,
    quest = 94016,
    rlabel = ns.status.Gray('#2')
})

gml.nodes[34494620] = SturdyChest({
    achievementID = 61898,
    quest = 94041,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
------------------------------ SUNKILLER SANCTUM ------------------------------
-------------------------------------------------------------------------------

sks.nodes[38144902] = SturdyChest({
    achievementID = 61899,
    quest = 94042,
    rlabel = ns.status.Gray('#1')
})

skl.nodes[49755052] = SturdyChest({
    achievementID = 61899,
    quest = 94043,
    rlabel = ns.status.Gray('#2')
})

skl.nodes[60114079] = SturdyChest({
    achievementID = 61899,
    quest = 94024,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
------------------------------ SHADOWGUARD POINT ------------------------------
-------------------------------------------------------------------------------

sgp.nodes[58636052] = SturdyChest({
    achievementID = 61900,
    quest = 94044,
    rlabel = ns.status.Gray('#1')
})

sgp.nodes[41805375] = SturdyChest({
    achievementID = 61900,
    quest = 94017,
    rlabel = ns.status.Gray('#2')
})

sgp.nodes[58264151] = SturdyChest({
    achievementID = 61900,
    quest = 94025,
    rlabel = ns.status.Gray('#3')
})

-------------------------------------------------------------------------------
-------------------------------- DELVE REWARDS --------------------------------
-------------------------------------------------------------------------------

local DELVE_REWARDS = {

    ['the_grudge_pit'] = {
        Achievement({id = 61897, criteria = SturdyChestCriteria}), -- The Grudge Pit Discoveries
        Achievement({id = 61724, criteria = {110982, 110983, 110984}}), -- The Grudge Pit Stories
        Achievement({id = 61713, oneline = true, criteria = {110909}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110939}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110969}}) -- Midnight Delver Tank III
    },
    ['the_darkway'] = {
        Achievement({id = 61895, criteria = SturdyChestCriteria}), -- The Darkway Discoveries
        Achievement({id = 61728, criteria = {111009, 111010, 111011}}), -- The Darkway Stories
        Achievement({id = 61713, oneline = true, criteria = {110911}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110941}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110971}}) -- Midnight Delver Tank III
    },
    ['collegiate_calamity'] = {
        Achievement({id = 61894, criteria = SturdyChestCriteria}), -- Collegiate Calamity Discoveries
        Achievement({id = 61726, criteria = {110994, 110995, 110996}}), -- Collegiate Calamity Stories
        Achievement({id = 61713, oneline = true, criteria = {110912}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110942}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110972}}) -- Midnight Delver Tank III
    },
    ['parhelion_plaza'] = {
        Achievement({id = 61893, criteria = SturdyChestCriteria}), -- Parhelion Plaza Discoveries
        Achievement({id = 61725, criteria = {110985, 110986, 110987}}), -- Parhelion Plaza Stories
        Achievement({id = 61713, oneline = true, criteria = {110910}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110940}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110970}}) -- Midnight Delver Tank III
    },
    ['the_shadow_enclave'] = {
        Achievement({id = 61892, criteria = SturdyChestCriteria}), -- The Shadow Enclave Discoveries
        Achievement({id = 61727, criteria = {111003, 111004, 111005}}), -- The Shadow Enclave Stories
        Achievement({id = 61713, oneline = true, criteria = {110906}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110937}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110967}}) -- Midnight Delver Tank III
    },
    ['twilight_crypts'] = {
        Achievement({id = 61896, criteria = SturdyChestCriteria}), -- Twilight Crypts Discoveries
        Achievement({id = 61730, criteria = {111006, 111007, 111008}}), -- Twilight Crypts Stories
        Achievement({id = 61713, oneline = true, criteria = {110915}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110945}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110975}}) -- Midnight Delver Tank III
    },
    ['atalaman'] = {
        Achievement({id = 61863, criteria = SturdyChestCriteria}), -- Atal'aman Discoveries
        Achievement({id = 61729, criteria = {111000, 111001, 111002}}), -- Atal'aman Stories
        Achievement({id = 61713, oneline = true, criteria = {110908}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110938}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110968}}) -- Midnight Delver Tank III
    },
    ['shadowguard_point'] = {
        Achievement({id = 61900, criteria = SturdyChestCriteria}), -- Shadowguard Point Discoveries
        Achievement({id = 61733, criteria = {110991, 110992, 110993}}), -- Shadowguard Point Stories
        Achievement({id = 61713, oneline = true, criteria = {110905}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110936}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110966}}) -- Midnight Delver Tank III
    },
    ['sunkiller_sanctum'] = {
        Achievement({id = 61899, criteria = SturdyChestCriteria}), -- Sunkiller Sanctum Discoveries
        Achievement({id = 61732, criteria = {110988, 110989, 110990}}), -- Sunkiller Sanctum Stories
        Achievement({id = 61713, oneline = true, criteria = {110913}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110943}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110973}}) -- Midnight Delver Tank III
    },
    ['the_gulf_of_memory'] = {
        Achievement({id = 61898, criteria = SturdyChestCriteria}), -- The Gulf of Memory Discoveries
        Achievement({id = 61731, criteria = {110997, 110998, 110999}}), -- The Gulf of Memory Stories
        Achievement({id = 61713, oneline = true, criteria = {110914}}), -- Midnight Delver Damage Dealer III
        Achievement({id = 61716, oneline = true, criteria = {110944}}), -- Midnight Delver Healer III
        Achievement({id = 61719, oneline = true, criteria = {110974}}) -- Midnight Delver Tank III
    }
}

local DELVE_AREA_POIS = {
    -- NORMAL DELVES ----------------------------------------------------------
    [8433] = DELVE_REWARDS['the_grudge_pit'],
    [8439] = DELVE_REWARDS['the_darkway'],
    [8425] = DELVE_REWARDS['collegiate_calamity'],
    [8427] = DELVE_REWARDS['parhelion_plaza'],
    [8437] = DELVE_REWARDS['the_shadow_enclave'],
    [8441] = DELVE_REWARDS['twilight_crypts'],
    [8443] = DELVE_REWARDS['atalaman'],
    [8431] = DELVE_REWARDS['shadowguard_point'],
    [8429] = DELVE_REWARDS['sunkiller_sanctum'],
    [8435] = DELVE_REWARDS['the_gulf_of_memory'],

    -- BOUNTIFUL DELVES -------------------------------------------------------
    [8434] = DELVE_REWARDS['the_grudge_pit'],
    [8440] = DELVE_REWARDS['the_darkway'],
    [8426] = DELVE_REWARDS['collegiate_calamity'],
    [8428] = DELVE_REWARDS['parhelion_plaza'],
    [8438] = DELVE_REWARDS['the_shadow_enclave'],
    [8442] = DELVE_REWARDS['twilight_crypts'],
    [8444] = DELVE_REWARDS['atalaman'],
    [8432] = DELVE_REWARDS['shadowguard_point'],
    [8430] = DELVE_REWARDS['sunkiller_sanctum'],
    [8436] = DELVE_REWARDS['the_gulf_of_memory']

}

ns.hooks.delve.Add(ns.groups.DELVE_REWARDS, DELVE_AREA_POIS)
