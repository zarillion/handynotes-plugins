-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Toy = ns.reward.Toy

local Entrance = ns.poi.Entrance
local Path = ns.poi.Path

local Green = ns.status.Green
local Red = ns.status.Red

local ItemStatus = ns.tooltip.ItemStatus
local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

local map = Map({id = 2369, settings = true})
local tfv = Map({id = 2375, settings = false}) -- The Forgotten Vault

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[26206546] = Rare({
    id = 229982,
    location = L['in_cave'],
    quest = nil,
    pois = {Entrance({31756503})},
    rewards = {Achievement({id = 41046, criteria = 70791})},
    vignette = 6754
}) -- Nerathor

map.nodes[57726612] = Rare({
    id = 228201,
    location = L['in_cave'],
    quest = nil,
    pois = {Entrance({61477357})},
    rewards = {Achievement({id = 41046, criteria = 70792})},
    vignette = 6517
}) -- Gravesludge

map.nodes[37115497] = Rare({
    id = 229992,
    location = L['in_cave'],
    quest = nil,
    pois = {Entrance({42785666})},
    rewards = {Achievement({id = 41046, criteria = 70793})},
    vignette = 6610
}) -- Stalagnarok

-- map.nodes[00000000] = Rare({
--     id = 228154,
--     quest = nil,
--     rewards = {Achievement({id = 41046, criteria = 70794})},
--     vignette = 6530
-- }) -- Bloodbrine

tfv.nodes[28072475] = Rare({
    id = 227550,
    location = L['within_the_forgotten_vault'],
    quest = nil,
    parent = {id = map.id, pois = {Entrance({45992076})}},
    rewards = {Achievement({id = 41046, criteria = 70795})},
    vignette = 6666
}) -- Shardsong

map.nodes[53283383] = Rare({
    id = 228601,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70796})},
    vignette = 6531
}) -- Ghostmaker

map.nodes[34151392] = Rare({
    id = 228155,
    quest = nil,
    pois = {
        Path({
            34551282, 36241108, 37531283, 36971549, 36381678, 36332003,
            37002309, 37472619, 37332888, 36023072, 34463075, 32623027,
            30772898, 30152633, 30232308, 31312117, 33011999, 33071754,
            33891472, 33931299, 34551282
        })
    },
    rewards = {Achievement({id = 41046, criteria = 70797})},
    vignette = 6529
}) -- Grimgull

tfv.nodes[66465635] = Rare({
    id = 228159,
    location = L['within_the_forgotten_vault'],
    quest = nil,
    parent = {id = map.id, pois = {Entrance({45992076})}},
    rewards = {Achievement({id = 41046, criteria = 70798})},
    vignette = 6527
}) -- Gunnlod the Sea-Drinker

map.nodes[67391919] = Rare({
    id = 231090,
    quest = nil,
    pois = {
        Path({
            76241995, 75511800, 74101664, 73051749, 72921982, 73032219,
            71802335, 70302341, 69142202, 69091982, 69791776, 71391725,
            72411596, 71771429, 70201442, 68731541, 68361738, 67391919,
            66232079, 65602290, 65262522, 65642720, 67092752, 68472696,
            69972597, 71162428, 72392361, 73702462, 75262397, 76222240, 76242016
        })
    },
    rewards = {Achievement({id = 41046, criteria = 70799})},
    vignette = 6607
}) -- Snacker

map.nodes[46787812] = Rare({
    id = 228151,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70800})},
    vignette = 6526
}) -- Wreckwater

-- map.nodes[00000000] = Rare({
--     id = 229852,
--     quest = nil,
--     rewards = {Achievement({id = 41046, criteria = 70801})},
--     vignette = 6581
-- }) -- Coralweaver Calliso

-- map.nodes[00000000] = Rare({
--     id = 229853,
--     quest = nil,
--     rewards = {Achievement({id = 41046, criteria = 70802})},
--     vignette = 6582
-- }) -- Siris the Sea Scorpion

-- map.nodes[00000000] = Rare({
--     id = 228583,
--     quest = nil,
--     rewards = {Achievement({id = 41046, criteria = 70803})},
--     vignette = 6580
-- }) -- Chef Chum Platter

-- map.nodes[00000000] = Rare({
--     id = 228580,
--     quest = nil,
--     rewards = {Achievement({id = 41046, criteria = 70804})},
--     vignette = 6577
-- }) -- Plank-Master Bluebelly

map.nodes[32457405] = Rare({
    id = 227545,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70805})},
    vignette = 6525
}) -- Ikir the Flotsurge

map.nodes[63948729] = Rare({
    id = 230137,
    quest = nil,
    rewards = {Achievement({id = 41046, criteria = 70806})},
    vignette = 6590
}) -- Asbjorn the Bloodsoaked

-------------------------------------------------------------------------------

map.nodes[55968404] = Rare({
    id = 231356,
    quest = nil,
    requires = ns.requirement.Spell(458069), -- Seafury Tempest
    vignette = 6616
}) -- Brinebough

map.nodes[33027359] = Rare({
    id = 231357,
    quest = nil,
    requires = ns.requirement.Spell(458069), -- Seafury Tempest
    rewards = {
        Item({item = 232569}) -- Cyclonic Runekey
    },
    vignette = 6617
}) -- Zek'ul the Shipbreaker

tfv.nodes[37967648] = Rare({
    id = 231368,
    location = L['within_the_forgotten_vault'],
    parent = {id = map.id, pois = {Entrance({45992076})}},
    quest = nil,
    requires = ns.requirement.Spell(458069), -- Seafury Tempest
    rewards = {
        Item({item = 232571}) -- Whirling Runekey
    },
    vignette = 6619
}) -- Ksvir the Forgotten

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

------------------------------ RUNED STORM CHEST ------------------------------

local RunedStormChest = Class('RunedStormChest', Collectible, {
    icon = 'chest_yw',
    scale = 1.3,
    label = L['runed_storm_chest_label'],
    note = L['runed_storm_chest_note'],
    requires = ns.requirement.Quest(84726), -- ![Uncovered Mysteries]
    rewards = {
        Achievement({
            id = 41131,
            criteria = {
                id = 1,
                qty = true,
                suffix = L['runed_storm_chest_suffix']
            }
        })
    }
}) -- Runed Storm Chest

map.nodes[37327537] = RunedStormChest()
map.nodes[39094415] = RunedStormChest()
map.nodes[49201734] = RunedStormChest()
map.nodes[52887066] = RunedStormChest()
map.nodes[59632015] = RunedStormChest()
map.nodes[59736908] = RunedStormChest()
map.nodes[60675264] = RunedStormChest()
map.nodes[61944401] = RunedStormChest()

map.nodes[51523734] = RunedStormChest({
    location = L['in_cave'],
    pois = {Entrance({50594160})}
})

map.nodes[39965215] = RunedStormChest({
    requires = ns.requirement.Spell(458069), -- Seafury Tempest
})

---------------------- TRANSMOG (PURPLE ITEMS IN WORLD) -----------------------

map.nodes[36925304] = Treasure({
    label = '{item:233955}',
    location = L['in_cave'],
    pois = {Entrance({42785666})},
    rewards = {Transmog({item = 233955, slot = L['2h_axe']})} -- Iron Mining Pick
}) -- Iron Mining Pick

map.nodes[40284188] = Treasure({
    label = '{item:233957}',
    rewards = {Transmog({item = 233957, slot = L['offhand']})} -- Kul Tiran Lumberer's Hatchet
}) -- Kul Tiran Lumberer's Hatchet

tfv.nodes[26502340] = Treasure({
    label = '{item:233834}',
    location = L['within_the_forgotten_vault'],
    parent = {id = map.id, pois = {Entrance({45992076})}},
    rewards = {Transmog({item = 233834, slot = L['dagger']})} -- Stone Carver's Scramseax
}) -- Stone Carver's Scramseax

------------------- MYSTERIOUS BOOKS (NO REWARD / NO QUEST) -------------------

map.nodes[39785249] = Treasure({
    label = L['mouldy_sea_ledger_label'],
    location = L['mouldy_sea_ledger_location']
}) -- Mouldy Sea Ledger

map.nodes[39095103] = Treasure({
    label = L['scholars_of_the_sea_label'],
    location = L['scholars_of_the_sea_location']
}) -- Scholars of the Sea: Siren Isle Synopsis

------------ FLAME-BLESSED IRON QUEST ITEMS (GOLD ITEMS IN WORLD) -------------

map.nodes[57937837] = Treasure({
    label = '{item:232439}',
    note = L['flame_blessed_iron_item'],
    quest = 85716, -- ![Rune-Seared Spear]
    rewards = {Item({item = 232439, quest = 85716})}
}) -- Rune-Seared Spear

map.nodes[60726280] = Treasure({
    label = '{item:228665}',
    note = L['flame_blessed_iron_item'],
    quest = 84547, -- ![Redemption Guaranteed]
    rewards = {Item({item = 228665, quest = 84547})}
}) -- Empty Kaja'Cola

------------------------------- MISC TREASURES --------------------------------

tfv.nodes[32137944] = Treasure({
    label = '{item:235017}',
    location = L['within_the_forgotten_vault'],
    parent = {id = map.id, pois = {Entrance({45992076})}},
    rewards = {Toy({item = 235017})} -- Glittering Vault Shard
}) -- Glittering Vault Shard

map.nodes[67557351] = Treasure({
    location = L['in_small_cave'], -- bejewelled puzzle but I only swap one purple gem and it solved
    rewards = {Transmog({item = 229026, type = L['leather']})} -- Earthen Deckhand's Bindings
}) -- Unsolved Amethyst Runelock (Rune-Sealed Coffer on minimap)

map.nodes[74035329] = Treasure({
    label = L['barnacle_encrusted_chest'],
    location = L['in_water'],
    quest = nil
}) -- Barnacle-Encrusted Chest (empty?)

-------------------------------------------------------------------------------
----------------------------------- VENDOR ------------------------------------
-------------------------------------------------------------------------------

map.nodes[69984855] = Vendor({
    id = 234390,
    note = L['soweezi_note'],
    rewards = {
        Mount({item = 233058, id = 2333, count = 10000}), -- Soweezi's Vintage Waveshredder
        Toy({item = 234473, count = 750}), -- Soweezi's Comfy Lawn Chair
        Pet({item = 234395, id = 4727, count = 750}) -- Skitterbite
    }
}) -- Soweezi

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------

local GrapplingHold = Class('GrapplingHold', Node, {
    label = '{npc:233171}',
    icon = 'peg_bk',
    scale = 1.5
}) -- Grappling Hold

map.nodes[52592426] = GrapplingHold()
map.nodes[50322016] = GrapplingHold()

map.nodes[55621466] = Node({
    icon = 'peg_rd',
    label = L['krolusk_burrow_label'],
    location = L['in_small_cave'],
    scale = 1.5,
    pois = {Entrance({56121287})}
}) -- Krolusk Burrow

---------------------- MOUNT: THRAYIR, EYES OF THE SIREN ----------------------

local Thrayir = Class('Thrayir', Collectible, {
    icon = 897087,
    label = '{item:232639}',
    location = L['within_the_forgotten_vault'],
    parent = {id = map.id, pois = {Entrance({45992076})}},
    requires = {
        ns.requirement.Spell(458069), -- Seafury Tempest
        ns.requirement.Item(232571), -- whirling Runekey
        ns.requirement.Item(232572), -- Torrential Runekey
        ns.requirement.Item(232573), -- Thunderous Runekey
        ns.requirement.Item(232569), -- Cyclonic Runekey
        ns.requirement.Item(232570) -- Turbulent Runekey
    },
    rewards = {
        Mount({item = 232639, id = 2322}) -- Thrayir, Eyes of the Siren
    }
}) -- Thrayir, Eyes of the Siren

function Thrayir.getters:note()
    local note = L['thrayir_note_start']
    note = note .. ItemStatus(232571, 1, '{item:232571}\n' .. L['whirling_runekey_note']) -- whirling Runekey
    note = note .. ItemStatus(232572, 1, '{item:232572}\n' .. L['torrential_runekey_note']) -- Torrential Runekey
    note = note .. ItemStatus(232573, 1, '{item:232573}\n' .. L['thunderous_runekey_note']) -- Thunderous Runekey
    note = note .. ItemStatus(232569, 1, '{item:232569}\n' .. L['cyclonic_runekey_note']) -- Cyclonic Runekey
    note = note .. ItemStatus(232570, 1, '{item:232570}\n' .. L['turbulent_runekey_note']) -- Turbulent Runekey
    return note
end

tfv.nodes[72506132] = Thrayir()

local TurbulentFragmentItem = Class('TurbulentFragment', Item, {item = 234327})

function TurbulentFragmentItem:GetStatus()
    local count = C_Item.GetItemCount(self.item, true)
    return count >= 3 and Green(count .. '/3') or Red(count .. '/3')
end

local TurbulentFragment = Class('TurbulentFragment', Collectible, {
    icon = 1385913,
    label = '{item:234327}',
    requires = ns.requirement.Spell(458069), -- Seafury Tempest
    rewards = {TurbulentFragmentItem()}
}) -- Turbulent Fragment

map.nodes[38195178] = TurbulentFragment({location = L['turbulent_fragment_a']})
map.nodes[67087844] = TurbulentFragment({location = L['turbulent_fragment_b']})

map.nodes[52393859] = TurbulentFragment({
    location = L['turbulent_fragment_c'],
    pois = {Entrance({50644142})}
})

------------------------ MOUNT: PRISTMATIC SNAPDRAGON -------------------------

local PristmaticSnapdragon = Class('PristmaticSnapdragon', Collectible, {
    icon = 2027958,
    label = '{npc:235216}',
    quest = {
        86482, -- ![A Lifeline]
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86483, -- ![Snap To It]
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86486, -- ![Hungry, Hungry Snapdragon] (daily)
        86484, -- ![Temper Like A Tempest]
        86486 -- ![Hungry, Hungry Snapdragon] (daily)
    },
    requires = ns.requirement.Quest(84726), -- ![Uncovered Mysteries]
    rewards = {
        Mount({item = 233489, id = 2469}) -- Pristmatic Snapdragon
    }
}) -- Pristmatic Snapdragon

function PristmaticSnapdragon.getters:label()
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[1]) then
        return '{npc:235237}' -- Growing Snapdragon Runt
    end
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[4]) then
        return '{npc:235243}' -- Maturing Pristmatic Snapdragon
    end
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[7]) then
        return '{npc:235250}' -- Mature Pristmatic Snapdragon
    end
    return '{npc:235216}' -- Starving Snapdragon Runt
end

function PristmaticSnapdragon.getters:note()
    local note = L['pristmatic_snapdragon_note_start'] .. '\n'
    for num, quest in ipairs(self.quest) do
        note = note .. QuestStatus(quest, num, '{quest:' .. quest .. '}')
    end
    return note
end

map.nodes[71004862] = PristmaticSnapdragon()
