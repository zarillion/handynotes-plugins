-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group
local L = ns.locale

local Class = ns.Class
local Reward = ns.reward.Reward
local Collectible = ns.node.Collectible
local Achievement = ns.reward.Achievement

local Red = ns.status.Red
local Green = ns.status.Green

-------------------------------------------------------------------------------

ns.expansion = 6

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCIENT_NO_MORE = Group('ancient_no_more', 874578,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.ATTACK_PLANS = Group('attack_plans', 'chest_pp',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.BREAKER_OF_CHAINS = Group('breaker_of_chains', 1035046,
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
ns.groups.MAKING_THE_CUT = Group('making_the_cut', 458732,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.PROVE_YOUR_STRENGTH = Group('prove_your_strength', 975743,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SONG_OF_SILENCE = Group('song_of_silence', 136005,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.STEAMWHEEDLE = Group('steamwheedle', 463874,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.THE_STABLE_MASTER = Group('the_stable_master', 975744,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.WOULD_YOU_LIKE_A_PAMPLET = Group('would_you_like_a_pamplet', 441147,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.WRITING_IN_THE_SNOW = Group('writing_in_the_snow', 133680,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.YOU_HAVE_BEEN_RYLAKINATED = Group('you_have_been_rylakinated', 894222,
    {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
------------------------------- FOLLOWER REWARD -------------------------------
-------------------------------------------------------------------------------
local Follower = Class('Follower', Reward)
ns.reward.Follower = Follower

-- local function Icon(icon) return '|T' .. icon .. ':0:0:1:-1|t ' end

function Follower:GetText()
    local follower = C_Garrison.GetFollowerInfo(self.id)

    return string.format('|T%s:0:0:1:-1|t %s (%s)', follower.portraitIconID,
        ns.color.White(follower.name), L['follower'])
end

function Follower:IsObtained()
    local follower = C_Garrison.GetFollowers(1)

    for k, v in pairs(follower) do
        if v.garrFollowerID == self.id and v.isCollected then return true end
    end
    return false
end

function Follower:GetStatus()
    return self:IsObtained() and Green(L['known']) or Red(L['missing'])
end

-------------------------------------------------------------------------------
---------------------------- Squirrel Achievement -----------------------------
-------------------------------------------------------------------------------

local Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})
ns.node.Squirrel = Squirrel
