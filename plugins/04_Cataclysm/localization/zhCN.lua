local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['options_icons_safari'] = '{achievement:6585} / {achievement:6586}'
L['options_icons_safari_desc'] = '显示 {achievement:6585} 和 {achievement:6586} 成就中战斗宠物的位置。'

-------------------------------------------------------------------------------
--------------------------------- MOUNT HYJAL ---------------------------------
-------------------------------------------------------------------------------

L['hyjal_phase0'] = '阶段0 - 进攻之前'
L['hyjal_phase1'] = '阶段1 - 进攻'
L['hyjal_phase2'] = '阶段2 - 玛洛恩庇护所'
L['hyjal_phase3'] = '阶段3 - 熔火前线'
L['hyjal_phase4a'] = '阶段4A - 猛禽德鲁伊区域'
L['hyjal_phase4b'] = '阶段4B - 暗影守望者区域'
L['hyjal_phase5'] = '阶段5 - 复苏之地'

L['hyjal_phase1_note'] = '在 {location:海加尔山} 完成任务直到获得 {quest:29389}，此任务线将开启进攻阶段。'
L['hyjal_phase2_note'] = '要进入阶段2，需要10个 {currency:416} 才能完成 {quest:29198}。\n\n可以通过日常任务赚取 {currency:416}。'
L['hyjal_phase3_note'] = '要进入阶段3，需要15个 {currency:416} 才能完成 {quest:29201}。\n\n可以通过日常任务赚取 {currency:416}。'
L['hyjal_phase4_note'] = [[
阶段4分为2个部分。

要进入阶段4A，需要150个 {currency:416} 给 {quest:29181}。
要进入阶段4B，需要150个 {currency:416} 给 {quest:29214}。

通过日常任务赚取 {currency:416}。
]]
L['hyjal_phase5_note'] = '要进入阶段5，需要完成 {quest:29215} 和 {quest:29182}。' -- review

L['portal_molten_front'] = '熔火前线传送门'
L['portal_mount_hyjal'] = '海加尔山传送门'

L['spider_hill_note'] = [[
到达 {location:寡妇之巢} 的最高点。

要到达顶部，必须在不杀死 {npc:52981} 的情况下激怒他们。他们会施放 {spell:97959} 并把你拉起来。
满级角色推荐方法：

{item:46725}
恶魔猎手：{spell:185245}
德鲁伊：{spell:2908}
猎人：{spell:1513}
法师：{spell:241178}
圣骑士：{spell:62124}
牧师：{spell:528}
潜行者：{spell:36554}
萨满祭司：{spell:52870}
战士：{spell:355}
]]

L['fiery_lords_note'] = '一次只有一个 {title:领主} 出现，杀死它后下一个会立即出现。'
L['have_we_met_note'] = [[
当到达 {location:塞西莉亚的栖地}时，一群精英战士将协助完成日常任务。

使用表情 {emote:/招手}，{emote:/wave} 向所需的 NPC 挥手。
]]

L['ludicrous_speed_note'] = [[
在任务 {daily:29147} 中，获得65层 {spell:100957}。

{npc:52594} 给予15层
{npc:52596} 给予5层
{npc:52595} 给予1层
]]

L['angry_little_squirrel_note'] = '将一个敌人拉到树上，一个 {npc:52195} 会撞到它的头上。'
L['hyjal_bear_cub_note'] = '在任务 {daily:29161} 时，向 {npc:52795} 投掷 {npc:52688}。' -- review
L['child_of_tortolla_note'] = '在任务 {daily:29101} 时，不要将乌龟踢入水中，而是将其踢向 {npc:52219}。' -- review
L['ready_for_raiding_2_note'] = '在 {location:拉格纳罗斯的领域} 击败下列 {title:烈焰副官}，并且不被他们的特殊攻击命中。'
L['flawless_victory_note'] = '单独击杀一个 {npc:52552} 而且没有受到 {spell:97243} 或 {spell:96688} 的任何伤害。'
L['gang_war_note'] = '在 {location:塞西莉亚的栖地} 的 {daily:29128} 任务中赢得决斗。'
L['death_from_above_note'] = [[
当 {daily:29290} 时轰炸 {title:<火焰领主>}。

{note:一次只有3个 {title:火焰领主} 处于激活状态。为了更快地完成成就，请不要交任务，明天再来。}
]]
L['flamewaker_sentinel_note'] = '使用 {item:137663} 降低他的生命值后其施放 {spell:98369}。躲开所有的射击后击杀他。'
L['flamewaker_shaman_note'] = '使用 {item:137663} 让其低血量。等他自杀。'

L['options_icons_spider_hill_desc'] = '显示 {achievement:5872} 成就中的位置。'
L['options_icons_fiery_lords_desc'] = '显示 {achievement:5861} 成就中元素的位置。'
L['options_icons_have_we_met_desc'] = '显示 {achievement:5865} 成就中任务的位置。'
L['options_icons_unbeatable_pterodactyl_desc'] = '显示 {achievement:5860} 成就中任务的位置。'
L['options_icons_ludicrous_speed_desc'] = '显示 {achievement:5862} 成就中的位置。'
L['options_icons_critter_revenge_desc'] = '显示 {achievement:5868} 成就中小动物的位置。'
L['options_icons_r4r_2_desc'] = '显示 {achievement:5873} 成就中的位置。'
L['options_icons_flawless_victory_desc'] = '显示 {achievement:5873} 成就中的位置。'
L['options_icons_gang_war_desc'] = '显示 {achievement:5864} 成就中的位置。'
L['options_icons_death_from_above_desc'] = '显示 {achievement:5874} 成就中的位置。'
L['options_icons_infernal_ambassadors_desc'] = '显示 {achievement:5869} 成就中的位置。'
L['options_icons_fireside_chat_desc'] = '显示 {achievement:5870} 成就中 NPC 的位置。'
L['options_icons_molten_flow_master_desc'] = '显示 {achievement:5871} 成就中的位置。'

-------------------------------------------------------------------------------
---------------------------------- DEEPHOLM -----------------------------------
-------------------------------------------------------------------------------

L['portal_to_therazane'] = '通往塞拉赞恩王座的传送门'
L['portal_to_earth_temple'] = '通往大地神殿的传送门'

L['fungal_frenzy_note'] = [[
同时经受住 {spell:83803}、{spell:83805}、{spell:83747} 和 {spell:83804} 的效果。

{dot:Bronze} {spell:83747}
带白边的红棕色蘑菇。
让你缩小。

{dot:Red} {spell:83803}
大红色蘑菇，水边附近。
用红色的雾气包围你，增加造成的伤害。

{dot:Blue} {spell:83805}
带白边的蓝色蘑菇。
让你跑得更快。

{dot:LightBlue} {spell:83804}
带粉红色圆点的紫色蘑菇。
最后收集这个蘑菇，它只会把你扔到空中，不会得到任何增益。

{note:只有在 {daily:27050} 任务中才能找到蘑菇。
所有蘑菇都显示为 {object:萌芽的赤红蘑菇}。}
]]
L['rock_lover_note'] = '远离 {npc:44258}。'

L['options_icons_broodmother_desc'] = '显示 {achievement:5447} 成就中任务的位置。'
L['options_icons_fungal_frenzy_desc'] = '显示 {achievement:5450} 成就中蘑菇的位置。'
L['options_icons_fungalophobia_desc'] = '显示 {achievement:5445} 成就中任务的位置。'
L['options_icons_glop_family_desc'] = '显示 {achievement:5446} 成就中任务的位置。'
L['options_icons_rock_lover_desc'] = '显示 {achievement:5449} 成就中 {npc:49956} 的位置。'

-------------------------------------------------------------------------------
----------------------------------- VASHJIR -----------------------------------
-------------------------------------------------------------------------------

L['options_icons_whale_shark_desc'] = '显示 {achievement:4975} 成就中 {npc:40728} 的位置。'

-------------------------------------------------------------------------------
----------------------------- TWILIGHT HIGHLANDS ------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------
