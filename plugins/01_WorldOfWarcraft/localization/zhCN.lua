local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['anniversary_note'] = '{note:仅在周年纪念活动期间可用！}'

L['summer_only'] = '只在夏季出现。（从6月21日到9月22日）'
L['options_icons_safari'] = '{achievement:6585} / {achievement:6586}'
L['options_icons_safari_desc'] = '显示 {achievement:6585} 和 {achievement:6586} 成就中战斗宠物的位置。'

L['options_icons_crazyforcats'] = '{achievement:8397}'
L['options_icons_crazyforcats_desc'] = '显示 {achievement:8397} 成就中战斗宠物的位置。'
L['cfc_blacktabby'] = '{item:8491} 可以从 {location:希尔斯布莱德丘陵} 的各种敌人身上拾取。\n\n推荐的敌人是 {npc:49116}（仅限部落）、{npc:48017} 或 {npc:2248}。\n\n{note:掉率低于0.1%。}'

L['in_crypt'] = '在墓穴中。'
L['shovelphlange_location'] = '在奥达曼的入口/洞穴区域。'
L['lower_floor'] = '在底层。'
L['bl_rare_note'] = '{location:诅咒之地} 的所有稀有怪物都有可能掉落 {item:8244} 或 {item:10593}，可以在 {npc:7363} 处兑换物品。'
L['takk_note'] = '字面意思是从一个点跳到另一个点（逆时针方向）'

-------------------------------------------------------------------------------
----------------------------- ZUL'GURUB (10.0.7) ------------------------------
-------------------------------------------------------------------------------

L['zg_unlock_note_01'] = '1. {dot:Blue} 从 {location:血之祭坛} 下方 {npc:52148} 充满幽灵的房间里收集 {item:203735}。'
L['zg_unlock_note_02'] = '2. 击败至少两个首领，这样 {npc:52148} 就可以加入战斗。\n\n{npc:52059} 可以掉落 {item:68824}\n{npc:52151} 可以掉落 {item:68823}。'
L['zg_unlock_note_03'] = '3. {dot:Red} 开始与 {npc:52148} 战斗并将他的血量降至1。他会把你送到 {spell:96689}。\n\n回到现在全是 {npc:52624} 的房间并收集 {item:203736}。'
L['zg_unlock_note_04'] = '4. 将 {item:203735} 和 {item:203736} 合并以制造 {item:203737} 并开始 {quest:74576}。'
L['zg_unlock_note_05'] = '5. 在 {location:达萨罗} 的 {location:尤亚姆巴交易所} 找到的 {npc:143138} 交付任务 {quest:74576}。'
L['zg_unlock_note_06'] = '6. 一旦完成 {quest:74576}，{npc:143138} 将在 {location:祖尔格拉布} 入口处出现，并开始出售宝石图纸。'

L['zg_zandalari_bijous_note_01'] = '在 {location:祖尔格拉布} 的所有怪物都有几率掉落宝石，每个首领都会掉落1个。'
L['zg_zandalari_bijous_note_02'] = '首领还可以掉落 {item:203774}，其中包含4个宝石。'
L['zg_zandalari_bijous_note_03'] = '宝石可用于购买图纸、套装，以及与各种骨堆交互。'

L['zg_fishing_note_01'] = '每天一次，可以钓到 {item:203742} 或 {item:203743} 中的任一项。正确的区域充满了 {npc:52435} 并有 {spell:401577}。'
L['zg_fishing_note_02'] = '宝藏可以包含各种宝石、专业材料以及获得不可获得物品的机会。'
L['zg_fishing_note_03'] = '{note:{item:203743} 需要使用某种形式的 {spell:1804} 才能打开。}'

L['zg_brazier_of_madness_note'] = '位于 {location:疯狂之缘} 的 {object:疯狂石板} 下方的祭坛附近。'
L['zg_gurubashi_mojo_madness_note'] = '炼金师只要在 {location:疯狂之缘 中与 {object:疯狂石板} 进行交互，就可以学习 {item:19931} 的配方。'

L['zg_offering_note'] = '在 {item:203757} 旁边使用 {item:19931} 可以获得 {spell:401721}，该法术允许与 {location:祖尔格拉布} 周围的骨堆进行交互。\n\n骨堆接受：'

L['offering_of_fangs_label'] = '牙齿供品'
L['offering_of_fangs_location'] = '在 {location:毒蛇小径} 的祭坛上。'
L['offering_of_blood_label'] = '鲜血供品'
L['offering_of_blood_location'] = '在 {location:曼多基尔领地} 两个哨所之间的竞技场边缘附近。'
L['offering_of_claws_label'] = '利爪供品'
L['offering_of_claws_location'] = '{location:贝瑟克神殿} 深处，房间后面。'
L['offering_of_mojo_label'] = '魔精供品'
L['offering_of_mojo_location'] = '在 {location:恶魔之台} 的绿色大锅旁。'

L['zg_vendor_note_01'] = '用各种宝石和 {item:203914} 兑换配方和幻化。'
L['zg_vendor_note_02'] = '{note:职业套装仅适用于原始 {location:祖尔格拉布} 游戏中的职业。每个人都可以穿戴护甲套装。}'
L['zg_vendor_note_03'] = '{item:203914} 可以通过从 {location:祖尔格拉布} 的怪物那里收集各种硬币获得。'

L['zg_class_ensembles'] = '祖尔格拉布职业套装'
L['zg_armor_ensembles'] = '祖尔格拉布护甲套装'

L['options_icons_secrets_of_zulgurub'] = '祖尔格拉布的秘密'
L['options_icons_secrets_of_zulgurub_desc'] = '显示 {location:祖尔格拉布的秘密} 的重要位置。'
