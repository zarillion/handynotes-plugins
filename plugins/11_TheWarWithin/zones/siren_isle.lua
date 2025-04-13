-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Rare = ns.node.Rare
local Treasure = ns.node.Treasure
local Vendor = ns.node.Vendor

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Circle = ns.poi.Circle
local Entrance = ns.poi.Entrance
local Path = ns.poi.Path
local POI = ns.poi.POI

local Green = ns.status.Green
local Red = ns.status.Red

local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

-- ------|-------------|-----------|---------------|
-- storm | regular map | storm map | show sublabel |
-- ------|-------------|-----------|---------------|
--   1   |     NO      |    YES    |      YES      | Rares, Treasures, Fragments
-- ------|-------------|-----------|---------------|
--   2   |     YES     |    YES    |      YES      | Thrayir, Eyes of the Siren, Runed Treasure Cache
-- ------|-------------|-----------|---------------|
--   3   |     YES     |    YES    |      NO       | Prismatic Snapdragon
-- ------|-------------|-----------|---------------|

local function ProcessStorm(node)
    if not node.storm then return end
    if node._stormProcessed then return end

    if node.storm <= 2 then
        local icon = ns.GetIconLink(237589)
        local spell = icon .. ' ' .. ns.color.White('[{spell:458069}]')
        local sub = ns.color.Orange(format(L['storm_required'], spell))
        node.sublabel = node.sublabel and sub .. '\n' .. node.sublabel or sub
        if node.requires then node.sublabel = node.sublabel .. '\n\n' end
    end
    node._stormProcessed = true
end

local StormMap = Class('StormMap', Map)

function StormMap:Prepare()
    Map.Prepare(self)
    for coord, node in pairs(self.nodes) do ProcessStorm(node) end

    self.stormed = false
    if C_UnitAuras.GetPlayerAuraBySpellID(458069) then self.stormed = true end
end

function StormMap:CanDisplay(node, coord, minimap)
    if self.stormed and not node.storm then return false end
    if not self.stormed and node.storm == 1 then return false end
    return Map.CanDisplay(self, node, coord, minimap)
end

-------------------------------------------------------------------------------

local map = StormMap({id = 2369, patch = 110007, settings = true})
local tfv = StormMap({id = 2375, patch = 110007, settings = false}) -- The Forgotten Vault

-------------------------------------------------------------------------------
----------------------------- THE FORGOTTEN VAULT -----------------------------
-------------------------------------------------------------------------------

map.nodes[45992076] = Collectible({
    clabel = L['change_map'],
    icon = 'peg_yw',
    scale = 2,
    label = C_Map.GetMapInfo(tfv.id).name,
    note = L['within_the_forgotten_vault'],
    OnClick = function() WorldMapFrame:SetMapID(tfv.id) end,
    rewards = {
        Achievement({
            id = 41046,
            criteria = {
                70798, -- Gunnlod the Sea-Drinker
                70795 -- Shardsong
            }
        }), Toy({item = 235017}), -- Glittering Vault Shard
        Mount({item = 232639, id = 2322}) -- Thrayir, Eyes of the Siren
    },
    storm = 3
}) -- The Forgotten Vault

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

--------------------------------- EXCAVATION ----------------------------------

map.nodes[26206546] = Rare({
    id = 229982,
    location = L['in_cave'],
    note = L['the_drowned_lair_note'],
    pois = {Entrance({31756503})},
    quest = 85672, -- hidden, also 84874 also 85938, not 85760 ![The Drowned Lair]
    rewards = {Achievement({id = 41046, criteria = 70791})},
    vignette = 6754
}) -- Nerathor

map.nodes[57726612] = Rare({
    id = 228201,
    location = L['in_cave'],
    note = L['the_drain_note'],
    pois = {Entrance({61477357})},
    quest = 85669, -- hidden, also 85937, not 85753 ![The Drain]
    rewards = {Achievement({id = 41046, criteria = 70792})},
    vignette = 6517
}) -- Gravesludge

map.nodes[37115497] = Rare({
    id = 229992,
    location = L['in_cave'],
    note = L['shuddering_hollow_note'],
    pois = {Entrance({42785666})},
    quest = 85437, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70793})},
    vignette = 6610
}) -- Stalagnarok

local EXCAVATION_POIS = {
    [8149] = map.nodes[57726612].rewards, -- Gravesludge (The Drain)
    [8150] = map.nodes[37115497].rewards, -- Stalagnarok (Shuddering Halow)
    [8152] = map.nodes[26206546].rewards -- Nerathor (The Drowned Lair)
}

ns.hooks.areapoievent.Add(ns.groups.RARE, EXCAVATION_POIS)

------------------------------- VYKRUL AND NAGA -------------------------------

map.nodes[53283383] = Rare({
    id = 228601,
    quest = 84801, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70796})},
    vignette = 6531
}) -- Ghostmaker

map.nodes[34151392] = Rare({
    id = 228155,
    pois = {
        Path({
            34551282, 36241108, 37531283, 36971549, 36381678, 36332003,
            37002309, 37472619, 37332888, 36023072, 34463075, 32623027,
            30772898, 30152633, 30232308, 31312117, 33011999, 33071754,
            33891472, 33931299, 34551282
        })
    },
    quest = 84796, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70797})},
    vignette = 6529
}) -- Grimgull

map.nodes[67391919] = Rare({
    id = 231090,
    pois = {
        Path({
            76241995, 75511800, 74101664, 73051749, 72921982, 73032219,
            71802335, 70302341, 69142202, 69091982, 69791776, 71391725,
            72411596, 71771429, 70201442, 68731541, 68361738, 67391919,
            66232079, 65602290, 65262522, 65642720, 67092752, 68472696,
            69972597, 71162428, 72392361, 73702462, 75262397, 76222240, 76242016
        })
    },
    quest = 86933, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70799})},
    vignette = 6607
}) -- Snacker

map.nodes[46787812] = Rare({
    id = 228151,
    quest = 84794, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70800})},
    vignette = 6526
}) -- Wreckwater

tfv.nodes[66465635] = Rare({
    id = 228159,
    quest = 84797, -- hidden, also 85956 (on kill)
    rewards = {
        Achievement({id = 41046, criteria = 70798}), --
        Toy({item = 235017}) -- Glittering Vault Shard
    },
    vignette = 6527
}) -- Gunnlod the Sea-Drinker

tfv.nodes[28072475] = Rare({
    id = 227550,
    quest = 86779, -- hidden
    rewards = {
        Achievement({id = 41046, criteria = 70795}), --
        Toy({item = 235017}) -- Glittering Vault Shard
    },
    vignette = 6666
}) -- Shardsong

----------------------------------- VYKRUL ------------------------------------

map.nodes[32457405] = Rare({
    id = 227545,
    quest = 84792, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70805})},
    sublabel = L['vrykul_sublabel'],
    vignette = 6525
}) -- Ikir the Flotsurge

map.nodes[63948729] = Rare({
    id = 230137,
    quest = 84805, -- hidden, also 84840 (on kill)
    rewards = {Achievement({id = 41046, criteria = 70806})},
    sublabel = L['vrykul_sublabel'],
    vignette = 6590
}) -- Asbjorn the Bloodsoaked

------------------------------------ NAGA -------------------------------------

map.nodes[36147261] = Rare({
    id = 228154,
    quest = 84795, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70794})},
    sublabel = L['naga_sublabel'],
    vignette = 6530
}) -- Bloodbrine

map.nodes[61758953] = Rare({
    id = 229852,
    quest = 84802, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70801})},
    sublabel = L['naga_sublabel'],
    vignette = 6581
}) -- Coralweaver Calliso

map.nodes[56068410] = Rare({
    id = 229853,
    quest = 84803, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70802})},
    sublabel = L['naga_sublabel'],
    vignette = 6582
}) -- Siris the Sea Scorpion

----------------------------------- PIRATES -----------------------------------

map.nodes[66128495] = Rare({
    id = 228583,
    quest = 84800, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70803})},
    sublabel = L['pirate_sublabel'],
    vignette = 6580
}) -- Chef Chum Platter

map.nodes[60698921] = Rare({
    id = 228580,
    pois = {
        Path({
            60698921, 60148909, 59408870, 58728810, 58038777, 57288789,
            56518793, 55738799, 54968770, 54398709, 54168604, 54068502,
            53868257, 54188155
        }), POI({54188155})
    },
    quest = 84799, -- hidden
    rewards = {Achievement({id = 41046, criteria = 70804})},
    sublabel = L['pirate_sublabel'],
    vignette = 6577
}) -- Plank-Master Bluebelly

------------------------------- SEAFURY TEMPEST -------------------------------

map.nodes[55968404] = Rare({
    id = 231356,
    storm = 1,
    quest = 85404, -- hidden
    vignette = 6616
}) -- Brinebough

map.nodes[33027359] = Rare({
    id = 231357,
    quest = 85405, -- hidden, also 85113 (on kill)
    rewards = {Item({item = 232569})}, -- Cyclonic Runekey
    storm = 1,
    vignette = 6617
}) -- Zek'ul the Shipbreaker

tfv.nodes[37967648] = Rare({
    id = 231368,
    quest = 85406, -- hidden
    rewards = {
        Toy({item = 235017}), -- Glittering Vault Shard
        Item({item = 232571}) -- Whirling Runekey
    },
    storm = 1,
    vignette = 6619
}) -- Ksvir the Forgotten

map.nodes[42976324] = Rare({
    id = 231353,
    pois = {
        Path({
            37455844, 36325809, 35175821, 34645952, 35506062, 36546138,
            37436241, 37436413, 37406586, 37376758, 37576926, 38147076,
            38867211, 39717327, 40727411, 41867423, 42967376, 43997298,
            44917194, 45487049, 45466876, 45436703, 45406530, 45256365,
            44496235, 43716107, 42865992, 42006018, 42326182, 42976324,
            44006389, 44616527, 43976650, 43056564, 41976509, 40876475,
            40316325, 40016158, 39446012, 38505913, 37455844
        })
    },
    quest = 85403, -- hidden
    storm = 1,
    vignette = 6615
}) -- Tempest Talon

map.nodes[50005000] = Rare({
    id = 228547,
    location = L['slaughtershell_location'],
    pois = {Path({Circle({origin = 50005000, radius = 28})})},
    quest = 84798, -- hidden
    storm = 1,
    vignette = 6524
}) -- Slaughtershell

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

---------------------- TRANSMOG (PURPLE ITEMS IN WORLD) -----------------------

map.nodes[36925304] = Treasure({
    label = '{item:233955}',
    quest = 87446, -- hidden
    location = L['in_cave'],
    pois = {Entrance({42785666})},
    rewards = {Transmog({item = 233955, slot = L['2h_axe']})} -- Iron Mining Pick
}) -- Iron Mining Pick

map.nodes[40284188] = Treasure({
    label = '{item:233957}',
    quest = 86764, -- hidden
    rewards = {Transmog({item = 233957, slot = L['offhand']})} -- Kul Tiran Lumberer's Hatchet
}) -- Kul Tiran Lumberer's Hatchet

map.nodes[39405340] = Treasure({
    label = '{item:233831}',
    quest = 86767, -- hidden
    location = L['in_building'],
    rewards = {Transmog({item = 233831, slot = L['dagger']})} -- Minnow's Favorite Blade
}) -- Minnow's Favorite Blade

map.nodes[41704600] = Treasure({
    label = '{item:233916}',
    quest = 86766, -- hidden
    location = L['in_building'],
    rewards = {Transmog({item = 233916})} -- Ashvane Issued Workboots
}) -- Ashvane Issued Workboots

tfv.nodes[26502340] = Treasure({
    label = '{item:233834}',
    note = L['stone_carvers_scamseax_note'],
    quest = 86732, -- hidden
    requires = ns.requirement.Spell(1216785), -- Glittering Vault Shard
    rewards = {Transmog({item = 233834, slot = L['dagger']})}, -- Stone Carver's Scramseax
    pois = {
        POI({points = {28037055, 32197949, 35487877}, color = 'Yellow'}) -- Radiant Citrine
    }
}) -- Stone Carver's Scramseax

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

map.nodes[67557351] = Treasure({
    label = L['unsolved_amethyst_runelock'],
    location = L['in_small_cave'],
    quest = 84839, -- hidden, also 84792 (on solve)
    rewards = {Transmog({item = 229026, type = L['leather']})} -- Earthen Deckhand's Bindings
}) -- Unsolved Amethyst Runelock

map.nodes[74035329] = Treasure({
    label = L['barnacle_encrusted_chest'],
    location = L['in_water'],
    quest = 86765, -- hidden
    rewards = {Transmog({item = 233910})} -- Salt-Stained Sweatcap
}) -- Barnacle-Encrusted Chest

map.nodes[62449084] = Treasure({
    label = L['bilge_rat_supply_chest'],
    note = L['bilge_rat_supply_chest_note'],
    pois = {
        POI({59796910}), -- First Mate Shellshock
        Path({59796910, 62449084})
    },
    quest = 84529, -- hidden
    sublabel = L['pirate_sublabel'],
    requires = ns.requirement.Item(228621) -- Bilge Rat Supply Key
}) -- Bilge Rat Supply Chest

map.nodes[68409440] = Treasure({
    label = L['pilfered_earthen_chest'],
    location = L['in_water'],
    quest = 84527, -- hidden
    sublabel = L['naga_sublabel'],
    rewards = {Transmog({item = 229181, slot = L['2h_mace']})} -- Ordained Forge Maul
}) -- Pilfered Earthen Chest

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
----------- ACHIEVEMENT: TREASURES OF THE STORM (RUNED STORM CHEST) -----------
-------------------------------------------------------------------------------

local ThunderousFragmentItem = Class('TurbulentFragment', Item, {item = 232605})

function ThunderousFragmentItem:GetStatus()
    local count = C_Item.GetItemCount(self.item, true)
    return count >= 5 and Green(count .. '/5') or Red(count .. '/5')
end

function ThunderousFragmentItem:IsObtained()
    if ns.PlayerHasItem(232605, 5) then return true end -- Thunderous Fragment
    if ns.PlayerHasItem(232573, 1) then return true end -- Thunderous Runekey
    if C_QuestLog.IsQuestFlaggedCompleted(85803) then return true end -- hidden
    return false
end

local RunedStormChest = Class('RunedStormChest', Collectible, {
    icon = 'chest_rd',
    group = ns.groups.RUNED_STORM_CHEST,
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
        }), ThunderousFragmentItem() -- Thunderous Fragment
    }
}) -- Runed Storm Chest

map.nodes[37327537] = RunedStormChest()
map.nodes[39094415] = RunedStormChest()
map.nodes[42131643] = RunedStormChest()
map.nodes[49201734] = RunedStormChest()
map.nodes[49667597] = RunedStormChest()
map.nodes[51906550] = RunedStormChest()
map.nodes[52887066] = RunedStormChest()
map.nodes[53145443] = RunedStormChest()
map.nodes[57548578] = RunedStormChest()
map.nodes[59632015] = RunedStormChest()
map.nodes[59736908] = RunedStormChest()
map.nodes[60675264] = RunedStormChest()
map.nodes[61076286] = RunedStormChest()
map.nodes[61944401] = RunedStormChest()
map.nodes[67956202] = RunedStormChest()
map.nodes[49115830] = RunedStormChest()
map.nodes[53774468] = RunedStormChest()

map.nodes[51523734] = RunedStormChest({
    location = L['in_cave'],
    pois = {Entrance({50594160})}
})

map.nodes[50211220] = RunedStormChest({
    location = L['in_cave'],
    pois = {Entrance({45992076})}
})

map.nodes[30217601] = RunedStormChest({storm = 1})
map.nodes[38782007] = RunedStormChest({storm = 1})
map.nodes[38924068] = RunedStormChest({storm = 1})
map.nodes[39965215] = RunedStormChest({storm = 1})
map.nodes[42244737] = RunedStormChest({storm = 1})
map.nodes[44087329] = RunedStormChest({storm = 1})
map.nodes[45096265] = RunedStormChest({storm = 1})
map.nodes[49297262] = RunedStormChest({storm = 1})
map.nodes[51564836] = RunedStormChest({storm = 1})
map.nodes[55596719] = RunedStormChest({storm = 1})
map.nodes[56555508] = RunedStormChest({storm = 1})
map.nodes[61964466] = RunedStormChest({storm = 1})
map.nodes[63708514] = RunedStormChest({storm = 1})

map.nodes[67317820] = RunedStormChest({
    storm = 1,
    location = L['in_small_cave'],
    pois = {Entrance({66227823})}
})

tfv.nodes[29207358] = RunedStormChest({storm = 2})
tfv.nodes[31792774] = RunedStormChest({storm = 2})
tfv.nodes[44406609] = RunedStormChest({storm = 2})
tfv.nodes[64005061] = RunedStormChest({storm = 2})

-------------------------------------------------------------------------------
-------------------------------- MISCELLEANOUS --------------------------------
-------------------------------------------------------------------------------

---------------------- MOUNT: THRAYIR, EYES OF THE SIREN ----------------------

local Thrayir = Class('Thrayir', Collectible, {
    icon = 897087,
    label = '{item:232639}',
    rewards = {Mount({item = 232639, id = 2322})}, -- Thrayir, Eyes of the Siren
    storm = 2
}) -- Thrayir, Eyes of the Siren

function Thrayir.getters:note()
    local function getStatus(runekeyQuest, runekeyItem)
        if runekeyQuest then
            local quest = C_QuestLog.IsQuestFlaggedCompleted(runekeyQuest)
            if quest then return ns.status.Green('1/1') end
        end
        local item = ns.PlayerHasItem(runekeyItem, 1)
        if item then return ns.status.Green('1/1') end
        return ns.status.Red('0/1')
    end

    local runekeys = {
        [232569] = {note = L['cyclonic_runekey_note'], quest = 85800},
        [232570] = {note = L['turbulent_runekey_note'], quest = 85799},
        [232571] = {note = L['whirling_runekey_note'], quest = 85802},
        [232572] = {note = L['torrential_runekey_note'], quest = 85801},
        [232573] = {note = L['thunderous_runekey_note'], quest = 85803}
    }

    local note = L['thrayir_note_start']
    for item, runekey in pairs(runekeys) do
        local str = '{item:' .. item .. '}\n' .. runekey.note
        local status = getStatus(runekey.quest, item)
        note = note .. '\n\n' .. status .. ' ' .. str
    end
    return note
end

tfv.nodes[72506132] = Thrayir()

local TurbulentFragmentItem = Class('TurbulentFragment', Item, {item = 234327})

function TurbulentFragmentItem:GetStatus()
    local count = C_Item.GetItemCount(self.item, true)
    return count >= 3 and Green(count .. '/3') or Red(count .. '/3')
end

local TurbulentFragment = Class('TurbulentFragment', ns.node.Node, {
    icon = 1385913,
    label = '{item:234327}',
    storm = 1,
    rewards = {TurbulentFragmentItem()}
}) -- Turbulent Fragment

map.nodes[38195178] = TurbulentFragment({
    location = L['turbulent_fragment_a'],
    quest = 86436 -- hidden
})

map.nodes[67087844] = TurbulentFragment({
    location = L['turbulent_fragment_b'],
    quest = 86437 -- hidden
})

map.nodes[52393859] = TurbulentFragment({
    location = L['turbulent_fragment_c'],
    pois = {Entrance({50644142})},
    quest = 86435 -- hidden
})

------------------------ MOUNT: PRISTMATIC SNAPDRAGON -------------------------

local PristmaticSnapdragon = Class('PristmaticSnapdragon', Collectible, {
    icon = 2027958,
    quest = {
        86482, -- ![A Lifeline]
        86483, -- ![Snap To It]
        86484, -- ![Temper Like A Tempest]
        86485 -- ![A Loyal Friend]
    },
    requires = ns.requirement.Quest(84726), -- ![Uncovered Mysteries]
    rewards = {
        Mount({item = 233489, id = 2469}) -- Pristmatic Snapdragon
    },
    storm = 3
}) -- Pristmatic Snapdragon

function PristmaticSnapdragon.getters:label()
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[1]) then
        return '{npc:235237}' -- Growing Snapdragon Runt
    end
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[2]) then
        return '{npc:235243}' -- Maturing Pristmatic Snapdragon
    end
    if C_QuestLog.IsQuestFlaggedCompleted(self.quest[3]) then
        return '{npc:235250}' -- Mature Pristmatic Snapdragon
    end
    return '{npc:235216}' -- Starving Snapdragon Runt
end

function PristmaticSnapdragon.getters:note()
    local function getText(questName)
        local icon = ns.GetIconLink('quest_ay', 12)
        local name = ns.color.Yellow('[' .. questName .. ']')
        return icon .. name
    end

    local quest1 = getText(L['pris_quest_1'])
    local quest2 = getText(L['pris_quest_2'])
    local quest3 = getText(L['pris_quest_3'])
    local quest4 = getText(L['pris_quest_4'])
    local day1 = format(L['prismatic_day'], 1)
    local day4 = format(L['prismatic_day'], 4)
    local day7 = format(L['prismatic_day'], 7)
    local day10 = format(L['prismatic_day'], 10)
    local note = L['prismatic_snapdragon_note_start'] .. '\n'
    note = note .. QuestStatus(self.quest[1], day1, quest1)
    note = note .. QuestStatus(self.quest[2], day4, quest2)
    note = note .. QuestStatus(self.quest[3], day7, quest3)
    note = note .. QuestStatus(self.quest[4], day10, quest4)
    return note
end

map.nodes[71004862] = PristmaticSnapdragon()

------------------------------- PET: MARMADUKE --------------------------------

map.nodes[39305424] = Collectible({
    fgroup = 'marmaduke',
    icon = 4048816,
    label = '{item:233027}',
    note = L['marmaduke_note'],
    quest = 86240, -- hidden
    requires = ns.requirement.Quest(85573), -- ![Laid to Rest at Last]
    rewards = {Item({item = 233027, bag = true})} -- Well Loved Squeaky Toy
}) -- Well Loved Squeaky Toy

map.nodes[52834591] = Collectible({
    fgroup = 'marmaduke',
    icon = 5279603,
    label = '{npc:234365}',
    note = L['marmaduke_note'],
    quest = 86240, -- hidden
    requires = ns.requirement.Quest(85573) -- ![Laid to Rest at Last]
}) -- Marmaduke (Item Turn In)

map.nodes[68324496] = Collectible({
    fgroup = 'marmaduke',
    icon = 5279603,
    label = '{npc:234365}',
    note = L['marmaduke_note'],
    quest = 86261, -- ![Homeward Bound to Safer Shores]
    requires = ns.requirement.Quest(85573), -- ![Laid to Rest at Last]
    rewards = {Pet({item = 233056, id = 4708})}, -- Marmaduke
    pois = {
        Path({Circle({origin = 39305424, radius = 2})}), -- Well Loved Squeaky Toy
        Path({Circle({origin = 52834591, radius = 2})}) -- Marmaduke (Item Turn In)
    }
}) -- Marmaduke (Quest Turn In)
