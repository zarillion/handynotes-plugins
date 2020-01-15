local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhTW", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum"] = "奧丹姆"
L["uldum_intro_note"] = "完成介紹性任務鏈，以解鎖奧丹姆中的稀有物品，寶藏和攻擊任務。"

L["aqir_flayer"] = "與Aqir Hive Workers以及Aqir Reapers共享出生點。"
L["aqir_titanus"] = "與Aqir Goliaths共享出生點。"
L["aqir_warcaster"] = "與Aqir Voidcasters共享出生點。"
L["atekhramun"] = "壓碎附近的毒鱗蠍直到出現"
L["chamber_of_the_moon"] = "在月亮之室地下。"
L["chamber_of_the_stars"] = "在星星之室地下。"
L["chamber_of_the_sun"] = "在太陽之室裡面。"
L["friendly_alpaca"] = "餵七次羊駝基薩爾綠色蔬菜，以作為坐騎收藏。 在一個位置出現10分鐘，然後重生。"
L["gersahl"] = "基薩爾灌木叢"
L["gersahl_note"] = "餵給友善的羊駝七次獲得坐騎。 不需要草藥。"
L["hmiasma"] = "餵食它周圍的軟泥，直到它啟動。"
L["left_eye"] = "放下全視之眼玩具的左半部分。"
L["platform"] = "出生在浮動平台頂部。"
L["reshef"] = "與Voidwarped High Guards共享出生點。"
L["spirit_cave"] = "Spirit of Dark Ritualist Zakahn的洞穴入口。"
L["wastewander"] = "與Wastewander Hosts共享出生點。"

L["amathet_cache"] = "Amathet Cache"
L["black_empire_cache"] = "Black Empire Cache"
L["black_empire_coffer"] = "Black Empire Coffer"
L["infested_cache"] = "Infested Cache"
L["infested_strongbox"] = "Infested Strongbox"
L["amathet_reliquary"] = "Amathet Reliquary"

L["cursed_relic"] = "需要詛咒聖物"
L["tolvir_relic"] = "需要托維爾聖物"

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale"] = "恆春谷"
L["vale_intro_note"] = "完成介紹性任務鏈，以解鎖恆春谷中的稀有物品，寶藏和攻擊任務。"

L["big_blossom_mine"] = "在礦內，入口在東北。"
L["guolai"] = "在郭萊大廳中。"
L["jadec"] = "在郭萊大廳中，在樓梯底部向左走。"
L["pools_of_power"] = "在能量之池中，入口在黃金寶塔。"
L["right_eye"] = "放下全視之眼玩具的右半部分。"
L["tisiphon"] = "單擊丹妮爾的幸運釣魚竿。"

L["ambered_cache"] = "Ambered Cache"
L["ambered_coffer"] = "Ambered Coffer"
L["mogu_plunder"] = "Mogu Plunder"
L["mogu_strongbox"] = "Mogu Strongbox"

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "布甲"
L["leather"] = "皮甲"
L["mail"] = "鎖甲"
L["plate"] = "鎧甲"

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
L["amulet"] = "項鍊"
L["cloak"] = "披風"
L["trinket"] = "飾品"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "檢索項目連結 ..."
L["in_cave"] = "在洞穴。"
L["in_small_cave"] = "在小洞穴。"
L["in_water_cave"] = "在水下洞穴。"
L["weekly"] = "每週"
L["normal"] = "普通"
L["hard"] = "困難"
L["mount"] = "坐騎"
L["pet"] = "寵物"
L["toy"] = "玩具"
L["completed"] = "已完成"
L["incomplete"] = "未完成"
L["known"] = "已收藏"
L["missing"] = "缺少"
L["unobtainable"] = "無法獲得"
L["unlearnable"] = "無法學習"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes 恩若司的幻象"
L["context_menu_add_tomtom"] = "加入到TomTom"
L["context_menu_hide_node"] = "隱藏此節點"
L["context_menu_restore_hidden_nodes"] = "恢復所有隱藏節點"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_title"] = "恩若司的幻象"

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "圖示設定"
L["options_icons_treasures"] = "寶藏圖示"
L["options_icons_rares"] = "稀有圖示"
L["options_icons_caves"] = "洞穴圖示"
L["options_icons_pet_battles"] = "戰寵圖示"
L["options_icons_other"] = "其他圖示"
L["options_scale"] = "縮放"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "透明度"
L["options_opacity_desc"] = "0 = 透明, 1 = 不透明"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "可視性"
L["options_general_settings"] = "一般"
L["options_toggle_looted_rares"] = "永遠顯示所有稀有"
L["options_toggle_looted_rares_desc"] = "不論拾取狀態顯示所有稀有"
L["options_toggle_looted_treasures"] = "已經拾取的寶藏"
L["options_toggle_looted_treasures_desc"] = "不論拾取狀態顯示所有寶藏"
L["options_toggle_hide_done_rare"] = "如果戰利品已收藏，隱藏稀有"
L["options_toggle_hide_done_rare_desc"] = "隱藏所有戰利品已收藏的稀有。"
L["options_toggle_hide_minimap"] = "隱藏小地圖上的所有圖示"
L["options_toggle_hide_minimap_desc"] = "在小地圖上隱藏此插件的所有圖示，並只在主地圖上顯示它們。"

L["options_toggle_battle_pets_desc"] = "顯示戰寵訓練師與NPC的位置。"
L["options_toggle_battle_pets"] = "戰寵"
L["options_toggle_caves_desc"] = "顯示其他節點的洞穴入口。"
L["options_toggle_caves"] = "洞穴"
L["options_toggle_chests_desc"] = "顯示寶箱位置 (每日可拾取的)。"
L["options_toggle_chests"] = "寶箱"
L["options_toggle_misc"] = "其他"
L["options_toggle_npcs"] = "NPC"
L["options_toggle_rares_desc"] = "顯示稀有NPC的位置。"
L["options_toggle_rares"] = "稀有"
L["options_toggle_supplies_desc"] = "顯示戰爭補給箱的所有可能位置。"
L["options_toggle_supplies"] = "戰爭補給空投"
L["options_toggle_treasures"] = "寶藏"

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "工具提示"
L["options_tooltip_settings_desc"] = "工具提示"
L["options_toggle_show_loot"] = "顯示戰利品"
L["options_toggle_show_loot_desc"] = "在工具提示中加入戰利品資訊"
L["options_toggle_show_notes"] = "顯示註記"
L["options_toggle_show_notes_desc"] = "在可用的工具提示中加入有用的註記"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "開發"
L["options_dev_settings_desc"] = "開發設定"
L["options_toggle_show_debug"] = "偵錯"
L["options_toggle_show_debug_desc"] = "顯示偵錯內容"
L["options_toggle_force_nodes"] = "強制節點"
L["options_toggle_force_nodes_desc"] = "強制顯示全部節點"
