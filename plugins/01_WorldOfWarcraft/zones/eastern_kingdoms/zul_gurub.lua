-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Quest = ns.reward.Quest
local Recipe = ns.reward.Recipe
local Section = ns.reward.Section
local Spacer = ns.reward.Spacer
local Spell = ns.reward.Spell
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Circle = ns.poi.Circle
local Path = ns.poi.Path
local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 337, settings = false}) -- Zul'Gurub

local dazaralor = Map({id = 1165, settings = false}) -- Dazar'alor
local zandalar = Map({id = 875, settings = false}) -- Zandalar
local zulduzar = Map({id = 862, settings = false}) -- Zuldazar

-------------------------------------------------------------------------------
----------------------- UNLOCK THE SECRETS OF ZUL'GURUB -----------------------
-------------------------------------------------------------------------------

map.nodes[29324855] = Collectible({
    label = '{item:203737}',
    icon = 132528,
    -- LuaFormatter off
    note = L['zg_unlock_note_01'] .. '\n\n' ..
           L['zg_unlock_note_02'] .. '\n\n' ..
           L['zg_unlock_note_03'] .. '\n\n' ..
           L['zg_unlock_note_04'] .. '\n\n' ..
           L['zg_unlock_note_05'],
    -- LuaFormatter on
    quest = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    pois = {
        Path({
            color = 'Blue',
            points = {
                29324855, 32264908, 34904665, 36504656, 38044739, 38814896,
                43925085, 44145019, 43484648, 42604260, 42664128, 42383980,
                44833984, 44724083, 45494083, 45654471, 48684471, 48764058,
                49314058, 49264132
            }
        }), -- Path to Shattered Hakkari Bijou
        POI({color = 'Blue', points = {48684471}}), -- Entrance
        POI({color = 'Blue', points = {49264132}}), -- Shattered Hakkari Bijou
        Path({
            color = 'Red',
            points = {44833984, 46433963, 46433617, 50933617, 50933964}
        }), -- Path to Jin'do the Godbreaker
        POI({color = 'Red', points = {50933964}}) -- Jin'do teh Godbreaker
    },
    rewards = {
        Achievement({id = 17366}), -- Relics of a Falled Empire
        Quest({id = 74576}) -- Restored Hakkari Bijou
    }
}) -- Restored Hakkari Bijou

local Rinwosho = Class('Rinwosho', Collectible, {
    id = 143138,
    icon = 132528,
    -- LuaFormatter off
    note = L['zg_unlock_note_05'] .. '\n\n' ..
           L['zg_unlock_note_06'],
    -- LuaFormatter on
    quest = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    requires = ns.requirement.Item(203737), -- Restored Hakkari Bijou
    rewards = {
        Achievement({id = 17366}), -- Relics of a Falled Empire
        Item({item = 203767}) -- Gold Hakkari Bijou
    }
}) -- Rin'wosho the Trader <Supplies & Repair>

dazaralor.nodes[55008700] = Rinwosho()
zulduzar.nodes[59645805] = Rinwosho()
zandalar.nodes[59027053] = Rinwosho()

-------------------------------------------------------------------------------
------------------------------ ZANDALARI BIJOUS -------------------------------
-------------------------------------------------------------------------------

local BigBagOBijous = Class('BigBagOBijous', Collectible, {
    label = '{item:203774}',
    icon = 132528,
    questDeps = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    fgroup = 'offering_bone_pile',
    IsEnabled = function() return true end,
    pois = {
        Path({Circle({origin = 51675708, radius = 3})}), -- Offering of Fangs
        Path({Circle({origin = 61398279, radius = 3})}), -- Offering of Blood
        Path({Circle({origin = 47722377, radius = 3})}), -- Offering of Claws
        Path({Circle({origin = 30031935, radius = 3})}) -- Offering of Mojo
    }
}) -- Big Bag o' Bijous

function BigBagOBijous.getters:note()
    local function count(id)
        if ns.PlayerHasItem(id) then
            return ns.status.Green(C_Item.GetItemCount(id, true))
        else
            return ns.status.Red(0)
        end
    end

    local note = L['zg_zandalari_bijous_note_01'] .. '\n\n'
    note = note .. L['zg_zandalari_bijous_note_02'] .. '\n\n'
    note = note .. L['zg_zandalari_bijous_note_03'] .. '\n\n'
    note = note .. count(203765) .. ' {item:203765}\n'
    note = note .. count(203766) .. ' {item:203766}\n'
    note = note .. count(203767) .. ' {item:203767}\n'
    note = note .. count(203768) .. ' {item:203768}\n'
    note = note .. count(203769) .. ' {item:203769}\n'
    note = note .. count(203770) .. ' {item:203770}\n'
    note = note .. count(203771) .. ' {item:203771}\n'
    note = note .. count(203772) .. ' {item:203772}\n'
    note = note .. count(203773) .. ' {item:203773}'
    return note
end

map.nodes[31364619] = BigBagOBijous()

-------------------------------------------------------------------------------
----------------------------------- FISHING -----------------------------------
-------------------------------------------------------------------------------

map.nodes[54773273] = Collectible({
    label = '{achievement:17367}',
    icon = 132595,
    -- LuaFormatter off
    note = L['zg_fishing_note_01'] .. '\n\n' ..
           L['zg_fishing_note_02'] .. '\n\n' ..
           L['zg_fishing_note_03'],
    -- LuaFormatter on
    requires = ns.requirement.Spell(401577), -- Mudskunk Aroma
    questDeps = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    rewards = {
        Achievement({id = 17367}), -- Deadliest Cache
        Item({item = 203742, quest = 74579}), -- Waterlogged Gurubashi Cache
        Item({item = 203743, quest = 74579}) -- Jostled Gurubashi Cache
    }
}) -- Deadliest Cache

-------------------------------------------------------------------------------
----------------------------- BRAZIER OF MADNESS ------------------------------
-------------------------------------------------------------------------------

map.nodes[56625126] = Collectible({
    label = '{item:203757}',
    icon = 651093,
    note = L['zg_brazier_of_madness_note'],
    questDeps = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    rewards = {
        Toy({item = 203757}) -- Brazier of Madness
    },
    pois = {
        Path({56625126, 57415146, 58075110, 58234813, 61374631}), -- Path
        POI({61374631}) -- Brazier of Madness
    }
}) -- Brazier of Madness

-------------------------------------------------------------------------------
--------------------------- GURUBASHI MOJO MADNESS ----------------------------
-------------------------------------------------------------------------------

map.nodes[56624826] = Collectible({
    label = '{spell:24266}',
    icon = 134711,
    note = L['zg_gurubashi_mojo_madness_note'],
    questDeps = 74376, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    requires = ns.requirement.Profession(171),
    rewards = {
        Spell({item = 19931, spell = 24266}) -- Gurubashi Mojo Madness -- TODO known, but is still shown.
    },
    pois = {
        Path({56624826, 56625126, 57415146, 58075110, 58234813, 61374631}), -- Path
        POI({61374631}) -- Tablet of Madness
    }
}) -- Gurubashi Mojo Madness

-------------------------------------------------------------------------------
------------------------------ ANCIENT PATTERNS -------------------------------
-------------------------------------------------------------------------------

local BonePile = Class('BonePile', Collectible, {
    icon = 133731,
    requires = ns.requirement.Spell(401721), -- Succumbed to Madness
    questDeps = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    IsEnabled = function() return true end,
    rewards = {
        Item({item = 203959}), -- Gurubashi Tribute
        -- Blacksmithing
        Recipe({item = 203833, profession = 164}), -- Ancient Plans: Bloodherald
        Recipe({item = 203834, profession = 164}), -- Ancient Plans: Bloodlord's Reaver
        Recipe({item = 203835, profession = 164}), -- Ancient Plans: Fiery Vengeance
        Recipe({item = 203825, profession = 164}), -- Ancient Plans: Gurubashi Carver
        Recipe({item = 203831, profession = 164}), -- Ancient Plans: Gurubashi Crusher
        Recipe({item = 203828, profession = 164}), -- Ancient Plans: Gurubashi Grinder
        Recipe({item = 203824, profession = 164}), -- Ancient Plans: Gurubashi Headplate
        Recipe({item = 203829, profession = 164}), -- Ancient Plans: Gurubashi Hexxer
        Recipe({item = 203827, profession = 164}), -- Ancient Plans: Gurubashi Poker
        Recipe({item = 203837, profession = 164}), -- Ancient Plans: Gurubashi Slicer
        Recipe({item = 203832, profession = 164}), -- Ancient Plans: Pitchfork of Mojo Madness
        Recipe({item = 203830, profession = 164}), -- Ancient Plans: Sceptre of Hexing
        Recipe({item = 203826, profession = 164}), -- Ancient Plans: Venomfang
        Recipe({item = 203861, profession = 164}), -- Ancient Plans: Venomreaver
        Recipe({item = 203836, profession = 164}), -- Ancient Plans: Warblades of the Hakkari, Reborn
        -- Enchanting
        Recipe({item = 203838, profession = 333}), -- Ancient Formula: Mindslaves Reach
        -- Inscription
        Recipe({item = 203841, profession = 773}), -- Ancient Technique: Gurubashi Ceremonial Staff
        Recipe({item = 203839, profession = 773}), -- Ancient Technique: Gurubashi Hoodoo Stick
        Recipe({item = 203840, profession = 773}), -- Ancient Technique: Judgment of Tte Gurubashi
        -- Jewelcrafting
        Recipe({item = 204406, profession = 755}), -- Ancient Design: Square Holders
        -- Leatherworking
        Recipe({item = 203842, profession = 165}), -- Ancient Pattern: Animists Footwraps
        Recipe({item = 203843, profession = 165}), -- Ancient Pattern: Animists Legguards
        Recipe({item = 203968, profession = 165}), -- Ancient Pattern: Cord of Shriveled Heads
        Recipe({item = 203844, profession = 165}), -- Ancient Pattern: Gloves of The Tormentor
        Recipe({item = 203847, profession = 165}), -- Ancient Pattern: Gurubashis Grasp
        Recipe({item = 203845, profession = 165}), -- Ancient Pattern: Junglefury Gauntlets
        Recipe({item = 203846, profession = 165}), -- Ancient Pattern: Junglefury Leggings
        -- Tailoring
        Recipe({item = 203848, profession = 197}), -- Ancient Pattern: Bloodlords Embrace
        Recipe({item = 203849, profession = 197}), -- Ancient Pattern: Gurubashi Tigerhide Cloak
        Recipe({item = 203850, profession = 197}), -- Ancient Pattern: Gurubashi Headdress
        Recipe({item = 203851, profession = 197}) -- Ancient Pattern: Ritualistic Legwarmers
    }
})

function BonePile.getters:note()
    local function status(id, itemsNeed)
        local itemsHave = C_Item.GetItemCount(id, true);
        return ns.PlayerHasItem(id, itemsNeed) and
                   ns.status.Green(itemsHave .. '/' .. itemsNeed) or
                   ns.status.Red(itemsHave .. '/' .. itemsNeed)
    end

    local x = self.bijous[1]
    local y = self.bijous[2]
    local z = self.bijous[3]

    local note = L['zg_offering_note'] .. '\n\n'
    note = note .. status(x[1], x[2]) .. ' {item:' .. x[1] .. '}\n'
    note = note .. status(y[1], y[2]) .. ' {item:' .. y[1] .. '}\n'
    note = note .. status(z[1], z[2]) .. ' {item:' .. z[1] .. '}\n'
    return note
end

map.nodes[51675708] = BonePile({
    label = L['offering_of_fangs_label'],
    location = L['offering_of_fangs_location'],
    bijous = {{203772, 2}, {203768, 3}, {203767, 3}},
    fgroup = 'offering_bone_pile'
}) -- Offering of Fangs (High Priest Venoxis)

map.nodes[61398279] = BonePile({
    label = L['offering_of_blood_label'],
    location = L['offering_of_blood_location'],
    bijous = {{203766, 2}, {203771, 3}, {203767, 3}},
    fgroup = 'offering_bone_pile'
}) -- Offering of Blood (Bloodlord Mandokir)

map.nodes[47722377] = BonePile({
    label = L['offering_of_claws_label'],
    location = L['offering_of_claws_location'],
    bijous = {{203769, 2}, {203773, 3}, {203767, 3}},
    fgroup = 'offering_bone_pile'
}) -- Offering of Claws (High Priestess Kilnara)

map.nodes[30031935] = BonePile({
    label = L['offering_of_mojo_label'],
    location = L['offering_of_mojo_location'],
    bijous = {{203770, 2}, {203765, 3}, {203767, 3}},
    fgroup = 'offering_bone_pile'
}) -- Offering of Mojo (Zanzil)

-------------------------------------------------------------------------------
-------------------------- VENDOR ZUL'GURUB PATTERNS --------------------------
-------------------------------------------------------------------------------

map.nodes[30324949] = Collectible({
    id = 143138,
    icon = 133791,
    -- LuaFormatter off
    note = L['zg_vendor_note_01'] .. '\n\n' ..
           L['zg_vendor_note_02'] .. '\n\n' ..
           L['zg_vendor_note_03'] .. '\n\n' ..
           '{item:19698} + {item:19699} + {item:19700}\n' ..
           '{item:19704} + {item:19705} + {item:19706}\n' ..
           '{item:19701} + {item:19702} + {item:19703}',
    -- LuaFormatter on
    questDeps = 74576, -- Restored Hakkari Bijou
    group = ns.groups.SECRETS_OF_ZULGURUB,
    rewards = {
        -- Alchemy
        Recipe({item = 20012, profession = 171}), -- Recipe: Greater Dreamless Sleep Potion
        Recipe({item = 20014, profession = 171}), -- Recipe: Mighty Trolls Blood Elixir
        Recipe({item = 20011, profession = 171}), -- Recipe: Mageblood Elixir
        Recipe({item = 20013, profession = 171}), -- Recipe: Living Action Potion
        -- Blacksmithing
        Recipe({item = 19777, profession = 164}), -- Plans: Bloodsoul Shoulders
        Recipe({item = 19776, profession = 164}), -- Plans: Bloodsoul Breastplate
        Recipe({item = 19778, profession = 164}), -- Plans: Bloodsoul Gauntlets
        Recipe({item = 19781, profession = 164}), -- Plans: Darksoul Shoulders
        Recipe({item = 19779, profession = 164}), -- Plans: Darksoul Breastplate
        Recipe({item = 19780, profession = 164}), -- Plans: Darksoul Leggings
        -- Enchanting
        Recipe({item = 20757, profession = 333}), -- Formula: Brilliant Mana Oil
        Recipe({item = 20756, profession = 333}), -- Formula: Brilliant Wizard Oil
        -- Engineering
        Recipe({item = 20000, profession = 202}), -- Schematic: Bloodvine Goggles
        Recipe({item = 20001, profession = 202}), -- Schematic: Bloodvine Lens
        -- Leatherworking
        Recipe({item = 19769, profession = 165}), -- Pattern: Primal Batskin Jerkin
        Recipe({item = 19771, profession = 165}), -- Pattern: Primal Batskin Bracers
        Recipe({item = 19770, profession = 165}), -- Pattern: Primal Batskin Gloves
        Recipe({item = 19773, profession = 165}), -- Pattern: Blood Tiger Shoulders
        Recipe({item = 19772, profession = 165}), -- Pattern: Blood Tiger Breastplate
        -- Tailoring
        Recipe({item = 19764, profession = 197}), -- Pattern: Bloodvine Vest
        Recipe({item = 19765, profession = 197}), -- Pattern: Bloodvine Leggings
        Recipe({item = 19766, profession = 197}), -- Pattern: Bloodvine Boots
        Spacer(), Section(L['zg_class_ensembles']), -- Zul'Gurub Class Ensembles
        Transmog({item = 203974, class = 'DRUID'}), -- Ensemble: Zandalar Haruspec
        Transmog({item = 203975, class = 'HUNTER'}), -- Ensemble: Zandalar Predator
        Transmog({item = 203976, class = 'MAGE'}), -- Ensemble: Zandalar Illusionist
        Transmog({item = 203977, class = 'PALADIN'}), -- Ensemble: Zandalar Freethinker
        Transmog({item = 203978, class = 'PRIEST'}), -- Ensemble: Zandalar Confessor
        Transmog({item = 203979, class = 'ROGUE'}), -- Ensemble: Zandalar Madcap
        Transmog({item = 203980, class = 'SHAMAN'}), -- Ensemble: Zandalar Augur
        Transmog({item = 203981, class = 'WARLOCK'}), -- Ensemble: Zandalar Demoniac
        Transmog({item = 203982, class = 'WARRIOR'}), -- Ensemble: Zandalar Vindicator
        Spacer(), Section(L['zg_armor_ensembles']), -- Zul'Gurub Armor Ensembles
        Transmog({item = 203983, slot = L['cloth']}), -- Ensemble: Bloodtinged Cloth
        Transmog({item = 203984, slot = L['leather']}), -- Ensemble: Blooddrenched Leather
        Transmog({item = 203985, slot = L['mail']}), -- Ensemble: Bloodstained Mail
        Transmog({item = 203986, slot = L['plate']}) -- Ensemble: Bloodsoaked Plate
    }
}) -- Rin'wosho the Trader <Supplies & Repair>
