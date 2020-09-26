-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale
local Map = ns.Map
local Requirement = ns.requirement.Requirement

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
    KYR = { id = 1, icon = ns.icons['kyrian_sigil'] },
    VEN = { id = 2, icon = ns.icons['venthyr_sigil'] },
    FAE = { id = 3, icon = ns.icons['nightfae_sigil'] },
    NEC = { id = 4, icon = ns.icons['necrolord_sigil'] }
}

local function ProcessCovenant (node)
    if node.covenant == nil then return end
    local data = C_Covenants.GetCovenantData(node.covenant.id)

    -- Add covenant sigil to top-right corner of tooltip
    node.rlabel = node.covenant.icon:link(13)

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

function SLGroup:IsEnabled()
    if self.covenant then
        return C_Covenants.GetActiveCovenantID() == self.covenant.id
    end
    return true
end

ns.Group = SLGroup

-------------------------------------------------------------------------------

ns.groups.ANIMA_SHARD = SLGroup({name='anima_shard', defaults=ns.GROUP_HIDDEN})
ns.groups.BONUS_BOSS = SLGroup({name='bonus_boss'})
ns.groups.BONUS_EVENT = SLGroup({name='bonus_event'})
ns.groups.CARRIAGE = SLGroup({name='carriages'})
ns.groups.RIFTSTONE = SLGroup({name='riftstone'})
ns.groups.SLIME_CAT = SLGroup({name='slime_cat'})

ns.groups.FAE_NETWORK = SLGroup({
    name='fae_network',
    covenant=ns.covenants.FAE,
    defaults=ns.GROUP_HIDDEN
})

ns.groups.KYR_NETWORK = SLGroup({
    name='kyr_network',
    covenant=ns.covenants.KYR,
    defaults=ns.GROUP_HIDDEN
})

ns.groups.NEC_NETWORK = SLGroup({
    name='nec_network',
    covenant=ns.covenants.NEC,
    defaults=ns.GROUP_HIDDEN
})

ns.groups.VEN_NETWORK = SLGroup({
    name='ven_network',
    covenant=ns.covenants.VEN,
    defaults=ns.GROUP_HIDDEN
})

-------------------------------------------------------------------------------
--------------------------------- REQUIREMENTS --------------------------------
-------------------------------------------------------------------------------

local AnimaChannel = Class('AnimaChannel', Requirement)

function AnimaChannel:IsMet()
    local info = C_Garrison.GetTalentInfo(self.id)
    self.text = L["anima_channeled"]:format(info.name)
    return info and info.researched
end

ns.requirement.AnimaChannel = AnimaChannel

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