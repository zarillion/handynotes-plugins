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
    'sqrt',
    'strsub',
    'strsplit',
    'time',
    'wipe',

    -- WoW API functions
    'AuraUtil',
    'C_ContributionCollector',
    'C_Covenants',
    'C_CurrencyInfo',
    'C_Garrison',
    'C_Item',
    'C_Map',
    'C_MapExplorationInfo',
    'C_Minimap',
    'C_MountJournal',
    'C_PetJournal',
    'C_PvP',
    'C_QuestLine',
    'C_QuestLog',
    'C_Spell',
    'C_SuperTrack',
    'C_TaskQuest',
    'C_Timer',
    'C_TransmogCollection',
    'C_VignetteInfo',
    'CombatLogGetCurrentEventInfo',
    'EJ_GetTierInfo',
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
    'GetFactionInfoByID',
    'GetItemInfo',
    'GetItemSpecInfo',
    'GetLocale',
    'GetPlayerFacing',
    'GetQuestObjectiveInfo',
    'GetSpellInfo',
    'GetText',
    'GetTime',
    'IsAddOnLoaded',
    'IsLeftAltKeyDown',
    'IsLeftControlKeyDown',
    'IsSpellKnown',
    'PlayerHasToy',
    'PlaySound',
    'UiMapPoint',
    'UnitAura',
    'UnitClass',
    'UnitFactionGroup',
    'UnitName',

    -- WoW Widget Functions
    'CloseDropDownMenus',
    'CreateFrame',
    'CreateFromMixins',
    'GameTooltip_AddNormalLine',
    'GameTooltip_SetTitle',
    'HideUIPanel',
    'InterfaceOptionsFrame_Show',
    'InterfaceOptionsFrame_OpenToCategory',
    'OpenWorldMap',
    'ToggleDropDownMenu',
    'UIDropDownMenu_AddButton',
    'UIDropDownMenu_AddSeparator',
    'UIDropDownMenu_SetDisplayMode',
    'UIDropDownMenu_SetInitializeFunction',

    -- WoW UI Frames & Mixins
    'GameMenuFrame',
    'GameTooltip',
    'InterfaceOptionsFrame',
    'MapCanvasDataProviderMixin',
    'MapCanvasPinMixin',
    'Minimap',
    'UIParent',
    'WorldMapFrame',

    -- WoW Global variables
    'ACHIEVEMENT_COLOR_CODE',
    'AVAILABLE_QUEST',
    'CLOSE',
    'ITEM_QUALITY_COLORS',
    'PVP_LABEL_WAR_MODE',
    'SOUNDKIT',
    'UIDROPDOWNMENU_MENU_VALUE',
    'UNKNOWN',
    'WORLD_MAP_FILTER_TITLE',

    -- Third-Party libraries/addons
    'HandyNotes',
    'LibStub',
    'TomTom',
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