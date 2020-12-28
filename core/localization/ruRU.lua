local ADDON_NAME, ns = ...
local L = ns.NewLocale("ruRU")
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["bag"] = "Сумка"
L["cloth"] = "Ткань"
L["leather"] = "Кожа"
L["mail"] = "Кольчуга"
L["plate"] = "Латы"
L["cosmetic"] = "Косметический"

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

L["activation_unknown"] = "Активация неизвестна!"
L["requirement_not_found"] = "Местоположение требования неизвестно!"

L["Requires"] = "Требуется"
L["focus"] = "Фокус"
L["retrieving"] = "Получение ссылки на предмет ..."
L["in_cave"] = "В пещере."
L["in_small_cave"] = "В маленькой пещере."
L["in_water_cave"] = "В подводной пещере."
L["in_waterfall_cave"] = "В пещере за водопадом."
L["in_water"] = "В воде."
L["hourly"] = "Ежечасно"
L["daily"] = "Ежедневно"
L["weekly"] = "Раз в неделю"
L["normal"] = "Обычный"
L["hard"] = "Сложный"
L["mount"] = "Маунт"
L["pet"] = "Питомец"
L["spell"] = "Заклинание"
L["toy"] = "Игрушка"
L["rep"] = "Реп."
L["completed"] = "Получено"
L["incomplete"] = "Незавершенно"
L["known"] = "Известно"
L["missing"] = "Отсутствует"
L["unobtainable"] = "Недоступно"
L["unlearnable"] = "Не поддается изучению"
L["defeated"] = "Побежден"
L["undefeated"] = "Не Побежден"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_set_waypoint"] = "Установить путевую точку на карте"
L["context_menu_add_tomtom"] = "Добавить в TomTom"
L["context_menu_hide_node"] = "Скрыть эту точку"
L["context_menu_restore_hidden_nodes"] = "Восстановить все скрытые точки"

L["map_button_text"] = "Настройте отображение значков, прозрачности и масштаба для этой карты."

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = "Общие"
L["options_zones"] = "Локации"

L["options_general_description"] = "Настройки, управляющие поведением точек и их наградами."
L["options_global_description"] = "Настройки, управляющие отображением всех точек во всех локациях."
L["options_zones_description"] = "Настройки, управляющие отображением точек в каждой отдельной локации."

L["options_open_settings_panel"] = "Открыть панель настроек ..."
L["options_open_world_map"] = "Карта открытого мира"
L["options_open_world_map_desc"] = "Открыть эту локацию на карте мира."

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Настройки значков"
L["options_scale"] = "Масштаб"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Прозрачность"
L["options_opacity_desc"] = "0 = прозрачный, 1 = непрозрачный"

---------------------------------- VISIBILITY ---------------------------------

L["options_show_worldmap_button"] = "Показать кнопку карты мира"
L["options_show_worldmap_button_desc"] = "Добавьте раскрывающееся меню с быстрым переключением в правом верхнем углу карты мира."

L["options_visibility_settings"] = "Отображение"
L["options_general_settings"] = "Общие настройки"
L["options_show_completed_nodes"] = "Показать завершеные"
L["options_show_completed_nodes_desc"] = "Показать все точки, даже если они уже были получены или завершены сегодня."
L["options_toggle_hide_done_rare"] = "Скрыть редких монстров, если все награды получены"
L["options_toggle_hide_done_rare_desc"] = "Скрыть всех редких монстров, с которых получены все награды."
L["options_toggle_hide_minimap"] = "Скрыть все значки на миникарте"
L["options_toggle_hide_minimap_desc"] = "Скрывает все иконки из этого аддона на миникарте и отображает их только на главной карте."
L["options_toggle_maximized_enlarged"] = "Увеличивайте значки на увеличенной карте мира."
L["options_toggle_maximized_enlarged_desc"] = "Когда карта мира развернута, увеличьте все значки."
L["options_toggle_use_char_achieves"] = "Используйте достижения персонажа"
L["options_toggle_use_char_achieves_desc"] = "Отображать прогресс достижений этого персонажа вместо общего на аккаунт."
L["options_toggle_per_map_settings"] = "Используйте настройки для конкретной локации"
L["options_toggle_per_map_settings_desc"] = "Применяйте настройки переключателя, масштаба и непрозрачности к каждой локации индивидуально."
L["options_restore_hidden_nodes"] = "Восстановить скрытые места"
L["options_restore_hidden_nodes_desc"] = "Восстановите все скрытые места, используя контекстное меню, вызываемое правой кнопкой мыши."

L["options_rewards_settings"] = "Награды"
L["options_reward_types"] = "Показать типы наград"
L["options_mount_rewards"] = "Показать маунтов"
L["options_mount_rewards_desc"] = "Отображать маунтов во всплывающих подсказках и отслеживать их собранный статус."
L["options_pet_rewards"] = "Показать питомцев"
L["options_pet_rewards_desc"] = "Отображать питомцев во всплывающих подсказках и отслеживать их статус."
L["options_toy_rewards"] = "Показать игрушки"
L["options_toy_rewards_desc"] = "Отображать игрушки во всплывающих подсказках и отслеживание их статуса."
L["options_transmog_rewards"] = "Показать трансмогрификацию"
L["options_transmog_rewards_desc"] = "Отображать трансмогрификацию во всплывающих подсказках и отслеживать их статус."

L["options_icons_misc_desc"] = "Отображение местоположения других разных точек."
L["options_icons_misc"] = "Разное"
L["options_icons_pet_battles_desc"] = "Показать местонахождение наставников боевых питомцев и NPC."
L["options_icons_pet_battles"] = "Боевые Питомцы"
L["options_icons_rares_desc"] = "Показать местонахождение редких НПС."
L["options_icons_rares"] = "Редкие монстры"
L["options_icons_treasures_desc"] = "Отображение местоположения спрятанных сокровищ."
L["options_icons_treasures"] = "Сокровища"

------------------------------------ FOCUS ------------------------------------

L["options_focus_settings"] = "Точки интереса"
L["options_poi_color"] = "Цвет точки интереса"
L["options_poi_color_desc"] = "Устанавливает цвет точки, когда значок находится в фокусе."
L["options_path_color"] = "Цвет пути"
L["options_path_color_desc"] = "Устанавливает цвет путей, когда значок находится в фокусе."
L["options_reset_poi_colors"] = "Сбросить цвета"
L["options_reset_poi_colors_desc"] = "Восстановите значения по умолчанию для указанных выше цветов."

----------------------------------- TOOLTIP -----------------------------------

L["options_tooltip_settings"] = "Подсказки"
L["options_toggle_show_loot"] = "Показать Лут"
L["options_toggle_show_loot_desc"] = "Добавить информацию о добыче в подсказку"
L["options_toggle_show_notes"] = "Показать заметки"
L["options_toggle_show_notes_desc"] = "Добавьте полезные заметки в подсказку, где это возможно"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "Разработка"
L["options_toggle_show_debug_map"] = "Отладка идентификаторов карты"
L["options_toggle_show_debug_map_desc"] = "Показать отладочную информацию для карт"
L["options_toggle_show_debug_quest"] = "Отлаживать"
L["options_toggle_show_debug_quest_desc"] = "Показать отладочную информацию"
L["options_toggle_force_nodes"] = "Точки"
L["options_toggle_force_nodes_desc"] = "Принудительно отобразить все точки"
