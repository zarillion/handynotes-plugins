local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

-------------------------------------------------------------------------------
---------------------------------- COVENANTS ----------------------------------
-------------------------------------------------------------------------------

L['covenant_required'] = '需要%s盟约成员。'
L['anima_channeled'] = '心能连接到%s。'

-------------------------------------------------------------------------------
--------------------------------- SHADOWLANDS ---------------------------------
-------------------------------------------------------------------------------

L['squirrels_note'] = '必须使用表情 {emote:/爱}，{emote:/love} 给非战斗宠物的小动物。'
L['options_icons_squirrels'] = '{achievement:14731}'
L['options_icons_squirrels_desc'] = '显示 {achievement:14731} 成就中小动物的位置。'

L['options_icons_safari'] = '{achievement:14867}'
L['options_icons_safari_desc'] = '显示 {achievement:14867} 成就中战斗宠物的位置。'

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L['deifir_note'] = '骑上圈内的稀有并使用 {spell:319566} 和 {spell:319575} 使其减速和昏迷。'
L['faeflayer_note'] = '瀑布后面隐藏的小洞穴内。'
L['gormbore_note'] = '在颤动地面上击杀 {npc:165420} 稀有出现。'
L['gormtamer_tizo_note'] = '在 {location:纱雾迷结} 击杀 {npc:蓟果精灵} 直到 {npc:164110} 出现。'
L['humongozz_note'] = '种植一个 {item:175247} 在 {object:潮湿的沃土} 将出现 {npc:164122}。区域内的许多怪物都掉落蘑菇。'
L['lehgo_note'] = '摧毁 {object:颤动的戈姆之卵} 并击杀 {npc:171827} 直到他出现。在洞穴内（入口在东南 {location:尘泥地穴} 内）。'
L['macabre_note'] = [[
有多个出现点。要召唤，和其他两名玩家站在 {object:神秘的蘑菇环} 上并相互跳舞。

· 玩家1与玩家2跳舞
· 玩家2与玩家3跳舞
· 玩家3与玩家1跳舞
]]
L['mymaen_note'] = '击杀区域内的 {npc:腐楠精灵} 直到他做出表情并出现。'
L['rainbowhorn_note'] = [[
找到并点击 {object:符文牡鹿的巨角} 来召唤稀有。角可以在 {location:炽蓝仙野} 多个地点出现。

他总是在 {location:瓦尔仙林} 北侧出现，所以设定 {item:6948} 到这里并留意区域的表情。

|cffff5400品|r|cffffaa00尝|r|cffffff00绝|r|cffaaff00妙|r|cff54ff00的|r |cff00ff55美|r|cff00ffa9丽|r|cff00ffff的|r |cff0055ff七|r|cff0000ff彩|r|cff5400ff之|r|cffaa00ff虹|r|cffff00ff好|r|cffff00aa味|r|cffff0054道|r|cffff0000！|r
]]
L['rootwrithe_note'] = '触碰 {npc:167928} 直到稀有出现。'
L['rotbriar_note'] = '和 {npc:171684} 交谈对话后在附近召唤稀有。'
L['slumbering_note'] = '跑到迷雾中将昏迷并被带出。使用信号弹或带 AOE 的宠物把他击出迷雾。'
L['skuld_vit_note'] = '在被障碍物阻挡的山洞中。法夜必须使用 {spell:310143} 进入洞穴。他进入战斗后，障碍物将消失。'
L['valfir_note'] = '在路径中途下坡点击 {object:闪光的心能之种} 并使用 {spell:338045} 移除他的 {spell:338038} 增益。'
L['wrigglemortis_note'] = '拉动 {npc:164179} 稀有出现。'

L['night_mare_note'] = [[
前往 {location:塞兹仙林}，并沿着西北悬崖的树根路前往破损的车。在那可以在地面上拾取 {item:181243}。

把此物品带给位于 {location:闪瀑盆地} 的 {npc:165704}。用10个 {item:173204} 和她交换一个 {item:181242}。{note:如果她不在这里，你必须完成 |cFFFFFD00戈姆蛴围栏的麻烦|r 和 |cFFFFFD00捣蛋的林鬼|r 任务线。}

接下来，和 {location:森林之心} 的 {npc:160262} 交谈兑换 {item:181242} 为 {item:178675}。如果你不是法夜的话，与守卫交谈让她出来。使用此物品得到 {spell:327083} 增益，可以让你看见 {npc:168135}。
]]

L['star_lake'] = '泊星剧场'
L['star_lake_note'] = [[
与舞台导演 {npc:171743} 交谈，会开启一场特殊的战斗。战斗每天会更换。

参加全部七场战斗会从 {npc:163714} 解锁 {item:180748}。
]]

L['cache_of_the_moon'] = '在 {location:魅夜花园} 收集 {npc:171360} 的五个遗失工具并组合它们制造 {item:180753}。交给她工具包后会施放 {spell:334353} 给你，可以让你看到宝箱。'
L['cache_of_the_night'] = '在整个区域收集 {item:180656}，{item:180654} 和 {item:180655} 组合它们制造 {item:180652}。'
L['darkreach_supplies'] = '跳上 {npc:169995} 并滑翔到西南方进入空心山峰到达 {object:魅夜宝箱} 宝藏上面。'
L['desiccated_moth'] = '跳上 {npc:169997} 滑翔到西北方的树的树枝上。在 {object:焚香炉} 燃烧 {item:180784} 后收集宝藏。'
L['dreamsong_heart'] = '使用 {npc:169997} 滑翔到东北方的树上。'
L['elusive_faerie_cache'] = '拾取 {spell:333923} 在 {location:暮辉林地} 的东北角并使用拾取宝箱。'
L['enchanted_dreamcatcher'] = '悬挂在树根顶上。从西侧往上跳最容易。'
L['faerie_trove'] = '位于平台下方。'
L['harmonic_chest'] = '需要两名玩家。一名玩家弹琴另一名玩家击鼓来解锁宝箱。'
L['hearty_dragon_plume'] = '在附近瀑布的顶部点击 {spell:333554}，然后用它向下漂浮到树枝上。'
L['old_ardeite_note'] = '在 {location:烁光林枝} 东南方击杀 {npc:160747} 和 {npc:160748} 得到 {item:174042}。使用此物品飞到附近稀有上面并标记它。'
L['swollen_anima_seed'] = '在树干里面的一颗大种子。'

L['playful_vulpin_note'] = [[
在 {npc:171206} 找到并使用正确的表情五次后获得宠物。

· 开始好奇的挖掘 = {emote:/好奇}，{emote:/curious}
· 仍然徘徊在无法坐下的地方 = {emote:/坐下}，{emote:/sit}
· 独自一人唱歌 = {emote:/唱歌} {emote:/sing}
· 欢乐地跳舞 = {emote:/跳舞}，{emote:/dance}
· 孤独悲伤的坐着 = {emote:/亲昵}，{emote:/pet}
]]

L['tame_gladerunner'] = '驯服的巡林者'
L['tame_gladerunner_note'] = [[
阅读 {object:缠结传说} 并跟随蓝色的灯穿过小径到达 {npc:171767}。击杀他并拾取 {npc:171699}。

如果走错路并且 {npc:171699} 消失当你到达最后，返回开始位置并再次阅读 {object:缠结传说} 尝试。如果 {npc:171767} 不在，需要等待它刷新。
]]

L['faryl_note'] = '让空中的生物来引领炽蓝仙野的防御。'
L['glitterdust_note'] = '炽蓝仙野的生物看起来可能很温顺，但他们会以有史以来最强勇士的力量和勇气来保卫自己的领地。你有那个实力吗？'

L['lost_book_note'] = '把失落的书籍交给 {location:伤忆林地} 的 {npc:165867}。'
L['options_icons_faerie_tales'] = '{achievement:14788}'
L['options_icons_faerie_tales_desc'] = '显示 {achievement:14788} 成就中失落的书籍的位置。'

L['options_icons_wild_hunting'] = '{achievement:14779}'
L['options_icons_wild_hunting_desc'] = '显示 {achievement:14779} 成就中炽蓝仙野的野兽的位置。'

L['options_icons_wildseed_spirits'] = '灵种精魂'
L['options_icons_wildseed_spirits_desc'] = '灵种精魂的奖励'

L['divine_martial_spirit'] = '神圣尚武精魂'
L['divine_dutiful_spirit'] = '神圣尽职精魂'
L['divine_prideful_spirit'] = '神圣骄傲精魂'
L['divine_untamed_spirit'] = '神圣狂野精魂'

L['martial_spirit_label'] = '{item:178874}'
L['dutiful_spirit_label'] = '{item:178881}'
L['prideful_spirit_label'] = '{item:178882}'
L['untamed_spirit_label'] = '{item:177698}'

L['0x_wildseed_root_grain'] = '0个 {item:176832}'
L['1x_wildseed_root_grain'] = '1个 {item:176832}'
L['2x_wildseed_root_grain'] = '2个 或 3个 {item:176832}'
L['4x_wildseed_root_grain'] = '4个 {item:176832}'

L['soulshape_cat_note'] = [[
目标为 {npc:181694} 并使用表情 {emote:/安抚}，{emote:/soothe}

可以出现在 {location:炽蓝仙野} 周围6棵大树顶端的中央：

· {location:梦歌沼泽}
· {location:闪瀑盆地}
· {location:瓦尔仙林}
· {location:冬日林谷}
· {location:心木林}
· {location:利爪之缘}
]]
L['soulshape_corgi_note'] = [[
目标为 {npc:174608} 并使用表情 {emote:/安抚}，{emote:/pet}

与 {npc:181582} 交谈时将立即可用柯基选项。
]]
L['soulshape_well_fed_cat_note'] = [[
1. 从 {location:暗湾镇} 收集 {item:187811}
2. 目标为 {npc:182093} 并使用表情 {emote:/喵}，{emote:/meow}
3. {emote:玛欧冲着你喵喵叫，显得很饿。}
4. 目标为 {npc:182093} 并使用 {item:187811}

与 {npc:181582} 交谈时将立即可用吃饱的猫之魂选项。
]]

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L['aegeon_note'] = '杀死周围地区的敌人，直到 {npc:171009} 作为增援出现。'
L['ascended_council_note'] = '与其他四名玩家，同时点击五个神庙的 {object:暮钟} 召唤 {location:候选者试练场} 的 {npc:170899}。'
L['aspirant_eolis_note'] = '拾取附近的 {item:180613} 并与 NPC 目标阅读激活他。'
L['baedos_note'] = '从周围地区带一桶 {object:发酵的莲榴果} 给 {npc:161536} 直到她激活。'
L['basilofos_note'] = '在岩石上移动，直到紫色的追踪标记出现在你的头顶。站着不动，等待四种表情出现，然后他会出现。'
L['beasts_of_bastion'] = '晋升堡垒之兽'
L['beasts_of_bastion_note'] = '和 {npc:161441} 交谈召唤四个野兽中的一个。'
L['bookkeeper_mnemis_note'] = '在地区有几率出现代替 {npc:166867} 单位。'
L['cloudfeather_patriarch_note'] = '在地区击杀 {npc:158110} 直到守护者与你作战。'
L['collector_astor_note'] = '阅读散落在房间里的全部六章 {object:梅希娅的传承}，之后和 {npc:157979} 交谈会得到 {spell:333779}。在西北周围地区找到隐藏的 {item:180569} 并交还稀有出现。'
L['corrupted_clawguard_note'] = '在屋内或 {location:炉火岗哨} 山上拾取 {item:180651} 并使用它修理 {npc:171300}。'
L['dark_watcher_note'] = '只在死亡后可以看到。和她交谈会在攻击前对你施展 {spell:332830}。'
L['demi_hoarder_note'] = '开始时堆叠99层 {spell:333874}，降低承受伤害。伤害后堆叠缓慢消失。稀有将沿着路径前进，如果到达终点则将消失。'
L['dionae_note'] = '当她变为免疫时，点击四个 {npc:163747} 打破她的护盾。'
L['herculon_note'] = [[
收集 {item:172451} 并使用给 {npc:158659} 堆叠 {spell:343531}。10层时，他将激活。

可以从房间内或室外的 {object:枯竭的心能之罐} 中收集微粒。

{note:不能在世界任务 {wq:突袭前庭} 期间击败。}
]]
L['reekmonger_note'] = '在 {location:勇气神庙} 击杀敌人直到 {npc:171327} 做出表情并降落。'
L['repair_note'] = '和两名其他玩家，点击 {object:上古熏香} 来召唤。'
L['sotiros_orstus_note'] = '点击 {object:黑色钟铃} 召唤稀有。'
L['sundancer_note'] = '点击雕像获得 {spell:332309} 增益，然后使用 {item:180445} 滑翔到稀有并骑上它。'
L['swelling_tear_note'] = '点击 {npc:171012} 召唤三个稀有中的一个。裂隙可以在区域内的多个位置出现。'
L['unstable_memory_note'] = '当 {npc:171018} 存在时可以出现。拉一个 {npc:171018} 到其它会给它10层堆叠 {spell:333558}，把它变成稀有。'
L['wingflayer_note'] = '点击附近桌上的 {object:勇气号角} 召唤（东南方，楼梯上）。'

L['broken_flute'] = '击杀附近的 {npc:170009} 直到掉落 {item:180536}，使用此工具修理它。'
L['cloudwalkers_coffer'] = '云行者的宝匣'
L['cloudwalkers_coffer_note'] = '使用大型紫色花弹跳到平台上。'
L['experimental_construct_part'] = '拾取附近 {item:180534} 并使用修理部件。心能有多个出现地点。'
L['larion_harness'] = '位于 {location:野兽大厅} 内。'
L['memorial_offering'] = '在 {location:晋升堡垒} 多个位置之一找到 {npc:171526} 并购买 {item:180788}。将其放在靠近宝箱的饮料托盘中以获取 {item:180797}。'
L['scroll_of_aeons'] = '在中心地区拾取2个 {item:173973} 并将它们放在附近的 {object:贡品} 盘上显出宝藏。'
L['vesper_of_silver_wind'] = '银风暮钟'
L['vesper_of_silver_wind_note'] = '完成 {achievement:14339} 成就并和 {location:晋升高塔} 入口的 {npc:171732} 交谈铸造 {item:180858}。'

L['gift_of_agthia'] = '点击通往西北方断桥的火炬并携带 {spell:333320} 从火炬到火炬直到到达宝箱。点亮最后的火炬你会受益 {spell:333063}。'
L['gift_of_chyrus'] = '在宝箱前面跪下将被授予 {spell:333045}。'
L['gift_of_devos'] = [[
宝箱西南方一个火炬可以拾取获得 {spell:333912}。上坐骑，参加战斗或受到伤害将火焰会掉落。必须回到宝箱并将火焰放在 {object:虔诚的火盆} 以获取 {spell:333070}。

拾取火焰之前，清除宝箱前面的全部怪物。在运送火焰时，点击任意路上的 {npc:156571} 获得 {spell:335012} 负面效果提高移动速度。
]]
L['gift_of_thenios'] = [[
宝箱后面称为 {object:智慧之路}。这会指引一系列平台上不同的熏香进行沟通：

· {object:学识熏香}
· {object:耐心熏香}
· {object:洞察熏香}
· {object:审判熏香}

按耐心 => 学识 => 洞察的顺序沟通。在审判平台会出现 {object:审判之路} 的宝珠。

这个宝珠将把你带到真正的 {object:审判熏香}。与它沟通后最终飞行平台让你获得 {spell:333068} 打开宝箱。
]]
L['gift_of_vesiphone'] = '敲钟出现一个 {npc:170849} 并击杀获得 {spell:333239} 负面效果。宝箱正对面的流水将清洁此负面效果，并获得 {spell:332785}。'

L['count_your_blessings_note'] = '放置一个 {item:178915} 在 {object:贡品} 碗内获得祝福。'
L['options_icons_blessings'] = '{achievement:14767}'
L['options_icons_blessings_desc'] = '显示 {achievement:14767} 成就中 {object:贡品} 的位置。'

L['vesper_of_courage'] = '勇气暮钟'
L['vesper_of_humility'] = '谦逊暮钟'
L['vesper_of_loyalty'] = '忠诚暮钟'
L['vesper_of_purity'] = '纯洁暮钟'
L['vesper_of_wisdom'] = '历史暮钟'
L['vespers_ascended_note'] = '与其它四个暮钟同时点击此暮钟召唤 {location:候选者试练场} 的 {npc:170899}。'
L['options_icons_vespers'] = '{achievement:14734}'
L['options_icons_vespers_desc'] = '显示 {achievement:14734} 成就中暮钟的位置。'

L['anima_shard'] = '心能水晶碎片'
L['anima_shard_61225'] = '在桥下的较低平台上。'
L['anima_shard_61235'] = '在瀑布上方的壁架上。'
L['anima_shard_61236'] = '在主体结构中间的拱顶上。'
L['anima_shard_61237'] = '在水面上方的壁架上。'
L['anima_shard_61238'] = '在水中的一座小桥下。'
L['anima_shard_61239'] = '在小石柱上。'
L['anima_shard_61241'] = '在 {location:初思之厅} 入口上方。'
L['anima_shard_61244'] = '在悬崖边的一块岩石上。'
L['anima_shard_61245'] = '在小瀑布上方的岩石上。'
L['anima_shard_61247'] = '在墙上的小水装置上方。'
L['anima_shard_61249'] = '隐藏在 {location:纯洁之巅} 上层的石柱后面。'
L['anima_shard_61250'] = '位于在楼梯后面。'
L['anima_shard_61251'] = '位于在小铃铛下面。'
L['anima_shard_61253'] = '在一个下落的石拱道顶部。'
L['anima_shard_61254'] = '在一个小的木结构上。'
L['anima_shard_61257'] = '在正下方 {npc:162523} 的小壁架上。'
L['anima_shard_61258'] = '在 {location:英雄之眠} 下面的小壁架上。'
L['anima_shard_61260'] = '在平台下的地面上。'
L['anima_shard_61261'] = '在 {npc:163460} 洞穴上面的壁架上。'
L['anima_shard_61263'] = '在石柱上。'
L['anima_shard_61264'] = '在倾斜结构的顶部。'
L['anima_shard_61270'] = '位于在树的底部。'
L['anima_shard_61271'] = '在上层平台的一个书柜中。'
L['anima_shard_61273'] = '在突出悬崖正下方的壁架上。'
L['anima_shard_61274'] = '隐藏在平台下方。'
L['anima_shard_61275'] = '在 {location:野兽大厅} 一些桶的后面。'
L['anima_shard_61277'] = '在小石柱上。'
L['anima_shard_61278'] = '在岩石下的桥下。'
L['anima_shard_61279'] = '在小石柱上。'
L['anima_shard_61280'] = '在桌子的一角。'
L['anima_shard_61281'] = '在 {object:祭品} 宝藏上方的壁架上。'
L['anima_shard_61282'] = '在悬崖顶下的壁架上。'
L['anima_shard_61283'] = '{location:米莉的礼拜堂} 下面洞穴内，在桶后面。'
L['anima_shard_61284'] = '在岩石悬突下的壁架上，向南行。'
L['anima_shard_61285'] = '在一个小的岩石壁架的尽头。'
L['anima_shard_61286'] = '在俯瞰道路的壁架上。'
L['anima_shard_61287'] = '在小瀑布上方的壁架上。'
L['anima_shard_61288'] = '在小壁架的顶端。'
L['anima_shard_61289'] = '在凉亭上。'
L['anima_shard_61290'] = '在狭窄的岩石壁架的尽头。'
L['anima_shard_61291'] = '在的池塘底部雕像脚下。'
L['anima_shard_61292'] = '在石牌坊的顶部。'
L['anima_shard_61293'] = '在较低水平的细石柱上。'
L['anima_shard_61294'] = '隐藏在一堆桶后面。'
L['anima_shard_61295'] = '在书架上 {npc:156889} 后面。'
L['anima_shard_61296'] = '在倒下的大钟后面。\n\n{note:{location:通灵战潮} 地下城内。}'
L['anima_shard_61297'] = '在石柱后面。\n\n{note:{location:通灵战潮} 地下城内。}'
L['anima_shard_61298'] = '位于在躺椅后面。'
L['anima_shard_61299'] = '隐藏在大火炬的后面。'
L['anima_shard_61300'] = '挂在中央字体的壁架上。'
L['anima_shard_spires'] = '三个碎片位于 {location:晋升高塔} 地下城。'
L['options_icons_anima_shard'] = '{achievement:14339}'
L['options_icons_anima_shard_desc'] = '显示 {achievement:14339} 成就中全部50个 {object:心能水晶碎片}的位置。'

L['hymn_note'] = '在每个神庙中找到 {object:赞美诗} 并获得它的增益来获得成就。'
L['options_icons_hymns'] = '{achievement:14768}'
L['options_icons_hymns_desc'] = '显示 {achievement:14768} 成就中 {object:赞美诗} 的位置。'

L['stratios_note'] = '即便是最小规模的战斗也应该带着荣誉和谨慎而战。准备好以后就展示出你的队伍。'
L['thenia_note'] = '如此壮丽而开阔的平原。多么光荣的战场。你准备好了吗？'
L['zolla_note'] = '我们非常重视自身的防御。无论规模大小，我们都将全力维护和训练让晋升堡垒得以稳固的资源。'

L['soulshape_otter_soul'] = '目标为 {npc:181682} 并使用表情 {emote:/拥抱}，{emote:/hug}'

-------------------------------------------------------------------------------
----------------------------------- KORTHIA -----------------------------------
-------------------------------------------------------------------------------

L['carriage_crusher_note'] = '跟随 {npc:180182} 到 {location:噬渊} 并击败直到 {npc:180246} 进攻。'
L['chamber_note'] = '在 {object:远古传送器} 使用从 {npc:178257} 得到的 {item:186718} 到达宝箱。'
L['consumption_note'] = [[
此稀有吞噬40个 {npc:179758} 后变为蓝色阴影形态（稀有）后才会有掉落。

此稀有*继续*吞噬40个 {npc:179758} 后变为绿色阴影形态（稀有精英）将掉落额外的研究物品。

{note:{npc:179758} 在此稀有战斗中将不会出现并被吞噬。}
]]
L['darkmaul_note'] = '从 {object:入侵的渊菇} 收集 {item:187153} 并喂食给 {npc:180063}。必须完成事件10次获得坐骑。'
L['dislodged_nest_note'] = '点击附近的 {object:剧毒之蛾} 获得 {spell:355181}。给 {npc:178547} 使用额外动作按钮 {spell:355131} 获得控制并骑上它让其撞击巢穴所在的树干。'
L['escaped_wilderling_note'] = '点击 {npc:180014} 开始驯服事件。'
L['flayedwing_transporter_note'] = '点击 {npc:178633} 飞向和飞离 {location:绝密宝库}。'
L['fleshwing_note'] = '和 {npc:180079} 交谈开始收集事件。'
L['forgotten_feather_note'] = '从 {location:守护者的休憩} 跳下来到漂浮的一个小岛上。'
L['konthrogz_note'] = '在吞噬者的传送门事件中出现。事件可能在 {location:刻希亚} 许多地方出现。'
L['sl_limited_rare'] = '{note:此稀有某些天不可用。}'
L['krelva_note'] = '80% 血量会移动到其它平台，60% 血量会移动到主陆地。{note:你必须击杀稀有 60% 血量才能获得奖励！}'
L['kroke_note'] = '击杀区域内 {npc:179029} 直到他出现。{npc:179029} 不在的天内不会出现。'
L['maelie_wanderer'] = '{npc:179912} 将在当天固定位置出现。使用 {spell:355862} 他，需要6天交互，然后回到 {npc:179930} 获得坐骑。'
L['malbog_note'] = '和 {npc:179729} 交谈获得 {spell:355078} 并跟随脚印直到你找到 {object:血肉遗骸}。'
L['offering_box_note'] = '需要 {item:187033}，可以在附近废墟的西侧墙顶部找到。'
L['pop_quiz_note'] = '突击测验事件将在地图上随机出现。点击 {object:废弃的帷幕之杖} 并回答 {npc:180162} 的问题。'
L['razorwing_note'] = '交付区域内 {npc:吞噬者} 掉落的10个 {item:187054}。'
L['reliwik_note'] = '点击 {object:纯净的的刀翼兽之卵} 并击杀它。'
L['spectral_bound_chest'] = '幽魂束缚宝箱'
L['spectral_bound_note'] = '点击附近的3个 {object:幽魂钥匙} 解锁宝箱。'
L['stonecrusher_note'] = '和 {npc:179974} 交谈开始事件。'
L['towering_exterminator_note'] = '在渊誓传送门事件出现。事件可能在 {location:刻希亚} 许多地方出现。'
L['worldcracker_note'] = '和 {npc:180028} 交谈触发护送事件。'

L['archivist_key_note'] = '从 {npc:178257} 购买 %s 解锁。'
L['korthian_shrine_note'] = '点击神龛获得 {spell:352367} 可以看到隐藏的路径到达祭坛。'
L['num_research'] = '%d 研究'
L['plus_research'] = '+ 研究'
L['options_icons_relic'] = '{achievement:15066}'
L['options_icons_relic_desc'] = '显示成就中全部20个圣物的位置。'

L['rift_portal_note'] = [[
进入 {location:裂隙}，一个临时的 {location:刻希亚} 和 {location:噬渊} 位面内有额外的稀有，圣物和宝箱。

需要一个 {item:186731}，当你到达4级 {faction:2472} 可以在 {npc:178257} 处购买。钥匙也会有低概率从区域内稀有和宝箱中掉落。

{note:并非所有裂隙传送门在任何时间都处于激活状态。}
]]
L['rift_rare_only_note'] = '此稀有只在 {location:裂隙} 位面内可以见到和击杀。'
L['rift_rare_exit_note'] = [[
在 {location:裂隙} 位面内和此稀有互动将使其离开 {location:裂隙}。

三个 {location:裂隙} 稀有通常以大约20分钟的间隔按固定顺序出现：

  1. {npc:179913}
  2. {npc:179608}
  3. {npc:179911}
]]
L['options_icons_rift_portal'] = '{npc:179595}'
L['options_icons_rift_portal_desc'] = '显示 {npc:179595} 的位置可以进入 {location:裂隙}。'

L['riftbound_cache'] = '隙缚宝箱'
L['riftbound_cache_note'] = '这4个独立宝箱每个都可以出现在 {location:裂隙} 内的特定位置。'
L['options_icons_riftbound_cache'] = '隙缚宝箱'
L['options_icons_riftbound_cache_desc'] = '显示 {location:裂隙} 内 {object:隙缚宝箱} 的位置。'

L['invasive_mawshroom'] = '入侵的渊菇'
L['invasive_mawshroom_note'] = '这5个独立蘑菇每个都可以出现在特定位置。'
L['mawsworn_cache'] = '渊誓之箱'
L['mawsworn_cache_note'] = '这3个独立宝箱每个都可以出现在特定位置。'
L['pile_of_bones'] = '骨堆'
L['relic_cache'] = '圣物宝箱'
L['shardhide_stash'] = '碎皮贮藏'
L['korthia_shared_chest_note'] = '可以拾取5次获得圣物。进度每30分钟重置，使它们有效地不受限制。'
L['unusual_nest'] = '异常材料之巢'
L['unusual_nest_note'] = '全部5个巢每天都可以拾取。'

L['options_icons_invasive_mawshroom_desc'] = '显示 {object:入侵的渊菇} 的位置。'
L['options_icons_invasive_mawshroom'] = '入侵的渊菇'
L['options_icons_korthia_dailies_desc'] = '显示未标记 {object:圣物宝箱} 的位置。'
L['options_icons_korthia_dailies'] = '圣物宝箱'
L['options_icons_mawsworn_cache_desc'] = '显示 {object:渊誓之箱} 的位置。'
L['options_icons_mawsworn_cache'] = '渊誓之箱'
L['options_icons_nest_materials_desc'] = '显示 {object:异常材料之巢} 的位置。'
L['options_icons_nest_materials'] = '异常材料之巢'

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L['chelicerae_note'] = '摧毁 {npc:159885} 后激活稀有。'
L['deepscar_note'] = '可能出现在 {location:伤逝剧场} 的多个入口。'
L['forgotten_mementos'] = '在宝藏西侧的房间拖拽宝库 {object:闸门之链} 打开大门。'
L['gieger_note'] = '攻击 {npc:162815} 后激活稀有。'
L['gristlebeak_note'] = '破坏附近的 {npc:162761} 后激活稀有。'
L['leeda_note'] = '击杀两个 {npc:162220} 直到稀有出现。'
L['nirvaska_note'] = '只在世界任务 {wq:致命提醒} 出现时激活。'
L['ravenomous_note'] = '踩死区域内 {npc:159901} 直到稀有出现。'
L['sabriel_note'] = '可以作为 {location:伤逝剧场} 的冠军之一出现。'
L['schmitd_note'] = '使用附近的 {spell:313451} 破坏他的护盾。'
L['tahonta_note'] = '此坐骑只会在 {npc:159239} 和你在一起时候才会掉落！'
L['taskmaster_xox_note'] = '与 {npc:160204}，{npc:160230} 和 {npc:160226} 共享出现。'
L['theater_of_pain_note'] = '每天第一次击杀首领有几率掉落坐骑。'
L['zargox_the_reborn_note'] = [[
使用 {item:175841} 位于 {npc:157124} 顶上。获得宝珠，你必须完成 {npc:157076} 的任务 {quest:57245} 之后再与他交谈。

假如 {npc:157124} 不在，复活区域内的 {npc:157132} 直到它出现。
]]
L['mixed_pool_note'] = [[
从周围怪物收集材料并扔进池中。每30个材料，根据所使用的组合，将出现七个稀有中的一个。

· 从北侧的 {npc:167923} 和 {npc:167948} 收集 {spell:306713}。

· 从南侧的 {npc:165015} 和 {npc:171142} 收集 {spell:306719}。

· 从南侧的 {npc:165027} 和 {npc:166438} 收集 {spell:306722}。

击杀每种稀有一次后获得 {item:183903} 玩具。
]]

L['blackhound_cache'] = '黑犬宝箱'
L['blackhound_cache_note'] = '在 {location:憎恶工厂} 召唤 {npc:157843}，然后护送他到 {location:黑犬岗哨}。'
L['bladesworn_supply_cache'] = '刃誓补给箱'
L['cache_of_eyes'] = '锐眼宝箱'
L['cache_of_eyes_note'] = '在 {location:盲眼堡垒} 有多个出现点。'

L['glutharns_note'] = '在软泥瀑布后面的一个山洞里。击杀 {npc:172485} 和 {npc:172479} 解锁宝箱。'
L['kyrian_keepsake_note'] = '检查 {npc:169664} 拾取宝藏。'
L['misplaced_supplies'] = '在巨大的蘑菇顶上。上山后跳上较小的棕色蘑菇，然后上山跳上巨大的蘑菇。'
L['necro_tome_note'] = '要进入塔楼，必须完成一个 {npc:166657} 的小任务线。在顶层的书柜里。'
L['plaguefallen_chest_note'] = [[
站在绿色软泥中（需要治疗！）获得10层 {spell:330069} 并会转化为 {spell:330092}。

转化后，到 {npc:158406} 平台（入口在东侧）下面洞穴并点击管道传送宝箱。
]]
L['ritualists_cache_note'] = '在地面上拾取 {item:181558} 并使用它完成 {object:装订仪式书}。'
L['runespeakers_trove_note'] = '东侧找到 {npc:170563} 并击杀他获得 {item:181777}。'
L['stolen_jar_note'] = '在多个不同的洞穴出现。'
L['strange_growth_note'] = '攻击 {npc:165037} 获得宝藏。'
L['vat_of_slime_note'] = '点击桌上的瓶子，然后点击软泥桶。'

L['giant_cache_of_epic_treasure'] = '巨大的史诗财宝箱'
L['spinebug_note'] = [[
快看！{spell:343124}！勇敢的冒险家快过去，这肯定不是诡计。等一下，那是卡拉赞的音乐吗？{npc:174663} 在这里干嘛…？

{spell:343163}!
]]

L['oonar_sorrowbane_note'] = [[
在 {location:伤逝剧场}，可以找到和 {item:181164} 附在一起的 {item:180273} 插在地上。拔出它们：

· 从 {location:雷文德斯} 的 {npc:171808} 购买一个 {item:182163}。
· 从 {location:玛卓克萨斯} 的 {npc:166640} 购买一个 {item:180771}。
· 从 {location:玛卓克萨斯} 的 {npc:169964} 购买一个 {item:181163}。
· 从西侧的世界任务 {wq:一路磕磕绊绊} 得到2层 {spell:306272}。
· 在 {location:格拉萨恩之腐} 吃4层 {spell:327367}。
· 迅速使用 {item:181163}，喝下两种药水并拉出大宝剑。

只拉出 {item:181164}，只需要4层 {spell:327367}。
]]

L['pet_cat'] = '亲昵该死的猫！'
L['hairball'] = '{note:只在 {location:凋魂之殇} 地下城内的 {location:腐烂圣所} 出现！}'
L['lime'] = '位于在大骨头拱顶上。'
L['moldstopheles'] = '绕到茎秆后面并跳上蘑菇平台。到达最后的平台，使用坐骑并在茎秆上跳来跳去到达。'
L['pus_in_boots'] = '在桥的下面。'

L['options_icons_slime_cat'] = '{achievement:14634}'
L['options_icons_slime_cat_desc'] = '显示 {achievement:14634} 成就中猫咪的位置。'

L['dundley_note'] = '我会一直战斗至胜利，并最终获得我应得的尊重！唯一的缺点就是我现在的东西都很黏。所有东西都黏糊糊的。'
L['maximillian_note'] = '为了一名配得上的对手，我已经等了几十年了。战利品全归胜利者所有！'
L['rotgut_note'] = '腐肠、残躯、更多碎块。来战吧。'

L['ashen_ink_label'] = '{item:183690}'
L['ashen_ink_note'] = '{npc:157125} 随机掉落。'

L['jagged_bonesaw_label'] = '{item:183692}'
L['jagged_bonesaw_note'] = '{npc:159105} 随机掉落。'

L['discarded_grimoire_label'] = '{item:183394}'
L['discarded_grimoire_note'] = '完成 {quest:62297} 后 {npc:174020} 给予。'

L['sorcerers_blade_label'] = '{item:183397}'
L['sorcerers_blade_note'] = '完成 {quest:62317} 后 {location:千魂窖} 内的 {object:巫师的笔记} 给予。下楼梯，在书柜的左边。'

L['mucosal_pigment_label'] = '{item:183691}'
L['mucosal_pigment_note'] = '任意软泥怪，小水滴，污泥，稀有，{location:凋零密院} 或 {npc:162727} 附近的巨怪周围掉落。'

L['amethystine_dye_label'] = '{item:183401}'
L['amethystine_dye_note'] = '完成 {quest:62320} 后 {npc:174120} 给予。'

L['ritualists_mantle_label'] = '{item:183399}'
L['ritualists_mantle_note'] = '完成 {quest:62308} 后 {npc:172813} 给予。需要3人召唤 {npc:174127}。'

L['options_icons_crypt_couture'] = '{achievement:14763}'
L['options_icons_crypt_couture_desc'] = '{achievement:14763} 成就中通灵助祭伪装定制的位置。'

L['soulshape_saurid_note'] = '小洞穴内。目标为 {npc:182105} 并使用表情 {emote:/鞠躬，{emote:/bow}'

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L['amalgamation_of_filth_note'] = '当世界任务 {wq:脏活累活：爆破计划} 可做时点击一个 {object:垃圾箱} 并使用 {spell:324115} 进入水里。'
L['amalgamation_of_light_note'] = '移动全部三个 {object:镜子陷阱} 释放稀有。'
L['amalgamation_of_sin_note'] = '在世界任务 {wq:唤起罪业} 期间，拾取 {object:能量催化剂} 有机会获得 {item:180376} 并使用它召唤稀有。'
L['bog_beast_note'] = '世界任务 {wq:又脏又乱} 期间有几率出现后给 {npc:166206} 使用 {item:177880}。'
L['endlurker_note'] = '在 {location:微光裂隙} 顶上点击 {npc:165229} 尸体附近的 {object:心能之桩} 并使用 {spell:321826}。'
L['executioner_aatron_note'] = '击杀三个附近的 {npc:166715} 移除 {spell:324872}。'
L['executioner_adrastia_note'] = '解救周围地区 {npc:161299} 并保护他们直到消失。{npc:161310} 将最后出现并压制反叛。'
L['famu_note'] = '和 {npc:166483} 交谈触发事件。'
L['grand_arcanist_dimitri_note'] = '击杀四个 {npc:167467} 释放稀有。'
L['harika_note'] = '在 {location:惧谷镇} 西侧，拾取 {item:176397}，然后把箭交给 {npc:165327} 后和他交谈击落稀有。'
L['innervus_note'] = '击杀附近的 {npc:160375} 获得 {item:177223} 并打开墓穴。'
L['leeched_soul_note'] = '进入附近的墓穴。走到 {npc:165151} 附近开始事件。'
L['lord_mortegore_note'] = '击杀周围的怪物获得 {item:174378} 并使用它强化 {npc:161870}。所有四个徽记获得强化，稀有就会出现。'
L['madalav_note'] = '点击铁砧附近的 {object:马达拉夫的锤子} 召唤他。'
L['manifestation_of_wrath_note'] = '世界任务 {wq:蜂拥之魂} 的 {npc:169916} 恢复有几率出现稀有。'
L['scrivener_lenua_note'] = '返还 {location:禁忌图书馆} 的 {npc:160753}。'
L['sinstone_hoarder_note'] = '尝试拾取 {npc:162503} 后稀有会出现。'
L['sire_ladinas_note'] = '拾取附近的 {object:圣光残余} 并使用 {spell:313065} 给 {npc:157733}。'
L['soulstalker_doina_note'] = '跟随下楼并当她逃跑时穿过镜子。'
L['tomb_burster_note'] = '如果 {npc:155777} 被网困住会出现。击杀附近 {npc:155769} 和几波 {npc:155795} 直到稀有出现。'
L['worldedge_gorger_note'] = [[
从 {location:灾厄林} 和 {location:末日迷沼} 的 {npc:世界掠夺者}、{npc:吞噬者} 和 {npc:幼虫} 获得一个 {item:173939}。使用它点着 {object:界缘火盆} 召唤稀有。

有几率掉落一个 {item:180583}，然后开始七天任务线获得 {spell:333027} 坐骑。
]]

L['dredglaive_note'] = '在 {npc:173671} 尸体的桥下。'
L['forbidden_chamber_note'] = '在锁着的门前拾取一个 {object:被抛弃的心能之罐} 学习 {spell:340701}。使用它吸取五个附近的 {npc:173838}，然后在 {npc:173786} 前使用 {spell:340866}。'
L['gilded_plum_chest_note'] = '击杀在路上徘徊的 {npc:166680}。'
L['lost_quill_note'] = '从 {location:禁忌图书馆} 的桌上瓶子拾取 {item:182475}，然后把它交给外面拱门顶上的 {npc:173449}。'
L['rapier_fearless_note'] = '点击地上的 {object:无畏者的利剑}，然后击败 {npc:173603}。'
L['remlates_cache_note'] = '在 {location:暗湾镇} 墓穴后面的外墙上。'
L['smuggled_cache_note'] = '{bug:在拾取之前}：确认已完成 {quest:60480} 分支任务否则宝藏和任务将缺少40个 {currency:1820}。'
L['taskmaster_trove_note'] = '阅读 {object:出入口仪式} 然后小心地走到宝箱。'
L['the_count_note'] = '在 {location:末日迷沼} 获得99个 {currency:1820} 然后把它带给 {npc:173488}。'

L['forgotten_anglers_rod'] = '被遗忘的渔翁之竿'

L['loyal_gorger_note'] = '到 {location:末日迷沼} 完成 {npc:173498} 的每日任务七次将获得他的坐骑。'

L['sinrunner_note'] = '将食物和补给品给 {npc:173468} 共六天获得她的缰绳。她一次只出现几分钟。'
L['sinrunner_note_day1'] = '带 {location:西部荒野} 农场的8个 {item:182581} 给 {npc:173468}。'
L['sinrunner_note_day2'] = '从 {location:暗湾镇} 的 {npc:173570} 获得 {item:182585} 并梳理 {npc:173468}。'
L['sinrunner_note_day3'] = '在 {location:暗湾镇} 道路周围找到4个 {item:182595} 给 {npc:173468} 装配上。'
L['sinrunner_note_day4'] = '在 {npc:173570} 处拾取 {item:182620} 并填满 {location:晋升堡垒} 或 {location:炽蓝仙野} 的水。把 {item:182599} 给 {npc:173468}。'
L['sinrunner_note_day5'] = '从 {location:午夜集市} 的 {npc:171808} 用不同的肉换取 {item:182597}，给 {npc:173468} 装配上。'
L['sinrunner_note_day6'] = '从 {location:城墙巨洞} 的 {npc:167815} 购买3个 {item:179271}，喂食 {npc:173468}。'

L['options_icons_carriages'] = '马车'
L['options_icons_carriages_desc'] = '显示可骑乘马车的位置和路径。'
L['options_icons_dredbats'] = '{npc:161015}'
L['options_icons_dredbats_desc'] = '显示 {npc:161015} 的位置和路径。'
L['options_icons_sinrunners'] = '{npc:174032}'
L['options_icons_sinrunners_desc'] = '显示 {npc:174032} 的位置和路径。'

L['addius_note'] = '意志薄弱的生灵不该来浪费我的时间，不过如果你坚持的话，我会让你见识下真正的痛苦。'
L['eyegor_note'] = '艾戈尔准备战斗！'
L['sylla_note'] = '在这可怕的地方，谁也别指望能打出一场出色的战斗。但是，唉，我们就是在这么个地方。别再浪费我的时间了。'

L['avowed_ritualist_note'] = '把 {npc:160149} 带到这里赦免它们。'
L['fugitive_soul_note'] = '把此 {npc:160149} 带到 {npc:166150} 附近开始赦罪仪式。'
L['souls_absolved'] = '灵魂已赦免'
L['options_icons_fugitives'] = '{achievement:14274}'
L['options_icons_fugitives_desc'] = '显示 {achievement:14274} 成就中 {npc:160149} 的位置。'

L['grand_inquisitor_note'] = '把10个 {item:180451} 交给 {npc:160248} 有机会获得此罪碑。'
L['high_inquisitor_note'] = '把250个 {currency:1816} 交给 {npc:160248} 有机会获得此罪碑。'
L['inquisitor_note'] = '把100个 {currency:1816} 交给 {npc:160248} 有机会获得此罪碑。'
L['options_icons_inquisitors'] = '审判官'
L['options_icons_inquisitors_desc'] = '显示 {achievement:14276} 成就中审判官的位置。'

L['bell_of_shame_note'] = '每30分钟，{npc:176006} 旁边会随机生成一个幽灵。\n\n使用30个 {currency:1820} 修复 {npc:176056} 然后敲钟从激活的幽灵那里获得一个增益。\n\n幽灵其中之一，{npc:176043} 给予 {spell:346708} 提供增加 {location:赎罪大厅} 区域范围内 {item:172957} 掉率。'
L['atonement_crypt_label'] = '赎罪地穴'
L['atonement_crypt_note'] = '使用一个 {item:172957} 打开 {object:地穴之门}。'
L['atonement_crypts_opened'] = '赎罪地穴已打开'
L['atonement_crypt_key_label'] = '{item:172957}'
L['atonement_crypt_key_note'] = [[
{location:赎罪大厅} 区域范围内怪物掉落 {item:172957}。

{npc:158902}
{npc:176109}
{npc:158894}
{npc:156911}
{npc:158910}
{npc:176121}
{npc:176114}
{npc:156909}
{npc:156256}
{npc:176124}
{npc:156260}
{npc:159027}
{npc:158897}
{npc:176116}
{npc:158908}
{npc:176122}

最高掉率的是 {npc:158892}。
]]
L['options_icons_crypt_kicker'] = '{achievement:14273}'
L['options_icons_crypt_kicker_desc'] = '显示 {achievement:14273} 成就中刷怪的位置。'

L['broken_mirror'] = '残破的镜子'
L['broken_mirror_note'] = '每天将会激活一组3个 {object:残破的镜子}。使用一个 {item:181363} 修复每个镜子并打开其中的 {object:被遗忘的宝箱}。'
L['broken_mirror_crypt'] = '墓穴内。'
L['broken_mirror_elite'] = '有精英怪的小房间内。'
L['broken_mirror_group'] = '组'
L['broken_mirror_house'] = '房屋内。'
L['broken_mirror_61818'] = '有 {npc:173699} 的小房间内。'
L['broken_mirror_61819'] = '小房间内的一层。'
L['broken_mirror_61827'] = '小房间内。'
L['options_icons_broken_mirror'] = '残破的镜子'
L['options_icons_broken_mirror_desc'] = '显示 {object:残破的镜子} 的位置。'

L['soulshape_chicken_note'] = [[
1. 从 {location:暗湾镇} 收集 {item:187811}
2. 目标为 {npc:181660} 并使用表情 {emote:/小鸡}，{emote:/chicken}
3. {emote:失落之魂冲着你咯咯叫，显得很饿。}
4. 目标为 {npc:181660} 并使用 {item:187811}
]]
L['spectral_feed_label'] = '{item:187811}'
L['spectral_feed_note'] = [[
{item:187811} 用于喂食 {location:雷文德斯} 的 {npc:181660} 获得 {item:187813}

{item:187811} 用于喂食 {location:炽蓝仙野} 的 {npc:182093} 获得 |cFF00FF00[吃饱的猫之魂]|r

{note:{item:187811} 显示10分钟并需60分钟刷新。}
]]

-------------------------------------------------------------------------------
----------------------------------- THE MAW -----------------------------------
-------------------------------------------------------------------------------

L['return_to_the_maw'] = '重返 {location:噬渊}'
L['maw_intro_note'] = '从 {npc:162804} 开始指引任务线以解锁 {location:噬渊} 的稀有和事件。'

L['apholeias_note'] = '和3名其他玩家，站在平台的角落并施放 {spell:331783} 召唤稀有。'
L['dekaris_note'] = '在一块凸起的大岩石上。'
L['deomen_note'] = '进入密室南边的房间并激活锁控制以接近他。'
L['drifting_sorrow_note'] = '在悬浮宝珠附近击杀 {npc:175246} 激活首领。'
L['ekphoras_note'] = '和3名其他玩家，站在平台的角落并施放 {spell:330650} 召唤稀有。'
L['etherwyrm_note'] = '需要法夜突袭激活。击杀位于 {location:裂隙} 的 {npc:179030} 获得 {item:186190}。在 {location:荒芜洞窟} 洞穴（{location:裂隙} 以外）（当突袭未激活时在 {npc:175821} 处）的 {object:以太浮蛇囚笼} 使用钥匙。'
L['fallen_charger_note'] = '在区域范围内的大喊之后，它会选择两条路径中的任何一条，直到它到达 {location:刻希亚} 并在那里消失。'
L['ikras_note'] = '在 {location:破灭堡} 飞来飞去。这里是攻击他的好位置。'
L['lilabom_note'] = [[
收集全部5个部分完成宠物。一些部分可能在多个位置出现。

· {item:186183}
· {item:186184}
· {item:186185}
· {item:186186}
· {item:186187}
]]
L['orophea_note'] = '从东南方的拾取 {spell:337143} 并提供给 {npc:172577} 激活。'
L['sanngror_note'] = '如果他是不可攻击，等待直到他不再灵魂实验。'
L['sly_note'] = '和 {npc:179068} 交谈获得 {spell:353322} 增益并在3个不同的格里恩突袭找到 {npc:179096}。'
L['talaporas_note'] = '和3名其他玩家，站在平台的角落并施放 {spell:331800} 召唤稀有。'
L['valis_note'] = '按正确顺序点击三个 {npc:174810} 召唤稀有。顺序每次点击都会更换并且错误点击符文会受到伤害和负面效果 {spell:343636}。'
L['yero_note'] = '靠近 {npc:172862} 然后跟着他进入附近的一个山洞，在那里他变为敌对。'

L['exos_note'] = [[
击杀其他三个悲伤、痛苦和失落先驱收集他们的铭刻。

· {item:182328}
· {item:182326}
· {item:182327}

组合全部三个铭刻制造 {item:182329}，可以用来在 {location:统御祭坛} 召唤稀有。使用 {npc:173892} 到达上层。
]]

L['animaflow_teleporter_note'] = '激活即可直接前往 {location:噬渊} 其他位置。'
L['chaotic_riftstone_note'] = '激活 {spell:344157} 快速穿过 {location:噬渊}。'
L['venari_note'] = [[
使用 {currency:1767} 购买 {location:噬渊} 和 {location:托加斯特} 升级。

{note:帐号通用 {location:托加斯特} 升级在小号上显示不完整！}
]]
L['venari_upgrade'] = '{npc:162804} 升级'
L['torghast'] = '托加斯特'
L['Ambivalent'] = '纠结'
L['Appreciative'] = '欣赏'
L['Apprehensive'] = '防备'
L['Cordial'] = '和善'
L['Tentative'] = '犹豫'

L['stygian_cache'] = '冥殇宝箱'
L['stygian_cache_note'] = '每次出现只有一人可以拾取宝箱！'

L['box_of_torments_note'] = '在 {location:特玛库伦} 下面打开 {npc:173837}。'
L['tormentors_notes_note'] = '拾取 {npc:173811} 的尸体。'
L['words_of_warden_note'] = '检查一些罐子后面岩石上的 {object:碎纸}。'

-- Locations given relative to a map area name
L['nexus_area_calcis_branch'] = '位于 {location:白垩之地} 的水晶分叉上（使用锚点）'
L['nexus_area_calcis_crystals'] = '在 {location:白垩之地} 的一些青色水晶后面'
L['nexus_area_cradle_bridge'] = '{location:毁灭之源} 的桥下'
L['nexus_area_domination_bridge'] = '{location:统御祭坛} 南方的桥上'
L['nexus_area_domination_edge'] = '{location:统御祭坛} 的边上'
L['nexus_area_domination_room'] = '{location:统御祭坛} 楼顶的一个小房间里'
L['nexus_area_domination_stairs'] = '{location:统御祭坛} 的 {npc:173904} 旁边'
L['nexus_area_gorgoa_bank'] = '{location:戈尔格亚，聚魂之河} 河边'
L['nexus_area_gorgoa_middle'] = '就在河中央哟！'
L['nexus_area_gorgoa_mouth'] = '{location:戈尔格亚，聚魂之河} 河口'
L['nexus_area_perdition_wall'] = '{location:破灭堡} 的外墙边'
L['nexus_area_torment_rock'] = '{location:折磨平原} 的岩石上'
L['nexus_area_zone_edge'] = '沿着区域的边缘'
L['nexus_area_zovaal_edge'] = '{location:佐瓦尔的坩埚} 的边缘'
L['nexus_area_zovaal_wall'] = '{location:佐瓦尔的坩埚} 下面墙边'
-- Locations given relative to a named cave/cavern
L['nexus_cave_anguish_lower'] = '{location:苦楚之洞} 内（下层）'
L['nexus_cave_anguish_outside'] = '{location:苦楚之洞} 外'
L['nexus_cave_anguish_upper'] = '{location:苦楚之洞} 内（上层）'
L['nexus_cave_desmotaeron'] = '{location:渊狱} 外的小洞穴内'
L['nexus_cave_echoing_outside'] = '{location:回音之洞} 外'
L['nexus_cave_forlorn'] = '{location:荒弃之息} 洞穴内'
L['nexus_cave_howl_outside'] = '{location:死亡之嚎} 洞穴外的地面上'
L['nexus_cave_howl'] = '{location:死亡之嚎} 洞穴内'
L['nexus_cave_roar'] = '{location:死亡之哮} 洞穴内'
L['nexus_cave_roar_outside'] = '{location:死亡之哮} 洞穴外'
L['nexus_cave_ledge'] = '在壁架下方的一个小洞穴中'
L['nexus_cave_prodigum'] = '{location:浪骸之所} 的小洞穴内'
L['nexus_cave_soulstained'] = '{location:魂渍原野} 的小洞穴内'
L['nexus_cave_torturer'] = '{location:折磨者陋居} 内'
-- Locations given relative to a named NPC
L['nexus_npc_akros'] = '{npc:170787} 旁边的楼梯上'
L['nexus_npc_dekaris'] = '{npc:157964} 处山峰顶上'
L['nexus_npc_dolos'] = '{npc:170711} 后面的地面上'
L['nexus_npc_ekphoras'] = '{npc:169827} 的平台边上'
L['nexus_npc_eternas'] = '{npc:154330} 后面的地面上'
L['nexus_npc_incinerator'] = '{npc:156203} 下面的一个小窗台上'
L['nexus_npc_orophea'] = '{npc:172577} 旁边地面上'
L['nexus_npc_orrholyn'] = '{npc:162845} 的平台下面找到'
L['nexus_npc_portal'] = '{npc:167531} 后面的小石头上'
L['nexus_npc_talaporas'] = '{npc:170302} 的平台楼梯上'
L['nexus_npc_thanassos'] = '{npc:170731} 的平台后面'
L['nexus_npc_willbreaker'] = '{npc:168233} 后面的角落'
-- Locations given relative to the main path/road nearby
L['nexus_road_below'] = '在主干道下方的地面上'
L['nexus_road_cave'] = '在路下面的一个小山洞里'
L['nexus_road_mawrats'] = '在路边的一群噬渊鼠'
L['nexus_road_next'] = '主路旁'
L['nexus_room_ramparts'] = '在城墙下的一个小房间里'
-- Random locations described as best as possible
L['nexus_misc_crystal_ledge'] = '在一些青色水晶的岩石壁架上'
L['nexus_misc_floating_cage'] = '再漂浮的笼子上（使用锚点）'
L['nexus_misc_below_ramparts'] = '沿着城墙的底部'
L['nexus_misc_grapple_ramparts'] = '在城墙之上（使用锚点）'
L['nexus_misc_grapple_rock'] = '通过锚点到岩石上'
L['nexus_misc_ledge_below'] = '在窗台下的地面上'
L['nexus_misc_three_chains'] = '在地上的三个铁链'

L['stolen_anima_vessel'] = '失窃的心能容器'
L['hidden_anima_cache'] = '隐藏心能宝箱'
L['options_icons_anima_vessel'] = '失窃的心能容器'
L['options_icons_anima_vessel_desc'] = '显示突袭期间 {location:裂隙} 中 {object:失窃的心能容器} 位置。'

L['rift_hidden_cache'] = '隙隐宝箱'
L['options_icons_rift_hidden_cache'] = '隙隐宝箱'
L['options_icons_rift_hidden_cache_desc'] = '显示 {location:裂隙} 内 {object:隙隐宝箱} 的位置。'

L['options_icons_bonus_boss'] = '奖励精英'
L['options_icons_bonus_boss_desc'] = '显示奖励精英位置。'
L['options_icons_riftstone'] = '{npc:174962}'
L['options_icons_riftstone_desc'] = '显示 {object:混沌裂隙石} 传送位置。'
L['options_icons_grapples'] = '{npc:176308}'
L['options_icons_grapples_desc'] = '显示 {item:184653} 升级 {npc:176308} 的位置。'
L['options_icons_stygia_nexus'] = '冥殇枢纽'
L['options_icons_stygia_nexus_desc'] = '显示 {item:184168} 坐骑所需 {object:冥殇枢纽} 的位置。'
L['options_icons_stygian_caches'] = '冥殇宝箱'
L['options_icons_stygian_caches_desc'] = '显示获取额外冥殇的 {object:冥殇宝箱} 的位置。'

L['cov_assault_only'] = '只在%s突袭期间可用。'

L['helgarde_supply'] = '冥锋补给箱'
L['helgarde_supply_note'] = '在 {location:渊狱} 区域各处出现。你的 {npc:180598} 可以帮助你找到它们。'
L['options_icons_helgarde_cache'] = '冥锋补给箱'
L['options_icons_helgarde_cache_desc'] = '显示 {object:冥锋补给箱} 在 {location:渊狱} 区域可能出现的位置。'

L['mawsworn_cache_ramparts_note'] = '此宝箱在城墙顶上。使用锚点或 {npc:177093} 到它们那里。'
L['mawsworn_cache_tower_note'] = '此宝箱位于塔上并需要 {npc:177093} 到达。使用 {spell:349853} 技能爬上去。'
L['mawsworn_cache_quest_note'] = '{item:186573} 将只在你完成 {quest:63545} 任务后掉落！'

L['nilg_silver_ring_note'] = '在 {location:渊狱} 收集4个 {item:186727} 并使用它们打开 {object:统御封印之箱}。'
L['nilg_silver_ring_note1'] = '击杀 {npc:177444} 并打开 {item:186970}。'
L['nilg_silver_ring_note2'] = '拾取 {object:掠心者的钥匙链}，位于地下室房间 {npc:178311} 旁边的墙上。'
L['nilg_silver_ring_note3'] = '打 {location:渊狱} 区域内的 {object:冥锋补给箱}。你的 {npc:180598} 可以帮助你找到它们。'
L['nilg_silver_ring_note4'] = '反复击杀 {location:渊狱} 区域的 {npc:177134}（低掉率）。'
L['nilg_stone_ring_note'] = '在通灵领主突袭收集4个 {item:186600} 并在 {location:佐瓦尔的坩埚} 的任意 {npc:171492} 组合它们。'
L['nilg_stone_ring_note1'] = '在 {location:破灭堡} 城墙顶上的{object:渊誓之箱}（黄图标）内找到。'
L['nilg_stone_ring_note2'] = '完成 {quest:63545} 任务，然后拾取 {object:渊誓之箱} 直到你找到任务物品 {item:186573}。此任务可以共享！'
L['nilg_stone_ring_note3'] = '从 {location:破灭堡} 中央区域的 {npc:179601} 拾取。'
L['nilg_stone_ring_note4'] = '{location:破灭堡} 的 {npc:170634} 旁的地面上找到。你的 {npc:180598} 可以帮助你找到它们。'
L['nilg_gold_band_note'] = '使用锚点并跟着路径爬到山顶上。'
L['nilganihmaht_note'] = '你必须收集5个戒指带给位于 {location:裂隙} 的 {npc:179572}。'
L['calcis'] = '白垩之地'
L['desmotaeron'] = '渊狱'

L['zovault_note'] = '每天拖拽 {npc:179883} 到 {npc:179904} 必给裂隙石。'
L['options_icons_zovault'] = '{npc:179883}'
L['options_icons_zovault_desc'] = '显示 {npc:179883} 可能的位置。'

L['tormentors'] = '托加斯特折磨者'
L['tormentors_note'] = [[
折磨者事件每隔2小时整点出现。首领将总是按照下面列表顺序出现。

{item:185972} 每周只可以拾取一次，其中包含50个 {currency:1906}。
]]

L['options_icons_mawsworn_blackguard'] = '{achievement:14742}'
L['options_icons_mawsworn_blackguard_desc'] = '显示 for {achievement:14742} 成就中 {npc:183173} 的位置。'

L['mawsworn_blackguard'] = '渊誓黑衣卫士'
L['mawsworn_blackguard_note'] = '很容易切换目标为潜行的 {npc:183173}：'

L['options_icons_covenant_assaults'] = '盟约突袭'
L['options_icons_covenant_assaults_desc'] = '盟约突袭奖励'

L['assault_sublabel_US'] = '突袭更换于太平洋夏令时间周二上午8点和周五下午20点'
L['assault_sublabel_EU'] = '突袭更换于欧洲中部时间周二上午8点和周五下午20点'
L['assault_sublabel_CN'] = '突袭更换于中国标准时间周四上午7点和周日下午19点'
L['assault_sublabel_AS'] = '突袭更换于韩国标准时间周四上午8点和周日下午20点'

L['necrolord_assault'] = '{quest:63543}'
L['necrolord_assault_note'] = '{item:185992} 可在突袭期间拾取'
L['necrolord_assault_quantity_note'] = '打开 {object:渊誓之箱}'
L['venthyr_assault'] = '{quest:63822}'
L['venthyr_assault_note'] = '{item:185990} 可在突袭期间拾取'
L['venthyr_assault_quantity_note'] = '使用物品'
L['night_fae_assault'] = '{quest:63823}'
L['night_fae_assault_note'] = '{item:185991} 可在突袭期间拾取'
L['night_fae_assault_quantity_note'] = '打开 {object:隙隐宝箱}'
L['kyrian_assault'] = '{quest:63824}'
L['kyrian_assault_note'] = '{item:185993} 可在突袭期间拾取'
L['kyrian_assault_quantity_note1'] = '找到 {npc:179096}'
L['kyrian_assault_quantity_note2'] = '熔炉附近 {emote:/跳舞}，{emote:/dance}'

-------------------------------------------------------------------------------
---------------------- TORGHAST, THE TOWER OF THE DAMNED ----------------------
-------------------------------------------------------------------------------

L['torghast_the_tower_of_the_damned'] = '托加斯特，罪魂之塔'
L['torghast_reward_sublabel'] = '{note:大多数区域共享奖励}'
L['torghast_boss_note'] = '{location:托加斯特，罪魂之塔} 各种首领掉落。'
L['torghast_vendor_note'] = '供应商 {npc:152594} 和 {npc:170257} 出售，售价 300个 {currency:1728} 或 1,000个 {currency:1728}。'
L['torghast_reward_note'] = '{location:托加斯特，罪魂之塔} 全程获取'
L['torghast_soulshape_note'] = '12层以上'
L['colossal_umbrahide_mawrat_note'] = '13层以上'

L['skoldus_hall'] = '斯科杜斯之厅'
L['fracture_chambers'] = '断骨密室'
L['the_soulforges'] = '灵魂熔炉'
L['coldheart_interstitia'] = '凇心间隙'
L['mortregar'] = '莫尔特雷加'
L['the_upper_reaches'] = '上层区域'
L['adamant_vaults'] = '坚钢宝库'
L['twisting_corridors'] = '扭曲回廊'
L['the_jailers_gauntlet'] = '典狱长的挑战'

L['torghast_layer1'] = '完成1层'
L['torghast_layer2'] = '完成2层'
L['torghast_layer3'] = '完成3层'
L['torghast_layer4'] = '完成4层'
L['torghast_layer6'] = '完成6层'
L['torghast_layer8'] = '完成8层'

L['phantasma_note'] = '幻灭心能'
L['bloating_fodder_note'] = '鼓胀饲料爆裂'
L['flawless_master_note'] = '完成 |cffffff00[{achievement:15322}]|r'
L['tower_ranger_note'] = '完成 |cffffff00[{achievement:15324}]|r'

L['the_jailers_gauntlet_note'] = '{note:首领不计入} |cffffff00{achievement:14498}|r'

L['the_box_of_many_things'] = '万物之盒'
L['the_box_of_many_things_note'] = '{currency:1904} 解锁额外的能力'
L['many_many_things_section'] = '完成 |cffffff00[{achievement:15079}]|r'

L['the_runecarver'] = '{npc:164937}'
L['clearing_the_fog_suffix'] = '已解锁记忆'

-------------------------------------------------------------------------------
-------------------------------- ZERETH MORTIS --------------------------------
-------------------------------------------------------------------------------

local HIDDEN_ALCOVE = [[
访问 {location:%s凹室}：

1. 完成第6章 {location:扎雷殁提斯} 战役。
2. 找到 {object:%s凹室指向} %s。
3. 在 {location:共振群山}，击杀有 {spell:362651} 的怪物或站在白池中获得60层 {npc:183569}。
4. 使用 {location:孕育栖地} 内的 {npc:184329} 访问 {location:内室}。（需要30个 {npc:183569}）
5. 使用 {npc:184485} 访问 {location:%s凹室}。（需要30 {npc:183569}）
]]

L['camber_alcove_note'] = string.format(HIDDEN_ALCOVE, '拱曲', '拱曲', '在 {location:最终位点} 建筑物后面', '拱曲')
L['dormant_alcove_note'] = string.format(HIDDEN_ALCOVE, '休眠', '休眠', '位于 {location:共振群山}', '休眠')
L['fulgor_alcove_note'] = string.format(HIDDEN_ALCOVE, '灿烂', '灿烂', '位于 {location:共振群山}', '灿烂')
L['rondure_alcove_note'] = string.format(HIDDEN_ALCOVE, '圆弧', '圆弧', '在 {location:第三位点} 平台上', '圆弧')
L['repertory_alcove_note'] = string.format(HIDDEN_ALCOVE, '储备', '储备', '在 {location:陆相宝窟} 洞穴内', '储备')

L['corrupted_architect_note'] = '攻击 {npc:183958} 和 {npc:183961} 激活稀有。'
L['dune_dominance_note'] = '{achievement:15392} 成就中全部3个稀有精英在此位置出现。'
L['feasting_note'] = '有时会在返回该地点之前巡逻该区域。'
L['furidian_note'] = '激活区域内三个 {object:强化钥匙}，然后解锁 {object:可疑之怒宝箱}。'
L['garudeon_note'] = '从周围地区收集 {npc:183562} 并使用 {spell:362655} 喂食给 {npc:183554}。三个吃饱后，{npc:180924} 将激活。'
L['gluttonous_overgrowth_note'] = '摧毁周围全部 {npc:184048} 激活此稀有。'
L['helmix_note'] = [[
击杀区域内的 {npc:179005} 直到它做出表情并出现。

{emote:大地在震颤……有什么东西潜藏在地表之下！}
]]
L['hirukon_note'] = [[
引诱 {npc:180978} 到上面，需要制造一个 {item:187923}。

1. 在周围水域钓一个 {item:187662}。

2. 从 {location:赞加沼泽} 的盘牙水库 {object:刺鼻的团豚群} 内钓一个 {item:187915}。

3. 从 {location:纳沙塔尔} 的 {location:凯尔雅之墓} 飞行点附近的 {object:跳跳鱼群} 内钓一个 {item:187922}。

4. 从 {location:烁光海床} 的 {location:纳舒拉平台}（34.7, 75.0）二楼的平台拾取一个 {item:187916}（非常隐蔽）。

5. {npc:182194} 位于 {location:玛卓克萨斯} 的 {location:兵主之座} 的南边池塘。问她制作完成 {item:187923}。

6. 使用 {item:187923}，可以让你在 {npc:180978} 附近看到 {object:元水母群} 渔点15分钟。在此钓鱼会召唤 {npc:180978} 到上面。
]] -- Breaking my rule of no coords in the notes for this one
L['orixal_note'] = '与在该区域巡逻的 {npc:185487} 共享出现。'
L['protector_first_ones_note'] = '需要两名玩家。将匹配的符文带到每个控制台（在周围区域找到）来打开屏障。'
L['the_engulfer_note'] = '保护 {npc:183505} 直到 {npc:183516} 从裂隙中跳出。'
L['zatojin_note'] = '吸引附近的 {npc:183721} 并让你获得20层 {spell:362976} 直到你有 {spell:362983}。当你瘫痪时必须站在 {npc:183774} 尸体上，{npc:183764} 会注意你。'

L['architects_reserve_note'] = '完成位于 {location:朝圣者的恩典} {npc:180630} 的 {quest:64829} 任务线解锁宝藏。'
L['bushel_of_produce_note'] = '击杀1个 {npc:182368} 到北边它会被 {spell:360945} 获得自身增益。击杀更多 {npc:182368}（无需增益）直到你获得5层，然后击破门获得宝藏。'
L['crushed_crate_note'] = '拾取在宝藏上方倒下的柱子上的 {item:189767}。把它交给 {npc:185151} 换取 {item:189768} 可以打破坠落的岩石。'
L['domination_cache_note'] = '区域内的 {npc:181403} 和 {npc:182426} 有低几率掉落 {item:189704}。'
L['drowned_broker_supplies_note'] = '和 {npc:181059} 交谈控制附近的 {npc:185282}。'
L['forgotten_protovault_note'] = '只在 {wq:呱了} 世界任务期间可用。'
L['grateful_boon_note'] = '不能飞很难到达；使用 {spell:300728} 或 {spell:111771} 上山。安抚全部12个区域内生物和 {npc:185293} 将出现宝藏。'
L['library_vault_note'] = '在 {location:词汇岩窟} 点击石板直到找到正确的 {spell:362062} 增益来打开宝藏。'
L['mistaken_ovoid_note'] = '{location:维度瀑布} 洞穴内，需要收集5个 {item:190239} 然后带给 {npc:185280}。'
L['ripened_protopear_note'] = '开始 {quest:64641} 任务线获得 {location:繁花铸造厂} 访问权限。收集其中的5个 {spell:367180}（绿色云雾）并把它们给 {npc:185416} 授粉。'
L['sphere_treasure_note'] = '小心地跳上球体，直到到达宝藏。'
L['submerged_chest_note'] = '吸收南侧的 {object:危险的能量宝珠}，然后与宝藏附近的 {object:被遗忘的水泵} 互动。'
L['symphonic_vault_note'] = '检查 {npc:183998} 听到四个声音的序列。每个 {npc:183950} 在房间里播放单一的声音。按照匹配顺序与他们互动解锁宝藏。'
L['syntactic_vault_note'] = '解锁此宝藏，需要与 {location:初诞者圣墓} 区域的 {object:符文音节} 互动获得6层 {spell:367499}。'
L['template_archive_note'] = '推动房间内 {npc:183339} 到 {npc:183337} 打开路径到达宝藏。'
L['undulating_foliage_note'] = [[
按下四个 {npc:185390} 激活 {location:化生之庭} 中央房间的传送器。

· {object:化生之庭的锁} 外面的后边
· 庭院西南侧房间内
· {npc:181652} 南边的房间内
· 在庭院的东南房间内
]]

L['provis_cache'] = '锁住的供给扇区宝箱'
L['provis_cache_note'] = [[
完成 {npc:177958} 的 {quest:64717} 日常任务至少一次。

在各处的锻炉使用 {item:187516} 收集15个 {item:187728} 并组合为 {item:187787}。宝珠中可能包含钥匙。
]]
L['prying_eye_discovery'] = '窥探之眼的发现'
L['prying_eye_discovery_note'] = '飞行解锁后容易到达。'
L['pulp_covered_relic'] = '被粘浆覆盖的圣物'
L['requisites_originator_note'] = [[
一台每周会给你不同奖励的机器：

· {spell:366667} = 附魔材料和金币
· {spell:366668} = 心能
· {spell:366669} = 密文
· {spell:366670} = 源生微粒和 {item:189179} （几率）
· {spell:366671} = 密文/微粒/心能
· {spell:366672} = 密文装备
]]
L['rondure_cache'] = '圆弧宝箱'
L['rondure_cache_note'] = '位于 {location:圆弧凹室} 内跳跃迷宫到顶部的可交互锻炉。'
L['sandworn_chest'] = '沙蚀宝箱'
L['sandworn_chest_note'] = '从区域内怪物拾取5个 {item:190198} 组合成 {item:190197}。'
L['sand_piles'] = '沙堆'
L['sand_piles_note'] = [[
全部沙堆在隐藏的 {location:休眠凹室} 内找到。每个沙堆需要一个 {item:189863}，可以在该区域的其它宝藏中找到：

· 统御之箱
· 陨落宝箱
· 被窃的神器
· 被盗的卷轴
· 水下的宝箱
· 交响宝箱
· 波动植物
]]
L['torn_ethereal_drape'] = '破旧的虚渺披风'
L['torn_ethereal_drape_note'] = '在 {location:灿烂凹室} 内找到。激活 {object:自动体控制台}，然后骑上 {npc:183565} 到达天花板。'

L['cache_avian_nest'] = '元鸟之巢'
L['cache_cypher_bound'] = '密文束缚的宝箱'
L['cache_discarded_automa'] = '被抛弃的自动体残片'
L['cache_forgotten_vault'] = '被遗忘的宝库'
L['cache_mawsworn_supply'] = '渊誓补给宝箱'
L['cache_tarachnid_eggs'] = '元蛛卵'
L['cache_shrouded_cypher'] = '氤氲密文宝箱'
L['cache_shrouded_cypher_note'] = [[
这些宝箱只在有 {spell:361917} 增益和装备一件适当的密文装备物品时能看到：

{note:强化 {npc:181059} 的观察力，使其可以发现额外的隐藏宝箱。}
]]

L['cache_cantaric'] = '声乐宝箱'
L['cache_fugueal'] = '赋格宝箱'
L['cache_glissandian'] = '滑音宝箱'
L['cache_mezzonic'] = '中音宝箱'
L['cache_toccatian'] = '弹奏宝箱'

L['schematic_treasure_note'] = '{note:如果尚未解锁合成，此宝藏将不包含原生体结构图。如果您已经拾取了宝藏，会在附近的地面上找到结构图。}'
L['schematic_treasure_mount_note'] = '{note:此结构图在附近的一次性宝藏中找到。如果在解锁坐骑合成之前打开宝藏，结构图会在这里找到。}'
L['schematic_treasure_pet_note'] = '{note:此结构图在附近的一次性宝藏中找到。如果在解锁宠物合成之前打开宝藏，结构图会在这里找到。}'
L['schematic_bronze_helicid_note'] = '每周任务 {quest:65324} 的 {item:190610} 内几率发现。'
L['schematic_ambystan_darter_note'] = '隐藏在 {npc:185312} 旁边的水下。'
L['schematic_bronzewing_vespoid_note'] = '{location:孕育栖地} 内。'
L['schematic_buzz_note'] = '{npc:185265} 内有几率发现。'
L['schematic_curious_crystalsniffer_note'] = '击败位于 {location:初诞者圣墓} 团队中的 {npc:184915} 后短时间可用。'
L['schematic_darkened_vombata_note'] = '浮空笼子内。'
L['schematic_deathrunner_note'] = '获得作为一部分 {spell:366367} 解锁任务线。'
L['schematic_desertwing_hunter_note'] = '位于柱顶。'
L['schematic_fierce_scarabid_note'] = '藏在 {npc:181870} 站立的平台下面。'
L['schematic_forged_spiteflyer_note'] = '元蜂蜂巢群上延伸。'
L['schematic_genesis_crawler_note'] = '{location:源生凹室} 入口顶上发现。'
L['schematic_goldplate_bufonid_note'] = '{npc:178803} 小几率掉落。'
L['schematic_heartbond_lupine_note'] = '{npc:179939} 小几率掉落。'
L['schematic_ineffable_skitterer_note'] = '自杀！不，确实需要灵魂状态可以看到位于 {location:流亡洞穴} 内的 {npc:185092}。'
L['schematic_leaping_leporid_note'] = '在一棵漂浮的树上发现。'
L['schematic_mawdapted_raptora_note'] = '位于 {location:无尽流沙} 的 {npc:181412} 小几率掉落。'
L['schematic_microlicid_note'] = '在浮空树最低的树枝上，在一些树叶下面。'
L['schematic_omnipotential_core_note'] = '{location:圆弧凹室} 内找到。结构图隐藏在房间西南侧拱门的上沿后面。'
L['schematic_prototickles_note'] = '附在 {npc:180978} 稀有上方藤蔓内的浮动链上。'
L['schematic_prototype_fleetpod_note'] = '{location:拱曲凹室} 内找到。和 {npc:184900} 互动开启小游戏。指引蜗牛穿过5个环而不接触 {npc:185455} 赢得结构图。'
L['schematic_raptora_swooper_note'] = '{location:塑形之厅} 内发现。'
L['schematic_resonant_echo_note'] = '{object:原初之歌的晶化回响} 内几率发现。'
L['schematic_russet_bufonid_note'] = '{item:187780} 巅峰宝箱内几率发现。'
L['schematic_scarlet_helicid_note'] = '在拱形建筑物顶上发现。'
L['schematic_serenade_note'] = '位于团队区域 {location:不朽休憩所} 一个浮动平台下方的链条上。'
L['schematic_shelly_note'] = '位于 {location:词汇岩窟} 书架的背面。需要传送技能才能爬上书架。'
L['schematic_stabilized_geomental_note'] = '{location:初诞者圣墓} 团队内 {npc:182169} 有几率掉落。'
L['schematic_tarachnid_creeper_note'] = '{location:无尽流沙} 的小型建筑物内。需要第5章战役进度清除巨石。'
L['schematic_terror_jelly_note'] = '位于坡道旁边的方形塔顶上。'
L['schematic_tunneling_vombata_note'] = '{location:魂灵音室} 建筑群内一条堵塞的隧道中的一些瓦砾旁边。'
L['schematic_vespoid_flutterer_note'] = '{location:共振群山} 的 {location:第一位点} 层一堆沙子上延伸。'
L['schematic_violent_poultrid_note'] = '{daily:65256} 日常任务有几率掉落。'

L['concordance_excitable'] = '可激发的索引台'
L['concordance_mercurial'] = '善变索引台'
L['concordance_tranquil'] = '宁静索引台'
L['concordance_note'] = '阅读每个索引解锁位于 {location:流亡洞穴} 的 {object:知识控制台} 条目。'

L['echoed_jiro_note'] = '耗费 {npc:181059} 能量获得临时增益。需要 {npc:181397} 的 {object:创音词} 研究。'

L['bygone_elemental_note'] = '{npc:181221} 可以代替区域内的任何 {npc:179007} 位置出现。'
L['dominated_irregular_note'] = '{npc:184819} 可以代替该区域内的任何 {npc:183184} 出现。'
L['gaiagantic_note'] = '只在 {npc:177958} 提供 {quest:64785} 日常任务时出现。'
L['misaligned_enforcer_note'] = '在此出现，巡逻该地区，然后在路线尽头消失。'
L['overcharged_vespoid_note'] = '可以代替区域内任何群体的一部分出现。'
L['runethief_xylora_note'] = '{location:朝圣者的恩典} 区域内潜伏出现。'

local proto_area = '有机会在周围的锻炉中找到 {object:%s}。'
L['proto_material_zone_chance'] = '有机会在该区域的精选锻炉中找到。'
L['anima_charged_yolk_note'] = '收集 {item:187728} 从任意锻炉并组合它们为一个 {item:187787}，有机会包含一个 {item:187890}。'
L['energized_firmament_note'] = string.format(proto_area, '共振群山')
L['honeycombed_lattice_note'] = string.format(proto_area, '蜂鸣悬崖')
L['incorporeal_sand_note'] = '有机会在该地区的沙漠区域的锻炉中找到。'
L['pollinated_extraction_note'] = string.format(proto_area, '不羁芳绿')
L['serene_pigment_note'] = '在 {location:流亡洞穴} 入口上方的锻炉中。可能需要多次尝试。'
L['volatile_precursor_note'] = '在顶部的较小锻炉中找到。可能需要多次尝试。'
L['wayward_essence_note'] = '{location:流亡洞穴} 后面浮空锻炉中。需站在锻炉凹处。'

L['patient_bufonid_note'] = '{location:扎雷殁提斯} 故事的进展直到 {npc:180950} 提供 {quest:65727}。每天完成任务，将 {npc:185798} 引出池塘。'
L['patient_bufonid_note_day1'] = '从区域内的元蜂收集15个 {item:190852}。'
L['patient_bufonid_note_day2'] = '从拍卖行购买30个 {item:172053}。'
L['patient_bufonid_note_day3'] = '从拍卖行购买200个 {item:173202}。'
L['patient_bufonid_note_day4'] = '从拍卖行购买10个 {item:173037}。'
L['patient_bufonid_note_day5'] = '从区域内的怪物收集5个 {item:187704}。'
L['patient_bufonid_note_day6'] = '从 {location:朝圣者的恩典} 附近的 {npc:185748} 购买5个 {item:190880}。'
L['patient_bufonid_note_day7'] = '从 {location:塔扎维什} 地下城的 {npc:180114} 购买1个 {item:187171}。'

L['lost_comb'] = '失落的蜂巢'
L['soulshape_penguin_note'] = '位于浮空锻炉顶部。'

L['coreless_automa'] = '无核自动体'
L['coreless_automa_note'] = '装备一个 {spell:364480} 物品将赋予 {npc:181059} 不消耗能量就能控制生物的能力，这将会获得成就更加快速。'
L['coreless_automa_warning'] = '{note:等待自动机真正开始跟随你然后让 {npc:181059} 离开，以避免导致需要你重新登录的错误。}'

L['olea_manu'] = '用 {currency:1979} 换取出售的收藏和食谱。'

L['venaris_fate_sublabel'] = '位于 {location:造物化生台}'
L['venaris_fate_note'] = [[
1. 在 {location:噬渊} 的 {location:威·娜莉的庇护所} 的虚体化 {npc:162804} 对话。
2. 如果她不是虚体，则需要额外的9.2故事进度。
3. 在 {location:扎雷殁提斯} 的 {location:造物化生台} 和 {npc:162804} 的尸体互动。
4. 5天后，将收到一封来自 {npc:162804} 的邮件以及 {item:192485}。
]]

L['options_icons_code_creature'] = '{achievement:15211}'
L['options_icons_code_creature_desc'] = '显示 {achievement:15211} 成就中生物的位置。'
L['options_icons_concordances'] = '知识索引'
L['options_icons_concordances_desc'] = '显示 {object:知识索引控制台} 的位置。'
L['options_icons_echoed_jiros'] = '回声机若'
L['options_icons_echoed_jiros_desc'] = '显示 {npc:回声机若} 提供增益的位置。'
L['options_icons_exile_tales'] = '{achievement:15509}'
L['options_icons_exile_tales_desc'] = '显示 {achievement:15509} 成就中传说的位置。'
L['options_icons_proto_materials'] = '{achievement:15229}'
L['options_icons_proto_materials_desc'] = '显示 {achievement:15229} 成就中稀有的原型材料的位置。'
L['options_icons_protoform_schematics'] = '原生体结构图'
L['options_icons_protoform_schematics_desc'] = '显示坐骑和宠物结构图的位置。'
L['options_icons_puzzle_caches'] = '谜题宝箱'
L['options_icons_puzzle_caches_desc'] = '显示 {object:谜题宝箱} 可能的位置。'
L['options_icons_zereth_caches'] = '密文宝箱'
L['options_icons_zereth_caches_desc'] = '显示 {object:密文宝箱} 可能的位置。'
L['options_icons_shrouded_cyphers'] = '氤氲密文宝箱'
L['options_icons_shrouded_cyphers_desc'] = '显示隐藏的 {object:氤氲密文宝箱} 可能的位置。'
L['options_icons_mawsworn_supply_cache'] = '渊誓补给宝箱'
L['options_icons_mawsworn_supply_cache_desc'] = '显示 {object:渊誓补给宝箱} 可能的位置。'
L['options_icons_coreless_automa'] = '{achievement:15542}'
L['options_icons_coreless_automa_desc'] = '显示 {achievement:15542} 成就中无核自动体的位置。'

L['ponderers_portal_label'] = nil
L['ponderers_portal_note'] = nil
