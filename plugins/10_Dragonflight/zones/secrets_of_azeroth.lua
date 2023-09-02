-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Toy = ns.reward.Toy

local POI = ns.poi.POI
local Path = ns.poi.Path

-------------------------------------------------------------------------------

local bor = ns.maps[114] or Map({id = 114, settings = true}) -- Borean Tundra
local ohn = ns.maps[2023] or Map({id = 2023, settings = true}) -- Ohn'ahran Plains
local tas = ns.maps[2024] or Map({id = 2024, settings = true}) -- The Azure Span
local tha = ns.maps[2025] or Map({id = 2025, settings = true}) -- Thaldraszus
local val = ns.maps[2112] or Map({id = 2112, settings = true}) -- Valdrakken
local zar = ns.maps[2133] or Map({id = 2133, settings = true}) -- Zaralek Cavern

-------------------------------------------------------------------------------

local SecretsOfAzeroth = Class('SecretsOfAzeroth', ns.node.Node, {
    icon = 'peg_gn',
    scale = 2.0,
    group = ns.groups.SECRETS_OF_AZEROTH
}) -- Secrets of Azeroth

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: DAY ONE -------------------------
-------------------------------------------------------------------------------

val.nodes[47314824] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_day01_kathos_note_a'] .. '\n\n' ..
        L['soa_day01_kathos_note_b'] .. '\n\n' .. L['soa_day01_kathos_note_c'],
    quest = {77204, 77203},
    rlabel = ns.color.Gray(L['soa_day01_rlabel']),
    rewards = {
        Achievement({id = 18646, criteria = 1}), -- Whodunnit?
        Item({item = 208055, note = '1x'}), -- A Clue: The Golden Chalice
        Item({item = 208056, note = '1x'}), -- Golden Chalice
        Item({item = 207105, note = '1x'}) -- Tuskarr Ceremonial Spear
    }
}) -- Preservationist Kathos

val.nodes[58895410] = SecretsOfAzeroth({
    label = '{item:208056}',
    note = L['soa_day01_kathos_note_b'],
    quest = 77204,
    rlabel = ns.color.Gray(L['soa_day01_rlabel']),
    rewards = {
        Item({item = 208056, note = '1x'}) -- Golden Chalice
    }
}) -- Golden Chalice

tas.nodes[12404933] = SecretsOfAzeroth({
    label = '{npc:186448}',
    note = L['soa_day01_shomko_note_a'] .. '\n\n' ..
        L['soa_day01_shomko_note_b'],
    quest = 76987,
    rlabel = ns.color.Gray(L['soa_day01_rlabel']),
    rewards = {
        Item({item = 207580, note = '1x'}) -- Shomko's Unyidling Spear
    }
}) -- Elder Poa

bor.nodes[33605843] = SecretsOfAzeroth({
    label = '{item:207580}',
    note = L['soa_day01_shomko_note_b'] .. '\n\n' ..
        L['soa_day01_shomko_note_c'],
    quest = 76987,
    rlabel = ns.color.Gray(L['soa_day01_rlabel']),
    rewards = {
        Achievement({id = 18642}), -- The Inquisitive
        Achievement({id = 18646, criteria = 2}) -- Whodunnit?
    }
}) -- Shomko's Unyielding Spear

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: DAY TWO -------------------------
-------------------------------------------------------------------------------

local Bobby = Class('Bobby', SecretsOfAzeroth, {
    label = '{npc:207696}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 77237, -- Completed once Tricked-Out Thinking Cap is received
    rewards = {
        Achievement({id = 18645, criteria = 1}), -- Tools of the Trade
        Toy({item = 206696}) -- Tricked-Out Thinking Cap
    }
}) -- Bobby Carlisle

function Bobby.getters:note()
    local function status(id, itemsNeed)
        local itemsHave = GetItemCount(id, true);
        if ns.PlayerHasItem(id, itemsNeed) then
            return ns.status.Green(itemsHave .. '/' .. itemsNeed)
        else
            return ns.status.Red(itemsHave .. '/' .. itemsNeed)
        end
    end

    local note = L['soa_day02_bobby_note_a']
    note = note .. '\n\n' .. status(207956, 1) .. ' ' ..
               L['soa_day02_bobby_note_b'] -- Thought Calculating Apparatus
    note = note .. '\n\n' .. status(207813, 1) .. ' ' ..
               L['soa_day02_bobby_note_c'] -- Downey Helmet Liner
    note = note .. '\n\n' .. status(207816, 1) .. ' ' ..
               L['soa_day02_bobby_note_d'] -- Crystal Ocular Lenses
    return note .. '\n\n' .. L['soa_day02_bobby_note_e']
end

val.nodes[47974679] = Bobby()

val.nodes[26675389] = SecretsOfAzeroth({
    label = '{npc:207697}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 77237, -- Completed once Tricked-Out Thinking Cap is received
    note = L['soa_day02_fangli_note_a'],
    rewards = {
        Achievement({id = 18645, criteria = 1}), -- Tools of the Trade
        Toy({item = 206696}) -- Tricked-Out Thinking Cap
    }
}) -- Fangli Hoot

local FangliClue = Class('FangliClue', SecretsOfAzeroth, {
    label = L['soa_day02_fangl_clue_label'],
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = {76504, 76505, 77513}, -- TODO: NOT SURE WHICH ONE IS CORRECT
    requires = ns.requirement.Toy(206696), -- Tricked-Out Thinking Cap
    fgroup = 'fgroup_fangli',
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

val.nodes[26605390] = FangliClue({note = L['soa_day02_fangli_clue_a']})
val.nodes[09975650] = FangliClue({note = L['soa_day02_fangli_clue_b']})
val.nodes[29206270] = FangliClue({note = L['soa_day02_fangli_clue_c']})
val.nodes[39806440] = FangliClue({note = L['soa_day02_fangli_clue_d']})
val.nodes[36207120] = FangliClue({note = L['soa_day02_fangli_clue_e']})
val.nodes[44205840] = FangliClue({note = L['soa_day02_fangli_clue_f']})
val.nodes[38004920] = FangliClue({note = L['soa_day02_fangli_clue_g']})
val.nodes[55204330] = FangliClue({note = L['soa_day02_fangli_clue_h']})
val.nodes[64605370] = FangliClue({note = L['soa_day02_fangli_clue_i']})

------------ THUNDERSPINE NEST <==> THOUGHT CALCULATING APPARATUS -------------

local Erugosa = Class('Erugosa', SecretsOfAzeroth, {
    label = '{npc:185556}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    rewards = {
        Item({item = 207956, note = '10x'}) -- Thunderspine Nest
    }
}) -- Erugosa <Cooking Trainer>

function Erugosa.getters:note()
    local function status(id, itemsNeed)
        local itemsHave = GetItemCount(id, true);
        if ns.PlayerHasItem(id, itemsNeed) then
            return ns.status.Green(itemsHave .. '/' .. itemsNeed)
        else
            return ns.status.Red(itemsHave .. '/' .. itemsNeed)
        end
    end

    local note = L['soa_day02_erugosa_note_a']
    note = note .. '\n\n' .. status(198441, 5) .. ' ' ..
               L['soa_day02_erugosa_note_b'] -- Thunderspine Tenders
    note = note .. '\n\n' .. status(201419, 5) .. ' ' ..
               L['soa_day02_erugosa_note_c'] -- Latticed Stinkhorn
    note = note .. '\n\n' .. status(205693, 5) .. ' ' ..
               L['soa_day02_erugosa_note_d'] -- Apexis Asiago
    return note
end

val.nodes[46514624] = Erugosa()

ohn.nodes[85182347] = SecretsOfAzeroth({
    label = '{npc:194152}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    note = L['soa_day02_erugosa_note_b'],
    rewards = {
        Item({item = 198441, note = '5x'}) -- Thunderspine Tenders
    }
}) -- Agurahl the Butcher <Meat Vendor>

val.nodes[28996516] = SecretsOfAzeroth({
    label = '{npc:196729}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    note = L['soa_day02_erugosa_note_c'],
    rewards = {
        Item({item = 201419, note = '5x'}) -- Apexis Asiago
    }
}) -- Gorgonzormu <Cheesemonger>

zar.nodes[54085666] = SecretsOfAzeroth({
    label = '{npc:204371}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    note = L['soa_day02_erugosa_note_d'],
    rewards = {
        Item({item = 205693, note = '5x'}) -- Latticed Stinkhorn
    }
}) -- Sniktak <Enterprising Mycologist>

local Clinkyclick = Class('Clinkyclick', SecretsOfAzeroth, {
    label = '{npc:185548}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    rewards = {
        Item({item = 207814, note = '1x'}) -- Thought Calculating Apparatus
    }
}) -- Clinkyclick Shatterboom <Engineering Trainer>

function Clinkyclick.getters:note()
    local function status(id, itemsNeed)
        local itemsHave = GetItemCount(id, true);
        if ns.PlayerHasItem(id, itemsNeed) then
            return ns.status.Green(itemsHave .. '/' .. itemsNeed)
        else
            return ns.status.Red(itemsHave .. '/' .. itemsNeed)
        end
    end

    local note = L['soa_day02_clinkyclick_note_a']
    note = note .. '\n\n' .. status(207956, 5) .. ' ' ..
               L['soa_day02_clinkyclick_note_b'] -- Thunderspine Nest
    return note
end

val.nodes[42244866] = Clinkyclick()

-------------------- FRESH TYRANHA <==> DOWNY HELMET LINER --------------------

local Gryffin = Class('Gryffin', SecretsOfAzeroth, {
    label = '{npc:197781}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    rewards = {
        Item({item = 207813, note = '1x'}) -- Downy Helmet Liner
    }
}) -- Gryffin <Clinkyclick's Assistant>

function Gryffin.getters:note()
    local function status(id, itemsNeed)
        local itemsHave = GetItemCount(id, true);
        if ns.PlayerHasItem(id, itemsNeed) then
            return ns.status.Green(itemsHave .. '/' .. itemsNeed)
        else
            return ns.status.Red(itemsHave .. '/' .. itemsNeed)
        end
    end

    local note = L['soa_day02_gryffin_note_a']
    note = note .. '\n\n' .. status(207812, 1) .. ' ' ..
               L['soa_day02_gryffin_note_b'] -- Fresh Tyranha
    return note
end

val.nodes[42474937] = Gryffin()

tha.nodes[33556796] = SecretsOfAzeroth({
    label = '{npc:191451}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    note = L['soa_day02_gryffin_note_b'],
    rewards = {
        Item({item = 207812, note = '1x'}) -- Fresh Tyranha
    }
}) -- Hungering Tyranha

--------------------- BAR TAB <==> CRYSTAL OCULAR LENSES ----------------------

val.nodes[39046182] = SecretsOfAzeroth({
    label = '{npc:198586}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    note = L['soa_day02_shakey_note_a'] .. '\n\n' ..
        L['soa_day02_shakey_note_b'],
    rewards = {
        Item({item = 207816, note = '1x'}) -- Crystal Ocular Lenses
    }
}) -- Shakey Flatlap <Jewelcrafting Supplies>

val.nodes[47334110] = SecretsOfAzeroth({
    label = '{npc:192814}',
    rlabel = ns.color.Gray(L['soa_day02_rlabel']),
    quest = 78202,
    note = L['soa_day02_shakey_note_b'] .. '\n\n' ..
        L['soa_day02_shakey_note_c']
}) -- Kritha

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
