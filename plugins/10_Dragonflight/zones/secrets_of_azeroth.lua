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

-------------------------------------------------------------------------------

local val = ns.maps[2112] -- Valdrakken
local tas = ns.maps[2024] -- The Azure Span
local bor = ns.maps[114] or Map({id = 114, settings = true}) -- Borean Tundra

local tha = ns.maps[2025] -- Thaldraszus
local ohn = ns.maps[2023] -- Ohn'ahran Plains
local zar = ns.maps[2133]

-------------------------------------------------------------------------------

local SecretsOfAzeroth = Class('SecretsOfAzeroth', ns.node.Node, {
    icon = 'peg_gn',
    scale = 2.0,
    group = ns.groups.SECRETS_OF_AZEROTH
})

-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: DAY ONE -------------------------
-------------------------------------------------------------------------------

L['soa_day_1_note_1'] =
    'Speak with {npc:206864} to pick up {quest:77203} then talk to her again to receive a {item:208054} containing {item:208055} and {item:208056}.\n\n{note:Next Location: {location:Valdrakken Treasury Hoard} (bank) here in {location:Valdrakken}.}'
L['soa_day_1_note_2'] =
    'Place the {item:208056} on the pile of gold.\n\n{note:Next Location: {location:The Roasted Ram} here in {location:Valdrakken}.}'
L['soa_day_1_note_3'] =
    'Once you have completed {quest:77203} you will recieve {item:207105}.\n\n{note:Next Location: {location:Iskaara} in {location:The Azure Span}.}'
L['soa_day_1_note_4'] =
    'Speak with {npc:186448} at {location:The Filled Bowl} in {location:Iskaara} to receive {item:207580}.\n\n{note:Next Location: {location:Riplash Strand:} in {location:Borean Tundra} in {location:Northrend}.}'
L['soa_day_1_note_5'] =
    'Place the {item:207580} on the altar to complete this clue! Be sure to stick around and kill {npc:} to receive {item:207594}.'

val.nodes[47314824] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_day_1_note_1'],
    quest = 77204, -- hidden
    rlabel = ns.color.Gray('(1/5)'),
    rewards = {
        Item({item = 208055}), -- A Clue: The Golden Chalice
        Item({item = 208056}) -- Golden Chalice
    }
}) -- Preservationist Kathos

val.nodes[58895410] = SecretsOfAzeroth({
    label = '{item:208056}',
    note = L['soa_day_1_note_2'],
    quest = 77204, -- hidden
    rlabel = ns.color.Gray('2/5'),
    rewards = {
        Item({item = 208056}) -- Golden Chalice
    }
}) -- Golden Chalice

val.nodes[47314825] = SecretsOfAzeroth({
    label = '{npc:206864}',
    note = L['soa_day_1_note_3'],
    quest = 77203, -- hidden
    rlabel = ns.color.Gray('(3/5)'),
    rewards = {
        Achievement({id = 18646, criteria = 1}), -- Whodunnit?
        Item({item = 207105}) -- Tuskarr Ceremonial Spear
    }
}) -- Preservationist Kathos

tas.nodes[12404933] = SecretsOfAzeroth({
    label = '{npc:186448}',
    note = L['soa_day_1_note_4'],
    quest = 76987, -- hidden
    rlabel = ns.color.Gray('(4/5)'),
    rewards = {
        Item({item = 207580}) -- Shomko's Unyielding Spear
    }
}) -- Elder Poa

bor.nodes[33605843] = SecretsOfAzeroth({
    label = '{item:207580}',
    note = L['soa_day_1_note_5'],
    quest = 76987, -- hidden
    rlabel = ns.color.Gray('(5/5)'),
    rewards = {
        Achievement({id = 18642}), -- The Inquisitive
        Achievement({id = 18646, criteria = 2}) -- Whodunnit?
    }
}) -- Shomko's Unyielding Spear








-------------------------------------------------------------------------------
------------------------- SECRETS OF AZEROTH: DAY TWO -------------------------
-------------------------------------------------------------------------------

L['soa_day2_bobby_note_a'] = 'Speak with {npc:207696} to recieve {item:207802}. You\'ll need to build {item:207827} by collecting various pieces:'
L['soa_day2_bobby_note_b'] = 'Trade 5x {item:207956} with {npc:185548} for {item:207814} in {location:Valdrakken}.'
L['soa_day2_bobby_note_c'] = 'Trade 1x {item:207812} with {npc:197781} for {item:207813} in {location:Valdrakken}.'
L['soa_day2_bobby_note_d'] = 'Receive 1x {item:207816} from {npc:198586} after paying his bar tab in {location:Valdrakken}.'
L['soa_day2_bobby_note_e'] = 'Combine the pieces to recieve {item:207827} and begin {quest:77237} for {npc:207697} in {location:Valdrakken}.'

L['soa_day2_fangli_note_a'] = 'Speak with {npc:207697} to complete {quest:77237} and recieve {item:206696}.'

local Bobby = Class('Bobby', SecretsOfAzeroth, {
    label = '{npc:207696}',
    rlabel = ns.color.Gray('(1/2)'),
    fgroup = 'tricked-out-thinking-cap',
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

    local note = L['soa_day2_bobby_note_a']
    note = note .. '\n\n' .. status(207956, 1) .. ' ' .. L['soa_day2_bobby_note_b'] -- Thought Calculating Apparatus
    note = note .. '\n\n' .. status(207813, 1) .. ' ' .. L['soa_day2_bobby_note_c'] -- Downey Helmet Liner
    note = note .. '\n\n' .. status(207816, 1) .. ' ' .. L['soa_day2_bobby_note_d'] -- Crystal Ocular Lenses
    return note .. '\n\n' .. L['soa_day2_bobby_note_e']
end

val.nodes[47974679] = Bobby()

val.nodes[26675389] = SecretsOfAzeroth({
    label = '{npc:207697}',
    rlabel = ns.color.Gray('(2/2)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 77237, -- Completed once Tricked-Out Thinking Cap is received
    note = L['soa_day2_fangli_note_a'],
    rewards = {
        Achievement({id = 18645, criteria = 1}), -- Tools of the Trade
        Toy({item = 206696}) -- Tricked-Out Thinking Cap
    }
}) -- Fangli Hoot

------------ THUNDERSPINE NEST <==> THOUGHT CALCULATING APPARATUS -------------

L['soa_day2_erugosa_note_a'] = 'Speak with {npc:185556} to receieve {item:208416}. You\'ll need to collect the following items for her:'
L['soa_day2_erugosa_note_b'] = 'Purchase 5x {item:198441} from {npc:194152} in {location:Timberstep Outpost} in {location:Ohn\'nahran Plains}.'
L['soa_day2_erugosa_note_c'] = 'Purchase 5x {item:201419} from {npc:196729} in {location:Valdrakken} in {location:Thaldraszus}.'
L['soa_day2_erugosa_note_d'] = 'Purchase 5x {item:205693} from {npc:204371} in {location:Loamm} in {location:Zaralek Cavern}.'

L['soa_day2_clinkyclick_note_a'] = 'Speak with {npc:185548} to receive {item:207814}. You\'ll need:'
L['soa_day2_clinkyclick_note_b'] = 'Receive 10x {item:207956} from {npc:185556} in {location:The Roasted Ram} in {location:Valdrakken}.'

local Erugosa = Class('Erugosa', SecretsOfAzeroth, {
    label = '{npc:185556}',
    rlabel = ns.color.Gray('(1/5)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
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

    local note = L['soa_day2_erugosa_note_a']
    note = note .. '\n\n' .. status(198441, 5) .. ' ' .. L['soa_day2_erugosa_note_b'] -- Thunderspine Tenders
    note = note .. '\n\n' .. status(201419, 5) .. ' ' .. L['soa_day2_erugosa_note_c'] -- Latticed Stinkhorn
    note = note .. '\n\n' .. status(205693, 5) .. ' ' .. L['soa_day2_erugosa_note_d'] -- Apexis Asiago
    return note
end

val.nodes[46514624] = Erugosa()

ohn.nodes[85182347] = SecretsOfAzeroth({
    label = '{npc:194152}',
    rlabel = ns.color.Gray('(2/5)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
    note = L['soa_day2_erugosa_note_b'],
    rewards = {
        Item({item = 198441, note = '5x'}) -- Thunderspine Tenders
    }
}) -- Agurahl the Butcher <Meat Vendor>

val.nodes[28996516] = SecretsOfAzeroth({
    label = '{npc:196729}',
    rlabel = ns.color.Gray('(3/5)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
    note = L['soa_day2_erugosa_note_c'],
    rewards = {
        Item({item = 201419, note = '5x'}) -- Apexis Asiago
    }
}) -- Gorgonzormu <Cheesemonger>

zar.nodes[54085666] = SecretsOfAzeroth({
    label = '{npc:204371}',
    rlabel = ns.color.Gray('(4/5)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
    note = L['soa_day2_erugosa_note_d'],
    rewards = {
        Item({item = 205693, note = '5x'}) -- Latticed Stinkhorn
    }
}) -- Sniktak <Enterprising Mycologist>

local Clinkyclick = Class('Clinkyclick', SecretsOfAzeroth, {
    label = '{npc:185548}',
    rlabel = ns.color.Gray('(5/5)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
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

    local note = L['soa_day2_clinkyclick_note_a']
    note = note .. '\n\n' .. status(207956, 5) .. ' ' .. L['soa_day2_clinkyclick_note_b'] -- Thunderspine Nest
    return note
end

val.nodes[42244866] = Clinkyclick()

-------------------- FRESH TYRANHA <==> DOWNY HELMET LINER --------------------

L['soa_day2_gryffin_note_a'] = 'Speak with {npc:197781} to receive {item:207813}. You\'ll need to collect:'
L['soa_day2_gryffin_note_b'] = 'Loot 1x {item:207812} by killing {npc:191451} in {location:The Cascades} in {location:Thaldraszus}.'

local Gryffin = Class('Gryffin', SecretsOfAzeroth, {
    label = '{npc:197781}',
    rlabel = ns.color.Gray('(1/2)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
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

    local note = L['soa_day2_gryffin_note_a']
    note = note .. '\n\n' .. status(207812, 1) .. ' ' .. L['soa_day2_gryffin_note_b'] -- Fresh Tyranha
    return note
end

val.nodes[42474937] = Gryffin()

tha.nodes[33556796] = SecretsOfAzeroth({
    label = '{npc:191451}',
    rlabel = ns.color.Gray('(2/2)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
    note = L['soa_day2_gryffin_note_b'],
    rewards = {
        Item({item = 207812, note = '1x'}) -- Fresh Tyranha
    }
}) -- Hungering Tyranha

--------------------- BAR TAB <==> CRYSTAL OCULAR LENSES ----------------------

L['soa_day2_shakey_note_a'] = 'Speak with {npc:198586} to receive {item:207816}.'
L['soa_day2_shakey_note_b'] = 'Pay {npc:198586}\'s bar tab of ' .. GetCoinTextureString(3464358) .. ' at {location:The Dragon\'s Hoard} in {location:Valdrakken}.'
L['soa_day2_shakey_note_c'] = 'Enter {location:The Dragon\'s Hoard} through the secret entrance by {emote:/bow} at the {object:Odd Statue} at the back of {location:The Roasted Ram}.'

val.nodes[39046182] = SecretsOfAzeroth({
    label = '{npc:198586}',
    rlabel = ns.color.Gray('(1/2)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
    note = L['soa_day2_shakey_note_a'] .. '\n\n' .. L['soa_day2_shakey_note_b'],
    rewards = {
        Item({item = 207816, note = '1x'}) -- Crystal Ocular Lenses
    }
}) -- Shakey Flatlap <Jewelcrafting Supplies>

val.nodes[47334110] = SecretsOfAzeroth({
    label = '{npc:192814}',
    rlabel = ns.color.Gray('(2/2)'),
    fgroup = 'tricked-out-thinking-cap',
    quest = 78202, -- Completed once Unfinished Thinking Cap is built
    note = L['soa_day2_shakey_note_b'] .. '\n\n' .. L['soa_day2_shakey_note_c']
}) -- Kritha

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
