local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "ruRU", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "Ткань"
L["leather"] = "Кожа"
L["mail"] = "Кольчуга"
L["plate"] = "Латы"

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
L["warglaives"] = "Боевые клинки"

L["ring"] = "Кольцо"
L["amulet"] = "Шея"
L["cloak"] = "Плащ"
L["trinket"] = "Аксессуар"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "Получение ссылки на предмет ..."
L["in_cave"] = "В пещере."
L["in_small_cave"] = "В маленькой пещере."
L["in_water_cave"] = "В подводной пещере."
L["in_water"] = "В воде."
L["weekly"] = "Раз в неделю"
L["normal"] = "Обычный"
L["hard"] = "Сложный"
L["mount"] = "Маунт"
L["pet"] = "Питомец"
L["toy"] = "Игрушка"
L["completed"] = "Получено"
L["incomplete"] = "Незавершенно"
L["known"] = "Известно"
L["missing"] = "Отсутствует"
L["unobtainable"] = "Недоступно"
L["unlearnable"] = "Не поддается изучению"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_add_tomtom"] = "Добавить в TomTom"
L["context_menu_hide_node"] = "Скрыть эту точку"
L["context_menu_restore_hidden_nodes"] = "Восстановить все скрытые точки"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "Настройки значков"
L["options_icons_treasures"] = "Значки Сокровищ"
L["options_icons_rares"] = "Значки Редких Монстров"
L["options_icons_caves"] = "Значки Пещер"
L["options_icons_pet_battles"] = "Значки Битв Питомцев"
L["options_icons_other"] = "Прочие Значки"
L["options_scale"] = "Масштаб"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "Прозрачность"
L["options_opacity_desc"] = "0 = прозрачный, 1 = непрозрачный"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "Отображение"
L["options_general_settings"] = "Общие настройки"
L["options_toggle_looted_rares"] = "Всегда показывать всех редких монстров"
L["options_toggle_looted_rares_desc"] = "Показать каждого редкого монстра, независимо от полученной награды"
L["options_toggle_looted_treasures"] = "Полученные сокровища"
L["options_toggle_looted_treasures_desc"] = "Показать каждое сокровище, независимо от статуса получения"
L["options_toggle_hide_done_rare"] = "Скрыть редких монстров, если все награды получены"
L["options_toggle_hide_done_rare_desc"] = "Скрыть всех редких монстров, с которых получены все награды."
L["options_toggle_hide_minimap"] = "Скрыть все значки на миникарте"
L["options_toggle_hide_minimap_desc"] = "Скрывает все иконки из этого аддона на миникарте и отображает их только на главной карте."
L["options_restore_hidden_nodes"] = "Восстановить скрытые места"
L["options_restore_hidden_nodes_desc"] = "Восстановите все скрытые места, используя контекстное меню, вызываемое правой кнопкой мыши."

L["options_toggle_battle_pets_desc"] = "Показать местонахождение наставников боевых питомцев и NPC."
L["options_toggle_battle_pets"] = "Боевые Питомцы"
L["options_toggle_caves_desc"] = "Отображение входов в пещеры для других точек."
L["options_toggle_caves"] = "Пещеры"
L["options_toggle_chests_desc"] = "Отображение местоположения сундуков (можно добывать ежедневно)."
L["options_toggle_chests"] = "Сундуки"
L["options_toggle_misc"] = "Разное"
L["options_toggle_npcs"] = "НПС"
L["options_toggle_rares_desc"] = "Показать местонахождение редких НПС."
L["options_toggle_rares"] = "Редкие монстры"
L["options_toggle_supplies_desc"] = "Показать все возможные места сундуков с военными припасами."
L["options_toggle_supplies"] = "Сундук с военными припасами"
L["options_toggle_treasures"] = "Сокровища"

---------------------------------- TOOLTIP ---------------------------------

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
L["options_toggle_show_debug"] = "Отлаживать"
L["options_toggle_show_debug_desc"] = "Показать отладочную информацию"
L["options_toggle_force_nodes"] = "Точки"
L["options_toggle_force_nodes_desc"] = "Принудительно отобразить все точки"
