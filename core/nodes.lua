-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local Class = ns.Class
local isinstance = ns.isinstance

-------------------------------------------------------------------------------
------------------------------------ NODE -------------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all displayed nodes.

    label (string): Tooltip title for this node
    icon (string|table): The icon texture to display
    alpha (float): The default alpha value for this type
    scale (float): The default scale value for this type
    minimap (bool): Should the node be displayed on the minimap
    quest (int|int[]): Quest IDs that cause this node to disappear
    requires (int|int[]): Quest IDs that must be true to appear
    rewards (Reward[]): Array of rewards for this node

--]]

local Node = Class('Node')

Node.label = UNKNOWN
Node.minimap = true
Node.alpha = 1
Node.scale = 1
Node.icon = "default"
Node.group = "other"

function Node:init ()
    -- normalize quest ids as tables instead of single values
    for i, key in ipairs{'quest', 'requires'} do
        if type(self[key]) == 'number' then self[key] = {self[key]} end
    end

    if self.minimap == nil then
        self.minimap = true
    end
end

function Node:display (db)
    local icon = ns.icons[self.icon] or ns.icons.default
    local scale = self.scale * (db.profile['icon_scale_'..self.group] or 1)
    local alpha = self.alpha * (db.profile['icon_alpha_'..self.group] or 1)
    return icon, scale, alpha
end

function Node:done ()
    for i, reward in ipairs(self.rewards or {}) do
        if not reward:obtained() then return false end
    end
    return true
end

function Node:enabled (db, mapID, coord, minimap)
    -- Minimap may be disabled for this node
    if not self.minimap and minimap then return false end

    if not db.profile.ignore_quests then
        -- All attached quest ids must be false
        for i, quest in ipairs(self.quest or {}) do
            if IsQuestFlaggedCompleted(quest) then return false end
        end

        -- All required quest ids must be true
        for i, quest in ipairs(self.requires or {}) do
            if not IsQuestFlaggedCompleted(quest) then return false end
        end
    end

    -- Check for zone-specific exclusions
    if not ns.included[mapID](self, db.profile) then return false end

    -- Check if we've been hidden by the user
    if db.char[mapID..'_coord_'..coord] then return false end

    return true
end

-------------------------------------------------------------------------------
------------------------------------ CAVE -------------------------------------
-------------------------------------------------------------------------------

local Cave = Class('Cave', Node)

Cave.icon = "cave"
Cave.scale = 1.5
Cave.group = "caves"

function Cave:init ()
    Node.init(self)

    if self.parent == nil then
        error('One or more parent nodes are required for Cave nodes')
    elseif isinstance(self.parent, Node) then
        -- normalize parent nodes as tables instead of single values
        self.parent = {self.parent}
    end
end

function Cave:enabled (db, mapID, coord, minimap)
    if not Node.enabled(self, db, mapID, coord, minimap) then return false end

    local function hasEnabledParent ()
        for i, parent in ipairs(self.parent or {}) do
            if parent:enabled(db, mapID, coord, minimap) then
                return true
            end
        end
        return false
    end

    -- Check if all our parents are hidden
    if not hasEnabledParent() then return false end

    return true
end

-------------------------------------------------------------------------------
------------------------------------- NPC -------------------------------------
-------------------------------------------------------------------------------

local NPC_TOOLTIP_NAME = ADDON_NAME.."_npcToolTip"
local NPC_TOOLTIP = nil
local NPC_CACHE = {}

local function CreateDatamineFrame()
    NPC_TOOLTIP = CreateFrame("GameTooltip", NPC_TOOLTIP_NAME, UIParent,
        "GameTooltipTemplate")
    NPC_TOOLTIP:SetOwner(UIParent, "ANCHOR_NONE")
end

CreateDatamineFrame() -- create the initial frame

-------------------------------------------------------------------------------

local NPC = Class('NPC', Node)

function NPC:init ()
    Node.init(self)
    if not self.id then error('id required for NPC nodes') end
end

function NPC.getters:label ()
    local name = NPC_CACHE[self.id]
    if not name then
        NPC_TOOLTIP:SetHyperlink(("unit:Creature-0-0-0-0-%d"):format(self.id))
        name = _G[NPC_TOOLTIP_NAME.."TextLeft1"]:GetText()
        if name and name ~= '' then
            NPC_CACHE[self.id] = name
        else
            -- Sometimes the tooltip breaks and permanently stops returning
            -- info. When this happens, the only way I've found to fix it is to
            -- recreate the frame. I wish there was an actual API for this.
            CreateDatamineFrame()
            name = UNKNOWN
        end
    end
    return name
end

-------------------------------------------------------------------------------
---------------------------------- PETBATTLE ----------------------------------
-------------------------------------------------------------------------------

local PetBattle = Class('PetBattle', NPC)

PetBattle.icon = "battle_pet"
PetBattle.scale = 1.1
PetBattle.group = "pet_battles"

-------------------------------------------------------------------------------
------------------------------------ RARE -------------------------------------
-------------------------------------------------------------------------------

local Rare = Class('Rare', NPC)

Rare.scale = 1.8
Rare.group = "rares"

function Rare.getters:icon ()
    return self:done() and 'skull_white' or 'skull_blue'
end

function Rare:enabled (db, mapID, coord, minimap)
    if db.profile.hide_done_rare and self:done() then return false end
    if db.profile.always_show_rares then return true end
    return NPC.enabled(self, db, mapID, coord, minimap)
end

-------------------------------------------------------------------------------
----------------------------------- SUPPLY ------------------------------------
-------------------------------------------------------------------------------

local Supply = Class('Supply', Node)

Supply.icon = "star_chest"
Supply.scale = 1.5
Supply.group = "treasures"

-------------------------------------------------------------------------------
---------------------------------- TREASURE -----------------------------------
-------------------------------------------------------------------------------

local Treasure = Class('Treasure', Node)

Treasure.icon = "treasure"
Treasure.scale = 1.3
Treasure.group = "treasures"

function Treasure:enabled (db, mapID, coord, minimap)
    if db.profile.always_show_treasures then return true end
    return Node.enabled(self, db, mapID, coord, minimap)
end

-------------------------------------------------------------------------------

ns.node = {
    Node=Node,
    Cave=Cave,
    NPC=NPC,
    PetBattle=PetBattle,
    Rare=Rare,
    Supply=Supply,
    Treasure=Treasure
}
