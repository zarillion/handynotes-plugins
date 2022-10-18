-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group
local L = ns.locale
local Class = ns.Class

local Collectible = ns.node.Collectible

-------------------------------------------------------------------------------

ns.expansion = 6

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCIENT_NO_MORE = Group('ancient_no_more', 874578,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.ARCHAEOLOGY_TREASURE = Group('archaeology_treasure', 'chest_bn',
    {defaults = ns.GROUP_HIDDEN})
ns.groups.ATTACK_PLANS = Group('attack_plans', 'chest_pp',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.BREAKER_OF_CHAINS = Group('breaker_of_chains', 1035046,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.BROKE_BACK_PRECIPICE = Group('broke_back_precipice', 1016245,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.BURIED_TREASURES = Group('buried_treasures', 134436,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.CUT_OFF_THE_HEAD = Group('cut_off_the_head', 311945,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.DELECTABLE_OGRE_DELICACIES = Group('delectable_ogre_delicacies',
    236571, {defaults = ns.GROUP_HIDDEN})
ns.groups.FIGHT_THE_POWER = Group('fight_the_power', 1042626,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.FINDING_YOUR_WAYSTONES = Group('finding_your_waystones', 528693,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.KING_OF_THE_MONSTERS = Group('king_of_the_monsters', 236192,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.MAKING_THE_CUT = Group('making_the_cut', 458732,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.OFFERING = Group('offering', 'chest_gn', {defaults = ns.GROUP_HIDDEN})
ns.groups.PEPE = Group('pepe', 1044996, {defaults = ns.GROUP_HIDDEN})
ns.groups.PROVE_YOUR_STRENGTH = Group('prove_your_strength', 975743,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SHRINES_OF_TEROKK = Group('shrines_of_terokk', 'chest_pk',
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SONG_OF_SILENCE = Group('song_of_silence', 136005,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.STEAMWHEEDLE = Group('steamwheedle', 463874,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.THE_STABLE_MASTER = Group('the_stable_master', 975744,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.WINGMEN = Group('wingmen', 132917, {defaults = ns.GROUP_HIDDEN})
ns.groups.WOULD_YOU_LIKE_A_PAMPLET = Group('would_you_like_a_pamplet', 441147,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.WRITING_IN_THE_SNOW = Group('writing_in_the_snow', 133680,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.YOU_HAVE_BEEN_RYLAKINATED = Group('you_have_been_rylakinated', 894222,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})
ns.groups.GARRFOLLOWER = Group('GarrFollower', 1033590, {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
---------------------------- Squirrel Achievement -----------------------------
-------------------------------------------------------------------------------

local Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})

ns.node.Squirrel = Squirrel
