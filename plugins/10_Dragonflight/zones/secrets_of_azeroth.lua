-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Gray = ns.color.Gray

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

-- Achievement: Whodunnit?
local bor = ns.maps[114] or Map({id = 114, settings = true}) -- Borean Tundra
local ohn = ns.maps[2023] or Map({id = 2023, settings = true}) -- Ohn'ahran Plains
local tas = ns.maps[2024] or Map({id = 2024, settings = true}) -- The Azure Span
local tws = ns.maps[2022] or Map({id = 2022, settings = true}) -- The Waking Shores
local val = ns.maps[2112] or Map({id = 2112, settings = true}) -- Valdrakken
local zar = ns.maps[2133] or Map({id = 2133, settings = true}) -- Zaralek Cavern

-- Achievement: Community Rumor Mill
local epl = ns.maps[23] or Map({id = 23, settings = true}) -- Eastern Plaguelands
local fel = ns.maps[77] or Map({id = 77, settings = true}) -- Felwood
local net = ns.maps[109] or Map({id = 109, settings = true}) -- Netherstorm
local smv = ns.maps[539] or Map({id = 539, settings = true}) -- Shadowmoon Valley (Draenor)
local tho = ns.maps[64] or Map({id = 64, settings = true}) -- Thousand Needles
local vfw = ns.maps[376] or Map({id = 376, settings = true}) -- Valley of the Four Winds

-------------------------------------------------------------------------------

local REQUIREMENT_TRICKED_OUT_THINKING_CAP = ns.requirement.Toy(206696)
local REQUIREMENT_TORCH_OF_PYRRETH = ns.requirement.Toy(208092)
local REQUIREMENT_IDOL_OF_OHNAHRA = ns.requirement.Toy(207730)

-------------------------------------------------------------------------------

local SecretsOfAzeroth = Class('SecretsOfAzeroth', ns.node.Node, {
    icon = 'peg_gn',
    scale = 2.0,
    group = ns.groups.SECRETS_OF_AZEROTH,
    IsCompleted = function(self)
        if self.playerHasItem then
            for i, v in ipairs(self.playerHasItem) do
                if ns.PlayerHasItem(v) then return true end
            end
        end
        return ns.node.Node.IsCompleted(self)
    end
}) -- Secrets of Azeroth

local function NOTE_STATUS(id, itemsNeed)
    local itemsHave = GetItemCount(id, true);
    if ns.PlayerHasItem(id, itemsNeed) then
        return ns.status.Green(itemsHave .. '/' .. itemsNeed)
    else
        return ns.status.Red(itemsHave .. '/' .. itemsNeed)
    end
end

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 01 -------------------------
-------------------------------------------------------------------------------

val.nodes[58895410] = SecretsOfAzeroth({
    label = '{item:208056}',
    note = L['soa_01_golden_chalice_note'],
    quest = 77204, -- Clue 01 complete
    requires = ns.requirement.Item(208056), -- Golden Chalice
    rlabel = Gray(L['soa_01_rlabel'])
}) -- Golden Chalice

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 02 -------------------------
-------------------------------------------------------------------------------

val.nodes[47314824] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_02_kathos_note'],
    questDeps = 77204, -- Clue 01 complete
    quest = 77203, -- ![Preserving Rarities]
    rlabel = Gray(L['soa_02_rlabel']),
    rewards = {
        Achievement({id = 18646, criteria = 1}), -- Whodunnit?
        Item({item = 207105}) -- Tuskarr Ceremonial Spear
    }
}) -- Preservationist Kathos

tas.nodes[12404933] = SecretsOfAzeroth({
    label = '{npc:186448}',
    note = L['soa_02_shomko_note_a'] .. '\n\n' .. L['soa_02_shomko_note_b'],
    questDeps = 77203, -- ![Preserving Rarities]
    playerHasItem = {207580}, -- Shomko's Unyidling Spear
    requires = ns.requirement.Item(207105), -- Tuskarr Ceremonial Spear
    rlabel = Gray(L['soa_02_rlabel']),
    rewards = {
        Item({item = 207580}) -- Shomko's Unyidling Spear
    }
}) -- Elder Poa

bor.nodes[33605843] = SecretsOfAzeroth({
    label = '{item:207580}',
    note = L['soa_02_shomko_note_b'] .. '\n\n' .. L['soa_02_shomko_note_c'],
    quest = 76987, -- Clue 02 complete
    questDeps = 77203, -- ![Preserving Rarities]
    requires = ns.requirement.Item(207580), -- Shomko's Unyielding Spear
    rlabel = Gray(L['soa_02_rlabel']),
    rewards = {
        Achievement({id = 18642}), -- The Inquisitive
        Achievement({id = 18646, criteria = 2}) -- Whodunnit?
    }
}) -- Shomko's Unyielding Spear

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 03 -------------------------
-------------------------------------------------------------------------------

local FangliHoot = Class('FangliHoot', SecretsOfAzeroth, {
    label = '{npc:207697}',
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    rlabel = Gray(L['soa_03_rlabel']),
    rewards = {
        Achievement({id = 18645, criteria = 1}), -- Tools of the Trade
        Toy({item = 206696}) -- Tricked-Out Thinking Cap
    },
    pois = {POI({47974679})} -- Bobby Carlisle
}) -- Fangli Hoot

function FangliHoot.getters:note()
    local note = L['soa_03_fangli_hoot_note_a']
    note = note .. '\n\n' .. NOTE_STATUS(207956, 1) .. ' ' ..
               L['soa_03_fangli_hoot_note_b'] -- Thought Calculating Apparatus
    note = note .. '\n\n' .. NOTE_STATUS(207813, 1) .. ' ' ..
               L['soa_03_fangli_hoot_note_c'] -- Downey Helmet Liner
    note = note .. '\n\n' .. NOTE_STATUS(207816, 1) .. ' ' ..
               L['soa_03_fangli_hoot_note_d'] -- Crystal Ocular Lenses
    return note .. '\n\n' .. L['soa_03_fangli_hoot_note_e']
end

val.nodes[26675389] = FangliHoot()

val.nodes[64605370] = SecretsOfAzeroth({
    label = L['soa_03_fangli_clue_label'],
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 77513, -- Clue 03 complete
    questDeps = 78202, -- Thinking cap recieved
    requires = REQUIREMENT_TRICKED_OUT_THINKING_CAP,
    note = L['soa_03_fangli_clue'],
    rewards = {
        Achievement({id = 18646, criteria = 3}) -- Whodunnit?
    },
    pois = {
        POI({
            26605390, 09975650, 29206270, 39806440, 36207120, 44205840,
            38004920, 55204330, 64605370
        }), Path({
            26605390, 09975650, 29206270, 39806440, 36207120, 44205840,
            38004920, 55204330, 64605370
        })
    }
}) -- Fangli Clue

------------ THUNDERSPINE NEST <==> THOUGHT CALCULATING APPARATUS -------------

local Erugosa = Class('Erugosa', SecretsOfAzeroth, {
    label = '{npc:185556}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    playerHasItem = {
        207814, -- Thought Calculating Apparatus
        207827 -- Unfinished Thinking Cap
    },
    rewards = {
        Item({item = 207956, note = '10x'}) -- Thunderspine Nest
    }
}) -- Erugosa <Cooking Trainer>

function Erugosa.getters:note()
    local note = L['soa_03_erugosa_note_a']
    note = note .. '\n\n' .. NOTE_STATUS(198441, 5) .. ' ' ..
               L['soa_03_erugosa_note_b'] -- Thunderspine Tenders
    note = note .. '\n\n' .. NOTE_STATUS(201419, 5) .. ' ' ..
               L['soa_03_erugosa_note_c'] -- Latticed Stinkhorn
    note = note .. '\n\n' .. NOTE_STATUS(205693, 5) .. ' ' ..
               L['soa_03_erugosa_note_d'] -- Apexis Asiago
    return note
end

val.nodes[46514624] = Erugosa()

ohn.nodes[85182347] = SecretsOfAzeroth({
    label = '{npc:194152}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    note = L['soa_03_erugosa_note_b'],
    rewards = {
        Item({item = 198441, note = '5x'}) -- Thunderspine Tenders
    }
}) -- Agurahl the Butcher <Meat Vendor>

val.nodes[28996516] = SecretsOfAzeroth({
    label = '{npc:196729}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    note = L['soa_03_erugosa_note_c'],
    rewards = {
        Item({item = 201419, note = '5x'}) -- Apexis Asiago
    }
}) -- Gorgonzormu <Cheesemonger>

zar.nodes[54085666] = SecretsOfAzeroth({
    label = '{npc:204371}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    note = L['soa_03_erugosa_note_d'],
    rewards = {
        Item({item = 205693, note = '5x'}) -- Latticed Stinkhorn
    }
}) -- Sniktak <Enterprising Mycologist>

local Clinkyclick = Class('Clinkyclick', SecretsOfAzeroth, {
    label = '{npc:185548}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    playerHasItem = {
        207814, -- Thought Calculating Apparatus
        207827 -- Unfinished Thinking Cap
    },
    rewards = {
        Item({item = 207814}) -- Thought Calculating Apparatus
    }
}) -- Clinkyclick Shatterboom <Engineering Trainer>

function Clinkyclick.getters:note()
    local note = L['soa_03_clinkyclick_note_a'] .. '\n\n'
    note = note .. NOTE_STATUS(207956, 5) .. ' ' ..
               L['soa_03_clinkyclick_note_b'] -- Thunderspine Nest
    return note
end

val.nodes[42244866] = Clinkyclick()

-------------------- FRESH TYRANHA <==> DOWNY HELMET LINER --------------------

local Gryffin = Class('Gryffin', SecretsOfAzeroth, {
    label = '{npc:197781}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    playerHasItem = {
        207813, -- Downy Helmet Liner
        207827 -- Unfinished Thinking Cap
    },
    rewards = {
        Item({item = 207813}) -- Downy Helmet Liner
    }
}) -- Gryffin <Clinkyclick's Assistant>

function Gryffin.getters:note()
    local note = L['soa_03_gryffin_note_a'] .. '\n\n'
    note = note .. NOTE_STATUS(207812, 1) .. ' ' .. L['soa_03_gryffin_note_b'] -- Fresh Tyranha
    return note
end

val.nodes[42474937] = Gryffin()

val.nodes[46109447] = SecretsOfAzeroth({
    label = '{npc:191451}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    playerHasItem = {
        207812, -- Fresh Tyranha
        207827 -- Unfinished Thinking Cap
    },
    note = L['soa_03_gryffin_note_b'],
    rewards = {
        Item({item = 207812, note = '1x'}) -- Fresh Tyranha
    }
}) -- Hungering Tyranha

--------------------- BAR TAB <==> CRYSTAL OCULAR LENSES ----------------------

val.nodes[39046182] = SecretsOfAzeroth({
    label = '{npc:198586}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    playerHasItem = {
        207816, -- Crystal Ocular Lenses
        207827 -- Unfinished Thinking Cap
    },
    note = L['soa_03_shakey_note_a'] .. '\n\n' ..
        format(L['soa_03_shakey_note_b'], GetCoinTextureString(3464358)),
    rewards = {
        Item({item = 207816}) -- Crystal Ocular Lenses
    }
}) -- Shakey Flatlap <Jewelcrafting Supplies>

val.nodes[47334110] = SecretsOfAzeroth({
    label = '{npc:192814}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = {
        77230, -- payed bar tab
        78202 -- Thinking cap recieved
    },
    questAny = true,
    playerHasItem = {
        207816, -- Crystal Ocular Lenses
        207827 -- Unfinished Thinking Cap
    },
    note = format(L['soa_03_shakey_note_b'], GetCoinTextureString(3464358)) ..
        '\n\n' .. L['soa_03_shakey_note_c'],
    pois = {POI({46944489})} -- Odd Statue
}) -- Kritha

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 04 -------------------------
-------------------------------------------------------------------------------

val.nodes[48824783] = SecretsOfAzeroth({
    label = L['soa_04_locker_label'],
    note = L['soa_04_sazsel_note_a'],
    playerHasItem = {208130},
    questDeps = 77513, -- Clue 03 complete
    quest = 77397,
    requires = ns.requirement.Item(208129), -- Copied Artifact Storage Key
    rlabel = Gray(L['soa_04_rlabel']),
    rewards = {
        Item({item = 208130}) -- Maruuk Burial Banner
    }
}) -- Preservationist's Locker

val.nodes[62847284] = SecretsOfAzeroth({
    label = '{npc:208620}',
    note = L['soa_04_sazsel_note_a'] .. '\n\n' .. L['soa_04_sazsel_note_b'],
    requires = ns.requirement.Item(208130), -- Maruuk Burial Banner
    rlabel = Gray(L['soa_04_rlabel']),
    questDeps = 77513, -- Clue 03 complete
    quest = {
        77277, -- ![Preservationist Cleared]
        77521 -- Clue 04 complete
    },
    rewards = {
        Achievement({id = 18646, criteria = 4}) -- Whodunnit?
    }
}) -- "Appraiser" Sazsel Stickyfingers

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 05 -------------------------
-------------------------------------------------------------------------------

tws.nodes[54572038] = SecretsOfAzeroth({
    label = '{item:208135}',
    rlabel = Gray(L['soa_05_rlabel']),
    note = L['soa_05_torch_of_pyrreth_note_a'] .. '\n\n' ..
        L['soa_05_torch_of_pyrreth_note_b'],
    quest = {
        77282, -- Artifact Secured
        78201 -- Account-wide?
    },
    questDeps = 77521, -- Clue 04 complete
    playerHasItem = {208135}, -- Torch of Pyrreth
    rewards = {
        Toy({item = 208092}) -- Torch of Pyrreth
    },
    pois = {
        POI({57072559, quest = 77403}), -- Ancient Levers 1
        POI({57762382, quest = 77402}), -- Ancient Levers 2
        POI({56602030, quest = 77401}), -- Ancient Levers 3
        Path({54572038, 57072559, quest = 77403}), -- Ancient Lever 1
        Path({54572038, 57762382, quest = 77402}), -- Ancient Lever 2
        Path({54572038, 56602030, quest = 77401}) -- Ancient Lever 3
    }
}) -- Torch of Pyrreth

tws.nodes[57072559] = SecretsOfAzeroth({
    label = L['soa_05_ancient_lever_label'],
    note = L['soa_05_ancient_lever_note_a'],
    quest = 77403,
    questDeps = 77521, -- Clue 04 complete
    rlabel = Gray(L['soa_05_rlabel'])
}) -- Ancient Lever 1

tws.nodes[57762382] = SecretsOfAzeroth({
    label = L['soa_05_ancient_lever_label'],
    note = L['soa_05_ancient_lever_note_b'],
    quest = 77402,
    questDeps = 77521, -- Clue 04 complete
    rlabel = Gray(L['soa_05_rlabel'])
}) -- Ancient Lever 2

tws.nodes[56602030] = SecretsOfAzeroth({
    label = L['soa_05_ancient_lever_label'],
    note = L['soa_05_ancient_lever_note_c'],
    quest = 77401,
    questDeps = 77521, -- Clue 04 complete
    rlabel = Gray(L['soa_05_rlabel'])
}) -- Ancient Lever 3

val.nodes[58522363] = SecretsOfAzeroth({
    label = L['soa_05_enchanted_box_label'],
    rlabel = Gray(L['soa_05_rlabel']),
    note = L['soa_05_torch_of_pyrreth_note_c'],
    quest = {
        77263, -- ![The Torch of Pyrreth]
        77522 -- Clue 05 complete
    },
    questDeps = 77521, -- Clue 04 complete
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    rewards = {
        Achievement({id = 18646, criteria = 5}) -- Whodunnit?
    }
}) -- Enchanted Box

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 06 -------------------------
-------------------------------------------------------------------------------

val.nodes[47964684] = SecretsOfAzeroth({
    label = '{npc:207696}',
    rlabel = Gray(L['soa_06_rlabel']),
    note = L['soa_06_unvieled_tablet_note_a'],
    quest = {
        77284, -- A Chilling Ascent (buggy never true)
        77523 -- Clue 06 complete (TODO: remove if 77284 is fixed)
    },
    questAny = true, -- TODO: remove if 77284 is fixed
    questDeps = 77522, -- Clue 05 complete
    rewards = {
        Achievement({id = 18646, criteria = 6}), -- Whodunnit?
        Item({item = 208137}) -- The Clerk's Notes
    }
}) -- Bobby Carlisle

tas.nodes[78883244] = SecretsOfAzeroth({
    label = L['soa_06_unvieled_tablet_label'],
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    rlabel = Gray(L['soa_06_rlabel']),
    note = L['soa_06_unvieled_tablet_note_b'] .. '\n\n' ..
        L['soa_06_unvieled_tablet_note_c'],
    questDeps = 77284, -- A Chilling Ascent
    quest = {
        77286, -- ![A Knowledgeable Descent]
        77523 -- Clue 06 complete
    },
    rewards = {
        Achievement({id = 18646, criteria = 6}), -- Whodunnit?
        Item({item = 208143}) -- Unveiled Tablet Rubbing
    },
    pois = {
        POI({77903210}), -- Valktros Tower Door
        Path({77903210, 78883244}) -- Cogs/Bolts
    }
}) -- Unveiled Tablet

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 07 -------------------------
-------------------------------------------------------------------------------

local Brazier = Class('Brazier', SecretsOfAzeroth, {
    label = L['soa_07_brazier_label'],
    note = L['soa_07_brazier_note'],
    rlabel = Gray(L['soa_07_rlabel']),
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    questDeps = 77689 -- ![Idol Searching]
}) -- Ancient Incense Brazier

ohn.nodes[32306800] = Brazier({
    quest = 77406, -- hidden
    pois = {POI({32676832})} -- Entrance
}) -- Brazier 1

ohn.nodes[31007080] = Brazier({
    quest = 77407, -- hidden
    pois = {POI({31737033})} -- Entrance
}) -- Brazier 2

ohn.nodes[35206570] = Brazier({
    quest = 77405, -- hidden
    pois = {POI({35246628})} -- Entrance
}) -- Brazier 3

ohn.nodes[39605890] = Brazier({
    questDeps = {
        77689, -- ![Idol Searching]
        77406, -- Brazier 1 (hidden)
        77689, -- Brazier 2 (hidden)
        77689 -- Brazier 3 (hidden)
    },
    quest = 77404, -- hidden
    pois = {POI({40355952})} -- Entrance
}) -- Brazier 4

ohn.nodes[39555886] = SecretsOfAzeroth({
    label = '{item:207730}',
    note = L['soa_07_idol_note'],
    rlabel = Gray(L['soa_07_rlabel']),
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    quest = {
        77304, -- ![An Idol in Hand]
        77306, -- Idol of Ohn'ahra toy received
        78200 -- Account-wide completion
    },
    questAny = true,
    questDeps = 77404, -- Brazier 4 (hidden)
    playerHasItem = {208145}, -- Idol of Ohn'ahra
    pois = {POI({40355952})}, -- Entrance
    rewards = {
        Achievement({id = 18645, criteria = 3}), -- Tools of the Trade
        Transmog({item = 208150, slot = L['cosmetic']}), -- Blue Tweed Cap
        Toy({item = 207730}) -- Idol of Ohn'ahra
    }
}) -- Idol of Ohn'ahra

local HiddenGem = Class('HiddenGem', SecretsOfAzeroth, {
    label = '{npc:208162}',
    requires = REQUIREMENT_IDOL_OF_OHNAHRA,
    questDeps = 77304, -- ![An Idol in Hand]
    quest = {
        75456, -- ![Using the Idol]
        77524 -- Clue 07 complete
    },
    questAny = true,
    rewards = {
        Achievement({id = 18646, criteria = 7}) -- Whodunnit?
    }
}) -- Hidden Gem

val.nodes[49105140] = HiddenGem()
val.nodes[45705930] = HiddenGem()
val.nodes[55206460] = HiddenGem()

-------------------------------------------------------------------------------
---------------------------- COMMUNITY RUMOR MILL -----------------------------
-------------------------------------------------------------------------------

local BURIED_SATCHELS = {
    [1] = {quest = 77289, mapID = epl.id, parentMapID = 13}, -- Eastern Plaguelands, Kalimdor
    [2] = {quest = 77288, mapID = fel.id, parentMapID = 12}, -- Felwood, Eastern Kingdoms
    [3] = {quest = 77291, mapID = tho.id, parentMapID = 12}, -- Thousand Needles, Eastern Kingdoms
    [4] = {quest = 77292, mapID = smv.id, parentMapID = 1922}, -- Shadowmoon Valley, Draenor
    [5] = {quest = 77290, mapID = net.id, parentMapID = 101}, -- Netherstorm, Outland
    [6] = {quest = 77293, mapID = vfw.id, parentMapID = 424} -- Valley of the Four Winds, Pandaria
}

local BuriedSatchelList = Class('BuriedSatchelList', SecretsOfAzeroth, {
    label = '{item:208142}',
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    icon = 'peg_rd',
    sublabel = L['buried_satchel_sublabel'],
    rewards = {
        Achievement({id = 18644, criteria = {qty = true, id = 1}}), -- Community Rumor Mill
        Pet({npc = 208643, id = 4263}) -- Tobias
    }
}) -- Buried Satchel List

function BuriedSatchelList.getters:note()
    local function complete(num, questID)
        if C_QuestLog.IsQuestFlaggedCompleted(questID) then
            return ns.status.Green(num)
        else
            return ns.status.Red(num)
        end
    end

    local note = L['buried_satchel_note'] .. '\n'
    for num, satchel in ipairs(BURIED_SATCHELS) do
        local mName = C_Map.GetMapInfo(satchel.mapID).name
        local pName = C_Map.GetMapInfo(satchel.parentMapID).name
        local qDone = complete(num, satchel.quest)
        note = note .. format('\n%s %s (%s)', qDone, mName, pName)
    end
    return note
end

val.nodes[87002100] = BuriedSatchelList()

local BuriedSatchel = Class('BuriedSatchel', SecretsOfAzeroth, {
    label = '{item:208142}',
    note = L['buried_satchel_note'],
    rewards = {
        Achievement({id = 18644, criteria = {qty = true, id = 1}}) -- Community Rumor Mill
    }
}) -- Buried Satchel

epl.nodes[55245943] = BuriedSatchel({
    location = L['bs_epl_location'],
    quest = 77289,
    rlabel = Gray(L['bs_count_01'])
}) -- Eastern Plaguelands

fel.nodes[42214805] = BuriedSatchel({
    location = L['bs_fel_location'],
    quest = 77288,
    rlabel = Gray(L['bs_count_02'])
}) -- Felwood

tho.nodes[42753063] = BuriedSatchel({
    location = L['bs_tho_location'],
    pois = {POI({44003730})},
    quest = 77291,
    rlabel = Gray(L['bs_count_03'])
}) -- Thousand Needles

smv.nodes[35314895] = BuriedSatchel({
    location = L['bs_smv_location'],
    quest = 77292,
    rlabel = Gray(L['bs_count_04'])
}) -- Shadowmoon Valley (Draenor)

net.nodes[26246854] = BuriedSatchel({
    location = L['bs_net_location'],
    quest = 77290,
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    rlabel = Gray(L['bs_count_05'])
}) -- Netherstorm

vfw.nodes[56812143] = BuriedSatchel({
    location = L['bs_vfw_location'],
    quest = 77293,
    rlabel = Gray(L['bs_count_06'])
}) -- Valley of the Four Winds
