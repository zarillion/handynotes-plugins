local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhCN", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes 恩佐斯的幻象"
L["options_title"] = "恩佐斯的幻象"

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------

L["uldum"] = "奥丹姆"
L["uldum_intro_note"] = "完成奥丹姆引导任务解锁稀有、宝藏及突袭任务！"

L["aqir_flayer"] = ""
L["aqir_titanus"] = ""
L["aqir_warcaster"] = ""
L["atekhramun"] = "踩死碎坑上的幼蝎直到稀有出现"
L["chamber_of_the_moon"] = "在月亮密室下面。"
L["chamber_of_the_stars"] = "在群星密室下面。"
L["chamber_of_the_sun"] = "在太阳密室里面。"
L["friendly_alpaca"] = "在一个位置只出现10分钟，然后在一个较长的刷新时间后再次出现。每天可以喂食羊驼一个基萨尔野菜，7天(次)后会获得坐骑"
L["gersahl"] = "基萨尔野菜"
L["gersahl_note"] = "用于喂食友善的羊驼，可以获得坐骑：春袭羊驼。不需要草药学即可采摘。模型较小，可被草药学追踪，建议调低环境细节和地表景观两项设置参数以防伤眼"
L["hmiasma"] = "喂食它周围的软泥直到启动。"
L["left_eye"] = "掉落全视双眼玩具的左半部分"
L["platform"] = "刷新在浮空平台顶部。"
L["reshef"] = ""
L["spirit_cave"] = "黑暗仪祭师的洞穴入口。"
L["tomb_widow"] = "当柱子上出现白色卵囊时，杀死看不见的蜘蛛召唤"
L["uatka"] = "需要三个人分别点击神秘的装置，消耗一个日灼护符，出自阿玛塞特圣箱。注意：一个人也可以点击，护符并不返还，别问我怎么知道的"
L["wastewander"] = ""

L["amathet_cache"] = "阿玛赛特之箱"
L["black_empire_cache"] = "黑暗帝国宝箱"
L["black_empire_coffer"] = "黑暗帝国宝匣"
L["infested_cache"] = "感染宝箱"
L["infested_strongbox"] = "感染的保险箱"
L["amathet_reliquary"] = "阿玛赛特圣箱"

L["cursed_relic"] = "需要诅咒圣物"
L["tolvir_relic"] = "需要托维尔圣物"

L["options_icons_alpaca_uldum"] = "春袭羊驼"
L["options_icons_alpaca_uldum_desc"] = "显示友善的羊驼的位置"
L["options_icons_assault_events"] = "突袭事件"
L["options_icons_assault_events_desc"] = "显示可能的突袭事件的位置"
L["options_icons_coffers"] = "上锁的箱子"
L["options_icons_coffers_desc"] = "显示上锁的箱子（每次突袭拾取一次）"

L["ambush_settlers"] = "保护NPC"
L["combust_cocoon"] = "捡起自制火焰炸弹，然后丢到空中的卵上"
L["obsidian_extract"] = "摧毁所有虚化黑曜石"
L["purging_flames"] = "捡起尸体，丢进火里"
L["dormant_destroyer"] = "点击所有虚空浮石"
L["titanus_egg"] = "摧毁巨虫之卵，然后击杀大怪。注意：击杀中间的巨虫之卵！不然把旁边的卵给杀了，出现的小怪伤害极高且会不断击飞和击晕！"
L["hardened_hive"] = "拾取废土喷火器然后烧毁所有的虫卵。废土喷火器在地上，略微有点费眼。"
L["burrowing_terrors"] = "跳上挖洞的圣甲虫将它们压扁，注意：一定要跳！"

L["beacon_of_sun_king"] = "向内旋转三个雕像"
L["engine_of_ascen"] = "将四个雕像分别挡住激光"
L["lightblade_training"] = "杀死所有场上小怪直到精英出现"
L["raiding_fleet"] = "使用任务物品烧掉所有船只"
L["slave_camp"] = "打开所有奴隶笼子"
L["unsealed_tomb"] = "保护NPC"
L["voidflame_ritual"] = "扑灭所有虚触蜡烛"
L["call_of_void"] = "清除仪式晶塔周围所有的怪物"
L["executor_nzoth"] = "杀死恩佐斯的执行者，然后摧毁执行者之锚"
L["gaze_of_nzoth"] = "和眼球怪共享刷新，不断击杀眼球怪即可"
L["pyre_amalgamated"] = "地上有个融合者的火堆，点击之后击杀小怪直到稀有出现，火堆刷的不是很快"
L["summoning_ritual"] = "杀怪关门。每有一个玩家过来完成事件关门，就有几率在(50,78)，(50,88)和(55,79)这三个点随机刷新六种稀有，一次刷新三种。它们分别是癫狂伪装者阿弗罗姆、心能吞噬者拉亚斯、现实消化者罗约洛克、血肉饕餮者舒格舒尔、意志破坏者伊弗里姆、神智掠夺者佐斯拉姆。\n其中意志破坏者伊弗里姆有几率掉落玩具：廉价的克熙尔伪装。"
L["neferset_rare"] = "出现召唤仪式事件(坐标(50,78)，(50,88)和(55,79))的当天，每有一个玩家过来完成事件关门，就有几率在(50,78)，(50,88)和(55,79)这三个点随机刷新六种稀有，一次刷新三种"
L["solar_collector"] = "启用太阳能收集器四个方向上所有的能量水晶。点击每一个能量水晶会使其旁边的能量水晶反转。\n译者注（来源网上，并非最优解）：\n首先按上三下二的样式将能量水晶命名为\n1  2  3\n 4  5\n第一步：让1和3亮起来，哪个不亮点哪个\n第二步：观察245中哪些不亮\n第三步：全不亮:425\n              2不亮:213\n              4不亮:53\n              5不亮:21\n              45不亮:213425\n              24不亮:521\n              25不亮:53425"
L["unearthed_keeper"] = "摧毁出土的守护者"
L["ritual_ascension"] = "击杀日灼祭师"
L["virnall_front"] = "杀怪直到战争使者梅尼普塔出现"
L["kanebti"] = "将宝石甲虫塑像放置到甲虫神龛上"
L["monstrous_summon"] = "杀死所有深渊先驱"
L["dunewalker"] = "在上面的平台点击太阳精华来释放它"


-------------------------------------------------------------------------------
------------------------------------ VALE -------------------------------------
-------------------------------------------------------------------------------

L["vale"] = "锦绣谷"
L["vale_intro_note"] = "完成锦绣谷引导任务解锁稀有、宝藏及突袭任务！"

L["big_blossom_mine"] = "在矿洞里面，入口在东北方向。"
L["guolai"] = "在郭莱古厅里面"
L["guolai_left"] = "在郭莱古厅里面（左边通道）"
L["guolai_center"] = "在郭莱古厅里面（中间通道）"
L["guolai_right"] = "在郭莱古厅里面（右边通道）"
L["jadec"] = "在郭莱古厅里面，走到楼梯底部向左"
L["pools_of_power"] = "在能量池中，入口在鎏金亭（地图中间雕像）。"
L["right_eye"] = "掉落全视双眼玩具的右半部分"
L["tisiphon"] = "点击丹妮尔的好运鱼竿"

L["ambered_cache"] = "琥珀宝箱"
L["ambered_coffer"] = "琥珀制成的箱子"
L["mantid_relic"] = "需要螳螂妖圣物"
L["mogu_plunder"] = "魔古掠夺品"
L["mogu_strongbox"] = "魔古保险箱"
L["mogu_relic"] = "需要魔古圣物"


L["colored_flames"] = "四周的墙上有四色火炬，点击他们然后与雕像四周对应颜色的符文交互"
L["construction_ritual"] = "推动老虎雕像去挡住射线"
L["corruption_tear"] = "场地周围有个宝珠（泰坦信标），持有宝珠与场中泪滴交互，别让旋转的眼睛碰到你"
L["consuming_maw"] = "净化触手和和卵泡，直到被吐出去"
L["empowered_demo"] = "关闭所有幽魂圣瓮"
L["infested_statue"] = "把眼睛从雕像上挪开"
L["void_conduit"] = "点击柱子然后进去踩眼睛"
L["goldbough_guardian"] = "保护NPC"
L["protect_stout"] = "保护NPC"
L["bound_guardian"] = "杀怪救NPC"
L["abyssal_ritual"] = "杀完小怪杀大怪"
L["pulse_mound"] = "杀怪"
L["kunchong_incubator"] = "摧毁所有力场生成器"
L["mending_monstro"] = "摧毁所有愈疗琥珀"
L["war_banner"] = "燃烧战旗然后杀怪"
L["feeding_grounds"] = "销毁静滞容器"
L["swarm_caller"] = "销毁虫群召唤器"
L["empowered_wagon"] = "捡起影踪派军需品然后放在强化的战车下面"
L["mantid_hatch"] = "拾取影踪派喷火器烧毁所有螳螂妖虫卵"
L["ritual_wakening"] = "杀死卡拉克西唤醒者"
L["font_corruption"] = "旋转魔古雕像将光束连接到泰坦控制台左右两边的小圆柱上，然后点击泰坦控制台"
L["ravager_hive"] = "消灭树上所有的蜂巢"
L["noodle_cart"] = "保护胖熊猫"
L["serpent_binding"] = "杀怪"
L["stormchosen_arena"] = "杀怪"
L["mystery_sacro"] = "摧毁所有可疑的墓碑，然后杀死尖叫之魂"
L["weighted_artifact"] = "捡起沉得出奇的花瓶，然后替换掉桌子上沉重的魔古神器。被雕像击中花瓶会掉落！"
L["vault_of_souls"] = "打开千魂窟，然后击杀所有宝库雕像"
L["electric_empower"] = "杀怪"
L["in_flames"] = "拾取水桶灭火"

-------------------------------------------------------------------------------
----------------------------------- VISIONS -----------------------------------
-------------------------------------------------------------------------------

L["colored_potion"] = "颜色药水"
L["colored_potion_note"] = [[
%s旁边的药水颜色表示本次惊魂幻象内负面效果的药水颜色。

加100理智的药水颜色可以由该药水确定(|cFFFF0000坏|r => |cFF00FF00好|r):

黑色 => 绿色
蓝色 => 紫色
绿色 => 红色
紫色 => 黑色
红色 => 蓝色
]]

L["bear_spirit"] = "熊之魂"
L["bear_spirit_note"] = "击杀愤怒的熊毯之灵获取急速+10%BUFF"
L["buffs_change"] = "每次幻象可以获取的BUFF都会变。如果建筑没有开门或者NPC不在，说明这个BUFF在此次幻象内不存在"
L["clear_sight"] = "需要科技：清晰视界%d级"
L["craggle"] = "在地上放一个玩具（比如玩具火车）来扰乱他，然后将机器人拉开并优先击杀"
L["empowered"] = "强化"
L["empowered_note"] = "穿过布满地雷的房间到二楼（二楼上不去可以跳在楼梯扶手上过去）站在实验性增益地雷上获取+10%伤害BUFF"
L["enriched"] = "浓缩"
L["enriched_note"] = "击杀无人看管的公会银行获取+10%爆击BUFF"
L["ethereal_essence"] = "虚灵精华"
L["ethereal_essence_note"] = "击杀织幻者杜沙尔获取+10%爆击BUFF"
L["ethereal_note"] = "收集隐藏在整个幻象内的怪异水晶（橙色晶体）来交给这个NPC以获取额外的腐化纪念品\n\n|cFF00FF00别忘了拾取宝箱！|r"
L["heroes_bulwark"] = "英雄的壁垒"
L["heroes_bulwark_note"] = "击杀旅馆内的加摩尔获取生命值+10%BUFF"
L["horrific_visions"] = "惊魂幻象"
L["inside_building"] = "在建筑内"
L["mailbox"] = "邮箱"
L["mail_muncher"] = "打开邮箱会随机刷新邮件吞噬者"
L["morgan_pestle"] = "摩根·匹斯特"
L["requited_bulwark"] = "回恩壁垒"
L["requited_bulwark_note"] = "击杀阿古塔斯·莫莱恩获取全能+7%BUFF"
L["shave_kit"] = "科弗库尔的理发工具包"
L["shave_kit_note"] = "在理发店内。拾取桌子上的箱子。"
L["smiths_strength"] = "铁匠之力"
L["smiths_strength_note"] = "击杀纳罗斯获取+10%伤害BUFF"
L["spirit_of_wind"] = "风之魂"
L["spirit_of_wind_note"] = "击杀布温巴获取急速及移动速度+10%BUFF"
L["void_skull"] = "虚触徽记"
L["void_skull_note"] = "点击地上的头骨（虚触徽记）获取玩具"
L["yelmak"] = "耶尔玛克"
L["odd_crystal"] = "怪异水晶"
L["c_inside_hut"] = "在右边的第一个小屋内"
L["c_behind_bank_counter"] = "在银行的柜台后面"
L["c_hidden_boxes"] = "隐藏萨尔房间背面的几个箱子之后"
L["c_center_building"] = "在中间建筑的最下层"
L["c_top_building"] = "在建筑物的顶层"
L["c_behind_boss"] = "在BOSS后面的难民房内"
L["c_behind_pillar"] = "在使馆后面的小屋内"
L["c_inside_orphanage"] = "在孤儿院里"
L["c_inside_transmog"] = "在幻化房里"
L["c_inside_leatherwork"] = "在皮具店里"
L["c_inside_cacti"] = "在角落的仙人掌里面"
L["c_underneath_bridge"] = "在桥下"
L["c_inside_auction"] = "在拍卖行内部右边"
L["c_behind_rexxar"] = "在雷克萨房间的后面（右手边）"
L["c_on_small_hill"] = "在斜坡上"
L["c_by_pillar_boxes"] = "在柱子和数个箱子之间的墙边"
L["c_inside_big_tent"] = "在大帐篷内部左边"
L["c_inside_hut"] = "在右边第一个房子内"
L["c_behind_boxes"] = "在角落的几个箱子后面"
L["c_left_cathedral"] = "藏在大教堂左边门口"
L["c_forge_corner"] = "在锻炉附近的角落里"
L["c_bar_upper"] = "在酒馆二楼"
L["c_behind_stables"] = "在肖尔的马棚后面"
L["c_behind_mailbox"] = "在邮箱后面"
L["c_alley_corner"] = "在小巷的转角"
L["c_behind_cart"] = "在被毁的推车后面"
L["c_left_inquisitor"] = "审判官左后方的巷子里"
L["c_behind_house_counter"] = "房间内，柜台后面"
L["c_walkway_platform"] = "在走廊上方的平台上"
L["c_walkway_corner"] = "在角落的走廊上"


L["options_icons_visions_buffs"] = "增益效果"
L["options_icons_visions_buffs_desc"] = "显示可以获得持续一小时的增益BUFF的事件位置"
L["options_icons_visions_chest"] = "宝箱"
L["options_icons_visions_chest_desc"] = "显示惊魂幻象内可能的宝箱位置"
L["options_icons_visions_crystals"] = "怪异水晶"
L["options_icons_visions_crystals_desc"] = "显示惊魂幻象内可能的怪异水晶的位置"
L["options_icons_visions_mail"] = "邮箱"
L["options_icons_visions_mail_desc"] = "显示会掉落邮件吞噬者坐骑的邮箱位置"
L["options_icons_visions_misc"] = "杂项"
L["options_icons_visions_misc_desc"] = "显示惊魂幻象内可能的奖励位置"

-------------------------------------------------------------------------------
----------------------------------- VOLDUN ------------------------------------
-------------------------------------------------------------------------------

L["voldun"] = "沃顿"
L["elusive_alpaca"] = "将\"海滩叶蔬沙拉\"喂食\"轻盈的迅蹄驼\"以获得坐骑。羊驼刷新时间很长，每次存在10分钟。大部分8.0的食物供应商（比如雷龙）会出售该食物。"
L["options_icons_alpaca_voldun_desc"] = "显示轻盈的迅蹄驼的位置"
L["options_icons_alpaca_voldun"] = "轻盈的迅蹄驼"
