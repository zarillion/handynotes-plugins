-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Node = ns.node.Node

local Achievement = ns.reward.Achievement
local Buff = ns.reward.Buff
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy

local Entrance = ns.poi.Entrance

local Gray = ns.status.Gray
local Green = ns.status.Green
local Red = ns.status.Red

local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

local ItemStatus = ns.tooltip.ItemStatus
local PetStatus = ns.tooltip.PetStatus

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
local azsuna = ns.maps[630] or Map({id = 630, settings = false})
local westernPlaguelands = ns.maps[22] or Map({id = 22, settings = false})

-- 5 O'CLOCK ORB
local timelessIsle = ns.maps[555] or Map({id = 555, settings = false})
local capeOfStranglethorn = ns.maps[210] or Map({id = 210, settings = false})

-- 6 O'CLOCK ORB
local northernStranglethorn = ns.maps[50] or Map({id = 50, settings = false})

-- 7 O'CLOCK ORB
local theWardensCourt = ns.maps[710] or Map({id = 710, settings = false})
local vaultOfTheWardens = ns.maps[711] or Map({id = 711, settings = false})

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
    quest = 84676, -- hidden 1 O'clock Orb finished
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
    icon = 'peg_bl',
    label = L['astral_soup_label'],
    note = L['astral_rewards_note'],
    quest = HATE_QUESTS, -- hidden
    rewards = {Item({item = 228965, bag = true})}, -- Astral Key
    rlabel = Gray('1/2')
}) -- Astral Soup

karazhanCatacombs.nodes[48187996] = RattsRevenge({
    icon = 'peg_bl',
    label = L['astral_chest_label'],
    note = L['astral_rewards_note'],
    quest = HATE_QUESTS, -- hidden
    rewards = {Toy({item = 228966})}, -- Starry-Eyed Goggles
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
        icon = 'peg_yw',
        label = machine.label,
        note = machine.note,
        quest = machine.quest,
        requires = ns.requirement.Spell(463749), -- Starry-Eyed Goggles
        rewards = {PieceOfHate()},
        rlabel = Gray(num .. '/9')
    })
end

local SlotMachine = Class('SlotMachine', RattsRevenge, {
    icon = 'peg_yw',
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

azsuna.nodes[65604880] = RattsRevenge({
    label = '{npc:91079}',
    note = format(L['vashti_note'], C_CurrencyInfo.GetCoinTextureString(5000000)),
    pois = {
        POI({66002220}), -- Ending
        Path({
            66002220, 65402340, 65202380, 64402620, 63602780, 63402880,
            63202980, 63403120, 63403320, 64203500, 65203640, 65603680,
            66203940, 66404040, 66604300, 66604500, 66404660, 65804820, 65604880
        })
    },
    quest = 84780, -- hidden
    rewards = {Item({item = 228987, bag = true})} -- Scroll of Fel Binding
}) -- Vashti the Wandering Merchant

westernPlaguelands.nodes[52048304] = RattsRevenge({
    label = L['uthers_tomb_label'],
    note = L['uthers_tomb_note'],
    quest = 84780 -- hidden
}) -- Uther's Tomb

-------------------------------------------------------------------------------
-------------------------------- 5 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

local JeremyFeasel = Class('JeremyFeasel', RattsRevenge, {
    label = '{npc:232048}',
    location = L['zarhym_note'],
    parent = 554, -- Timeless Isle
    pois = {Entrance({43074129})},
    quest = 84781, -- ![Master of Secrets]
    rewards = {Item({item = 228995, quest = 84781})} -- Golden Muffin
}) -- Jeremy Feasel

function JeremyFeasel.getters:note()
    local note = '\n\n'
    -- LuaFormatter off
    note = note .. PetStatus(2352, 'x', '{pet:2352}') .. '\n' -- Baa'l
    note = note .. PetStatus(2442, 'x', '{pet:2442}') .. '\n' -- Bumbles
    note = note .. PetStatus(2888, 'x', '{pet:2888}') .. '\n' -- Glimr
    note = note .. PetStatus(3107, 'x', '{pet:3107}') .. '\n' -- Gurgl
    note = note .. PetStatus(2795, 'x', '{pet:2795}') .. '\n' -- Jenafur
    note = note .. PetStatus(3553, 'x', '{pet:3553}') .. '\n' -- Nelthara
    note = note .. PetStatus(3359, 'x', '{pet:3359}') .. '\n' -- Snowclaw Cub
    note = note .. PetStatus(3342, 'x', '{pet:3342}') .. '\n' -- Spyragos
    note = note .. PetStatus(382,  'x', '{pet:382}' ) .. '\n' -- Sun Darter Hatchling
    note = note .. PetStatus(2198, 'x', '{pet:2198}') .. '\n' -- Taptaf
    note = note .. PetStatus(1073, 'x', '{pet:1073}') .. '\n' -- Terky
    note = note .. PetStatus(2411, 'x', '{pet:2411}')         -- Wicker Pup
    -- LuaFormatter on
    return format(L['jeremy_feasel_note'], note)
end

timelessIsle.nodes[39673916] = JeremyFeasel()

timelessIsle.nodes[53575687] = RattsRevenge({
    label = '{npc:71876}',
    note = L['zarhym_note'],
    parent = 554, -- Timeless Isle
    quest = 84781 -- ![Master of Secrets]
}) -- Zarhym

local PointlessTreasureSalesman = Class('PointlessTreasureSalesman',
    RattsRevenge, {
        label = '{npc:230310}',
        location = L['pointless_treasure_salesman_location'],
        rewards = {Item({item = 228996, bag = true})} -- Relic of Crystal Connections
    }) -- Pointless Treasure Salesman

function PointlessTreasureSalesman.getters:note()
    local note = L['pointless_treasure_salesman_note']
    note = note .. ItemStatus(228967, 9, '{item:228967}')
    note = note .. ItemStatus(228995, 1, '{item:228995}')
    return note
end

capeOfStranglethorn.nodes[35566346] = PointlessTreasureSalesman()

-------------------------------------------------------------------------------
-------------------------------- 6 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

northernStranglethorn.nodes[77084631] = RattsRevenge({
    icon = 'peg_gn',
    label = L['blood_altar_label'],
    note = L['altar_note'] .. '\n\n' ..
        format(L['blood_altar_note'], L['mount'], L['pet'], L['toy']),
    quest = 84809, -- hidden
    requires = TORCH -- Torch of Pyrreth
}) -- Blood Altar

northernStranglethorn.nodes[77474393] = RattsRevenge({
    icon = 'peg_gn',
    label = L['corrupt_altar_label'],
    note = L['altar_note'] .. '\n\n' ..
        format(L['corrupt_altar_note'], L['mount'], L['pet'], L['toy'],
            L['transmog']),
    quest = 84807, -- hidden
    requires = TORCH -- Torch of Pyrreth
}) -- Corrupt Altar

northernStranglethorn.nodes[77054488] = RattsRevenge({
    icon = 'peg_gn',
    label = L['lust_altar_label'],
    note = L['altar_note'] .. '\n\n' ..
        format(L['lust_altar_note'], L['pet'], L['toy'], L['transmog']),
    quest = 84808, -- hidden
    requires = TORCH -- Torch of Pyrreth
}) -- Lust Altar

northernStranglethorn.nodes[78244399] = RattsRevenge({
    icon = 'peg_gn',
    label = L['sin_altar_label'],
    note = L['altar_note'] .. '\n\n' ..
        format(L['sin_altar_note'], L['pet'], L['toy'], L['transmog']),
    quest = 84806, -- hidden
    requires = TORCH -- Torch of Pyrreth
}) -- Sin Altar

northernStranglethorn.nodes[78144631] = RattsRevenge({
    icon = 'peg_gn',
    label = L['void_altar_label'],
    note = L['altar_note'] .. '\n\n' ..
        format(L['void_altar_note'], L['pet'], L['toy'], L['transmog']),
    quest = 84810, -- hidden
    requires = TORCH -- Torch of Pyrreth
}) -- Void Altar

northernStranglethorn.nodes[78104770] = RattsRevenge({
    label = L['chest_of_acquisitions_label'],
    note = L['chest_of_acquisitions_note'],
    quest = 84811, -- hidden
    requires = ns.requirement.Spell(463749), -- Starry-Eyed Goggles
    rewards = {Item({item = 229007, bag = true})} -- Ancient Shaman Blood
}) -- Chest of Acquisitions

-------------------------------------------------------------------------------
-------------------------------- 7 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

azsuna.nodes[48207380] = RattsRevenge({
    label = '{npc:107379}',
    note = format(L['marin_bladewing_note'],
        C_CurrencyInfo.GetCoinTextureString(5000000),
        ns.color.Green(L['rep_revered'])),
    quest = 84823, -- hidden
    rewards = {Pet({item = 136898, id = 1716})} -- Fledgling Warden Owl
}) -- Marin Bladewing

local OwlOfTheWatchers = Class('OwlOfTheWatchers', RattsRevenge, {
    icon = 'peg_yw',
    label = L['owl_of_the_watchers_label'],
    note = L['owl_of_the_watchers_note'],
    quest = 84823, -- hidden
    requires = ns.requirement.Pet(1716) -- Fledgling Warden Owl
}) -- Owl of the Watchers

azsuna.nodes[44187241] = OwlOfTheWatchers()
azsuna.nodes[40547315] = OwlOfTheWatchers()
azsuna.nodes[40527519] = OwlOfTheWatchers()
azsuna.nodes[37108216] = OwlOfTheWatchers()
azsuna.nodes[43248530] = OwlOfTheWatchers()
azsuna.nodes[43668751] = OwlOfTheWatchers()
azsuna.nodes[50459167] = OwlOfTheWatchers()
azsuna.nodes[47488474] = OwlOfTheWatchers()
azsuna.nodes[45978406] = OwlOfTheWatchers()

theWardensCourt.nodes[18907747] = RattsRevenge({
    label = '{item:229046}',
    note = L['sentry_statue_note'],
    pois = {Entrance({21807747})},
    quest = 84823, -- hidden
    rewards = {Item({item = 229046, bag = true})} -- Sentry Statue
}) -- Chamber of Night

vaultOfTheWardens.nodes[60694836] = RattsRevenge({
    label = '{npc:109300}',
    note = L['sentry_note'],
    quest = 84823, -- hidden
    rewards = {Item({item = 229054, bag = true})} -- Warden's Mirror
}) -- Sentry

-------------------------------------------------------------------------------
-------------------------------- 8 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

karazhanCatacombs.nodes[59954259] = RattsRevenge({
    icon = 'peg_bk',
    label = L['enigma_machine_label'],
    note = L['enigma_machine_note'],
    quest = {
        84829, -- Ancient Shaman Blood
        84830, -- Warden's Mirror
        84837 -- hidden
    }
}) -- Enigma Machine

local Statue = Class('Statue', RattsRevenge, {
    icon = 'peg_bl',
    note = L['lock_statue_note'],
    quest = 84837, -- hidden
    questDeps = {
        84829, -- Ancient Shaman Blood
        84830 -- Warden's Mirror

    }
}) -- Statue

karazhanCatacombs.nodes[43486500] = Statue({label = '{npc:230655}'}) -- Watcher Statue
karazhanCatacombs.nodes[49527588] = Statue({label = '{npc:230652}'}) -- Nature Statue
karazhanCatacombs.nodes[61154797] = Statue({label = '{npc:230654}'}) -- Greed Statue
karazhanCatacombs.nodes[70307904] = Statue({label = '{npc:230657}'}) -- Rage Statue
karazhanCatacombs.nodes[70603445] = Statue({label = '{npc:230653}'}) -- Guardian Statue

local PLATFORMS = {
    [1] = {coordinates = 71532016, label = L['platform_1_label']},
    [2] = {coordinates = 68473435, label = L['platform_2_label']},
    [3] = {coordinates = 73554291, label = L['platform_3_label']},
    [4] = {coordinates = 68785101, label = L['platform_4_label']},
    [5] = {coordinates = 73566535, label = L['platform_5_label']},
    [6] = {coordinates = 60247171, label = L['platform_6_label']},
    [7] = {coordinates = 47937902, label = L['platform_7_label']}
}

for _, platform in ipairs(PLATFORMS) do
    karazhanCatacombs.nodes[platform.coordinates] = RattsRevenge({
        icon = 'peg_rd',
        label = platform.label,
        note = L['lock_platform_note'],
        quest = 84837, -- hidden
        questDeps = {
            84829, -- Ancient Shaman Blood
            84830 -- Warden's Mirror
        }
    })
end

-- LuaFormatter off
local RATS_TO_STATUES = {
    {
        {label = L['rats_label'], icon = 'peg_rd'},
        {label = format(L['lock_label'], 1), icon = 'peg_bl'},
        {label = format(L['lock_label'], 2), icon = 'peg_bl'},
        {label = format(L['lock_label'], 3), icon = 'peg_bl'}
    }, {
        {label = '1', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_1_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_2_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_3_label']), icon = 'peg_bk'}
    }, {
        {label = '2', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_2_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_4_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_6_label']), icon = 'peg_bk'}
    }, {
        {label = '3', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_3_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_6_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_2_label']), icon = 'peg_bk'}
    }, {
        {label = '4', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_4_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_1_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_5_label']), icon = 'peg_bk'}
    }, {
        {label = '5', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_5_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_3_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 3, L['platform_1_label']), icon = 'peg_bk'}
    }, {
        {label = '6', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_6_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_5_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 3, L['platform_4_label']), icon = 'peg_bk'}
    }, {
        {label = '7', icon = 'peg_yw'},
        {label = format(L['code_label'], 1, L['platform_7_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_7_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_1_label']), icon = 'peg_bk'}
    }, {
        {label = '8', icon = 'peg_yw'},
        {label = format(L['code_label'], 2, L['platform_1_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 3, L['platform_2_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_4_label']), icon = 'peg_bk'}
    }, {
        {label = '9', icon = 'peg_yw'},
        {label = format(L['code_label'], 2, L['platform_2_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 3, L['platform_4_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 1, L['platform_7_label']), icon = 'peg_bk'}
    }, {
        {label = '10', icon = 'peg_yw'},
        {label = format(L['code_label'], 2, L['platform_3_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 3, L['platform_6_label']), icon = 'peg_bk'},
        {label = format(L['code_label'], 2, L['platform_3_label']), icon = 'peg_bk'}
    }
}
-- LuaFormatter on

for x = 1, 4 do
    for y = 1, 11 do
        local nodeInfo = RATS_TO_STATUES[y][x]
        local newX = tostring(2600 + ((x - 1) * 300))
        local newY = tostring(1500 + ((y - 1) * 400))
        local coordinates = tonumber(newX .. newY)
        karazhanCatacombs.nodes[coordinates] = RattsRevenge({
            icon = nodeInfo.icon,
            label = nodeInfo.label,
            minimap = false,
            quest = 84837, -- hidden
            questDeps = {
                84829, -- Ancient Shaman Blood
                84830 -- Warden's Mirror
            }
        })
    end
end

-------------------------------------------------------------------------------
-------------------------------- 9 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

azjKahet.nodes[56151797] = RattsRevenge({
    label = L['decryption_console_label'],
    note = L['ak_decryption_console_note'],
    pois = {Entrance({55121888})},
    quest = 84854, -- hidden
    questDeps = 84837, -- hidden
    requires = {
        ns.requirement.Spell(463749), -- Starry-Eyed Goggles
        ns.requirement.Item(228996) -- Relic of Crystal Connections
    },
    rewards = {
        Achievement({id = 40967, oneline = true}), -- Ratts' Revenge
        Mount({item = 229348, id = 1943}) -- Incognitro
    }
}) -- Decryption Console

-------------------------------------------------------------------------------
------------------------------- 10 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------- 11 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------- 12 O'CLOCK ORB --------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--------------------------- KARAZHAN CATACOMB ORBS ----------------------------
-------------------------------------------------------------------------------

local function getOrbCoordinates()
    return Circle({origin = 85002465, radius = 5, segments = 12})
end

local function getPoiCoordinates()
    return Circle({origin = 68552465, radius = 2.25, segments = 12})
end

local OrbNode = Class('OrbNode', RattsRevenge)

function OrbNode.getters:rlabel()
    if not self.quest then return Red(L['incomplete']) end
    for i, quest in ipairs(self.quest) do
        if not C_QuestLog.IsQuestFlaggedCompleted(quest) then
            return Red(L['incomplete'])
        end
    end
    return Green(L['completed'])
end

function OrbNode.getters:icon()
    if not self.quest then return 'peg_rd' end
    for i, quest in ipairs(self.quest) do
        if not C_QuestLog.IsQuestFlaggedCompleted(quest) then
            return 'peg_rd'
        end
    end
    return 'peg_gn'
end

function OrbNode:IsCompleted() return false end

local ORBS = {
    [6] = {
        label = L['orb_1_label'],
        note = L['orb_1_note'] .. '\n\n' .. L['orb_1_locations'],
        quest = 84676 -- hidden
    },
    [5] = {
        label = L['orb_2_label'],
        note = L['orb_2_note'],
        quest = 84677, -- hidden
        rewards = {Item({item = 53156, bag = true})} -- Key of Shadows
    },
    [4] = {
        label = L['orb_3_label'],
        note = L['astral_rewards_note'],
        quest = HATE_QUESTS, -- hidden
        rewards = {Toy({item = 228966})} -- Starry-Eyed Goggles
    },
    [3] = {
        label = L['orb_4_label'],
        note = L['uthers_tomb_note'],
        quest = 84780 -- hidden
    },
    [2] = {
        label = L['orb_5_label'],
        note = format(L['jeremy_feasel_note'], ''),
        quest = 84781, -- ![Master of Secrets]
        rewards = {Item({item = 228996, bag = true})} -- Relic of Crystal Connections
    },
    [1] = {
        label = L['orb_6_label'],
        note = L['chest_of_acquisitions_note'],
        quest = 84811, -- hidden
        rewards = {Item({item = 229007, quest = 84811})} -- Ancient Shaman Blood
    },
    [12] = {
        label = L['orb_7_label'],
        note = L['orb_7_summary'],
        quest = 84823, -- hidden
        rewards = {Item({item = 229054, quest = 84823})} -- Warden's Mirror
    },
    [11] = {
        label = L['orb_8_label'],
        note = L['enigma_machine_note'],
        quest = 84837 -- hidden
    },
    [10] = {
        label = L['orb_9_label'],
        note = L['ak_decryption_console_note'],
        quest = 84854, -- hidden
        rewards = {
            Achievement({id = 40967, oneline = true}), -- Ratts' Revenge
            Mount({item = 229348, id = 1943}) -- Incognitro
        }
    }
}

for i = 1, 12 do
    local orb = ORBS[i]
    if orb then
        local coordinates = select(i, getOrbCoordinates())
        local poi = select(i, getPoiCoordinates())
        karazhanCatacombs.nodes[coordinates] = OrbNode({
            label = orb.label,
            minimap = false,
            note = orb.note,
            pois = {POI({poi}), Path({coordinates, poi})},
            quest = orb.quest,
            rewards = orb.rewards or nil
        })
    end
end
