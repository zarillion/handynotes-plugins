local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L['bag'] = '背包'
L['cloth'] = '布甲'
L['leather'] = '皮甲'
L['mail'] = '锁甲'
L['plate'] = '板甲'
L['cosmetic'] = '装饰品'

L['1h_mace'] = '单手锤'
L['1h_sword'] = '单手剑'
L['1h_axe'] = '单手斧'
L['2h_mace'] = '双手锤'
L['2h_axe'] = '双手斧'
L['2h_sword'] = '双手剑'
L['shield'] = '盾牌'
L['dagger'] = '匕首'
L['staff'] = '法杖'
L['fist'] = '拳套'
L['polearm'] = '长柄武器'
L['bow'] = '弓'
L['gun'] = '枪'
L['wand'] = '魔杖'
L['crossbow'] = '弩'
L['offhand'] = '副手'
L['warglaive'] = '战刃'

L['ring'] = '戒指'
L['neck'] = '项链'
L['cloak'] = '披风'
L['trinket'] = '饰品'

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L['activation_unknown'] = '激活未知！'
L['requirement_not_found'] = '所需位置未知！'
L['multiple_spawns'] = '可能出现在多个位置。'
L['shared_drops'] = '共享掉落'
L['zone_drops_label'] = '区域掉落'
L['zone_drops_note'] = '下面列出的物品可以由该区域中的多个怪物掉落。'

L['requires'] = '需要'
L['ranked_research'] = '%s（等级 %d/%d）'

L['focus'] = '焦点'
L['retrieving'] = '正在获取物品链接…'
L['in_cave'] = '在洞穴。'
L['in_small_cave'] = '在小洞穴。'
L['in_water_cave'] = '在水下洞穴。'
L['in_waterfall_cave'] = '瀑布后面洞穴中。'
L['in_water'] = '在水中。'
L['hourly'] = '每小时'
L['daily'] = '每日'
L['weekly'] = '每周'
L['normal'] = '普通'
L['hard'] = '困难'
L['heirloom'] = '传家宝'
L['item'] = '物品'
L['mount'] = '坐骑'
L['pet'] = '宠物'
L['recipe'] = '配方'
L['spell'] = '法术'
L['title'] = '头衔'
L['toy'] = '玩具'
L['currency'] = '货币'
L['rep'] = '声望'
L['completed'] = '已完成'
L['incomplete'] = '未完成'
L['known'] = '已获得'
L['missing'] = '未获得'
L['unobtainable'] = '无法获得'
L['unlearnable'] = '无法解锁'
L['defeated'] = '已击杀'
L['undefeated'] = '未击杀'
L['elite'] = '精英'
L['quest'] = '任务'
L['quest_repeatable'] = '可重复任务'
L['achievement'] = '成就'

L['follower_type_follower'] = '追随者'
L['follower_type_champion'] = '勇士'
L['follower_type_companion'] = '伙伴'

L['rep_honored'] = '尊敬'
L['rep_revered'] = '崇敬'
L['rep_exalted'] = '崇拜'

L['time_format_12hrs'] = '%m/%d - %I:%M %p 本地时间'
L['time_format_24hrs'] = '%m/%d - %H:%M 本地时间'

-------------------------------------------------------------------------------
--------------------------------- DRAGONRACES ---------------------------------
-------------------------------------------------------------------------------

L['dr_your_best_time'] = '最快时间：'
L['dr_your_target_time'] = '目标时间：'
L['dr_best_time'] = ' - %s：%.3f秒'
L['dr_target_time'] = ' - %s：%s秒 / %s秒'
L['dr_normal'] = '普通'
L['dr_advanced'] = '进阶'
L['dr_reverse'] = '反向'
L['dr_challenge'] = '挑战'
L['dr_reverse_challenge'] = '反向挑战'
L['dr_storm_race'] = '风雷之速'
L['dr_bronze'] = '完成竞速获得 ' .. ns.color.Bronze('青铜') .. '。'
L['dr_vendor_note'] = '用 {currency:2588} 兑换观龙者手稿和幻化。'
L['options_icons_dragonrace'] = '驭龙竞速'
L['options_icons_dragonrace_desc'] = '显示区域内全部驭龙竞速的位置。'

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L['context_menu_set_waypoint'] = '设置地图路径点'
L['context_menu_add_tomtom'] = '添加到 TomTom'
L['context_menu_add_group_tomtom'] = '添加组到 TomTom'
L['context_menu_add_focus_group_tomtom'] = '添加相关项到 TomTom'
L['context_menu_hide_node'] = '隐藏此项'
L['context_menu_restore_hidden_nodes'] = '恢复所有隐藏项'

L['map_button_text'] = '调整此地图上的图标显示，透明度和缩放。'

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L['options_global'] = '全局'
L['options_zones'] = '区域'

L['options_general_description'] = '控制该项的特性及其奖励的设置。'
L['options_global_description'] = '控制全部区域中全部的项显示的设置。'
L['options_zones_description'] = '控制每个单独区域中的项显示的设置。'

L['options_open_settings_panel'] = '打开设置面板…'
L['options_open_world_map'] = '打开世界地图'
L['options_open_world_map_desc'] = '打开此区域世界地图。'

------------------------------------ ICONS ------------------------------------

L['options_icon_settings'] = '图标设置'
L['options_scale'] = '缩放'
L['options_scale_desc'] = '1 = 100%'
L['options_opacity'] = '透明度'
L['options_opacity_desc'] = '0 = 透明, 1 = 不透明'

---------------------------------- VISIBILITY ---------------------------------

L['options_show_worldmap_button'] = '显示世界地图按钮'
L['options_show_worldmap_button_desc'] = '在世界地图右上角添加一个快速切换下拉菜单。'

L['options_visibility_settings'] = '可见性'
L['options_general_settings'] = '通用'
L['options_show_completed_nodes'] = '显示已完成'
L['options_show_completed_nodes_desc'] = '显示全部项即使它们今天已被拾取或完成。'
L['options_toggle_hide_done_rare'] = '隐藏所有拾取已解锁的稀有'
L['options_toggle_hide_done_rare_desc'] = '隐藏所有拾取已解锁的稀有。'
L['options_toggle_hide_minimap'] = '隐藏小地图上的所有图标'
L['options_toggle_hide_minimap_desc'] = '在小地图上隐藏此插件的所有图标，只会在世界地图上显示。'
L['options_toggle_maximized_enlarged'] = '世界地图最大化时图标放大'
L['options_toggle_maximized_enlarged_desc'] = '当世界地图最大化，放大全部图标。'
L['options_toggle_use_char_achieves'] = '使用角色成就'
L['options_toggle_use_char_achieves_desc'] = '显示成就进度为此角色而不是全部账号。'
L['options_toggle_per_map_settings'] = '使用区域特定设置'
L['options_toggle_per_map_settings_desc'] = '应用切换，缩放和透明度设置到每个区域。'
L['options_restore_hidden_nodes'] = '恢复隐藏项'
L['options_restore_hidden_nodes_desc'] = '使用右击菜单恢复全部隐藏项。'

L['options_rewards_settings'] = '奖励'
L['options_reward_types'] = '显示奖励类型'
L['options_mount_rewards'] = '显示坐骑奖励'
L['options_mount_rewards_desc'] = '在提示中显示坐骑奖励并跟踪其收集状态。'
L['options_pet_rewards'] = '显示宠物奖励'
L['options_pet_rewards_desc'] = '在提示中显示宠物奖励并跟踪其收集状态。'
L['options_recipe_rewards'] = '显示配方奖励'
L['options_recipe_rewards_desc'] = '在提示中显示配方奖励并跟踪其收集状态。'
L['options_toy_rewards'] = '显示玩具奖励'
L['options_toy_rewards_desc'] = '在提示中显示玩具奖励并跟踪其收集状态。'
L['options_transmog_rewards'] = '显示幻化奖励'
L['options_transmog_rewards_desc'] = '在提示中显示幻化奖励并跟踪其收集状态。'
L['options_all_transmog_rewards'] = '显示无法获取的幻化奖励'
L['options_all_transmog_rewards_desc'] = '显示其它职业可以获取的幻化奖励。'

L['options_icons_misc_desc'] = '显示其它未分类项的位置。'
L['options_icons_misc'] = '杂项'
L['options_icons_pet_battles_desc'] = '显示宠物训练师和 NPC 的位置。'
L['options_icons_pet_battles'] = '战斗宠物'
L['options_icons_rares_desc'] = '显示稀有 NPC 的位置。'
L['options_icons_rares'] = '稀有'
L['options_icons_treasures_desc'] = '显示隐藏宝藏位置。'
L['options_icons_treasures'] = '宝藏'
L['options_icons_vendors_desc'] = nil
L['options_icons_vendors'] = nil

------------------------------------ FOCUS ------------------------------------

L['options_focus_settings'] = '兴趣点'
L['options_poi_color'] = '兴趣点颜色'
L['options_poi_color_desc'] = '图标为焦点时设定兴趣点颜色。'
L['options_path_color'] = '路径颜色'
L['options_path_color_desc'] = '图标为焦点时设定路径颜色。'
L['options_reset_poi_colors'] = '颜色重置'
L['options_reset_poi_colors_desc'] = '重置上面的颜色为预设。'

----------------------------------- TOOLTIP -----------------------------------

L['options_tooltip_settings'] = '提示'
L['options_toggle_show_loot'] = '显示拾取'
L['options_toggle_show_loot_desc'] = '在提示中加入拾取信息'
L['options_toggle_show_notes'] = '显示注释'
L['options_toggle_show_notes_desc'] = '在提示中添加注释'
L['options_toggle_use_standard_time'] = '使用12小时时钟'
L['options_toggle_use_standard_time_desc'] = '在提示中使用12小时时钟（如：8:00 PM）而不是24小时时钟（如：20:00）。'

--------------------------------- DEVELOPMENT ---------------------------------

L['options_dev_settings'] = '开发'
L['options_toggle_show_debug_currency'] = '除错货币 ID'
L['options_toggle_show_debug_currency_desc'] = '显示货币除错更改信息（需要重载）'
L['options_toggle_show_debug_map'] = '除错地图 ID'
L['options_toggle_show_debug_map_desc'] = '显示地图除错信息'
L['options_toggle_show_debug_quest'] = '除错任务 ID'
L['options_toggle_show_debug_quest_desc'] = '显示任务除错更改信息（需要重载）'
L['options_toggle_force_nodes'] = '强制显示项'
L['options_toggle_force_nodes_desc'] = '强制显示所有项'
