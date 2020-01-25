-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale

local Map = ns.Map
local Node = ns.node.Node
local NPC = ns.node.NPC
local Rare = ns.node.Rare
local Mount = ns.reward.Mount
local Toy = ns.reward.Toy
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local stormwind = Map({ id=1470 })

function stormwind:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end
    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['mail_munch'] = true

options.groupVisions = {
    type = "header",
    name = L["horrific_visions"],
    order = 20,
}

options.mailVisions = {
    type = "toggle",
    arg = "mail_munch",
    name = L["options_toggle_mail_munch"],
    desc = L["options_toggle_mail_munch_desc"],
    order = 21,
    width = "normal",
}

-------------------------------------------------------------------------------
-------------------------------- MAIL MUNCHER ---------------------------------
-------------------------------------------------------------------------------

local MAIL = Node({icon=133468, label=L["mailbox"], rewards={
    Mount({id=1315, item=174653}) -- Mail Muncher
}, note=L["mail_muncher"]})

stormwind.nodes[54805830] = MAIL
stormwind.nodes[62107570] = MAIL
stormwind.nodes[62303080] = MAIL
stormwind.nodes[76306430] = MAIL

stormwind.nodes[58905290] = Node({icon=237272, label="Void-Touched Skull"})

stormwind.nodes[60526202] = Rare({id=158284, rewards={
    Toy({item=174926}) -- Overly Sensitive Void Spectacles
}}) -- Craggle Wobbletop

-------------------------------------------------------------------------------

ns.maps[stormwind.id] = stormwind
