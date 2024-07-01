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
