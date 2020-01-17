local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhCN", false, true)
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum"] = "奥丹姆"
L["uldum_intro_note"] = "完成奥丹姆引导任务解锁稀有、宝藏及突袭任务！"

L["aqir_flayer"] = "与Aqir Hive Workers(待翻译)以及Aqir Reapers(待翻译)共享刷新点。"
L["aqir_titanus"] = "与Aqir Goliaths(待翻译)共享刷新点。"
L["aqir_warcaster"] = "与Aqir Voidcasters(待翻译)共享刷新点。"
L["atekhramun"] = "踩死碎坑上的幼蝎直到稀有出现"
L["chamber_of_the_moon"] = "在月亮密室下面。"
L["chamber_of_the_stars"] = "在群星密室下面。"
L["chamber_of_the_sun"] = "在太阳密室里面。"
L["friendly_alpaca"] = "在一个位置只出现10分钟，然后在一个较长的刷新时间后再次出现。每天可以喂食羊驼一个基萨尔野菜，7天(次)后会获得坐骑"
L["gersahl"] = "基萨尔野菜"
L["gersahl_note"] = "用于喂食友善的羊驼，可以获得坐骑：春袭羊驼。不需要草药学即可采摘。模型较小，可被草药学追踪，建议调低环境细节和地表景观两项设置参数以防伤眼"
L["hmiasma"] = "喂食它周围的软泥直到启动。"
L["left_eye"] = "放下全视之眼玩具的左半部分（原文，笔者也不明白，待更新）"
L["platform"] = "刷新在浮空平台顶部。"
L["reshef"] = "与Voidwarped High Guards(待翻译)共享刷新点。"
L["spirit_cave"] = "黑暗仪祭师的洞穴入口。"
L["uatka"] = "需要三个人分别点击神秘的装置，消耗一个日灼护符，出自阿玛塞特圣箱。注意：一个人也可以点击，护符并不返还，别问我怎么知道的"
L["wastewander"] = "与Wastewander Hosts(待翻译)共享刷新点。"

L["amathet_cache"] = "阿玛赛特宝箱"
L["black_empire_cache"] = "黑暗帝国宝箱"
L["black_empire_coffer"] = "黑暗帝国宝匣"
L["infested_cache"] = "Infested Cache"
L["infested_strongbox"] = "Infested Strongbox"
L["amathet_reliquary"] = "阿玛赛特圣箱"

L["cursed_relic"] = "需要虚曲圣物"
L["tolvir_relic"] = "需要托维尔圣物"

-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale"] = "锦绣谷"
L["vale_intro_note"] = "完成锦绣谷引导任务解锁稀有、宝藏及突袭任务！"

L["big_blossom_mine"] = "在矿洞里面，入口在东北方向。"
L["guolai"] = "Inside Guo-Lai Halls."
L["jadec"] = "Inside Guo-Lai Halls. Go left at the bottom of the stairs."
L["pools_of_power"] = "在能量池中，入口在鎏金亭（地图中间雕像）。"
L["right_eye"] = "放下全视之眼玩具的右半部分（原文，笔者也不明白，待更新）"
L["tisiphon"] = "Click on Danielle's Lucky Fishing Rod."

L["ambered_cache"] = "Ambered Cache"
L["ambered_coffer"] = "Ambered Coffer"
L["mogu_plunder"] = "Mogu Plunder"
L["mogu_strongbox"] = "Mogu Strongbox"

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
L["unlearnable"] = "无法解锁（相对当前职业、专精或其它原因）"

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes 恩佐斯的幻象"
L["context_menu_add_tomtom"] = "加入到TomTom"
L["context_menu_hide_node"] = "隐藏此项"
L["context_menu_restore_hidden_nodes"] = "恢复所有隐藏项"

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L["options_title"] = "恩佐斯的幻象"

------------------------------------ ICONS ------------------------------------

L["options_icon_settings"] = "图标设置"
L["options_icons_treasures"] = "宝藏图标"
L["options_icons_rares"] = "稀有图标"
L["options_icons_caves"] = "洞穴图标"
L["options_icons_pet_battles"] = "战斗宠物图标"
L["options_icons_other"] = "其他图标"
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

L["options_toggle_battle_pets_desc"] = "显示宠物训练师的位置"
L["options_toggle_battle_pets"] = "战斗宠物"
L["options_toggle_caves_desc"] = "显示其它项的洞穴入口"
L["options_toggle_caves"] = "洞穴"
L["options_toggle_chests_desc"] = "显示宝箱位置 (每日刷新)。"
L["options_toggle_chests"] = "宝箱"
L["options_toggle_misc"] = "杂项"
L["options_toggle_npcs"] = "NPC"
L["options_toggle_rares_desc"] = "显示稀有位置"
L["options_toggle_rares"] = "稀有"
L["options_toggle_supplies_desc"] = "显示战争补给箱（空投）的位置"
L["options_toggle_supplies"] = "战争补给箱（空投）"
L["options_toggle_treasures"] = "宝藏"

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
