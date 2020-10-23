ignore = {'ADDON_NAME'}
max_line_length = false
redefined = false
unused_args = false

read_globals = {
    -- WoW helper functions
    'FormatPercentage',
    'floor',
    'hooksecurefunc',
    'sqrt',
    'strsub',
    'wipe',

    -- WoW API functions
    'AuraUtil',
    'C_ContributionCollector',
    'C_Covenants',
    'C_CurrencyInfo',
    'C_Garrison',
    'C_Map',
    'C_MapExplorationInfo',
    'C_Minimap',
    'C_MountJournal',
    'C_PetJournal',
    'C_QuestLine',
    'C_QuestLog',
    'C_SuperTrack',
    'C_TaskQuest',
    'C_Timer',
    'C_TransmogCollection',
    'CombatLogGetCurrentEventInfo',
    'GetAchievementCriteriaInfo',
    'GetAchievementCriteriaInfoByID',
    'GetAchievementInfo',
    'GetAchievementLink',
    'GetAchievementNumCriteria',
    'GetContainerItemID',
    'GetContainerItemInfo',
    'GetContainerNumSlots',
    'GetCVar',
    'GetItemInfo',
    'GetItemSpecInfo',
    'GetPlayerFacing',
    'GetQuestObjectiveInfo',
    'GetSpellInfo',
    'GetTime',
    'EJ_GetInstanceInfo',
    'EJ_GetTierInfo',
    'IsAddOnLoaded',
    'IsLeftAltKeyDown',
    'IsLeftControlKeyDown',
    'PlayerHasToy',
    'PlaySound',
    'UiMapPoint',
    'UnitFactionGroup',
    'UnitAura',
    'UnitName',

    -- WoW Widget Functions
    'CloseDropDownMenus',
    'CreateFrame',
    'CreateFromMixins',
    'GameTooltip_AddNormalLine',
    'GameTooltip_SetTitle',
    'ToggleDropDownMenu',
    'UIDropDownMenu_AddButton',
    'UIDropDownMenu_AddSeparator',
    'UIDropDownMenu_SetDisplayMode',
    'UIDropDownMenu_SetInitializeFunction',

    -- WoW UI Frames & Mixins
    'GameTooltip',
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
    'HandyNotes.OnEnable'
}

files["tests/test_class.lua"] = {
    globals = {'TestClass', 'TestInheritance', 'TestHelpers'},
    read_globals = {'Class', 'Clone', 'IsInstance'}
}