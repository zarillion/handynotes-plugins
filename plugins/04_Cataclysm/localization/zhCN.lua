local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

-------------------------------------------------------------------------------
--------------------------------- MOUNT HYJAL ---------------------------------
-------------------------------------------------------------------------------

L['hyjal_phase0'] = '阶段0 - 进攻之前'
L['hyjal_phase1'] = '阶段1 - 进攻'
L['hyjal_phase2'] = '阶段2 - 玛洛恩庇护所'
L['hyjal_phase3'] = '阶段3 - 熔火前线'
L['hyjal_phase4a'] = '阶段4A - 猛禽德鲁伊区域'
L['hyjal_phase4b'] = '阶段4B - 暗影守望者区域'
-- L['hyjal_phase5'] = '阶段5 - 复苏之地'

L['hyjal_phase1_note'] = '在 {location:海加尔山} 完成任务直到 {quest:29389} 开始进攻阶段。'
L['hyjal_phase2_note'] = '要进入阶段2，需要10个 {currency:416} 才能完成 {quest:29198}。\n\n可以通过日常任务赚取 {currency:416}。'
L['hyjal_phase3_note'] = '要进入阶段3，需要15个 {currency:416} 才能完成 {quest:29201}。\n\n可以通过日常任务赚取 {currency:416}。'
L['hyjal_phase4_note'] = [[阶段4分为2个部分。
要进入阶段4A，需要150个 {currency:416} 给 {quest:29181}。
要进入阶段4B，需要150个 {currency:416} 给 {quest:29214}。

通过日常任务赚取 {currency:416}。]]
-- L['hyjal_phase5_note'] = nil

L['portal_molten_front'] = '熔火前线传送门'

L['spider_hill_note'] = [[到达 {location:寡妇之巢} 的最高点。
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
L['fiery_lords_note'] = '一次只有一个 {npc:53267} 出现，杀死它后下一个会立即出现。'
L['have_we_met_note'] = [[当到达 {location:塞西莉亚的栖地}时，一群精英战士将协助完成日常任务。

使用表情 {emote:/招手}，{emote:/wave} 向所需的 NPC 挥手。]]
L['ludicrous_speed_note'] = [[在任务 {daily:29147} 中，获得65层 {spell:100957}。

{npc:52594} 给予15层
{npc:52596} 给予5层
{npc:52595} 给予1层]]
L['angry_little_squirrel_note'] = '将一个敌人拉到树上，一个 {npc:52195} 会撞到它的头上。'
L['hyjal_bear_cub_note'] = '在任务 {daily:29161} 时，向 {npc:52795} 投掷 {npc:52688}。' -- review
L['child_of_tortolla_note'] = '在任务 {daily:29101} 时，不要将乌龟踢入水中，而是将其踢向 {npc:52219}。' -- review
L['ready_for_raiding_2_note'] = '在 {location:拉格纳罗斯的领域} 击败下列 {npc:烈焰副官}，并且不被他们的特殊攻击命中。'
L['flawless_victory_note'] = '单独击杀一个 {npc:52552} 而且没有受到 {spell:97243} 或 {spell:96688} 的任何伤害。'
L['gang_war_note'] = nil
L['death_from_above_note'] = nil
