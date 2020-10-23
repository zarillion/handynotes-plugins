-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale
local Map = ns.Map

-------------------------------------------------------------------------------

ns.expansion = 9

-------------------------------------------------------------------------------
------------------------------------ ICONS ------------------------------------
-------------------------------------------------------------------------------

local ICONS = "Interface\\Addons\\"..ADDON_NAME.."\\artwork\\icons"
local function Icon(name) return ICONS..'\\'..name..'.blp' end

ns.icons.cov_sigil_ky = {Icon('covenant_kyrian'), nil}
ns.icons.cov_sigil_nl = {Icon('covenant_necrolord'), nil}
ns.icons.cov_sigil_nf = {Icon('covenant_nightfae'), nil}
ns.icons.cov_sigil_vn = {Icon('covenant_venthyr'), nil}

-------------------------------------------------------------------------------
---------------------------------- CALLBACKS ----------------------------------
-------------------------------------------------------------------------------

ns.addon:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED', function (...)
    -- Watch for a spellcast event that signals the kitten was pet.
    -- https://www.wowhead.com/spell=321337/petting
    -- Watch for a spellcast event for collecting a shard
    -- https://shadowlands.wowhead.com/spell=335400/collecting
    local _, source, _, spellID = ...
    if source == 'player' and (spellID == 321337 or spellID == 335400) then
        C_Timer.After(1, function() ns.addon:Refresh() end)
    end
end)

-------------------------------------------------------------------------------
---------------------------------- COVENANTS ----------------------------------
-------------------------------------------------------------------------------

ns.covenants = {
    KYR = { id = 1, icon = 'cov_sigil_ky' },
    VEN = { id = 2, icon = 'cov_sigil_vn' },
    FAE = { id = 3, icon = 'cov_sigil_nf' },
    NEC = { id = 4, icon = 'cov_sigil_nl' }
}

local function ProcessCovenant (node)
    if node.covenant == nil then return end
    local data = C_Covenants.GetCovenantData(node.covenant.id)

    -- Add covenant sigil to top-right corner of tooltip
    node.rlabel = ns.GetIconLink(node.covenant.icon, 13)

    if not node._covenantProcessed then
        local subl = ns.color.Orange(string.format(L["covenant_required"], data.name))
        node.sublabel = node.sublabel and subl..'\n'..node.sublabel or subl
        node._covenantProcessed = true
    end
end

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

local SLGroup = Class('ShadowlandsGroup', Group)

function SLGroup:Initialize(name, icon, defaults, covenant)
    Group.Initialize(self, name, icon, defaults)
    self.covenant = covenant
end

function SLGroup:IsEnabled()
    if self.covenant then
        return C_Covenants.GetActiveCovenantID() == self.covenant.id
    end
    return true
end

ns.Group = SLGroup

-------------------------------------------------------------------------------

ns.groups.ANIMA_SHARD = SLGroup('anima_shard', 'crystal_b', ns.GROUP_HIDDEN)
ns.groups.BONUS_BOSS = SLGroup('bonus_boss', 'peg_wr')
ns.groups.BONUS_EVENT = SLGroup('bonus_event', 'peg_wy')
ns.groups.CARRIAGE = SLGroup('carriages', 'horseshoe')
ns.groups.RIFTSTONE = SLGroup('riftstone', 'portal_b')
ns.groups.SLIME_CAT = SLGroup('slime_cat', 3732497)

ns.groups.FAE_NETWORK = SLGroup('fae_network', 'portal_p', ns.GROUP_HIDDEN, ns.covenants.FAE)
ns.groups.KYR_NETWORK = SLGroup('kyr_network', 'portal_b', ns.GROUP_HIDDEN, ns.covenants.KYR)
ns.groups.NEC_NETWORK = SLGroup('nec_network', 'portal_g', ns.GROUP_HIDDEN, ns.covenants.NEC)
ns.groups.VEN_NETWORK = SLGroup('ven_network', 'portal_r', ns.GROUP_HIDDEN, ns.covenants.VEN)

-------------------------------------------------------------------------------
------------------------------------ MAPS -------------------------------------
-------------------------------------------------------------------------------

local SLMap = Class('ShadowlandsMap', Map)

function SLMap:Prepare ()
    Map.Prepare(self)
    for coord, node in pairs(self.nodes) do
        -- Update rlabel and sublabel for covenant-restricted nodes
        ProcessCovenant(node)
    end
end

ns.Map = SLMap