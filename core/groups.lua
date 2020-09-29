-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class

-------------------------------------------------------------------------------
------------------------------------ GROUP ------------------------------------
-------------------------------------------------------------------------------

local Group = Class('Group')

function Group:Initialize(name, defaults)
    if not name then error('Groups must be initialized with a name!') end

    self.name = name
    self.defaults = defaults

    self.alphaArg = 'icon_alpha_'..self.name
    self.scaleArg = 'icon_scale_'..self.name
    self.displayArg = 'icon_display_'..self.name

    local opt_defaults = ns.optionDefaults.profile
    if not self.defaults then self.defaults = {} end
    opt_defaults[self.alphaArg] = self.defaults.alpha or 1
    opt_defaults[self.scaleArg] = self.defaults.scale or 1
    opt_defaults[self.displayArg] = self.defaults.display ~= false
end

function Group.getters:db()
    return ns.addon.db.profile
end

-- Override to hide this group in the UI under certain circumstances
function Group:IsEnabled() return true end

-- Get group settings
function Group:GetAlpha() return self.db[self.alphaArg] end
function Group:GetScale() return self.db[self.scaleArg] end
function Group:GetDisplay() return self.db[self.displayArg] end

-- Set group settings
function Group:SetAlpha(v) self.db[self.alphaArg] = v end
function Group:SetScale(v) self.db[self.scaleArg] = v end
function Group:SetDisplay(v) self.db[self.displayArg] = v end

-------------------------------------------------------------------------------

ns.Group = Group

ns.GROUP_HIDDEN = {display=false}
ns.GROUP_ALPHA75 = {alpha=0.75}

ns.groups = {
    CAVE = Group('caves', ns.GROUP_ALPHA75),
    INTRO = Group('intro'),
    OTHER = Group('other'),
    PETBATTLE = Group('pet_battles'),
    QUEST = Group('quest'),
    RARE = Group('rares', ns.GROUP_ALPHA75),
    SUPPLY = Group('supplies'),
    TREASURE = Group('treasures', ns.GROUP_ALPHA75),
}