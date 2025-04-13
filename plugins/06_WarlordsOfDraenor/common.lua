-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Group = ns.Group
local L = ns.locale
local Class = ns.Class

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Transmog = ns.reward.Transmog

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
ns.groups.GARRFOLLOWER = Group('GarrFollower', 1033590,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.KING_OF_THE_MONSTERS = Group('king_of_the_monsters', 236192,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.MAKING_THE_CUT = Group('making_the_cut', 458732,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.OFFERING = Group('offering', 'chest_gn', {defaults = ns.GROUP_HIDDEN})
ns.groups.PEPE = Group('pepe', 1044996, {defaults = ns.GROUP_HIDDEN})
ns.groups.PROVE_YOUR_STRENGTH = Group('prove_your_strength', 975743,
    {defaults = ns.GROUP_HIDDEN})
-- ns.groups.SAFARI = Group('safari', 4048818, {defaults = ns.GROUP_HIDDEN})
ns.groups.SHRINES_OF_TEROKK = Group('shrines_of_terokk', 'chest_pk',
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SONG_OF_SILENCE = Group('song_of_silence', 136005,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})
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

-------------------------------------------------------------------------------
---------------------------- Squirrel Achievement -----------------------------
-------------------------------------------------------------------------------

ns.node.Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

-- local Safari = Class('Safari', Collectible,
--     {icon = 'paw_g', group = ns.groups.SAFARI})

-- ns.node.Safari = {
--     AmberbarbWasp = Class('AmberbarbWasp', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     AxebeakHatchling = Class('AxebeakHatchling', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     BloodstingWasp = Class('BloodstingWasp', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     BrilliantBloodfeather = Class('BrilliantBloodfeather', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     FlatToothCalf = Class('FlatToothCalf', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     FrostfurRat = Class('FrostfurRat', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     FrostshellPincher = Class('FrostshellPincher', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     GoldenDawnfeather = Class('GoldenDawnfeather', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     IcespineHatchling = Class('IcespineHatchling', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     IronclawScuttler = Class('IronclawScuttler', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     Junglebeak = Class('Junglebeak', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     KelpScuttler = Class('KelpScuttler', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     LeatherhideRunt = Class('LeatherhideRunt', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     MoonshellCrab = Class('MoonshellCrab', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     MossbiteSkitterer = Class('MossbiteSkitterer', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     MudbackCalf = Class('MudbackCalf', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     MudJumper = Class('MudJumper', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     RoyalMoth = Class('RoyalMoth', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     ShadowSporebat = Class('ShadowSporebat', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     SwamplighterFirefly = Class('SwamplighterFirefly', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     ThicketSkitterer = Class('ThicketSkitterer', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     TwilightWasp = Class('TwilightWasp', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     Waterfly = Class('Waterfly', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     WoodWasp = Class('WoodWasp', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     }),
--     ZangarCrawler = Class('ZangarCrawler', Safari, {
--         id = nil,
--         rewards = {
--             Achievement({id = 9685, criteria = nil, oneline = false}),
--             Pet({id = nil})
--         }
--     })
-- }

-------------------------------------------------------------------------------
----------------------------- WORLD BOSS REWARDS ------------------------------
-------------------------------------------------------------------------------
-- Adds Rewards to World Boss tooltips.

local WORLD_BOSS_ENCOUNTER_IDS = {
    [1291] = {
        Achievement({id = 9423, criteria = 24768}), -- Goliaths of Gorgrond
        Achievement({id = 9838, criteria = 27652}) -- What A Strange, Interdimensional Trip It's Been
    }, -- Drov the Ruiner
    [1211] = {
        Achievement({id = 9423, criteria = 24767}), -- Goliaths of Gorgrond
        Achievement({id = 9838, criteria = 27651}) -- What A Strange, Interdimensional Trip It's Been
    }, -- Tarlna the Ageless
    [1452] = {}, -- Supreme Lord Kazzak
    [1262] = {
        Achievement({id = 9425}), -- So Grossly Incandescent
        Achievement({id = 9838, criteria = 27650}), -- What A Strange, Interdimensional Trip It's Been
        ns.reward.Spacer(), --
        Mount({id = 634, item = 116771}), -- Solar Spirehawk
        ns.reward.Spacer(), --
        Transmog({item = 120113, slot = L['mail']}), -- Talongrip Spurs
        Transmog({item = 115435, slot = L['mail']}), -- Leggings of Flowing Feathers
        Transmog({item = 120114, slot = L['plate']}), -- Wing-Forged Greatboots
        Transmog({item = 115433, slot = L['cloth']}), -- Solarflame Legwraps
        Transmog({item = 120111, slot = L['cloth']}), -- Featherflame Sandals
        Transmog({item = 120112, slot = L['leather']}), -- Phoenix-Rider Boots
        Transmog({item = 115434, slot = L['leather']}), -- Down-Lined Leggings
        Transmog({item = 115436, slot = L['plate']}) -- Phoenixfire Legplates
    } -- Rukhmar
}

ns.hooks.encounter.Add(nil, WORLD_BOSS_ENCOUNTER_IDS)

---------------- SHOW / HIDE POI DOT AT RUKHMAR SPAWN LOCATION ----------------

hooksecurefunc(EncounterJournalPinMixin, 'OnMouseEnter', function(self)
    if self and self.encounterID and self.encounterID == 1262 then
        local template = format('%sWorldMapPinTemplate', ADDON_NAME)
        ns.poi.POI({37183845}):Render(self:GetMap(), template)
    end
    GameTooltip:Show()
end)

hooksecurefunc(EncounterJournalPinMixin, 'OnMouseLeave',
    function(self) ns.WorldMapDataProvider:RefreshAllData() end)
