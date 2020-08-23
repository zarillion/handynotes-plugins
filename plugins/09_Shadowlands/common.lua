-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale

local isinstance = ns.isinstance
local Rare = ns.node.Rare

-------------------------------------------------------------------------------
---------------------------------- COVENANTS ----------------------------------
-------------------------------------------------------------------------------

ns.covenants = {
    KYR = { id = 1, icon = ns.icons['kyrian_sigil'] },
    VEN = { id = 2, icon = ns.icons['venthyr_sigil'] },
    FAE = { id = 3, icon = ns.icons['nightfae_sigil'] },
    NEC = { id = 4, icon = ns.icons['necrolord_sigil'] }
}

ns.processCovenant = function (node)
    if node.covenant == nil then return end

    -- Are we a member of this covenant?
    local ismember = C_Covenants.GetActiveCovenantID() == node.covenant.id
    local data = C_Covenants.GetCovenantData(node.covenant.id)

    -- Add covenant sigil to top-right corner of tooltip
    node.rlabel = node.covenant.icon:link(13)

    -- Add sublabel describing covenant requirement
    if not ismember then
        node.sublabel = ns.color.Orange(string.format(L["covenant_required"], data.name))
    end
end