local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhCN", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L["cloth"] = "布甲"
L["leather"] = "皮甲"
L["mail"] = "锁甲"
L["plate"] = "板甲"

L["1h_mace"] = "单手锤"
L["1h_sword"] = "单手剑"
L["1h_axe"] = "单手斧"
L["2h_mace"] = "双手锤"
L["2h_axe"] = "双手斧"
L["2h_sword"] = "双手剑"
L["shield"] = "盾牌"
L["dagger"] = "匕首"
L["staff"] = "法杖"
L["fist"] = "拳套"
L["polearm"] = "长柄武器"
L["bow"] = "弓"
L["gun"] = "枪"
L["wand"] = "魔杖"
L["crossbow"] = "弩"
L["offhand"] = "副手"
L["warglaive"] = "战刃"

L["ring"] = "戒指"
L["amulet"] = "项链"
L["cloak"] = "披风"
L["trinket"] = "饰品"

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L["retrieving"] = "正在获取此项信息"
L["in_cave"] = "在洞穴。"
L["in_small_cave"] = "在小洞穴。"
L["in_water_cave"] = "在水下洞穴。"
L["weekly"] = "每周"
L["normal"] = "普通"
L["hard"] = "困难"
L["mount"] = "坐骑"
L["pet"] = "宠物"
L["toy"] = "玩具"
L["completed"] = "已完成"
L["incomplete"] = "未完成"
L["known"] = "已获得"
L["missing"] = "未获得"
L["unobtainable"] = "无法获得"
L["unlearnable"] = "无法解锁"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_add_tomtom"] = "加入到TomTom"
L["context_menu_hide_node"] = "隐藏此项"
L["context_menu_restore_hidden_nodes"] = "恢复所有隐藏项"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_global"] = "Global"
L["options_zones"] = "Zones"

L["options_general_description"] = "Settings that control the behavior of nodes and their rewards."
L["options_global_description"] = "Settings that control the display of all nodes in all zones."
L["options_zones_description"] = "Settings that control the display of nodes in each individual zone."

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "图标设置"
L["options_scale"] = "縮放"
L["options_scale_desc"] = "1 = 100%"
L["options_opacity"] = "透明度"
L["options_opacity_desc"] = "0 = 透明, 1 = 不透明"

---------------------------------- VISIBILITY ---------------------------------

L["options_visibility_settings"] = "可见性"
L["options_general_settings"] = "一般"
L["options_toggle_looted_rares"] = "永远显示所有稀有"
L["options_toggle_looted_rares_desc"] = "显示所有稀有（不论当日是否已拾取其掉落）"
L["options_toggle_looted_treasures"] = "显示已拾取的宝藏"
L["options_toggle_looted_treasures_desc"] = "显示所有宝藏（不论当日是否已拾取其掉落）"
L["options_toggle_hide_done_rare"] = "隐藏已解锁所有掉落的稀有"
L["options_toggle_hide_done_rare_desc"] = "隐藏已解锁所有掉落的稀有，这意味着如果该稀有你没有需求，则不会显示在地图上"
L["options_toggle_hide_minimap"] = "隐藏小地图上的所有图标"
L["options_toggle_hide_minimap_desc"] = "在小地图上隐藏此插件的所有图标，当启用此选项时，插件只会在世界地图上显示"
L["options_restore_hidden_nodes"] = "恢复隐藏项"
L["options_restore_hidden_nodes_desc"] = "恢复所有由右键菜单隐藏的节点"

L["options_icons_pet_battles_desc"] = "显示宠物训练师的位置"
L["options_icons_pet_battles"] = "战斗宠物"
L["options_icons_caves_desc"] = "显示其它项的洞穴入口"
L["options_icons_caves"] = "洞穴"
L["options_icons_daily_chests_desc"] = "显示宝箱位置 (每日刷新)。"
L["options_icons_daily_chests"] = "宝箱"
L["options_icons_misc"] = "杂项"
L["options_icons_npcs"] = "NPC"
L["options_icons_other"] = "其他图标"
L["options_icons_rares_desc"] = "显示稀有位置"
L["options_icons_rares"] = "稀有"
L["options_icons_supplies_desc"] = "显示战争补给箱（空投）的位置"
L["options_icons_supplies"] = "战争补给箱（空投）"
L["options_icons_treasures"] = "宝藏"

---------------------------------- TOOLTIP ---------------------------------

L["options_tooltip_settings"] = "鼠标提示"
L["options_tooltip_settings_desc"] = "鼠标提示"
L["options_toggle_show_loot"] = "显示掉落"
L["options_toggle_show_loot_desc"] = "在鼠标提示中加入掉落信息"
L["options_toggle_show_notes"] = "显示注解"
L["options_toggle_show_notes_desc"] = "在鼠标提示中添加注解"

--------------------------------- DEVELOPMENT ---------------------------------

L["options_dev_settings"] = "开发"
L["options_dev_settings_desc"] = "开发者选项"
L["options_toggle_show_debug"] = "调试"
L["options_toggle_show_debug_desc"] = "显示调试内容"
L["options_toggle_force_nodes"] = "强制显示节点"
L["options_toggle_force_nodes_desc"] = "强制显示所有节点"
