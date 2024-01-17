local ADDON_NAME, ns = ...
local L = ns.NewLocale('ruRU')
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L['bag'] = 'Сумка'
L['cloth'] = 'Ткань'
L['leather'] = 'Кожа'
L['mail'] = 'Кольчуга'
L['plate'] = 'Латы'
L['cosmetic'] = 'Косметический'

L['1h_mace'] = 'Одноручное Дробящее'
L['1h_sword'] = 'Одноручный Меч'
L['1h_axe'] = 'Одноручный Топор'
L['2h_mace'] = 'Двуручное Дробящее'
L['2h_axe'] = 'Двуручный Топор'
L['2h_sword'] = 'Двуручный Меч'
L['shield'] = 'Шит'
L['dagger'] = 'Кинжал'
L['staff'] = 'Посох'
L['fist'] = 'Кистевое'
L['polearm'] = 'Копье'
L['bow'] = 'Лук'
L['gun'] = 'Ружье'
L['wand'] = 'Жезл'
L['crossbow'] = 'Арбалет'
L['offhand'] = 'Левая Рука'
L['warglaive'] = 'Боевые клинки'

L['ring'] = 'Кольцо'
L['neck'] = 'Шея'
L['cloak'] = 'Плащ'
L['trinket'] = 'Аксессуар'

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L['activation_unknown'] = 'Активация неизвестна!'
L['requirement_not_found'] = 'Местоположение требования неизвестно!'
L['multiple_spawns'] = 'Может появляться в нескольких местах.'
L['shared_drops'] = 'Общий дроп'
L['zone_drops_label'] = 'Добыча в локации'
L['zone_drops_note'] = 'Перечисленные ниже предметы могут быть получены от нескольких монстров в этой локации.'

L['requires'] = 'Требуется'
L['ranked_research'] = '%s (Ранг %d/%d)'

L['focus'] = 'Фокус'
L['retrieving'] = 'Получение ссылки на предмет ...'
L['in_cave'] = 'В пещере.'
L['in_small_cave'] = 'В маленькой пещере.'
L['in_water_cave'] = 'В подводной пещере.'
L['in_waterfall_cave'] = 'В пещере за водопадом.'
L['in_water'] = 'В воде.'
L['hourly'] = 'Ежечасно'
L['daily'] = 'Ежедневно'
L['weekly'] = 'Раз в неделю'
L['normal'] = 'Обычный'
L['hard'] = 'Сложный'
L['heirloom'] = 'Наследуемый'
L['item'] = 'Предмет'
L['mount'] = 'Маунт'
L['pet'] = 'Питомец'
L['recipe'] = 'Рецепт'
L['spell'] = 'Заклинание'
L['title'] = 'Звание'
L['toy'] = 'Игрушка'
L['currency'] = 'Валюта'
L['rep'] = 'Реп.'
L['completed'] = 'Получено'
L['incomplete'] = 'Незавершенно'
L['known'] = 'Известно'
L['missing'] = 'Отсутствует'
L['unobtainable'] = 'Недоступно'
L['unlearnable'] = 'Не поддается изучению'
L['defeated'] = 'Побежден'
L['undefeated'] = 'Не Побежден'
L['elite'] = 'Элитный'
L['quest'] = 'Задание'
L['quest_repeatable'] = 'Повторяемое задание'
L['achievement'] = 'Достижение'

L['follower_type_follower'] = 'Последователь'
L['follower_type_champion'] = 'Чемпион'
L['follower_type_companion'] = 'Компаньон'

L['rep_honored'] = 'Уважение'
L['rep_revered'] = 'Почтение'
L['rep_exalted'] = 'Превознесение'

L['time_format_12hrs'] = '%e.%m - %I:%M %p Местное время'
L['time_format_24hrs'] = '%e.%m - %H:%M Местное время'

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

L['dr_your_best_time'] = 'Ваше лучшее время:'
L['dr_your_target_time'] = 'Отведенное время:'
L['dr_best_time'] = ' - %s: %.3fs'
L['dr_target_time'] = ' - %s: %ss / %ss'
L['dr_normal'] = 'Обычный'
L['dr_advanced'] = 'Сложный'
L['dr_reverse'] = 'Обратный маршрут'
L['dr_challenge'] = 'Испытание'
L['dr_reverse_challenge'] = 'Испытание наоборот'
L['dr_storm_race'] = 'Гонки Бурь'
L['dr_bronze'] = 'Завершите гонку, чтобы получить ' .. ns.color.Bronze('Бронзу') .. '.'
L['dr_vendor_note'] = 'Обмен {currency:2588} на манускрипты и трансмогрификацию.'
L['options_icons_dragonrace'] = 'Гонка на драконах'
L['options_icons_dragonrace_desc'] = 'Отображение местоположения гонок на драконах.'

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L['context_menu_set_waypoint'] = 'Установить путевую точку на карте'
L['context_menu_add_tomtom'] = 'Добавить в TomTom'
L['context_menu_add_group_tomtom'] = 'Добавить данные группы в TomTom'
L['context_menu_add_focus_group_tomtom'] = 'Добавьте связанные точки в TomTom'
L['context_menu_hide_node'] = 'Скрыть эту точку'
L['context_menu_restore_hidden_nodes'] = 'Восстановить все скрытые точки'

L['map_button_text'] = 'Настройте отображение значков, прозрачности и масштаба для этой карты.'

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L['options_global'] = 'Общие'
L['options_zones'] = 'Локации'

L['options_general_description'] = 'Настройки, управляющие поведением точек и их наградами.'
L['options_global_description'] = 'Настройки, управляющие отображением всех точек во всех локациях.'
L['options_zones_description'] = 'Настройки, управляющие отображением точек в каждой отдельной локации.'

L['options_open_settings_panel'] = 'Открыть панель настроек ...'
L['options_open_world_map'] = 'Карта открытого мира'
L['options_open_world_map_desc'] = 'Открыть эту локацию на карте мира.'

------------------------------------ ICONS ------------------------------------

L['options_icon_settings'] = 'Настройки значков'
L['options_scale'] = 'Масштаб'
L['options_scale_desc'] = '1 = 100%'
L['options_opacity'] = 'Прозрачность'
L['options_opacity_desc'] = '0 = прозрачный, 1 = непрозрачный'

---------------------------------- VISIBILITY ---------------------------------

L['options_show_worldmap_button'] = 'Показать кнопку карты мира'
L['options_show_worldmap_button_desc'] = 'Добавьте раскрывающееся меню с быстрым переключением в правом верхнем углу карты мира.'

L['options_visibility_settings'] = 'Отображение'
L['options_general_settings'] = 'Общие настройки'
L['options_show_completed_nodes'] = 'Показать завершеные'
L['options_show_completed_nodes_desc'] = 'Показать все точки, даже если они уже были получены или завершены сегодня.'
L['options_toggle_hide_done_rare'] = 'Скрыть редких монстров, если все награды получены'
L['options_toggle_hide_done_rare_desc'] = 'Скрыть всех редких монстров, с которых получены все награды.'
L['options_toggle_hide_minimap'] = 'Скрыть все значки на миникарте'
L['options_toggle_hide_minimap_desc'] = 'Скрывает все иконки из этого аддона на миникарте и отображает их только на главной карте.'
L['options_toggle_maximized_enlarged'] = 'Увеличивайте значки на увеличенной карте мира.'
L['options_toggle_maximized_enlarged_desc'] = 'Когда карта мира развернута, увеличьте все значки.'
L['options_toggle_use_char_achieves'] = 'Используйте достижения персонажа'
L['options_toggle_use_char_achieves_desc'] = 'Отображать прогресс достижений этого персонажа вместо общего на аккаунт.'
L['options_toggle_per_map_settings'] = 'Используйте настройки для конкретной локации'
L['options_toggle_per_map_settings_desc'] = 'Применяйте настройки переключателя, масштаба и непрозрачности к каждой локации индивидуально.'
L['options_restore_hidden_nodes'] = 'Восстановить скрытые места'
L['options_restore_hidden_nodes_desc'] = 'Восстановите все скрытые места, используя контекстное меню, вызываемое правой кнопкой мыши.'

L['options_rewards_settings'] = 'Награды'
L['options_reward_types'] = 'Показать типы наград'
L['options_mount_rewards'] = 'Показать маунтов'
L['options_mount_rewards_desc'] = 'Отображать маунтов во всплывающих подсказках и отслеживать их собранный статус.'
L['options_pet_rewards'] = 'Показать питомцев'
L['options_pet_rewards_desc'] = 'Отображать питомцев во всплывающих подсказках и отслеживать их статус.'
L['options_recipe_rewards'] = 'Показать награды с рецептами'
L['options_recipe_rewards_desc'] = 'Отображение наград с рецептами во всплывающих подсказках и отслеживание их собранного статуса.'
L['options_toy_rewards'] = 'Показать игрушки'
L['options_toy_rewards_desc'] = 'Отображать игрушки во всплывающих подсказках и отслеживание их статуса.'
L['options_transmog_rewards'] = 'Показать трансмогрификацию'
L['options_transmog_rewards_desc'] = 'Отображать трансмогрификацию во всплывающих подсказках и отслеживать их статус.'
L['options_all_transmog_rewards'] = 'Показать недоступные награды за трансмогрификацию'
L['options_all_transmog_rewards_desc'] = 'Показать награды за трансмогрификацию, доступные другим классам.'

L['options_icons_misc_desc'] = 'Отображение местоположения других разных точек.'
L['options_icons_misc'] = 'Разное'
L['options_icons_pet_battles_desc'] = 'Показать местонахождение наставников боевых питомцев и NPC.'
L['options_icons_pet_battles'] = 'Боевые Питомцы'
L['options_icons_rares_desc'] = 'Показать местонахождение редких НПС.'
L['options_icons_rares'] = 'Редкие монстры'
L['options_icons_treasures_desc'] = 'Отображение местоположения спрятанных сокровищ.'
L['options_icons_treasures'] = 'Сокровища'
L['options_icons_vendors_desc'] = nil
L['options_icons_vendors'] = nil

------------------------------------ FOCUS ------------------------------------

L['options_focus_settings'] = 'Точки интереса'
L['options_poi_color'] = 'Цвет точки интереса'
L['options_poi_color_desc'] = 'Устанавливает цвет точки, когда значок находится в фокусе.'
L['options_path_color'] = 'Цвет пути'
L['options_path_color_desc'] = 'Устанавливает цвет путей, когда значок находится в фокусе.'
L['options_reset_poi_colors'] = 'Сбросить цвета'
L['options_reset_poi_colors_desc'] = 'Восстановите значения по умолчанию для указанных выше цветов.'

----------------------------------- TOOLTIP -----------------------------------

L['options_tooltip_settings'] = 'Подсказки'
L['options_toggle_show_loot'] = 'Показать Лут'
L['options_toggle_show_loot_desc'] = 'Добавить информацию о добыче в подсказку'
L['options_toggle_show_notes'] = 'Показать заметки'
L['options_toggle_show_notes_desc'] = 'Добавьте полезные заметки в подсказку, где это возможно'
L['options_toggle_use_standard_time'] = 'Использовать 12-часовой формат'
L['options_toggle_use_standard_time_desc'] = 'Используйте 12-часовой формат времени (например, 08:00 вечера) вместо 24-часового формата (например, 20:00) во всплывающих подсказках.'

--------------------------------- DEVELOPMENT ---------------------------------

L['options_dev_settings'] = 'Разработка'
L['options_toggle_show_debug_currency'] = 'Отладка ID валюты'
L['options_toggle_show_debug_currency_desc'] = 'Показать отладочную информацию для изменений валюты (требуется перезагрузка)'
L['options_toggle_show_debug_map'] = 'Отладка идентификаторов карты'
L['options_toggle_show_debug_map_desc'] = 'Показать отладочную информацию для карт'
L['options_toggle_show_debug_quest'] = 'Отлаживать'
L['options_toggle_show_debug_quest_desc'] = 'Показать отладочную информацию'
L['options_toggle_force_nodes'] = 'Точки'
L['options_toggle_force_nodes_desc'] = 'Принудительно отобразить все точки'
