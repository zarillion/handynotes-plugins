local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

local Gold = ns.color.Gold
local Orange = ns.color.Orange
local Red = ns.color.Red

-------------------------------------------------------------------------------
------------------------------- ANTORAN WASTES --------------------------------
-------------------------------------------------------------------------------

L['commander_texlaz_note'] = '不再需要 {quest:48831} 世界任务来激活。使用绿色传送门。'
L['doomcaster_suprax_note'] = '不再需要三名玩家。只要站到符文上召唤 {npc:127703}。'
L['mother_rosula_note'] = '从 {npc:126073} 收集100个 {item:152999} 并组合成为 {item:153013}。在她的邪能池子使用 {item:153013}。'
L['reziera_the_seer_note'] = '有 {spell:254174} 增益时收集500个 {item:153021} 用来从 {npc:128134} 购买 {item:153226}。使用 {item:153226} 用于传送你（和队伍）到 {npc:127706}。'
L['squadron_commander_vishax_note'] = '从 {npc:127598} 收集 {item:152890}。\n\n从 {npc:127597} 和 {npc:127596} 收集 {item:152941}，{item:152940} 和 {item:152891}。\n\n使用 {item:152890} 获得 {quest:49007}。\n\n' .. Orange('此任务可共享')
L['ven_orn_note'] = '进入蜘蛛洞穴，向右并向下到另一个小洞穴。她在后面的第二个房间里。'

L['the_many_faced_devourer_note'] = '从位于 {location:食腐者废料场} 的 {npc:126193} 和 {npc:126171} 收集 {item:152786}。\n\n收集 {item:152991}，{item:152992} 和 {item:152993}。\n\n在 {npc:127442} 召唤 {npc:127581}。\n\n' .. Orange('如不能看到 {npc:127442} 则需要重新登录。')
L['the_many_faced_devourer_checklist'] = Gold('物品检查表（背包或银行）：')

L['orix_the_all_seer_note'] = '出售收藏品换取 {item:153021}。'

L['legion_war_supplies'] = '军团战争物资'
L['legion_war_supplies_note'] = '有9个独特的军团战争物资可以出现位置组中。'

L['options_icons_legion_war_supplies'] = '军团战争物资'
L['options_icons_legion_war_supplies_desc'] = '显示军团战争物资的可能位置（每日宝箱）。'

-------------------------------------------------------------------------------
------------------------------------ ARGUS ------------------------------------
-------------------------------------------------------------------------------

L['drops_fel_spotted_egg'] = '掉落 {item:153190}'
L['fel_spotted_egg_contains'] = '{item:153190} 可包含'

L['goblin_glider_treasure_note'] = '使用 {item:109076} 滑翔到宝藏。'
L['lightforged_warframe_treasure_note'] = '登上 {npc:126426} 在 {npc:121365} 激活 {item:152098}。\n\n使用 {item:152098} 和 {spell:250434} 融化岩石并找到宝藏。'
L['lights_judgement_treasure_note'] = '登上 {npc:126426} 在 {npc:121365} 激活 {item:151830}。\n\n使用 {item:151830} 炸开岩石并找到宝藏。'
L['shroud_of_arcane_echoes_treasures_note'] = '登上 {npc:126426} 在 {npc:121365} 激活 {item:151912}。\n\n使用 {item:151912} 解锁宝藏。\n\n' .. Red('"只对拥有与奥古雷相呼应的力量的人开放。"')

-------------------------------------------------------------------------------
----------------------------------- AZSUNA ------------------------------------
-------------------------------------------------------------------------------

L['arcavellus_note'] = '击杀 {npc:90242} 和 {npc:90243} 直到稀有出现。'
L['beacher_note'] = '当世界任务 {wq:海拉加尔登陆战：灰色浅滩} 激活时不出现。'
L['brogozog_note'] = '和 {npc:91097} 交谈。'
L['chief_bitterbrine_note'] = '位于船下层甲板。'
L['devious_sunrunner_note'] = '使用小洞穴内的 {object:魔网传送门}。别忘了拾取宝箱。'
L['doomlord_kazrok_note'] = '和 {npc:91580} 交谈。'
L['felwing_note'] = '和 {npc:105913} 交谈并击杀 {npc:105919} 直到稀有出现。'
L['golza_note'] = '吹响 {object:海妖号角} 并击杀 {npc:90774} 和 {npc:90778} 直到稀有出现。'
L['infernal_lord_note'] = '点击 {object:地狱火宝箱} 并击杀 {npc:90797} 直到稀有出现。'
L['inquisitor_tivos_note'] = '使用{object:军团传送门}。他在下层。'
L['shaliman_note'] = '在池塘边。'

L['disputed_treasure'] = '有争议的宝藏'
L['in_academy'] = '{location:纳萨拉斯学院} 内。'
L['in_oceanus_cove'] = '{location:欧逊努斯海窟} 内。'
L['seemingly_unguarded_treasure'] = '看似无人看守的宝藏'
L['seemingly_unguarded_treasure_note'] = '尝试拾取宝藏并击杀随后出现的数波 {npc:94167}。'
L['treasure_37958'] = '位于建筑物下层。'
L['treasure_37980'] = '使用断桥上的 {object:魔网传送门}。'
L['treasure_40711'] = '使用塔内的 {object:魔网传送门}。'
L['treasure_42282'] = '在阳台的角落。'
L['treasure_42283'] = '位于第二层。'
L['treasure_42287'] = '水下。'
L['treasure_42339'] = '别吵醒熊。'

L['nightwatcher_merayl_note'] = '列队！'

L['book_1'] = '第一章（周日）'
L['book_2'] = '第二章（周一）'
L['book_3'] = '第三章（周二）'
L['book_4'] = '第四章（周三）'
L['book_5'] = '第五章（周四）'
L['book_6'] = '第六章（周五）'
L['book_7'] = '第七章（周六）'

L['higher_dimensional_learning_location'] = '位于塔顶。'
L['higher_dimensional_learning_note'] = '从 {location:倾颓王宫} 的 {npc:107376} 购买 {item:129276}。每天使用 {item:129276} 将传送到不同书的位置。\n\n第一章（周日）\n第二章（周一）\n第三章（周二）\n第四章（周三）\n第五章（周四）\n第六章（周五）\n第七章（周六）'
L['higher_dimensional_learning_disclaimer'] = '{note:传送到书本位置并不能保证这本书会刷新。可能需要等待或稍后再回来查看。}'

L['options_icons_higher_dimensional_learning'] = '{achievement:11175}'
L['options_icons_higher_dimensional_learning_desc'] = '显示 {achievement:11175} 成就中书的位置。'

-------------------------------------------------------------------------------
-------------------------------- BROKEN SHORE ---------------------------------
-------------------------------------------------------------------------------

L['bringing_home_the_beacon_note'] = '{npc:127264} 下面，你将有 {spell:240640} 增益。\n\n击杀恶魔拾取各种 |cFFFFFD00森提纳克斯信标|r。'

L['options_icons_bringing_home_the_beacon'] = '{achievement:11802}'
L['options_icons_bringing_home_the_beacon_desc'] = '显示 {achievement:11802} 成就中 {npc:127264} 的位置。'

-------------------------------------------------------------------------------
---------------------------------- DALARAN ------------------------------------
-------------------------------------------------------------------------------

-- Midnight tz per region: US=>PST, KR=>KST, EU=>CET, TW=>CST, CN=>CST
local tz = ({
    '太平洋标准时间', '韩国标准时间', '欧洲中部时间',
    '中国标准时间', '中国标准时间'
})[GetCurrentRegion()]

L['sheddles_chest'] = '西德尔的箱子'
L['shoe_shine_kit_note'] = '每个星期六晚上的午夜零时（' .. tz .. '）{npc:97003} 将他的箱子丢在地上几小时并离开。'
L['wand_simulated_life_note'] = '楼上的桌子上。'

L['sir_galveston_note'] = '你准备好了吗，奔波尔斯顿爵士？勇敢地战斗吧！'
L['amalia_note'] = '你别光说不练啊。'
L['tiffany_nelson_note'] = '放马过来吧！'
L['bohdi_sunwayver_note'] = '太阳出来啦！宠物们，出击吧！'

-------------------------------------------------------------------------------
----------------------------------- EREDATH -----------------------------------
-------------------------------------------------------------------------------

L['kaara_the_pale_note'] = '{npc:126860} 不再掉落 {item:153190}'
L['turek_the_lucid_note'] = '在 {location:奥罗纳尔陷坑} 内'

L['ancient_eredar_cache'] = '上古艾瑞达宝箱'
L['ancient_eredar_cache_note'] = '有6个独特的上古艾瑞达宝箱可以出现位置组中。'
L['void_seeped_cache'] = '浸透虚空的宝箱'
L['void_seeped_cache_note'] = '有2个独特的浸透虚空的宝箱可以出现位置组中。|c00ff0000这些不包含幻化。|r'

L['options_icons_ancient_eredar_cache'] = '上古艾瑞达宝箱'
L['options_icons_ancient_eredar_cache_desc'] = '显示上古艾瑞达宝箱的可能位置（每日宝箱）。'
L['options_icons_void_seeped_cache'] = '浸透虚空的宝箱'
L['options_icons_void_seeped_cache_desc'] = '显示浸透虚空的宝箱的可能位置（每日宝箱）。'

-------------------------------------------------------------------------------
-------------------------------- HIGHMOUNTAIN ---------------------------------
-------------------------------------------------------------------------------

L['odrogg_note'] = '你以为你能击败我的蜗牛？'
L['grixis_tinypop_note'] = '这完全是小菜一碟！'
L['bredda_tenderhide_note'] = '狭路相逢勇者胜！'

-------------------------------------------------------------------------------
-------------------------------- KROKUUN --------------------------------------
-------------------------------------------------------------------------------

L['eredar_war_supplies'] = '艾瑞达战争物资'
L['eredar_war_supplies_note'] = '有7个独特的艾瑞达战争物资可以出现位置组中。'

L['options_icons_eredar_war_supplies'] = '艾瑞达战争物资'
L['options_icons_eredar_war_supplies_desc'] = '显示艾瑞达战争物资的可能位置（每日宝箱）。'

-------------------------------------------------------------------------------
--------------------------------- STORMHEIM -----------------------------------
-------------------------------------------------------------------------------

L['trapper_jarrun_note'] = '保护好你自己吧，凡人。'
L['robert_craig_note'] = '消灭他们！'

-------------------------------------------------------------------------------
---------------------------------- SURAMAR ------------------------------------
-------------------------------------------------------------------------------

L['varenne_note'] = '我必须回去做菜了！'
L['master_tamer_flummox_note'] = '弗鲁莫斯不需要宠物！弗鲁莫斯要吃了它们！'
L['aulier_note'] = '我就先教教你什么叫谦虚吧。'

-------------------------------------------------------------------------------
--------------------------------- VAL'SHARA -----------------------------------
-------------------------------------------------------------------------------

L['anthydas_note'] = '建筑物二楼的水槽旁边拾取宝箱。'
L['elandris_note'] = '当军团入侵世界任务 {wq:恐惧之谷} 激活时不出现。'
L['gathenak_note'] = '和 {npc:112472} 交谈。'
L['gorebeak_note'] = '和 {npc:92111} 交谈。'
L['jinikki_note'] = '和 {npc:93677} 交谈并击杀 {npc:93684} 直到稀有出现。'
L['kiranys_note'] = '点击 {object:魔力震荡陷阱}。'
L['mad_henryk_note'] = '靠近 {npc:109602}。'
L['skulvrax_note'] = '复苏 {npc:92334} 并跟随她。'
L['theryssia_note'] = '阅读墓碑上 {npc:94194} 的姓名板。'
L['unguarded_thistleleaf_treasure'] = '无人看守的蓟叶宝藏'

L['in_darkpens'] = '{location:黑暗围栏} 内。'
L['treasure_38366'] = '树根下。'
L['treasure_38386'] = '二层阳台上。'
L['treasure_38387'] = '旅店下面小洞穴内。入口位于建筑物后面。'
L['treasure_38391'] = '隐藏在树后。'
L['treasure_38943'] = '上右侧楼梯。'
L['treasure_39069'] = '二层阳台上。'
L['treasure_39074'] = '树下。'
L['treasure_39080'] = '地下室内。需要开始任务线开始于 {npc:92688} 的 {quest:38643} 任务然后是 {npc:92683} 的 {quest:38644}。'
L['treasure_39083'] = '藏在树内。'
L['treasure_39088'] = '隐藏在一些树根之间的湖中。'
L['treasure_39093'] = '河里树根下。'

L['grumpy_note'] = '燃烧的建筑物楼上。'

L['xorvasc_note'] = '我就是你最可怕的梦魇。'
L['durian_strongfruit_note'] = '那好吧……'

-------------------------------------------------------------------------------
--------------------------------- ACROSS ZONES --------------------------------
-------------------------------------------------------------------------------

L['in_house'] = '房屋内。'
L['in_small_cottage'] = '小木屋内。'

L['glimmering_treasure_chest'] = '闪闪发光的宝箱'
L['small_treasure_chest'] = '小宝箱'
L['treasure_chest'] = '宝箱'
L['treasures_discovered'] = '已发现宝箱'

L['general_pet_tamer_note'] = '{相对应的世界任务激活时才会出现。}'
