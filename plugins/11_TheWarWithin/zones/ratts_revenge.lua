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

local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus

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

-- 1 O'CLOCK ORB
local northernBarrens = ns.maps[10] or Map({id = 10, settings = false})
local draenorNagrand = ns.maps[550] or Map({id = 550, settings = false})
local maldraxxus = ns.maps[1536] or Map({id = 1536, settings = false})

-- 2 O'CLOCK ORB
local valeOfEternalBlossoms = ns.maps[390] or Map({id = 390, settings = false})

-- 3 O'CLOCK ORB
local stormwind = ns.maps[84] or Map({id = 84, settings = false})
local ohn = ns.maps[2023] or Map({id = 2023, settings = false})

-- 4 O'CLOCK ORB
local capeOfStranglethorn = ns.maps[210] or Map({id = 210, settings = false})

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
-------------------------------- 1 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

northernBarrens.nodes[55004020] = RattsRevenge({
    label = L['humble_monument'],
    note = L['orb_1_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Humble Monument

draenorNagrand.nodes[74203750] = RattsRevenge({
    label = '{npc:82688}',
    location = L['olgra_location'],
    note = L['orb_1_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Olgra

draenorNagrand.nodes[49204800] = RattsRevenge({
    label = '{npc:82692}',
    location = L['olgra_location'],
    note = L['orb_1_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Olgra

maldraxxus.nodes[27306130] = RattsRevenge({
    label = '{npc:175815}',
    note = L['orb_1_note'],
    quest = 84676, -- hidden
    requires = TORCH, -- Torch of Pyrreth
    rewards = {Buff({id = 153715, stacks = 3})} -- A Touch of Their Love
}) -- Decimator Olgra

-------------------------------------------------------------------------------
-------------------------------- 2 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

valeOfEternalBlossoms.nodes[83183011] = RattsRevenge({
    label = '{npc:153297}',
    note = L['orb_2_note'],
    quest = 84677, -- hidden
    rewards = {Item({item = 53156, bag = true})} -- Key of Shadows
}) -- Ny'alotha Obelisk

-------------------------------------------------------------------------------
-------------------------------- 3 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

local CODE_MACHINES = {
    [1] = {
        coordinates = 49518030,
        label = L['decryption_machine_label'],
        note = L['code_machine_note_1'],
        quest = 84757 -- hidden
    },
    [2] = {
        coordinates = 49826455,
        label = L['decryption_console_label'],
        note = L['code_machine_note_2'],
        quest = 84768 -- hidden
    },
    [3] = {
        coordinates = 56096311,
        label = L['decryption_console_label'],
        note = L['code_machine_note_3'],
        quest = 84769 -- hidden
    },
    [4] = {
        coordinates = 64954877,
        label = L['rubensteins_console'],
        note = L['code_machine_note_4'],
        quest = 84766 -- hidden
    },
    [5] = {
        coordinates = 70445463,
        label = L['decryption_console_label'],
        note = L['code_machine_note_5'],
        quest = 84772 -- hidden
    },
    [6] = {
        coordinates = 66191582,
        label = L['decryption_console_label'],
        note = L['code_machine_note_6'],
        quest = 84770 -- hidden
    },
    [7] = {
        coordinates = 42837101,
        label = L['decryption_console_label'],
        note = L['code_machine_note_7'],
        quest = 84758 -- hidden
    },
    [8] = {
        coordinates = 67978284,
        label = L['decryption_console_label'],
        note = L['code_machine_note_8'],
        quest = 84771 -- hidden
    }
}

local HATE_QUESTS = {
    84757, 84768, 84769, 84766, 84772, 84770, 84758, 84771, 84786
}

karazhanCatacombs.nodes[51187830] = RattsRevenge({
    label = L['astral_soup_label'],
    note = L['astral_rewards_note'],
    quest = HATE_QUESTS, -- hidden
    rewards = {Item({item = 228965, bag = true})}, -- Astral Key
    rlabel = Gray('1/2')
}) -- Astral Soup

karazhanCatacombs.nodes[48187996] = RattsRevenge({
    label = L['astral_chest_label'],
    note = L['astral_rewards_note'],
    quest = HATE_QUESTS, -- hidden
    rewards = {Item({item = 228966, bag = true})}, -- Starry-Eyed Goggles
    requires = ns.requirement.Item(228965), -- Astral Key
    rlabel = Gray('2/2')
}) -- Astral Chest

local PieceOfHate = Class('PieceOfHate', Item, {item = 228967})

function PieceOfHate:GetStatus()
    local count = C_Item.GetItemCount(self.item, true)
    return count >= 9 and Green(count .. '/9') or Red(count .. '/9')
end

for num, machine in ipairs(CODE_MACHINES) do
    karazhanCatacombs.nodes[machine.coordinates] = RattsRevenge({
        icon = 'peg_gn',
        label = machine.label,
        note = machine.note,
        quest = machine.quest,
        requires = ns.requirement.Spell(463749), -- Starry-Eyed Goggles
        rewards = {PieceOfHate()},
        rlabel = Gray(num .. '/9')
    })
end

local SlotMachine = Class('SlotMachine', RattsRevenge, {
    icon = 'peg_gn',
    label = L['slot_machine_label'],
    quest = 84786, -- hidden
    requires = ns.requirement.Spell(463749), -- Starry-Eyed Goggles
    rewards = {PieceOfHate()}, -- Piece of Hate
    rlabel = Gray('9/9')
}) -- Slot Machine

function SlotMachine.getters:note()
    local note = L['slot_machine_note_a']
    note = note .. L['slot_machine_note_b']
    note = note .. ItemStatus(138384, 1, '{item:138384}', false) .. '\n' -- Lucky Charm
    note = note .. ItemStatus(138382, 1, '{item:138382}', false) .. '\n' -- Lucky Rat's Tooth
    note = note .. ItemStatus(138385, 1, '{item:138385}', false) .. '\n\n' -- Lucky Shirt
    note = note .. L['slot_machine_note_c']
    note = note .. ItemStatus(200265, 1, '{item:200265}', false) .. '\n' -- Lucky Dragon's Claw
    note = note .. ItemStatus(202046, 1, '{item:202046}', false) .. '\n\n' -- Lucky Tortollan Charm
    note = note .. L['slot_machine_note_d']
    note = note .. ItemStatus(198400, 1, '{item:198400}:', false) .. '\n\n' -- Lucky Horsehoe
    note = note .. L['slot_machine_note_e']
    return note
end

karazhanCatacombs.nodes[63792841] = SlotMachine()

stormwind.nodes[72805880] = RattsRevenge({
    label = '{npc:2795}',
    note = L['slot_machine_vendor_note'],
    quest = 84786, -- hidden
    rewards = {
        Item({item = 138384, bag = true}), -- Lucky Charm
        Item({item = 138382, bag = true}), -- Lucky Rat's Tooth
        Item({item = 138385, bag = true}) -- Lucky Shirt
    }
}) -- Lenny "Fingers" McCoy

dornogal.nodes[62555095] = RattsRevenge({
    label = '{npc:219197}',
    note = L['slot_machine_vendor_note'],
    quest = 84786, -- hidden
    rewards = {
        Item({item = 200265, bag = true}), -- Lucky Dragon's Claw
        Item({item = 202046, bag = true}) -- Lucky Tortollan Charm
    }
}) -- Griftah

ohn.nodes[84402500] = RattsRevenge({
    label = '{npc:186650}',
    note = L['slot_machine_vendor_note'],
    quest = 84786, -- hidden
    rewards = {
        Item({item = 198400, bag = true}) -- Lucky Horseshoe
    }
}) -- Farrier Roscha

-------------------------------------------------------------------------------
-------------------------------- 4 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

local PointlessTreasureSalesman = Class('PointlessTreasureSalesman',
    RattsRevenge, {
        label = '{npc:230310}',
        location = L['pointless_treasure_salesman_location'],
        rewards = {Item({item = 228996, bag = true})}
    }) -- Pointless Treasure Salesman

function PointlessTreasureSalesman.getters:note()
    local note = L['pointless_treasure_salesman_note']
    note = note .. ItemStatus(228967, 9, '{item:228967}')
    note = note .. ItemStatus(228995, 1, '{item:228995}')
    return note
end

capeOfStranglethorn.nodes[35566346] = PointlessTreasureSalesman()

-------------------------------------------------------------------------------
--------------------------- KARAZHAN CATACOMB ORBS ----------------------------
-------------------------------------------------------------------------------

local function getOrbCoordinates()
    return Circle({origin = 85002465, radius = 5, segments = 12})
end

local function getPoiCoordinates()
    return Circle({origin = 68552465, radius = 2.25, segments = 12})
end

local OrbNode = Class('OrbNode', RattsRevenge, {icon = 'peg_yw'})

function OrbNode.getters:rlabel()
    local function isCompleted()
        if not self.quest then return false end
        for i, quest in ipairs(self.quest) do
            if not C_QuestLog.IsQuestFlaggedCompleted(quest) then
                return false
            end
        end
        return true
    end

    return isCompleted() and Green(L['completed']) or Red(L['incomplete'])
end

function OrbNode:IsCompleted() return false end

local ORBS = {
    [1] = {
        label = L['orb_1_label'],
        note = L['orb_1_note'] .. '\n\n' .. L['orb_1_locations'],
        quest = 84676 -- hidden
    },
    [2] = {
        label = L['orb_2_label'],
        note = L['orb_2_note'],
        quest = 84677 -- hidden
    },
    [3] = {
        label = L['orb_3_label'],
        note = L['astral_rewards_note'],
        quest = HATE_QUESTS -- hidden
    }
}

for i = 1, 12 do
    local orb = ORBS[i]
    local index = ((i + 2) % 12) + 1
    local coordinates = select(index, getOrbCoordinates())
    local poi = select(index, getPoiCoordinates())
    if orb then
        karazhanCatacombs.nodes[coordinates] = OrbNode({
            label = orb.label,
            note = orb.note,
            quest = orb.quest,
            pois = {POI({poi}), Path({coordinates, poi})}
        })
    else
        karazhanCatacombs.nodes[coordinates] = OrbNode({
            icon = 'peg_bk',
            pois = {POI({poi}), Path({coordinates, poi})}
        })

    end
end
