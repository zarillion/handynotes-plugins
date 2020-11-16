local ADDON_NAME, ns = ...
local L = ns.NewLocale("zhTW")
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["bag"] = "背包"
L["cloth"] = "布甲"
L["leather"] = "皮甲"
L["mail"] = "鎖甲"
L["plate"] = "鎧甲"
L["cosmetic"] = "裝飾品"

L["1h_mace"] = "單手錘"
L["1h_sword"] = "單手劍"
L["1h_axe"] = "單手斧"
L["2h_mace"] = "雙手錘"
L["2h_axe"] = "雙手斧"
L["2h_sword"] = "雙手劍"
L["shield"] = "盾牌"
L["dagger"] = "匕首"
L["staff"] = "法杖"
L["fist"] = "拳套"
L["polearm"] = "長柄武器"
L["bow"] = "弓"
L["gun"] = "槍"
L["wand"] = "魔杖"
L["crossbow"] = "弩"
L["offhand"] = "副手"
L["warglaive"] = "戰刃"

L["ring"] = "戒指"
L["neck"] = "項鍊"
L["cloak"] = "披風"
L["trinket"] = "飾品"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["activation_unknown"] = "啟動條件未知"
L["requirement_not_found"] = "所需位置未知"

L["Requires"] = "需要"
L["focus"] = "追蹤"
L["retrieving"] = "正在取得物品連結 ..."
L["in_cave"] = "在洞穴裡。"
L["in_small_cave"] = "在小洞穴。"
L["in_water_cave"] = "在水下洞穴。"
L["in_waterfall_cave"] = "在瀑布後的洞穴。"
L["in_water"] = "在水下。"
L["hourly"] = "每小時"
L["daily"] = "每日"
L["weekly"] = "每週"
L["normal"] = "普通"
L["hard"] = "困難"
L["mount"] = "坐騎"
L["pet"] = "寵物"
L["spell"] = "法術"
L["toy"] = "玩具"
L["completed"] = "已完成"
L["incomplete"] = "未完成"
L["known"] = "已收藏"
L["missing"] = "缺少"
L["unobtainable"] = "無法獲得"
L["unlearnable"] = "無法學習"
L["A"] = "可" -- available/alive
L["D"] = "死" -- dead/defeated
L["defeated"] = "已擊殺"
L["undefeated"] = "可擊殺"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_set_waypoint"] = "顯示地圖導航"
L["context_menu_add_tomtom"] = "加入 TomTom 路線導航"
L["context_menu_hide_node"] = "隱藏這個地圖點"
L["context_menu_restore_hidden_nodes"] = "恢復所有已被隱藏的地圖點"

L["map_button_text"] = "調整這個地圖的圖示可見性、透明度、和縮放大小。"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = "整體"
L["options_zones"] = "區域"

L["options_general_description"] = "設定地圖點和相關獎勵。"
L["options_global_description"] = "設定所有區域的地圖點該如何顯示。"
L["options_zones_description"] = "設定個別區域的地圖點該如何顯示。"

L["options_open_settings_panel"] = "開啟設置面板..."
L["options_open_world_map"] = "開啟世界地圖"
L["options_open_world_map_desc"] = "開啟世界地圖的此區域。"

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "圖示設定"
L["options_scale"] = "縮放大小"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "透明度"
L["options_opacity_desc"] = "0 = 全透明，1 = 不透明"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "選擇要顯示什麼"
L["options_general_settings"] = "一般"
L["options_show_completed_nodes"] = "顯示已完成的"
L["options_show_completed_nodes_desc"] = "就算全部都拾取過，或是今天的已經完成了，也要顯示所有地圖點。"
L["options_toggle_hide_done_rare"] = "隱藏戰利品都已收藏的稀有怪"
L["options_toggle_hide_done_rare_desc"] = "如果稀有怪掉落的物品都已收藏，隱藏這些稀有怪。"
L["options_toggle_hide_minimap"] = "隱藏小地圖的所有圖示"
L["options_toggle_hide_minimap_desc"] = "隱藏小地圖上來自此插件的所有圖示，只顯示在大地圖上。"
L["options_toggle_maximized_enlarged"] = "將最大化世界地圖的圖示放大"
L["options_toggle_maximized_enlarged_desc"] = "當世界地圖為最大化時，放大所有圖示。"
L["options_toggle_use_char_achieves"] = "使用角色成就"
L["options_toggle_use_char_achieves_desc"] = "顯示此角色的成就進度，而不是整個帳號。"
L["options_poi_refresh_rate"] = "小地圖更新頻率"
L["options_poi_refresh_rate_desc"] = "啟用“旋轉小地圖”後，刷新小地圖POI的頻率（以秒為單位）。"
L["options_restore_hidden_nodes"] = "恢復隱藏的圖示"
L["options_restore_hidden_nodes_desc"] = "恢復所有使用右鍵選單隱藏的圖示。"

L["options_icons_misc_desc"] = "顯示其他未分類的地圖點。"
L["options_icons_misc"] = "其他"
L["options_icons_pet_battles_desc"] = "顯示戰寵訓練師與 NPC 的位置。"
L["options_icons_pet_battles"] = "戰寵"
L["options_icons_rares_desc"] = "顯示稀有NPC的位置。"
L["options_icons_rares"] = "稀有"
L["options_icons_treasures"] = "寶藏"
L["options_icons_treasures_desc"] = "顯示隱藏寶藏的位置。"

---------------------------------- FOCUS ---------------------------------

L["options_focus_settings"] = "探索點 (POI)"
L["options_poi_color"] = "探索點顏色"
L["options_poi_color_desc"] = "當圖示被點選/追蹤時，設定探索點的顏色。"
L["options_path_color"] = "路徑顏色"
L["options_path_color_desc"] = "當圖示被點選/追蹤時，設定路徑的顏色。"
L["options_reset_poi_colors"] = "重置顏色"
L["options_reset_poi_colors_desc"] = "重置上面的顏色，恢復成預設值。"

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "滑鼠提示"
L["options_tooltip_settings_desc"] = "滑鼠提示"
L["options_toggle_show_loot"] = "顯示戰利品"
L["options_toggle_show_loot_desc"] = "在滑鼠提示中顯示掉落物品資訊。"
L["options_toggle_show_notes"] = "顯示註記"
L["options_toggle_show_notes_desc"] = "在滑鼠提示中顯示有用的註記，如果有的話。"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "開發"
L["options_dev_settings_desc"] = "開發設定"
L["options_toggle_show_debug_map"] = "除錯地圖 ID"
L["options_toggle_show_debug_map_desc"] = "顯示地圖的除錯資訊"
L["options_toggle_show_debug_quest"] = "除錯任務 ID"
L["options_toggle_show_debug_quest_desc"] = "顯示任務變動的除錯資訊"
L["options_toggle_force_nodes"] = "強制顯示地圖點"
L["options_toggle_force_nodes_desc"] = "強制顯示所有地圖點"
