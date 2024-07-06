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
            requires = ns.requirement.Profession(skillID, variantID, 25)
        })

        PT[name] = Class(name .. 'Treasure', ProfessionTreasure, {
            icon = icon,
            skillID = skillID,
            requires = ns.requirement.Profession(skillID, variantID, 25)
        })
    end
end

-- Alchemy
-- 226265 Earthen Iron Powder -- https://www.wowhead.com/ptr-2/item=226265/earthen-iron-powder#comments:id=5881534
-- 226266 Metal Dornogal Frame
-- 226267 Reinforced Beaker -- https://www.wowhead.com/ptr-2/item=226267/reinforced-beaker#comments:id=5886401
-- 226268 Engraved Stirring Rod
-- 226269 Chemist's Purified Water
-- 226270 Sanctified Mortar and Pestle
-- 226271 Nerubian Mixing Salts
-- 226272 Dark Apothecary's Vial -- https://www.wowhead.com/ptr-2/item=226272/dark-apothecarys-vial#comments:id=5880449

-- Blacksmithing
-- 226276 Ancient Earthen Anvil
-- 226277 Dornogal Hammer
-- 226278 Ringing Hammer Vise -- https://www.wowhead.com/ptr-2/item=226278/ringing-hammer-vise#comments:id=5882352
-- 226279 Earthen Chisels
-- 226280 Holy Flame Forge -- https://www.wowhead.com/ptr-2/item=226280/holy-flame-forge#comments:id=5883491
-- 226281 Radiant Tongs -- https://www.wowhead.com/ptr-2/item=226281/radiant-tongs#comments:id=5882797
-- 226282 Nerubian Smith's Kit -- https://www.wowhead.com/ptr-2/item=226282/nerubian-smiths-kit#comments:id=5884238
-- 226283 Spiderling's Wire Brush

-- Enchanting
-- 226284 Grinded Earthen Gem
-- 226285 Silver Dornogal Rod
-- 226286 Soot-Coated Orb
-- 226287 Animated Enchanting Dust
-- 226288 Essence of Holy Fire
-- 226289 Enchanted Arathi Scroll
-- 226290 Book of Dark Magic
-- 226291 Void Shard

-- Engineering
-- 226292 Rock Engineer's Wrench
-- 226293 Dornogal Spectacles
-- 226294 Inert Mining Bomb
-- 226295 Earthen Construct Blueprints
-- 226296 Holy Firework Dud
-- 226297 Arathi Safety Gloves
-- 226298 Puppeted Mechanical Spider
-- 226299 Emptied Venom Canister

-- Herbalism
-- 226301 Dornogal Gardening Scythe
-- 224265 Deepgrove Rose
-- 226300 Ancient Flower
-- 226302 Earthen Digging Fork
-- 226303 Fungarian Slicer's Knife
-- 226304 Arathi Garden Trowel
-- 226305 Arathi Herb Pruner -- https://www.wowhead.com/ptr-2/item=226305/arathi-herb-pruner#comments:id=5877450
-- 226306 Web-Entangled Lotus
-- 226307 Tunneler's Shovel

-- Inscription
-- 226308 Dornogal Scribe's Quill -- https://www.wowhead.com/ptr-2/item=226308/dornogal-scribes-quill#comments:id=5884883
-- 226309 Historian's Dip Pen
-- 226310 Runic Scroll -- https://www.wowhead.com/ptr-2/item=226310/runic-scroll#comments:id=5885887
-- 226311 Blue Earthen Pigment
-- 226312 Informant's Fountain Pen
-- 226313 Calligrapher's Chiselled Marker
-- 226314 Nerubian Texts -- https://www.wowhead.com/ptr-2/item=226314/nerubian-texts#comments:id=5885976
-- 226315 Venomancer's Ink Well -- https://www.wowhead.com/ptr-2/item=226315/venomancers-ink-well#comments:id=5885982

-- Jewelcrafting
-- 226316 Gentle Jewel Hammer
-- 226317 Earthen Gem Pliers
-- 226318 Carved Stone File
-- 226319 Jeweler's Delicate Drill
-- 226320 Arathi Sizing Gauges
-- 226321 Librarian's Magnifiers
-- 226322 Ritual Caster's Crystal
-- 226323 Nerubian Bench Blocks

-- Leatherworking
-- 226324 Earthen Lacing Tools
-- 226325 Dornogal Craftsman's Flat Knife
-- 226326 Underground Stropping Compound
-- 226327 Earthen Awl
-- 226328 Arathi Beveler Set
-- 226329 Arathi Leather Burnisher
-- 226330 Nerubian Tanning Mallet
-- 226331 Curved Nerubian Skinning Knife

-- Mining
-- 226333 Dornogal Chisel -- https://www.wowhead.com/ptr-2/item=226333/dornogal-chisel#comments:id=5881311
-- 226335 Regenerating Ore -- https://www.wowhead.com/ptr-2/item=226335/regenerating-ore#comments:id=5878181
-- 226336 Arathi Precision Drill
-- 226337 Devout Archaeologist's Excavator -- https://www.wowhead.com/ptr-2/item=226337/devout-archaeologists-excavator#comments:id=5878717
-- 226338 Heavy Spider Crusher -- https://www.wowhead.com/ptr-2/item=226338/heavy-spider-crusher#comments:id=5881293
-- 226339 Nerubian Mining Cart

-- Skinning
-- 226340 Dornogal Carving Knife
-- 226341 Earthen Worker's Beams -- https://www.wowhead.com/ptr-2/item=226341/earthen-workers-beams#comments:id=5882126
-- 226342 Artisan's Drawing Knife
-- 226343 Fungarian's Rich Tannin -- https://www.wowhead.com/ptr-2/item=226343/fungarians-rich-tannin#comments:id=5878176
-- 226344 Arathi Tanning Agent
-- 226345 Arathi Craftsman's Spokeshave -- https://www.wowhead.com/ptr-2/item=226345/arathi-craftsmans-spokeshave#comments:id=5878715
-- 226346 Nerubian's Slicking Iron
-- 226347 Carapace Shiner -- https://www.wowhead.com/ptr-2/item=226347/carapace-shiner#comments:id=5881307

-- Tailoring
-- 226348 Dornogal Seam Ripper -- https://www.wowhead.com/ptr-2/item=226348/dornogal-seam-ripper#comments:id=5882038
-- 226349 Earthen Tape Measure
-- 226350 Runed Earthen Pins -- https://www.wowhead.com/ptr-2/item=226350/runed-earthen-pins#comments:id=5882782
-- 226351 Earthen Stitcher's Snips -- https://www.wowhead.com/ptr-2/item=226351/earthen-stitchers-snips#comments:id=5882342
-- 226352 Arathi Rotary Cutter -- https://www.wowhead.com/ptr-2/item=226352/arathi-rotary-cutter#comments:id=5883486
-- 226353 Royal Outfitter's Protractor -- https://www.wowhead.com/ptr-2/item=226353/royal-outfitters-protractor#comments:id=5888097
-- 226354 Nerubian Quilt
-- 226355 Nerubian's Pincushion -- https://www.wowhead.com/ptr-2/item=226355/nerubians-pincushion#comments:id=5884236

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
