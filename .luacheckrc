-- LuaFormatter off
ignore = {'ADDON_NAME'}
max_line_length = false
redefined = false
unused_args = false

read_globals = {
    -- LUA / helper functions
    'date',
    'FormatPercentage',
    'floor',
    'format',
    'hooksecurefunc',
    'max',
    'sqrt',
    'strlower',
    'strsub',
    'strsplit',
    'strtrim',
    'time',
    'wipe',

    -- WoW API functions
    'AuraUtil',
    'BreakUpLargeNumbers',
    'C_AddOns',
    'C_AreaPoiInfo',
    'C_Calendar',
    'C_ContributionCollector',
    'C_Covenants',
    'C_CurrencyInfo',
    'C_DateAndTime',
    'C_Garrison',
    'C_Heirloom',
    'C_Item',
    'C_MajorFactions',
    'C_Map',
    'C_MapExplorationInfo',
    'C_Minimap',
    'C_MountJournal',
    'C_PetJournal',
    'C_ProfSpecs',
    'C_PvP',
    'C_QuestLine',
    'C_QuestLog',
    'C_Reputation',
    'C_Spell',
    'C_SuperTrack',
    'C_TaskQuest',
    'C_Texture',
    'C_Timer',
    'C_TooltipInfo',
    'C_TradeSkillUI',
    'C_Traits',
    'C_TransmogCollection',
    'C_UnitAuras',
    'C_VignetteInfo',
    'CombatLogGetCurrentEventInfo',
    'EJ_GetTierInfo',
    'Enum',
    'FlightMapFrame',
    'GetAchievementCriteriaInfo',
    'GetAchievementCriteriaInfoByID',
    'GetAchievementInfo',
    'GetAchievementLink',
    'GetAchievementNumCriteria',
    'GetContainerItemID',
    'GetContainerItemInfo',
    'GetContainerNumSlots',
    'GetCurrentRegion',
    'GetCVar',
    'GetFactionDataByID', -- 11.0
    'GetFactionInfoByID', -- 10.2.7
    'GetGameTime',
    'GetLocale',
    'GetPlayerFacing',
    'GetProfessionInfo',
    'GetProfessions',
    'GetQuestObjectiveInfo',
    'GetServerTime',
    'GetSpellInfo', -- 10.2.7
    'GetText',
    'GetTime',
    'GetTitleName',
    'InCombatLockdown',
    'IsLeftAltKeyDown',
    'IsLeftControlKeyDown',
    'IsSpellKnown',
    'IsTitleKnown',
    'PlayerHasToy',
    'PlaySound',
    'SecondsToTime',
    'Spell',
    'TooltipUtil',
    'UiMapPoint',
    'UnitClass',
    'UnitFactionGroup',
    'UnitName',

    -- WoW Widget Functions
    'CloseDropDownMenus',
    'CreateFrame',
    'CreateFromMixins',
    'EmbeddedItemTooltip_SetItemByID',
    'EmbeddedItemTooltip_SetSpellWithTextureByID',
    'GameTooltip_AddBlankLineToTooltip',
    'GameTooltip_AddNormalLine',
    'GameTooltip_SetTitle',
    'HideUIPanel',
    'OpenWorldMap',
    'Settings.OpenToCategory',

    -- WoW UI Frames & Mixins
    'AreaPOIPinMixin',
    'AreaPOIEventPinMixin',
    'EncounterJournalPinMixin',
    'GameMenuFrame',
    'GameTooltip',
    'MapCanvasDataProviderMixin',
    'MapCanvasPinMixin',
    'Minimap',
    'SettingsPanel',
    'UIParent',
    'VignettePinMixin',
    'WorldMapFrame',

    -- WoW Global variables
    'ACHIEVEMENT_COLOR_CODE',
    'ACHIEVEMENTS',
    'AVAILABLE_QUEST',
    'CLOSE',
    'ITEM_QUALITY_COLORS',
    'PVP_LABEL_WAR_MODE',
    'PVP_PROGRESS_REWARDS_HEADER',
    'SOUNDKIT',
    'UNKNOWN',
    'WORLD_MAP_FILTER_TITLE',

    -- Third-Party libraries/addons
    'HandyNotes',
    'HandyNotesWorldMapPinMixin',
    'LibStub',
    'TomTom',
    'L_UIDROPDOWNMENU_MENU_VALUE'
}

globals = {
    'HandyNotes.OnDisable',
    'HandyNotes.OnEnable',
    'SLASH_MOUNTID1',
    'SLASH_PETID1',
    'SlashCmdList'
}

files["tests/test_class.lua"] = {
    globals = {'TestClass', 'TestInheritance', 'TestHelpers'},
    read_globals = {'Class', 'Clone', 'IsInstance'}
}

files["tests/test_locales.lua"] = {
    globals = {
        'TestLocales',
        'GetCurrentRegion',
        'UnitFactionGroup',
        'format',
    }
}
-- LuaFormatter on
