-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Gray = ns.color.Gray

local POI = ns.poi.POI
local Path = ns.poi.Path

local ItemStatus = ns.tooltip.ItemStatus
local QuestStatus = ns.tooltip.QuestStatus

-------------------------------------------------------------------------------

-- Achievement: Whodunnit?
local bor = ns.maps[114] or Map({id = 114, settings = true}) -- Borean Tundra
local kar = ns.maps[358] or Map({id = 358, settings = true}) -- Karazhan - The Menagerie
local tws = ns.maps[2022] or Map({id = 2022, settings = true}) -- The Waking Shores
local ohn = ns.maps[2023] or Map({id = 2023, settings = true}) -- Ohn'ahran Plains
local tas = ns.maps[2024] or Map({id = 2024, settings = true}) -- The Azure Span
local tha = ns.maps[2025] or Map({id = 2025, settings = true}) -- Thaldraszus
local val = ns.maps[2112] or Map({id = 2112, settings = true}) -- Valdrakken
local zar = ns.maps[2133] or Map({id = 2133, settings = true}) -- Zaralek Cavern

-- Achievement: Community Rumor Mill
local bar = ns.maps[10] or Map({id = 10, settings = true}) -- Northern Barrens
local bla = ns.maps[17] or Map({id = 17, settings = true}) -- Blasted Lands
local dbt = ns.maps[115] or Map({id = 115, settings = true}) -- Dragonblight
local epl = ns.maps[23] or Map({id = 23, settings = true}) -- Eastern Plaguelands
local fel = ns.maps[77] or Map({id = 77, settings = true}) -- Felwood
local gri = ns.maps[116] or Map({id = 116, settings = true}) -- Grizzly Hills
local hmt = ns.maps[650] or Map({id = 650, settings = true}) -- Highmountain
local nag = ns.maps[107] or Map({id = 107, settings = true}) -- Nagrand (Outland)
local net = ns.maps[109] or Map({id = 109, settings = true}) -- Netherstorm
local smv = ns.maps[539] or Map({id = 539, settings = true}) -- Shadowmoon Valley (Draenor)
local tho = ns.maps[64] or Map({id = 64, settings = true}) -- Thousand Needles
local tli = ns.maps[554] or Map({id = 554, settings = true}) -- Timeless Isle
local vfw = ns.maps[376] or Map({id = 376, settings = true}) -- Valley of the Four Winds
local wpl = ns.maps[22] or Map({id = 22, settings = true}) -- Western Plaguelands
local tir = ns.maps[895] or Map({id = 895, settings = true}) -- Tiragarde Sound

-- Mount: Mimiron's Jumpjets
local cst = ns.maps[210] or Map({id = 210, settings = true}) -- Cape of Stranglethorn

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
    quest = 76987,
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
    note = note .. ItemStatus(207956, 1, L['soa_03_fangli_hoot_note_b']) -- Thought Calculating Apparatus
    note = note .. ItemStatus(207813, 1, L['soa_03_fangli_hoot_note_c']) -- Downey Helmet Liner
    note = note .. ItemStatus(207816, 1, L['soa_03_fangli_hoot_note_d']) -- Crystal Ocular Lenses
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
        Item({item = 207956, count = 10}) -- Thunderspine Nest
    }
}) -- Erugosa <Cooking Trainer>

function Erugosa.getters:note()
    local note = L['soa_03_erugosa_note_a']
    note = note .. ItemStatus(198441, 5, L['soa_03_erugosa_note_b']) -- Thunderspine Tenders
    note = note .. ItemStatus(201419, 5, L['soa_03_erugosa_note_c']) -- Latticed Stinkhorn
    note = note .. ItemStatus(205693, 5, L['soa_03_erugosa_note_d']) -- Apexis Asiago
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
        Item({item = 198441, count = 5}) -- Thunderspine Tenders
    }
}) -- Agurahl the Butcher <Meat Vendor>

val.nodes[28996516] = SecretsOfAzeroth({
    label = '{npc:196729}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    note = L['soa_03_erugosa_note_c'],
    rewards = {
        Item({item = 201419, count = 5}) -- Apexis Asiago
    }
}) -- Gorgonzormu <Cheesemonger>

zar.nodes[54085666] = SecretsOfAzeroth({
    label = '{npc:204371}',
    rlabel = Gray(L['soa_03_rlabel']),
    quest = 78202, -- Thinking cap recieved
    questDeps = 76987, -- Clue 02 complete
    note = L['soa_03_erugosa_note_d'],
    rewards = {
        Item({item = 205693, count = 5}) -- Latticed Stinkhorn
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
    local note = L['soa_03_clinkyclick_note_a']
    note = note .. ItemStatus(207956, 5, L['soa_03_clinkyclick_note_b']) -- Thunderspine Nest
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
    local note = L['soa_03_gryffin_note_a']
    note = note .. ItemStatus(207812, 1, L['soa_03_gryffin_note_b']) -- Fresh Tyranha
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
        Item({item = 207812, count = 1}) -- Fresh Tyranha
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
    questDeps = 77522, -- Clue 05 complete (TODO: change to 77284 (A Chilling Ascent) when its fixed)
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

val.nodes[47464619] = SecretsOfAzeroth({
    label = '{npc:185562}',
    rlabel = Gray(L['soa_07_rlabel']),
    note = L['soa_07_brazier_note_a'],
    quest = 77689, -- ![Idol Searching]
    questDeps = 77523, -- Clue 06 complete
    rewards = {
        Item({item = 208144}) -- Preservationist's Dispatch Two
    }
}) -- Tithris

local Brazier = Class('Brazier', SecretsOfAzeroth, {
    label = L['soa_07_brazier_label'],
    note = L['soa_07_brazier_note_b'],
    rlabel = Gray(L['soa_07_rlabel']),
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    quest = {77405, 77406, 77407}, -- hidden
    questDeps = 77689 -- ![Idol Searching]
}) -- Ancient Incense Brazier

ohn.nodes[32306800] = Brazier({
    pois = {POI({32676832})} -- Entrance
}) -- Brazier 1

ohn.nodes[31007080] = Brazier({
    pois = {POI({31737033})} -- Entrance
}) -- Brazier 2

ohn.nodes[35206570] = Brazier({
    pois = {POI({35246628})} -- Entrance
}) -- Brazier 3

ohn.nodes[39605890] = Brazier({
    questDeps = {
        77689, -- ![Idol Searching]
        77406, -- Brazier 1 (hidden)
        77407, -- Brazier 2 (hidden)
        77405 -- Brazier 3 (hidden)
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
    rlabel = Gray(L['soa_07_rlabel']),
    questDeps = 77304, -- ![An Idol in Hand]
    quest = {
        76456, -- ![Using the Idol]
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
------------------------- SECRETS OF AZEROTH: CLUE 08 -------------------------
-------------------------------------------------------------------------------

val.nodes[47314823] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_08_kathos_note'],
    questDeps = 77524, -- Clue 07 complete
    quest = 77854, -- ![Into the Sands]
    rlabel = Gray(L['soa_08_rlabel']),
    rewards = {
        Achievement({id = 18646, criteria = 8}) -- Whodunnit?
    }
}) -- Preservationist Kathos

local TimeLostFragment = Class('TimeLostFragment', SecretsOfAzeroth, {
    label = '{item:208191}',
    rlabel = Gray(L['soa_08_rlabel']),
    note = L['soa_08_time_lost_fragment_note'],
    requires = REQUIREMENT_IDOL_OF_OHNAHRA,
    quest = 77421, -- hidden
    questDeps = 77854, -- ![Into the Sands]
    rewards = {
        Achievement({id = 18646, criteria = 8}), -- Whodunnit?
        Item({item = 208146}) -- Incomplete Tablet
    }
}) -- Time-Lost Fragment

tha.nodes[58517843] = TimeLostFragment({
    location = L['soa_08_tl_fragment_location_a']
})
tha.nodes[58797824] = TimeLostFragment({
    location = L['soa_08_tl_fragment_location_b']
})
tha.nodes[59307882] = TimeLostFragment({
    location = L['soa_08_tl_fragment_location_c']
})

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 09 -------------------------
-------------------------------------------------------------------------------

val.nodes[47964685] = SecretsOfAzeroth({
    label = '{npc:207696}',
    rlabel = Gray(L['soa_09_rlabel']),
    note = L['soa_09_bobby_note'],
    quest = {
        77653, -- A Key Story (buggy never true)
        77576 -- Clue 09 complete (TODO: remove if 77653 is fixed)
    },
    questAny = true, -- TODO: remove if 77653 is fixed
    questDeps = 76508, -- Clue 08 complete
    rewards = {
        Achievement({id = 18646, criteria = 9}) -- Whodunnit?
    },
    pois = {POI({36195194})} -- Weaponsmith Koref
}) -- Bobby Carlisle

ohn.nodes[63385694] = SecretsOfAzeroth({
    label = L['soa_09_hastily_scrawled_stone_label'],
    note = L['soa_09_hastily_scrawled_stone_note'],
    rlabel = Gray(L['soa_09_rlabel']),
    quest = {
        77822, -- ![A Titanic Mold]
        77576 -- Clue 09 complete
    },
    questAny = true
    -- questDeps = 77653 -- A Key Story (TODO: uncomment if 77653 is fixed)
}) -- Hastily Scrawled Stone

ohn.nodes[63005737] = SecretsOfAzeroth({
    label = L['soa_09_ancient_key_mold_label'],
    note = L['soa_09_ancient_key_mold_note'],
    rlabel = Gray(L['soa_09_rlabel']),
    quest = {
        77822, -- ![A Titanic Mold]
        77576 -- Clue 09 complete
    },
    questAny = true
    -- questDeps = 77653 -- A Key Story (TODO: uncomment if 77653 is fixed)
}) -- Ancient Key Mold

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 10 -------------------------
-------------------------------------------------------------------------------

val.nodes[47954684] = SecretsOfAzeroth({
    label = '{npc:207696}',
    note = L['soa_10_tyrs_titan_key_note'],
    rlabel = Gray(L['soa_10_rlabel']),
    quest = {
        77829, -- Reforging a Legend -- never changes to true
        77893, -- Hidden, triggerd after turning in 77829
        77577 -- Clue 10 complete
    },
    questAny = true, -- TODO: remove if 77829 is fixed
    questDeps = 77576, -- Clue 09 complete
    rewards = {
        Achievement({id = 18646, criteria = 10}), -- Whodunnit?
        Item({item = 208829}) -- Titan Key Materials List
    },
    pois = {POI({36195194})} -- Weaponsmith Koref
}) -- Bobby Carlisle

tws.nodes[48144653] = SecretsOfAzeroth({
    label = '{item:208835}',
    requires = REQUIREMENT_IDOL_OF_OHNAHRA,
    note = L['soa_10_rose_gold_dust_note'],
    rlabel = Gray(L['soa_10_rlabel']),
    quest = {
        70513, -- hidden, triggered after collecting 50 Rose Gold Dust
        77831 -- A Key to Reforg(ing)
    },
    questAny = true,
    questDeps = 77893,
    pois = {POI({36195194})} -- Weaponsmith Koref
}) -- Rose Gold Dust

tws.nodes[38834307] = SecretsOfAzeroth({
    label = '{item:208836}',
    note = L['soa_10_igneous_flux_note'],
    rlabel = Gray(L['soa_10_rlabel']),
    quest = 77831, -- A Key to Reforg(ing)
    questDeps = 77893, -- Clue 09 complete
    pois = {POI({21107687, 22947842, 37714381})} -- Igneous Flux
}) -- Igneous Flux

tws.nodes[24516074] = SecretsOfAzeroth({
    label = '{npc:210837}',
    requires = {
        REQUIREMENT_TORCH_OF_PYRRETH, --
        ns.requirement.Item(208836, 8), -- Igneous Flux
        ns.requirement.Item(208835, 50) -- Rose Gold Dust
    },
    note = L['soa_10_weaponsmith_koref_note'],
    rlabel = Gray(L['soa_10_rlabel']),
    questDeps = 77893,
    quest = {
        77831, -- A Key to Reforg(ing)
        77577 -- Clue 10 complete
    },
    rewards = {
        Item({item = 208831}) -- Reforged Titan Key
    }
}) -- Weaponsmith Koref

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 11 -------------------------
-------------------------------------------------------------------------------

val.nodes[47324823] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_11_kathos_note'],
    questDeps = 77577, -- Clue 10 complete
    quest = 78008, -- A Proper Burial (77865)
    rlabel = Gray(L['soa_11_rlabel']),
    rewards = {
        Achievement({id = 18646, criteria = 11}) -- Whodunnit?
    }
}) -- Preservationist Kathos

ohn.nodes[63414138] = SecretsOfAzeroth({
    label = '{npc:195543}',
    note = L['soa_11_sansok_khan_note'],
    questDeps = 78008, -- A Proper Burial (77865)
    quest = 77578,
    playerHasItem = {209061},
    rlabel = Gray(L['soa_11_rlabel']),
    rewards = {
        Item({item = 209061}) -- Ishtar Rethon's Burial Banner
    }
}) -- Sansok Khan

ohn.nodes[81335930] = SecretsOfAzeroth({
    label = '{npc:191391}',
    note = L['soa_11_jhara_note'],
    questDeps = 78008, -- A Proper Burial (77865)
    quest = 77578,
    playerHasItem = {208857},
    rlabel = Gray(L['soa_11_rlabel_optional']),
    rewards = {
        Item({item = 208857}) -- The Path of Ishtar Drawing
    },
    fgroup = 'PathOfIshtar',
    pois = {Path({81335930, 83884849, 78638334, 60726349, 31617167, 43404800})}
}) -- Jhara - OPTIONAL

local BurialMarker = Class('BurialMarker', SecretsOfAzeroth, {
    requires = ns.requirement.Item(208857), -- The Path of Ishtar Drawing
    rlabel = Gray(L['soa_11_rlabel_optional']),
    fgroup = 'PathOfIshtar',
    questAny = true
})

ohn.nodes[83884849] = BurialMarker({
    label = L['soa_11_marker_1_label'],
    questDeps = 78008, -- A Proper Burial (77865)
    quest = {
        78025, -- First Marker
        77578 -- Clue 11 Complete
    }
}) -- First Marker - OPTIONAL

ohn.nodes[78638334] = BurialMarker({
    label = L['soa_11_marker_2_label'],
    note = L['in_small_cave'],
    questDeps = 78025, -- First Marker
    quest = {
        78026, -- Second Marker
        77578 -- Clue 11 Complete
    }
}) -- Second Marker - OPTIONAL

ohn.nodes[60726349] = BurialMarker({
    label = L['soa_11_marker_3_label'],
    questDeps = 78026, -- Second Marker
    quest = {
        78027, -- Third Marker
        77578 -- Clue 11 Complete
    }
}) -- Third Marker - OPTIONAL

ohn.nodes[31617167] = BurialMarker({
    label = L['soa_11_marker_4_label'],
    note = L['soa_11_marker_4_note'],
    questDeps = 78027, -- Third Marker
    quest = {
        78028, -- Fourth Marker
        77578 -- Clue 11 Complete
    }
}) -- Fourth Marker - OPTIONAL

ohn.nodes[43404800] = BurialMarker({
    label = L['soa_11_marker_5_label'],
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    note = L['soa_11_marker_5_note'],
    questDeps = 78028, -- Fourth Marker
    quest = {
        78037, -- burned spider webs
        78029, -- Fifth Marker
        77578 -- Clue 11 Complete
    }
}) -- Fifth Marker - OPTIONAL

ohn.nodes[42655099] = SecretsOfAzeroth({
    label = '{item:209061}',
    note = L['soa_11_burial_banner_note'],
    questDeps = 78008, -- A Proper Burial (77865)
    quest = 77578,
    rlabel = Gray(L['soa_11_rlabel']),
    rewards = {
        Achievement({id = 18646, criteria = 11}) -- Whodunnit?
    },
    pois = {POI({43614809})}
}) -- Burial Banner

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 12 -------------------------
-------------------------------------------------------------------------------

val.nodes[47954685] = SecretsOfAzeroth({
    label = '{npc:207696}',
    note = L['soa_12_bobby_note'],
    rlabel = Gray(L['soa_12_rlabel']),
    quest = {
        77897, -- A Special Book -- never changes to true
        77895, -- Hidden, triggerd after turning in 77897
        77579 -- Clue 12 complete
    },
    questAny = true, -- TODO: remove if 77897 is fixed
    questDeps = 77578, -- Clue 11 complete
    rewards = {
        Achievement({id = 18646, criteria = 12}), -- Whodunnit?
        Item({item = 208888}) -- Kirin Tor Contact's Note
    }
}) -- Bobby Carlisle

local AncientTome = Class('AncientTome', SecretsOfAzeroth, {
    label = '{npc:115419}',
    note = L['soa_12_ancient_tome_note']
})

kar.nodes[32294921] = AncientTome({quest = 78050, questDeps = 77895})

kar.nodes[36523717] = AncientTome({quest = 78051, questDeps = 78050})

kar.nodes[47336449] = AncientTome({quest = 78052, questDeps = 78051})

kar.nodes[33265118] = AncientTome({
    quest = 77908,
    questDeps = 78052,
    rewards = {
        Item({item = 208889}) -- Tyr's Legacy
    }
})

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 13 -------------------------
-------------------------------------------------------------------------------

val.nodes[47964686] = SecretsOfAzeroth({
    label = '{npc:207696}',
    note = L['soa_13_bobby_note'],
    rlabel = Gray(L['soa_13_rlabel']),
    quest = {
        77928, -- ![They Are Always Listening]
        77916 -- Hidden, triggerd after turning in 77928
    },
    questAny = true, -- TODO: remove if 77928 is fixed
    questDeps = 77579, -- Clue 12 complete
    rewards = {
        Achievement({id = 18646, criteria = 13}) -- Whodunnit?
    }
}) -- Bobby Carlisle

val.nodes[44186035] = SecretsOfAzeroth({
    label = L['soa_13_great_place_a_label'],
    note = L['soa_13_great_place_a_note'],
    quest = 78053, -- hidden
    questDeps = 77916, -- ![They Are Always Listening]
    rlabel = Gray(L['soa_13_rlabel'])
}) -- Auction House Bill of Sale

val.nodes[73955753] = SecretsOfAzeroth({
    label = L['soa_13_great_place_b_label'],
    note = L['soa_13_great_place_b_note'],
    quest = 78054, -- hidden
    questDeps = 77916, -- ![They Are Always Listening]
    rlabel = Gray(L['soa_13_rlabel'])
}) -- Void Storage Receipt

val.nodes[53042849] = SecretsOfAzeroth({
    label = L['soa_13_great_place_c_label'],
    note = L['soa_13_great_place_c_note'],
    quest = 78055, -- hidden
    questDeps = 77916, -- ![They Are Always Listening]
    rlabel = Gray(L['soa_13_rlabel'])
}) -- Garden Supply Receipt

val.nodes[37643715] = SecretsOfAzeroth({
    label = L['soa_13_great_place_d_label'],
    note = L['soa_13_great_place_d_note'],
    quest = 78056, -- hidden
    questDeps = 77916, -- ![They Are Always Listening]
    rlabel = Gray(L['soa_13_rlabel'])
}) -- Researcher's Note

val.nodes[31637023] = SecretsOfAzeroth({
    label = L['soa_13_great_place_e_label'],
    note = L['soa_13_great_place_e_note'],
    quest = 78057, --- hidden
    questDeps = 77916, -- ![They Are Always Listening]
    rlabel = Gray(L['soa_13_rlabel'])
}) -- Hastily Scrawled Note

val.nodes[46004140] = SecretsOfAzeroth({
    label = L['soa_13_great_place_f_label'],
    note = L['soa_13_great_place_f_note'],
    quest = 78058, --- hidden
    questDeps = 77916, -- ![They Are Always Listening]
    rlabel = Gray(L['soa_13_rlabel']),
    pois = {POI({46944490})} -- Odd Statue
}) -- Note to Kirtha

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 14 -------------------------
-------------------------------------------------------------------------------

val.nodes[47464618] = SecretsOfAzeroth({
    label = '{npc:185562}',
    rlabel = Gray(L['soa_14_rlabel']),
    note = L['soa_14_tithris_note'],
    quest = {
        77951, -- ![A Sphere in Danger]
        77953 -- Hidden Quest for ![A Sphere in Danger]
    },
    questAny = true,
    questDeps = 77580, -- Clue 13 complete
    rewards = {
        Item({item = 208942}) -- Preservationsist's Dispatch Three
    }
}) -- Tithris

tha.nodes[50208100] = SecretsOfAzeroth({
    label = format(L['soa_14_tablet_label'], 1),
    rlabel = Gray(L['soa_14_rlabel']),
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    location = L['in_small_cave'],
    quest = 78108, -- hidden
    questDeps = 77953, -- ![A Sphere in Danger]
    note = L['soa_14_tablet_note'],
    pois = {
        POI({49507970}), -- Buried Object
        Path({50208100, 49507970}) -- Path
    }
}) -- Titan-Inscribed Tablet (1)

tha.nodes[49507970] = SecretsOfAzeroth({
    label = format(L['soa_14_buried_object_label'], 1),
    rlabel = Gray(L['soa_14_rlabel']),
    note = L['soa_14_tablet_note'],
    quest = {
        77954, -- ![A Curious Orb]
        77520 -- Clue 14 complete
    },
    questDeps = 78108, -- hidden
    pois = {
        POI({50208100}), -- Buried Object
        Path({49507970, 50208100}) -- Path
    },
    playerHasItem = {209795, 208944},
    rewards = {
        Item({item = 209795}) -- Piece of the Orb of Rathmus
    }
}) -- Buried Object (1)

tha.nodes[46607760] = SecretsOfAzeroth({
    label = format(L['soa_14_tablet_label'], 2),
    rlabel = Gray(L['soa_14_rlabel']),
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    location = L['in_small_cave'],
    quest = 78109, -- hidden
    questDeps = 77951, -- ![A Sphere in Danger]
    note = L['soa_14_tablet_note'],
    pois = {
        POI({45907970}), -- Buried Object
        Path({46607760, 45907970}) -- Path
    }
}) -- Titan-Inscribed Tablet (2)

tha.nodes[45907970] = SecretsOfAzeroth({
    label = format(L['soa_14_buried_object_label'], 2),
    rlabel = Gray(L['soa_14_rlabel']),
    note = L['soa_14_tablet_note'],
    quest = {
        77954, -- ![A Curious Orb]
        77520 -- Clue 14 complete
    },
    questDeps = {78109}, -- hidden
    pois = {
        POI({46607760}), -- Buried Object
        Path({45907970, 46607760}) -- Path
    },
    playerHasItem = {209797, 208944},
    rewards = {
        Item({item = 209797}) -- Piece of the Orb of Rathmus
    }
}) -- Buried Object (2)

tha.nodes[48707640] = SecretsOfAzeroth({
    label = format(L['soa_14_tablet_label'], 3),
    rlabel = Gray(L['soa_14_rlabel']),
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    location = L['in_small_cave'],
    quest = 78111, -- hidden
    questDeps = 77951, -- ![A Sphere in Danger]
    note = L['soa_14_tablet_note'],
    pois = {
        POI({50207800}), -- Buried Object
        Path({48707640, 50207800}) -- Path
    }
}) -- Titan-Inscribed Tablet (3)

tha.nodes[50207800] = SecretsOfAzeroth({
    label = format(L['soa_14_buried_object_label'], 3),
    rlabel = Gray(L['soa_14_rlabel']),
    note = L['soa_14_tablet_note'],
    quest = {
        77954, -- ![A Curious Orb]
        77520 -- Clue 14 complete
    },
    questDeps = {78111}, -- hidden
    pois = {
        POI({48707640}), -- Buried Object
        Path({50207800, 48707640}) -- Path
    },
    playerHasItem = {209799, 208944},
    rewards = {
        Item({item = 209799}) -- Piece of the Orb of Rathmus
    }
}) -- Buried Object (3)

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: CLUE 15 -------------------------
-------------------------------------------------------------------------------
-- 47334823
val.nodes[45334823] = SecretsOfAzeroth({
    label = '{npc:206864}',
    rlabel = Gray(L['soa_15_rlabel']),
    note = L['soa_15_kathos_note'],
    quest = {
        77959, -- ![A Treacherous Race]
        77957 -- Hidden Quest for ![A Treacherous Race]
    },
    questAny = true,
    questDeps = 77520, -- Clue 14 complete
    rewards = {
        Item({item = 208958}) -- Ancient Tyrhold Artifact Notes
    }
}) -- Preservationist Kathos

local TyrholdStatue = Class('TyrholdStatue', SecretsOfAzeroth, {
    label = L['soa_15_tyrhold_statue_label'],
    rlabel = Gray(L['soa_15_rlabel']),
    note = L['soa_15_tyrhold_statue_note'],
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    questDeps = 77959 -- ![A Treacherous Race]
}) -- Tyrhold Statue

tha.nodes[59906100] = TyrholdStatue({quest = 77964})
tha.nodes[57106440] = TyrholdStatue({quest = 77960})
tha.nodes[57106290] = TyrholdStatue({quest = 77961})
tha.nodes[57906180] = TyrholdStatue({quest = 77962})
tha.nodes[57906050] = TyrholdStatue({quest = 77963})
tha.nodes[58005690] = TyrholdStatue({quest = 77965})
tha.nodes[57905600] = TyrholdStatue({quest = 77966})
tha.nodes[59805640] = TyrholdStatue({quest = 77967})
-- all statues completed quest 77974

tha.nodes[61205870] = SecretsOfAzeroth({
    label = L['soa_15_tyrhold_forge_label'],
    rlabel = Gray(L['soa_15_rlabel']),
    note = L['soa_15_tyrhold_forge_note'],
    questDeps = 77974, -- all statues completed
    quest = 77975
}) -- Tyrhold Forge

tha.nodes[59836226] = SecretsOfAzeroth({
    label = '{item:208970}',
    location = format(L['soa_15_broken_urn_location'], 1),
    note = format(L['soa_15_broken_urn_note'], 208970),
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975, -- hidden
    quest = 77970, -- hidden
    playerHasItem = {
        208970, -- Titan Energy Core
        208969 -- Titan Energy Cube
    },
    rewards = {
        Item({item = 208970}) -- Titan Energy Core
    }
}) -- Titan Energy Core

tha.nodes[59945468] = SecretsOfAzeroth({
    label = '{item:208971}',
    location = format(L['soa_15_broken_urn_location'], 1),
    note = format(L['soa_15_broken_urn_note'], 208971),
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975, -- hidden
    quest = 77970, -- hidden
    playerHasItem = {
        208971, -- Titan Cube Housing
        208969 -- Titan Energy Cube
    },
    rewards = {
        Item({item = 208971}) -- Titan Cube Housing
    }
}) -- Titan Cube Housing

tha.nodes[59686263] = SecretsOfAzeroth({
    label = '{item:208973}',
    location = format(L['soa_15_broken_urn_location'], 3),
    note = format(L['soa_15_broken_urn_note'], 208973),
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975, -- hidden
    quest = 77971, -- hidden
    playerHasItem = {208973},
    rewards = {
        Item({item = 208973}) -- Large Titan Capacitor
    }
}) -- Large Titan Capacitor

tha.nodes[59725486] = SecretsOfAzeroth({
    label = '{item:208960}',
    location = format(L['soa_15_broken_urn_location'], 3),
    note = format(L['soa_15_broken_urn_note'], 208960),
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975, -- hidden
    quest = 77968, -- hidden
    playerHasItem = {208960},
    rewards = {
        Item({item = 208960}) -- Titan Focusing Crystal
    }
}) -- Titan Focusing Crystal

tha.nodes[61655508] = SecretsOfAzeroth({
    label = '{item:208966}',
    location = format(L['soa_15_broken_urn_location'], 5),
    note = format(L['soa_15_broken_urn_note'], 208966),
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975, -- hidden
    quest = 77969, -- hidden
    playerHasItem = {
        208966, -- Titan Block Key Fragment
        208965 -- Titan Block Key
    },
    rewards = {
        Item({item = 208966}) -- Titan Block Key Fragment
    }
}) -- Titan Block Key Fragment

tha.nodes[61966192] = SecretsOfAzeroth({
    label = '{item:208967}',
    location = format(L['soa_15_broken_urn_location'], 5),
    note = format(L['soa_15_broken_urn_note'], 208967),
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975, -- hidden
    quest = 77969, -- hidden
    playerHasItem = {
        208967, -- Titan Block Key Fragment
        208965 -- Titan Block Key
    },
    rewards = {
        Item({item = 208967}) -- Titan Block Key Fragment
    }
}) -- Titan Block Key Fragment

local TitanPowerRelay = Class('TitanPowerRelay', SecretsOfAzeroth, {
    label = L['soa_15_titan_power_relay_label'],
    rlabel = Gray(L['soa_15_rlabel']),
    questDeps = 77975 -- hidden
})

tha.nodes[59335688] = TitanPowerRelay({
    quest = 77968, -- hidden
    note = format(L['soa_15_tpr_note'], 208960) -- Titan Focusing Crystal
}) -- Titan Power Relay

tha.nodes[59536058] = TitanPowerRelay({
    quest = 77970, -- hidden
    note = format(L['soa_15_tpr_note'], 208969) -- Titan Power Cube
}) -- Titan Power Relay

tha.nodes[61036235] = TitanPowerRelay({
    quest = 77971, -- hidden
    note = format(L['soa_15_tpr_note'], 208973) -- Titan Capacitor
}) -- Titan Power Relay

tha.nodes[61045504] = TitanPowerRelay({
    quest = 77969, -- hidden
    note = format(L['soa_15_tpr_note'], 208965) -- Titan Block Key
}) -- Titan Power Relay
-- all items inserted quest 77973

tha.nodes[60165874] = SecretsOfAzeroth({
    label = L['soa_15_orb_label'],
    location = L['soa_15_orb_location'],
    rlabel = Gray(L['soa_15_rlabel']),
    quest = {
        77977, -- ![An Ominous Artifact]
        77308 -- Clue 15 complete
    },
    questDeps = 77973, -- hidden
    note = L['soa_15_orb_note'],
    rewards = {
        Achievement({id = 18646, criteria = 15}), -- Whodunnit?
        Mount({item = 208152, id = 1794}) -- Pattie
    }
}) -- Orb Location

-------------------------------------------------------------------------------
-------------------------- MOUNT: MIMIRON'S JUMPJETS --------------------------
-------------------------------------------------------------------------------

local MJJ_PARTS = {
    [1] = {
        coordinates = 59187842,
        item = 208984, -- First Booster Part
        map = cst, -- Cape of Stranglethorn
        note = L['soa_mjj_part1_note'],
        parentMapID = 13, -- Eastern Kingdoms
        requires = REQUIREMENT_TORCH_OF_PYRRETH
    },
    [2] = {
        coordinates = 49982594,
        item = 209781, -- Second Booster Part
        map = fel, -- Felwood
        note = L['soa_mjj_part2_note'],
        parentMapID = 12 -- Kalimdor
    },
    [3] = { -- Hidden Quest 78100?
        coordinates = 54825217,
        item = 209055, -- Third Booser Part
        map = bla, -- Blasted Lands
        note = L['soa_mjj_part3_note'],
        parentMapID = 13, -- Eastern Kingdoms
        requires = REQUIREMENT_TORCH_OF_PYRRETH
    }
}

local MJJ_List = Class('MJJ_List', ns.node.Collectible, {
    label = '{item:210022}',
    icon = 'peg_bl',
    scale = 2.0,
    group = ns.groups.SECRETS_OF_AZEROTH,
    rewards = {Mount({id = 1813, item = 210022})}, -- Mimiron's Jumpjets
    pois = {POI({36466204})} -- Arcane Forge
}) -- Mimiron's Jumpjets List

function MJJ_List.getters:note()
    local note = L['soa_mjj_list_note'] .. '\n'
    for num, part in ipairs(MJJ_PARTS) do
        local mName = C_Map.GetMapInfo(part.map.id).name
        local pName = C_Map.GetMapInfo(part.parentMapID).name
        local done = ItemStatus(part.item, num)
        note = note ..
                   format('\n%s {item:%d} %s (%s)', done, part.item, mName,
                pName)
    end
    return note
end

val.nodes[87002500] = MJJ_List()

for num, part in ipairs(MJJ_PARTS) do
    part.map.nodes[part.coordinates] = SecretsOfAzeroth({
        label = format('{item:%d}', part.item),
        rlabel = Gray(format('(%d/3)', num)),
        note = part.note,
        rewards = {Item({item = part.item})},
        playerHasItem = {part.item},
        requires = {part.requires} or nil,
        parent = {id = part.parentMapID, note = part.note},
        IsCompleted = function(self)
            if ns.PlayerHasItem(part.item) then return true end
            if select(11, C_MountJournal.GetMountInfoByID(1813)) then
                return true
            end
            return ns.node.Node.IsCompleted(self)
        end
    })
end

-------------------------------------------------------------------------------
---------------------------- COMMUNITY RUMOR MILL -----------------------------
-------------------------------------------------------------------------------

local BURIED_SATCHELS = {
    [1] = {
        coordinates = 55245943,
        location = L['bs_epl_location'],
        map = epl, -- Eastern Plaguelands
        parentMapID = 13, -- Eastern Kingdoms
        quest = 77289
    },
    [2] = {
        coordinates = 42214805,
        location = L['bs_fel_location'],
        map = fel, -- Felwood
        parentMapID = 12, -- Kalimdor
        quest = 77288
    },
    [3] = {
        coordinates = 42753063,
        location = L['bs_tho_location'],
        map = tho, -- Thousand Needles
        parentMapID = 12, -- Kalimdor
        pois = {POI({44003730})},
        quest = 77291
    },
    [4] = {
        coordinates = 35314895,
        location = L['bs_smv_location'],
        map = smv, -- Shadowmoon Valley
        parentMapID = 572, -- Draenor
        quest = 77292
    },
    [5] = {
        coordinates = 26246854,
        location = L['bs_net_location'],
        map = net, -- Netherstorm
        parentMapID = 101, -- Outland
        quest = 77290,
        requires = REQUIREMENT_TORCH_OF_PYRRETH
    },
    [6] = {
        coordinates = 56812143,
        location = L['bs_vfw_location'],
        map = vfw, -- Vally of the Four Winds
        parentMapID = 424, -- Pandaria
        quest = 77293
    },
    [7] = {
        coordinates = 25207140,
        location = L['bs_tas_location'],
        map = tas, -- The Azure Span
        parentMapID = 1978, -- Dragon Isles
        quest = 77296,
        requires = REQUIREMENT_TORCH_OF_PYRRETH
    },
    [8] = {
        coordinates = 63907260,
        location = format(L['bs_dbt_location'], L['bs_emerald_dragonshrine']),
        map = dbt, -- Dragonblight
        parentMapID = 113, -- Northrend
        quest = 77294
    },
    [9] = {
        coordinates = 46055068,
        location = L['bs_bar_location'],
        map = bar, -- Northern Barrens
        parentMapID = 12, -- Kalimdor
        quest = 77297
    },
    [10] = {
        coordinates = 64675545,
        location = L['bs_bar_location'],
        map = bla, -- Blasted Lands
        parentMapID = 13, -- Eastern Kingdoms
        quest = 77298,
        requires = REQUIREMENT_TORCH_OF_PYRRETH
    },
    [11] = {
        coordinates = 57902636,
        location = L['bs_nag_location'],
        map = nag, -- Nagrand
        parentMapID = 101, -- Outland
        quest = 77299
    },
    [12] = {
        map = gri, -- Grizzly Hills
        parentMapID = 113, -- Northrend
        quest = 77300,
        factionData = {
            alliance = {
                npc = 27414, -- Gordun
                coordinates = 36803570,
                pois = {POI({20208130})}

            },
            horde = {
                npc = 27425, -- Darrok
                coordinates = 35103470,
                pois = {POI({10807490})}
            }
        }
    },
    [13] = {
        coordinates = 53358750,
        location = L['bs_hmt_location'],
        map = hmt, -- Highmountain
        parentMapID = 619, -- Broken Isles
        quest = 78208
    },
    [14] = {
        coordinates = 73203959,
        location = format(L['bs_dbt_location'], L['bs_bronze_dragonshrine']),
        map = dbt, -- Dragonblight
        parentMapID = 113, -- Northrend
        quest = 77302
    },
    [15] = {
        coordinates = 38715496,
        location = L['bs_tli_location'],
        map = tli, -- Timeless Isle
        parentMapID = 424, -- Pandaria
        quest = 77301
    },
    [16] = {
        coordinates = 68797338,
        location = L['bs_wpl_location'],
        map = wpl, -- Western Plaguelands
        parentMapID = 13, -- Eastern Kingdoms
        quest = 78207
    },
    [17] = {
        coordinates = 74568613,
        location = L['bs_tir_location'],
        map = tir, -- Tiragarde Sound
        parentMapID = 876, -- Kul Tiras
        quest = 77295
    }
}

-------------------------- BURIED SATCHEL LIST NODE ---------------------------

local BuriedSatchelList = Class('BuriedSatchelList', SecretsOfAzeroth, {
    label = '{item:208142}',
    requires = REQUIREMENT_TORCH_OF_PYRRETH,
    icon = 'peg_rd',
    sublabel = L['buried_satchel_sublabel'],
    rlabel = Gray('(' .. #BURIED_SATCHELS .. ')'),
    rewards = {
        Achievement({id = 18644, criteria = {qty = true, id = 1}}), -- Community Rumor Mill
        Pet({npc = 208643, id = 4263}) -- Tobias
    }
}) -- Buried Satchel List

function BuriedSatchelList.getters:note()
    local note = L['buried_satchel_note'] .. '\n'
    for num, satchel in ipairs(BURIED_SATCHELS) do
        local mName = C_Map.GetMapInfo(satchel.map.id).name
        local pName = C_Map.GetMapInfo(satchel.parentMapID).name
        local qDone = QuestStatus(satchel.quest, num, false)
        note = note .. format('%s %s (%s)', qDone, mName, pName)
    end
    return note
end

function BuriedSatchelList.getters:quest()
    local questIDs = {}
    for _, satchel in ipairs(BURIED_SATCHELS) do
        table.insert(questIDs, satchel.quest)
    end
    return questIDs
end

val.nodes[87002100] = BuriedSatchelList()

---------------------------- BURIED SATCHEL NODES -----------------------------

local BuriedSatchel = Class('BuriedSatchel', SecretsOfAzeroth, {
    label = '{item:208142}',
    note = L['buried_satchel_note'],
    rewards = {
        Achievement({id = 18644, criteria = {qty = true, id = 1}}), -- Community Rumor Mill
        Pet({npc = 208643, id = 4263}) -- Tobias
    }
}) -- Buried Satchel

for num, satchel in ipairs(BURIED_SATCHELS) do
    if num ~= 12 then
        satchel.map.nodes[satchel.coordinates] = BuriedSatchel({
            location = satchel.location,
            quest = satchel.quest,
            rlabel = Gray(format('(%d/%d)', num, #BURIED_SATCHELS)),
            requires = satchel.requires or nil,
            pois = satchel.pois or nil,
            parent = {id = satchel.parentMapID}
        })
    end
end

local GH_A = BURIED_SATCHELS[12].factionData.alliance
gri.nodes[GH_A.coordinates] = BuriedSatchel({
    faction = 'Alliance',
    location = format(L['bs_gri_location'], GH_A.npc),
    pois = GH_A.pois,
    quest = BURIED_SATCHELS[12].quest,
    rlabel = Gray(format('(%d/%d)', 12, #BURIED_SATCHELS)),
    parent = BURIED_SATCHELS[12].parentMapID
}) -- Grizzly Hills Satchel (Alliance)

local GH_H = BURIED_SATCHELS[12].factionData.horde
gri.nodes[GH_H.coordinates] = BuriedSatchel({
    faction = 'Horde',
    location = format(L['bs_gri_location'], GH_H.npc),
    pois = GH_H.pois,
    quest = BURIED_SATCHELS[12].quest,
    rlabel = Gray(format('(%d/%d)', 12, #BURIED_SATCHELS)),
    parent = BURIED_SATCHELS[12].parentMapID
}) -- Grizzly Hills Satchel (Horde)
