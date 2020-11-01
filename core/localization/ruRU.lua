local ADDON_NAME, ns = ...
local L = ns.NewLocale("ruRU")
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["bag"] = nil
L["cloth"] = "Ткань"
L["leather"] = "Кожа"
L["mail"] = "Кольчуга"
L["plate"] = "Латы"
L["cosmetic"] = nil

L["1h_mace"] = "Одноручное Дробящее"
L["1h_sword"] = "Одноручный Меч"
L["1h_axe"] = "Одноручный Топор"
L["2h_mace"] = "Двуручное Дробящее"
L["2h_axe"] = "Двуручный Топор"
L["2h_sword"] = "Двуручный Меч"
L["shield"] = "Шит"
L["dagger"] = "Кинжал"
L["staff"] = "Посох"
L["fist"] = "Кистевое"
L["polearm"] = "Копье"
L["bow"] = "Лук"
L["gun"] = "Ружье"
L["wand"] = "Жезл"
L["crossbow"] = "Арбалет"
L["offhand"] = "Левая Рука"
L["warglaive"] = "Боевые клинки"

L["ring"] = "Кольцо"
L["neck"] = "Шея"
L["cloak"] = "Плащ"
L["trinket"] = "Аксессуар"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["activation_unknown"] = nil
L["requirement_not_found"] = nil

L["Requires"] = nil
L["focus"] = nil
L["retrieving"] = "Получение ссылки на предмет ..."
L["in_cave"] = "В пещере."
L["in_small_cave"] = "В маленькой пещере."
L["in_water_cave"] = "В подводной пещере."
L["in_waterfall_cave"] = nil
L["in_water"] = "В воде."
L["hourly"] = nil
L["daily"] = nil
L["weekly"] = "Раз в неделю"
L["normal"] = "Обычный"
L["hard"] = "Сложный"
L["mount"] = "Маунт"
L["pet"] = "Питомец"
L["spell"] = nil
L["toy"] = "Игрушка"
L["completed"] = "Получено"
L["incomplete"] = "Незавершенно"
L["known"] = "Известно"
L["missing"] = "Отсутствует"
L["unobtainable"] = "Недоступно"
L["unlearnable"] = "Не поддается изучению"
L["A"] = nil
L["D"] = nil
L["defeated"] = nil
L["undefeated"] = nil

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_set_waypoint"] = nil
L["context_menu_add_tomtom"] = "Добавить в TomTom"
L["context_menu_hide_node"] = "Скрыть эту точку"
L["context_menu_restore_hidden_nodes"] = "Восстановить все скрытые точки"

L["map_button_text"] = nil

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = nil
L["options_zones"] = nil

L["options_general_description"] = nil
L["options_global_description"] = nil
L["options_zones_description"] = nil

L["options_open_settings_panel"] = nil
L["options_open_world_map"] = nil
L["options_open_world_map_desc"] = nil

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Настройки значков"
L["options_scale"] = "Масштаб"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Прозрачность"
L["options_opacity_desc"] = "0 = прозрачный, 1 = непрозрачный"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Отображение"
L["options_general_settings"] = "Общие настройки"
L["options_show_completed_nodes"] = nil
L["options_show_completed_nodes_desc"] = nil
L["options_toggle_hide_done_rare"] = "Скрыть редких монстров, если все награды получены"
L["options_toggle_hide_done_rare_desc"] = "Скрыть всех редких монстров, с которых получены все награды."
L["options_toggle_hide_minimap"] = "Скрыть все значки на миникарте"
L["options_toggle_hide_minimap_desc"] = "Скрывает все иконки из этого аддона на миникарте и отображает их только на главной карте."
L["options_toggle_use_char_achieves"] = nil
L["options_toggle_use_char_achieves_desc"] = nil
L["options_restore_hidden_nodes"] = "Восстановить скрытые места"
L["options_restore_hidden_nodes_desc"] = "Восстановите все скрытые места, используя контекстное меню, вызываемое правой кнопкой мыши."

L["options_icons_daily_chests_desc"] = "Отображение местоположения сундуков (можно добывать ежедневно)."
L["options_icons_daily_chests"] = "Сундуки"
L["options_icons_daily_quests_desc"] = nil
L["options_icons_daily_quests"] = nil
L["options_icons_misc_desc"] = nil
L["options_icons_misc"] = "Разное"
L["options_icons_pet_battles_desc"] = "Показать местонахождение наставников боевых питомцев и NPC."
L["options_icons_pet_battles"] = "Боевые Питомцы"
L["options_icons_quests_desc"] = nil
L["options_icons_quests"] = nil
L["options_icons_rares_desc"] = "Показать местонахождение редких НПС."
L["options_icons_rares"] = "Редкие монстры"
L["options_icons_treasures_desc"] = nil
L["options_icons_treasures"] = "Сокровища"

------------------------------------ FOCUS ------------------------------------

L["options_focus_settings"] = nil
L["options_poi_color"] = nil
L["options_poi_color_desc"] = nil
L["options_path_color"] = nil
L["options_path_color_desc"] = nil
L["options_reset_poi_colors"] = nil
L["options_reset_poi_colors_desc"] = nil

----------------------------------- TOOLTIP -----------------------------------

L["options_tooltip_settings"] = "Подсказки"
L["options_tooltip_settings_desc"] = "Подсказки"
L["options_toggle_show_loot"] = "Показать Лут"
L["options_toggle_show_loot_desc"] = "Добавить информацию о добыче в подсказку"
L["options_toggle_show_notes"] = "Показать заметки"
L["options_toggle_show_notes_desc"] = "Добавьте полезные заметки в подсказку, где это возможно"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Разработка"
L["options_dev_settings_desc"] = "Настройки разработчика"
L["options_toggle_show_debug_map"] = "Отладка идентификаторов карты"
L["options_toggle_show_debug_map_desc"] = "Показать отладочную информацию для карт"
L["options_toggle_show_debug_quest"] = "Отлаживать"
L["options_toggle_show_debug_quest_desc"] = "Показать отладочную информацию"
L["options_toggle_force_nodes"] = "Точки"
L["options_toggle_force_nodes_desc"] = "Принудительно отобразить все точки"
