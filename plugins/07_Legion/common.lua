-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group

-------------------------------------------------------------------------------

ns.expansion = 7

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.LEGION_WAR_SUPPLIES = Group('legion_war_supplies', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.EREDAR_WAR_SUPPLIES = Group('eredar_war_supplies', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.ANCIENT_EREDAR_CACHE = Group('ancient_eredar_cache', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.VOID_SEEPED_CACHE = Group('void_seeped_cache', 'chest_bk',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.BRINGING_HOME_THE_BEACON = Group('bringing_home_the_beacon', 133267,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.HIGHER_DIMENSIONAL_LEARNING = Group('higher_dimensional_learning',
    134915, {defaults = ns.GROUP_HIDDEN})
