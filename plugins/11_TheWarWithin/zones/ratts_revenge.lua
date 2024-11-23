-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node

local Buff = ns.reward.Buff
local Item = ns.reward.Item

local Entrance = ns.poi.Entrance

local Gray = ns.status.Gray
local Green = ns.status.Green
local Red = ns.status.Red

-------------------------------------------------------------------------------

-- INERT PECULIAR KEY
local ungoroCrater = ns.maps[78] or Map({id = 78, settings = false})

-- PECULIAR GEM
local dornogal = ns.maps[2339] or Map({id = 2339, settings = false})
local azjKahet = ns.maps[2255] or Map({id = 2255, settings = false})
local cityOfThreads = ns.maps[2213] or Map({id = 2213, settings = false})
local hallowfall = ns.maps[2215] or Map({id = 2215, settings = false})

-- KARAZHAN CATACOMBS
local deadwindPass = ns.maps[42] or Map({id = 42, settings = false})
local karazhanCatacombs = ns.maps[46] or Map({id = 46, settings = false})

-- 1 O'CLOCK ORB - LOVE
local northernBarrens = ns.maps[10] or Map({id = 10, settings = false})
local draenorNagrand = ns.maps[550] or Map({id = 550, settings = false})
local maldraxxus = ns.maps[1536] or Map({id = 1536, settings = false})

-- 2 O'CLOCK ORB - PRAY
local valeOfEternalBlossoms = ns.maps[390] or Map({id = 390, settings = false})

-------------------------------------------------------------------------------

local TORCH = ns.requirement.Toy(208092) -- Torch of Pyrreth

local RattsRevenge = Class('RattsRevenge', Node, {
    icon = 'peg_rd',
    scale = 2,
    group = ns.groups.RATTS_REVENGE
})

-------------------------------------------------------------------------------
----------------------------- INERT PECULIAR KEY ------------------------------
-------------------------------------------------------------------------------

ungoroCrater.nodes[44550798] = RattsRevenge({
    label = '{item:228941}',
    note = L['inert_peculiar_key_note'],
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Item({item = 228941, bag = true})} -- Inert Peculiar Key
}) -- Inert Peculiar Key

-------------------------------------------------------------------------------
-------------------------------- PECULIAR GEM ---------------------------------
-------------------------------------------------------------------------------

dornogal.nodes[55022896] = RattsRevenge({
    label = '{npc:230042}', -- Dalaran Survivor
    note = L['carefully_penned_note'],
    quest = 84684, -- ![Ratt's Race]
    rewards = {Item({item = 228934, bag = true})}, -- Carefully Penned Note
    rlabel = Gray('1/5')
}) -- Carefully Penned Note

azjKahet.nodes[69339332] = RattsRevenge({
    label = '{item:228935}',
    note = L['unfinished_note'],
    pois = {Entrance({68789326})},
    quest = 84684, -- ![Ratt's Race]
    rewards = {Item({item = 228935, bag = true})}, -- Unfinished Note
    rlabel = Gray('2/5')
}) -- Unfinished Note

cityOfThreads.nodes[31502076] = RattsRevenge({
    label = '{item:228936}',
    note = L['hastily_scrawled_note'],
    parent = azjKahet,
    quest = 84684, -- ![Ratt's Race]
    rewards = {Item({item = 228936, bag = true})}, -- Hastily Scrawled Note
    rlabel = Gray('3/5')
}) -- Hastily Scrawled Note

hallowfall.nodes[50728663] = RattsRevenge({
    label = '{item:228937}',
    note = L['water_resistant_note'],
    pois = {Entrance({49048542})},
    quest = 84684, -- ![Ratt's Race]
    rewards = {Item({item = 228937, bag = true})}, -- Water-Resistant Note
    rlabel = Gray('4/5')
}) -- Water-Resistant Note

azjKahet.nodes[56381746] = RattsRevenge({
    label = '{item:228938}',
    note = L['peculiar_gem_note'],
    pois = {Entrance({55121888})},
    quest = 84684, -- ![Ratt's Race]
    rewards = {Item({item = 228938, bag = true})}, -- Peculiar Gem
    rlabel = Gray('5/5')
}) -- Peculiar Gem

-------------------------------------------------------------------------------
------------------- KARAZHAN CATACOMBS - INSTANCE ENTRANCE --------------------
-------------------------------------------------------------------------------

deadwindPass.nodes[46766907] = RattsRevenge({
    label = L['karazhan_catacombs_label'],
    note = L['karazhan_catacombs_entrance_note'],
    OnClick = function() WorldMapFrame:SetMapID(karazhanCatacombs.id) end,
    requires = {
        TORCH, -- Torch of Pyrreth
        ns.requirement.Item(44124) -- Peculiar Key
    },
    clabel = L['change_map']
}) -- Karazhan Catacombs

-------------------------------------------------------------------------------
--------------------------- KARAZHAN CATACOMB ORBS ----------------------------
-------------------------------------------------------------------------------

local Orb = Class('Orb', RattsRevenge)

function Orb.getters:rlabel()
    local completed = C_QuestLog.IsQuestFlaggedCompleted(self.quest[1])
    return completed and Green(L['completed']) or Red(L['incomplete'])
end

karazhanCatacombs.nodes[50001500] = Orb({
    label = L['love_orb_label'],
    note = L['love_orb_note'] .. '\n\n' .. L['love_orb_locations'],
    quest = 84676 -- hidden
}) -- Orb 1

karazhanCatacombs.nodes[50001800] = Orb({
    label = L['pray_orb_label'],
    note = L['pray_orb_note'],
    quest = 84677 -- hidden
}) -- Orb 2

-------------------------------------------------------------------------------
---------------------------- 1 O'CLOCK ORB - LOVE -----------------------------
-------------------------------------------------------------------------------

northernBarrens.nodes[55004020] = RattsRevenge({
    label = L['humble_monument'],
    note = L['love_orb_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Humble Monument

draenorNagrand.nodes[74203750] = RattsRevenge({
    label = '{npc:82688}',
    location = L['olgra_location'],
    note = L['love_orb_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Olgra

draenorNagrand.nodes[49204800] = RattsRevenge({
    label = '{npc:82692}',
    location = L['olgra_location'],
    note = L['love_orb_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Olgra

maldraxxus.nodes[27306130] = RattsRevenge({
    label = '{npc:175815}',
    note = L['love_orb_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Decimator Olgra

-------------------------------------------------------------------------------
---------------------------- 2 O'CLOCK ORB - PRAY -----------------------------
-------------------------------------------------------------------------------

valeOfEternalBlossoms.nodes[83183011] = RattsRevenge({
    label = '{npc:153297}',
    note = L['pray_orb_note'],
    quest = 84677, -- hidden
    rewards = {Item({item = 53156, bag = true})} -- Key of Shadows
}) -- Ny'alotha Obelisk
