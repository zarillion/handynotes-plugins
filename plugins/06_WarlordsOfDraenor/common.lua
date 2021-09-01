-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local Group = ns.Group

-------------------------------------------------------------------------------

ns.expansion = 6

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ATTACK_PLANS = Group('attack_plans', 'chest_pp', {defaults=ns.GROUP_HIDDEN75})
ns.groups.PEPE = Group('pepe', 'chest_gn', {defaults=ns.GROUP_HIDDEN75})
