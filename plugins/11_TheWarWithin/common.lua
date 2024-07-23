-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group

local Collectible = ns.node.Collectible

-------------------------------------------------------------------------------

ns.expansion = 11

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.SKYRIDING_GLYPH = Group('skyriding_glyph', 4728198, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

-------------------------------------------------------------------------------

ns.groups.BIBLIO_ARCHIVIST = Group('biblio_archivist', 5341597, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40622
})

ns.groups.FLAT_EARTHEN = Group('flat_earthen', 4620670, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40606
})

ns.groups.ITSY_BITSY_SPIDER = Group('itsy_bitsy_spider', 5793405, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40624
})

ns.groups.KHAZ_ALGAR_LORE_HUNTER = Group('khaz_algar_lore_hunter', 4419344, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40762
})

ns.groups.LOST_AND_FOUND = Group('lost_and_found', 4635200, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40618
})

ns.groups.MISSING_LYNX = Group('missing_lynx', 5689905, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40625
})

ns.groups.NOT_SO_QUICK_FIX = Group('not_so_quick_fix', 134067, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40473
})

ns.groups.NOTABLE_MACHINES = Group('notable_machines', 1506451, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40628
})

ns.groups.ROCKED_TO_SLEEP = Group('rocked_to_sleep', 5788303, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.ACHIEVEMENT,
    achievement = 40504
})

-- ns.groups.SAFARI = Group('safari', 4048818, {
--     defaults = ns.GROUP_HIDDEN,
--     type = ns.group_types.ACHIEVEMENT,
--     achievement = 40194
-- })

ns.groups.DISTURBED_DIRT = Group('disturbed_dirt', 132386, {
    defaults = ns.GROUP_HIDDEN,
    type = ns.group_types.EXPANSION
})

-------------------------------------------------------------------------------
---------------------------- KHAZ ALGAR LORE HUNTER ---------------------------
-------------------------------------------------------------------------------

local LoreObject = Class('LoreObject', Collectible, {
    icon = 4419344,
    group = ns.groups.KHAZ_ALGAR_LORE_HUNTER
})

ns.node.LoreObject = LoreObject

-------------------------------------------------------------------------------
------------------------------- SKYRIDING GLYPH -------------------------------
-------------------------------------------------------------------------------

local SkyridingGlyph = Class('SkyridingGlyph', Collectible, {
    icon = 4728198,
    label = L['skyriding_glyph'],
    group = ns.groups.SKYRIDING_GLYPH
})

ns.node.SkyridingGlyph = SkyridingGlyph

-------------------------------------------------------------------------------
----------------------------- PROFESSION TREASURES ----------------------------
-------------------------------------------------------------------------------

local ProfessionMaster = Class('ProfessionMaster', ns.node.NPC, {
    scale = 0.9,
    group = ns.groups.PROFESSION_TREASURES
})

function ProfessionMaster:IsEnabled()
    if not ns.PlayerHasProfession(self.skillID) then return false end
    return ns.node.NPC.IsEnabled(self)
end

local ProfessionTreasure = Class('ProfessionTreasure', ns.node.Item, {
    scale = 0.9,
    group = ns.groups.PROFESSION_TREASURES
})

function ProfessionTreasure:IsEnabled()
    if not ns.PlayerHasProfession(self.skillID) then return false end
    return ns.node.Item.IsEnabled(self)
end

ns.node.ProfessionMasters = {}
ns.node.ProfessionTreasures = {}

local PM = ns.node.ProfessionMasters
local PT = ns.node.ProfessionTreasures

for _, profession in pairs(ns.professions) do
    if profession.variantID ~= nil then
        local name = profession.name
        local icon = profession.icon
        local skillID = profession.skillID
        local variantID = profession.variantID[11]

        PM[name] = Class(name .. 'Master', ProfessionMaster, {
            icon = icon,
            skillID = skillID,
            requires = ns.requirement.Profession(skillID, variantID, 1)
        })

        PT[name] = Class(name .. 'Treasure', ProfessionTreasure, {
            icon = icon,
            skillID = skillID,
            requires = ns.requirement.Profession(skillID, variantID, 1)
        })
    end
end

-- Alchemy
-- map.nodes[0000] = PT.Alchemy({quest = nil, id = 226266}) -- Metal Dornogal Frame
-- map.nodes[0000] = PT.Alchemy({quest = nil, id = 226268}) -- Engraved Stirring Rod
-- map.nodes[0000] = PT.Alchemy({quest = nil, id = 226269}) -- Chemist's Purified Water
-- map.nodes[0000] = PT.Alchemy({quest = nil, id = 226270}) -- Sanctified Mortar and Pestle
-- map.nodes[0000] = PT.Alchemy({quest = nil, id = 226271}) -- Nerubian Mixing Salts

-- Enchanting
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226284}) -- Grinded Earthen Gem
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226285}) -- Silver Dornogal Rod
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226286}) -- Soot-Coated Orb
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226287}) -- Animated Enchanting Dust
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226288}) -- Essence of Holy Fire
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226289}) -- Enchanted Arathi Scroll
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226290}) -- Book of Dark Magic
-- map.nodes[0000] = PT.Enchanting({quest = nil, id = 226291}) -- Void Shard

-- Engineering
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226292}) -- Rock Engineer's Wrench
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226293}) -- Dornogal Spectacles
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226294}) -- Inert Mining Bomb
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226295}) -- Earthen Construct Blueprints
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226296}) -- Holy Firework Dud
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226297}) -- Arathi Safety Gloves
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226298}) -- Puppeted Mechanical Spider
-- map.nodes[0000] = PT.Engineering({quest = nil, id = 226299}) -- Emptied Venom Canister

-- Herbalism
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226301}) -- Dornogal Gardening Scythe
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 224265}) -- Deepgrove Rose
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226300}) -- Ancient Flower
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226302}) -- Earthen Digging Fork
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226303}) -- Fungarian Slicer's Knife
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226304}) -- Arathi Garden Trowel
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226306}) -- Web-Entangled Lotus
-- map.nodes[0000] = PT.Herbalism({quest = nil, id = 226307}) -- Tunneler's Shovel

-- Inscription
-- map.nodes[0000] = PT.Inscription({quest = nil, id = 226309}) -- Historian's Dip Pen
-- map.nodes[0000] = PT.Inscription({quest = nil, id = 226311}) -- Blue Earthen Pigment
-- map.nodes[0000] = PT.Inscription({quest = nil, id = 226312}) -- Informant's Fountain Pen
-- map.nodes[0000] = PT.Inscription({quest = nil, id = 226313}) -- Calligrapher's Chiselled Marker

-- Jewelcrafting
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226316}) -- Gentle Jewel Hammer
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226317}) -- Earthen Gem Pliers
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226318}) -- Carved Stone File
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226319}) -- Jeweler's Delicate Drill
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226320}) -- Arathi Sizing Gauges
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226321}) -- Librarian's Magnifiers
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226322}) -- Ritual Caster's Crystal
-- map.nodes[0000] = PT.Jewelcrafting({quest = nil, id = 226323}) -- Nerubian Bench Blocks

-- Leatherworking
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226324}) -- Earthen Lacing Tools
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226325}) -- Dornogal Craftsman's Flat Knife
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226326}) -- Underground Stropping Compound
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226327}) -- Earthen Awl
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226328}) -- Arathi Beveler Set
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226329}) -- Arathi Leather Burnisher
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226330}) -- Nerubian Tanning Mallet
-- map.nodes[0000] = PT.Leatherworking({quest = nil, id = 226331}) -- Curved Nerubian Skinning Knife

-- Mining
-- map.nodes[0000] = PT.Mining({quest = nil, id = 226336}) -- Arathi Precision Drill
-- map.nodes[0000] = PT.Mining({quest = nil, id = 226339}) -- Nerubian Mining Cart

-- Skinning
-- map.nodes[0000] = PT.Skinning({quest = nil, id = 226340}) -- Dornogal Carving Knife
-- map.nodes[0000] = PT.Skinning({quest = nil, id = 226342}) -- Artisan's Drawing Knife
-- map.nodes[0000] = PT.Skinning({quest = nil, id = 226344}) -- Arathi Tanning Agent

-- Tailoring
-- map.nodes[0000] = PT.Tailoring({quest = nil, id = 226349}) -- Earthen Tape Measure
-- map.nodes[0000] = PT.Tailoring({quest = nil, id = 226354}) -- Nerubian Quilt

-------------------------------------------------------------------------------
-------------------------------- DISTURBED DIRT -------------------------------
-------------------------------------------------------------------------------

ns.node.DisturbedDirt = Class('Disturbed_dirt', ns.node.Collectible, {
    icon = 132386,
    scale = 0.7,
    label = '{npc:206978}', -- review
    group = ns.groups.DISTURBED_DIRT,
    requires = {ns.requirement.Reputation(2594, 2, true)}, -- Assembly of the Deeps Renown 2
    rewards = {
        ns.reward.Item({item = 212493}), -- Odd Glob of Wax
        ns.reward.Achievement({id = 40585, criteria = {id = 1, qty = true}}) -- Super Size Snuffling
    }
}) -- Disturbed Dirt - Not on Minimap but quite visible from some distance
-- first loot triggered quest 84543 probably not relevant

-------------------------------------------------------------------------------
------------------------------ KHAZ ALGAR SAFARI ------------------------------
-------------------------------------------------------------------------------

-- local Safari = Class('Safari', Collectible,
--     {icon = 'paw_g', group = ns.groups.SAFARI}) -- Khaz Algar Safari

-- ns.node.Safari = Safari

-- map.nodes[0000] = Safari({
--     id = 222071,
--     rewards = {Achievement({id = 40194, criteria = 67292}), Pet({id = 4457})}
--     -- pois = {POI({0000})}
-- }) -- Chitin Burrower

-- map.nodes[0000] = Safari({
--     id = 222613,
--     rewards = {Achievement({id = 40194, criteria = 67294}), Pet({id = 4514})}
--     -- pois = {POI({0000})}
-- }) -- Fallowspark Glowfly

-- map.nodes[0000] = Safari({
--     id = 222615,
--     rewards = {Achievement({id = 40194, criteria = 67296}), Pet({id = 4516})}
--     -- pois = {POI({0000})}
-- }) -- Vibrant Glowfly

-- map.nodes[0000] = Safari({
--     id = 222344,
--     rewards = {Achievement({id = 40194, criteria = 67298}), Pet({id = 4477})}
--     -- pois = {POI({0000})}
-- }) -- Verdant Scootlefish

-- map.nodes[0000] = Safari({
--     id = 222351,
--     rewards = {Achievement({id = 40194, criteria = 67300}), Pet({id = 4480})}
--     -- pois = {POI({0000})}
-- }) -- Shadowy Oozeling

-- map.nodes[0000] = Safari({
--     id = 222582,
--     rewards = {Achievement({id = 40194, criteria = 67302}), Pet({id = 4498})}
--     -- pois = {POI({0000})}
-- }) -- Ebon Ploughworm

-- map.nodes[0000] = Safari({
--     id = 222195,
--     rewards = {Achievement({id = 40194, criteria = 67304}), Pet({id = 4460})}
--     -- pois = {POI({0000})}
-- }) -- Arathi Chicken

-- map.nodes[0000] = Safari({
--     id = 222877,
--     rewards = {Achievement({id = 40194, criteria = 67306}), Pet({id = 4535})}
--     -- pois = {POI({0000})}
-- }) -- Ghostcap Menace

-- map.nodes[0000] = Safari({
--     id = 222421,
--     rewards = {Achievement({id = 40194, criteria = 67308}), Pet({id = 4483})}
--     -- pois = {POI({0000})}
-- }) -- Vile Bloodtick

-- map.nodes[0000] = Safari({
--     id = 222499,
--     rewards = {Achievement({id = 40194, criteria = 67310}), Pet({id = 4485})}
--     -- pois = {POI({0000})}
-- }) -- Mossy Snail

-- map.nodes[0000] = Safari({
--     id = 222739,
--     rewards = {Achievement({id = 40194, criteria = 67312}), Pet({id = 4522})}
--     -- pois = {POI({0000})}
-- }) -- Troglofrog

-- map.nodes[0000] = Safari({
--     id = 222775,
--     rewards = {Achievement({id = 40194, criteria = 67314}), Pet({id = 4526})}
--     -- pois = {POI({0000})}
-- }) -- Sandstone Mosswool

-- map.nodes[0000] = Safari({
--     id = 223136,
--     rewards = {Achievement({id = 40194, criteria = 67316}), Pet({id = 4544})}
--     -- pois = {POI({0000})}
-- }) -- Umbral Amalgam

-- map.nodes[0000] = Safari({
--     id = 223094,
--     rewards = {Achievement({id = 40194, criteria = 67318}), Pet({id = 4538})}
--     -- pois = {POI({0000})}
-- }) -- Cobalt Ramolith

-- map.nodes[0000] = Safari({
--     id = 223092,
--     rewards = {Achievement({id = 40194, criteria = 67320}), Pet({id = 4540})}
--     -- pois = {POI({0000})}
-- }) -- Alabaster Stonecharger

-- map.nodes[0000] = Safari({
--     id = 223698,
--     rewards = {Achievement({id = 40194, criteria = 68270}), Pet({id = 4577})}
--     -- pois = {POI({0000})}
-- }) -- Cinderhoney Emberstinger

-- map.nodes[0000] = Safari({
--     id = 222066,
--     rewards = {Achievement({id = 40194, criteria = 67293}), Pet({id = 4456})}
--     -- pois = {POI({0000})}
-- }) -- Arachnoid Hatchling

-- map.nodes[0000] = Safari({
--     id = 222614,
--     rewards = {Achievement({id = 40194, criteria = 67295}), Pet({id = 4515})}
--     -- pois = {POI({0000})}
-- }) -- Azure Flickerfly

-- map.nodes[0000] = Safari({
--     id = 222325,
--     rewards = {Achievement({id = 40194, criteria = 67297}), Pet({id = 4471})}
--     -- pois = {POI({0000})}
-- }) -- Aubergine Scootlefish

-- map.nodes[0000] = Safari({
--     id = 222354,
--     rewards = {Achievement({id = 40194, criteria = 67299}), Pet({id = 4481})}
--     -- pois = {POI({0000})}
-- }) -- Voidling Ooze

-- map.nodes[0000] = Safari({
--     id = 222584,
--     rewards = {Achievement({id = 40194, criteria = 67301}), Pet({id = 4499})}
--     -- pois = {POI({0000})}
-- }) -- Common Ploughworm

-- map.nodes[0000] = Safari({
--     id = 222194,
--     rewards = {Achievement({id = 40194, criteria = 67303}), Pet({id = 4461})}
--     -- pois = {POI({0000})}
-- }) -- Greenlands Chicken

-- map.nodes[0000] = Safari({
--     id = 222875,
--     rewards = {Achievement({id = 40194, criteria = 67305}), Pet({id = 4533})}
--     -- pois = {POI({0000})}
-- }) -- Meek Bloodlasher

-- map.nodes[0000] = Safari({
--     id = 222608,
--     rewards = {Achievement({id = 40194, criteria = 67307}), Pet({id = 4510})}
--     -- pois = {POI({0000})}
-- }) -- Winged Arachnoid

-- map.nodes[0000] = Safari({
--     id = 222713,
--     rewards = {Achievement({id = 40194, criteria = 67309}), Pet({id = 4518})}
--     -- pois = {POI({0000})}
-- }) -- Magmashell Crawler

-- map.nodes[0000] = Safari({
--     id = 222736,
--     rewards = {Achievement({id = 40194, criteria = 67311}), Pet({id = 4521})}
--     -- pois = {POI({0000})}
-- }) -- Subterranean Dartwog

-- map.nodes[0000] = Safari({
--     id = 222774,
--     rewards = {Achievement({id = 40194, criteria = 67313}), Pet({id = 4525})}
--     -- pois = {POI({0000})}
-- }) -- Fragrant Stonelamb

-- map.nodes[0000] = Safari({
--     id = 222778,
--     rewards = {Achievement({id = 40194, criteria = 67315}), Pet({id = 4529})}
--     -- pois = {POI({0000})}
-- }) -- Shale Mosswool

-- map.nodes[0000] = Safari({
--     id = 223090,
--     rewards = {Achievement({id = 40194, criteria = 67317}), Pet({id = 4541})}
--     -- pois = {POI({0000})}
-- }) -- Bedrock Stonecharger

-- map.nodes[0000] = Safari({
--     id = 223093,
--     rewards = {Achievement({id = 40194, criteria = 	67319}), Pet({id = 4539})}
--     -- pois = {POI({0000})}
-- }) -- Granite Ramolith

-- map.nodes[0000] = Safari({
--     id = 223715,
--     rewards = {Achievement({id = 40194, criteria = 68269}), Pet({id = 4574})}
--     -- pois = {POI({0000})}
-- }) -- Snuffling
