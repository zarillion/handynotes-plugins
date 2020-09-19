max_line_length = false
redefined = false
unused = false

read_globals = {
    -- WoW helper functions
    'FormatPercentage',
    'hooksecurefunc',
    'sqrt',
    'strsub',
    'wipe',

    -- WoW API functions
    'AuraUtil',
    'C_Covenants',
    'C_CurrencyInfo',
    'C_Map',
    'C_MapExplorationInfo',
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
    'GetCVar',
    'GetItemInfo',
    'GetItemSpecInfo',
    'GetPlayerFacing',
    'GetQuestObjectiveInfo',
    'GetSpellInfo',
    'GetTime',
    'IsAddOnLoaded',
    'IsLeftAltKeyDown',
    'IsLeftControlKeyDown',
    'PlayerHasToy',
    'PlaySound',
    'UiMapPoint',
    'UnitFactionGroup',
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
    'WorldMapButton',
    'WorldMapFrame',
    'WorldMapTooltip',

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
    read_globals = {'Class', 'isinstance', 'clone'}
}