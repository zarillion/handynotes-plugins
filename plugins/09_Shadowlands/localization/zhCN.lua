local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhCN", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes：暗影国度"
L["options_title"] = "暗影国度"

-------------------------------------------------------------------------------
---------------------------------- COVENANTS ----------------------------------
-------------------------------------------------------------------------------

L["covenant_required"] = "需要%s盟约成员。"
L["transport_research"] = "需要传送网络%d级"

local ACHAN = "心能连接到%s。"
L["achan_citadel_of_loyalty"] = ACHAN:format('忠诚堡垒')
L["achan_dominance_keep"] = ACHAN:format('统御要塞')
L["achan_dreamsong_fenn"] = ACHAN:format('梦歌沼泽')
L["achan_house_of_constructs"] = ACHAN:format('造物密院')
L["achan_temple_of_courage"] = ACHAN:format('勇气神庙')
L["achan_theater_of_pain"] = ACHAN:format('伤逝剧场')
L["achan_tirna_scithe"] = ACHAN:format('塞兹仙林')
L["achan_wanecrypt_hill"] = ACHAN:format('凋窖岭')

L["options_icons_fae_network_desc"] = "显示全部法夜蘑网的传送目的地。"
L["options_icons_fae_network"] = "菌丝网络"
L["options_icons_kyr_network_desc"] = "显示全部格里恩传送门网络的传送目的地。"
L["options_icons_kyr_network"] = "格里恩传送门"
L["options_icons_nec_network_desc"] = "显示全部通灵领主白骨死亡之门的传送目的地。"
L["options_icons_nec_network"] = "白骨死亡之门"
L["options_icons_ven_network_desc"] = "显示全部温西尔猩红之镜的传送目的地。"
L["options_icons_ven_network"] = "猩红之镜"

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "骑上圈内的稀有并使用 {spell:319566} 和 {spell:319575} 使其减速和昏迷。"
L["faeflayer_note"] = "瀑布后面隐藏的小洞穴内。"
L["humongozz_note"] = "种植一个 {item:175247} 在潮湿的沃土将刷新 {npc:164122}。在一分钟后 {spell:319367}，稀有将刷新。区域内的许多怪物都掉落蘑菇。"
L["lehgo_note"] = "摧毁颤动的戈姆蛋并击杀 {npc:171827} 直到他出现。在洞穴内（入口在东南尘泥地穴内）。"
L["rainbowhorn_note"] = "\n|cffff5400品|r|cffffaa00尝|r|cffffff00绝|r|cffaaff00妙|r|cff54ff00的|r |cff00ff55美|r|cff00ffa9丽|r|cff00ffff的|r |cff0055ff七|r|cff0000ff彩|r|cff5400ff之|r|cffaa00ff虹|r|cffff00ff好|r|cffff00aa味|r|cffff0054道|r|cffff0000！|r"
L["rootwrithe_note"] = "触碰 {npc:167928} 直到稀有出现。"
L["rotbriar_note"] = "和 {npc:171684} 交谈对话后在附近召唤稀有。"
L["slumbering_note"] = "跑到迷雾中将昏迷并被带出。使用信号弹或带 AOE 的宠物把他击出迷雾。"
L["skuld_vit_note"] = "在被障碍物阻挡的山洞中。法夜必须使用 {spell:310143} 进入洞穴。他进入战斗后，障碍物将消失。"
L["valfir_note"] = "在闪光的心能之种下降过程中点击并使用 {spell:338045} 移除他的 {spell:338038} 增益。"
L["wrigglemortis_note"] = "与 {npc:164179} 战斗刷新稀有。"

L["night_mare_note"] = [[
前往塞兹仙林，并沿着西北悬崖的树根路前往破损的车。在那可以在地面上拾取 {item:181243}。

把此物品带给位于闪瀑盆地的 {npc:165704}。她将给你一个 {item:181242} 换成10个 {item:173204}。|cFFFF8C00如果她不在这里，你必须完成|cFFFFFD00戈姆蛴围栏的麻烦|r和|cFFFFFD00捣蛋的林鬼|r任务线。|r

接下来，和森林之心的 {npc:160262} 交谈兑换 {item:181242} 为 {item:178675}。使用此物品得到 {spell:327083} 增益，可以让你看见 {npc:168135}。
]]

L["star_lake"] = "泊星剧场"
L["star_lake_note"] = "与舞台导演 {npc:171743} 交谈，会开启一场特殊的战斗。"

L["cache_of_the_moon"] = "在魅夜花园收集 {npc:171360} 的五个遗失工具并组合它们制造 {item:180753}。交给她工具包后会施放 {spell:334353} 给你，可以让你看到宝箱。"
L["cache_of_the_night"] = "在整个区域收集 {item:180656}，{item:180654} 和 {item:180655} 组合它们制造 {item:180652}。"
L["darkreach_supplies"] = "跳上 {npc:169995} 并滑翔到西南方进入空心山峰到达魅夜宝箱宝藏上面。"
L["desiccated_moth"] = "跳上 {npc:169997} 滑翔到西北方的树的树枝上。燃烧 {item:180784} 于焚香炉收集宝藏。"
L["dreamsong_heart"] = "使用 {npc:169997} 滑翔到东北方的树上。"
L["elusive_faerie_cache"] = "拾取 {spell:333923} 在暮辉林地的东北角并使用拾取宝箱。"
L["enchanted_dreamcatcher"] = "悬挂在树根顶上。从西侧往上跳最容易。"
L["faerie_trove"] = "位于平台下方。"
L["harmonic_chest"] = "需要两名玩家。一名玩家弹琴另一名玩家击鼓来解锁宝箱。"
L["hearty_dragon_plume"] = "在附近瀑布的顶部点击 {spell:333554}，然后用它向下漂浮到树枝上。"
L["old_ardeite_note"] = "在烁光林枝东南方击杀 {npc:160747} 和 {npc:160748} 得到 {item:174042}。使用此物品飞到附近稀有上面并标记它。"
L["swollen_anima_seed"] = "在树干里面的一颗大种子。"

L["playful_vulpin_note"] = [[
在 {npc:171206} 找到并使用正确的表情五次后获得宠物。

• 开始好奇的挖掘 = |cFFFF8C00/curious（/好奇）|r
• 仍然徘徊在无法坐下的地方 = |cFFFF8C00/sit（/坐下）|r
• 独自一人唱歌 = |cFFFF8C00/sing（/唱歌）|r
• 欢乐地跳舞 = |cFFFF8C00/dance（/跳舞）|r
• 孤独悲伤的坐着 = |cFFFF8C00/pet（/拍）|r
]]

L["tame_gladerunner"] = "驯服的巡林者"
L["tame_gladerunner_note"] = [[
阅读“Tale of the Tangle”并跟随蓝色的灯穿过小径到达 {npc:171767}。击杀他并拾取 {npc:171699}。

如果走错路并且 {npc:171699} 消失当你到达最后，返回开始位置并再次阅读“Tale of the Tangle”尝试。如果 {npc:171767} 不在，需要等待他刷新。
]]

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["aspirant_eolis_note"] = "拾取附近的 {item:180613} 并与 NPC 目标阅读激活他。"
L["baedos_note"] = "从周围地区带一桶发酵的莲榴果给 {npc:161536} 直到她激活。"
L["basilofos_note"] = "在岩石上移动，直到紫色的追踪标记出现在你的头顶。 站着不动，等待四种表情出现，然后他会刷新。"
L["beasts_of_bastion"] = "晋升堡垒之兽"
L["beasts_of_bastion_note"] = [[
和 {npc:161441} 交谈召唤四个野兽之一。

|cFFFF0000注意|r：此 NPC 经常出错并不会与你交谈。
]]
L["bookkeeper_mnemis_note"] = "在地区有几率刷新代替 {npc:166867} 单位。"
L["cloudfeather_patriarch_note"] = "在地区击杀 {npc:158110} 直到稀有表情和刷新。"
L["collector_astor_note"] = "阅读散落在房间里的全部六章 Mercia's Legacy，之后会收到来自 {npc:157979} 的悄悄话。和她交谈会得到 {spell:333779}，让你在西北方找到隐藏的 {item:180569}。交还章节将刷新稀有。"
L["corrupted_clawguard_note"] = "在炉火岗哨山上拾取 {item:180651} 并使用它修理 {npc:171300}。"
L["dark_watcher_note"] = "只在死亡后可以看到。和她交谈会施放 {spell:332830} 在攻击之前给你。"
L["demi_hoarder_note"] = "开始时堆叠99层 {spell:333874}，降低承受伤害。伤害后堆叠缓慢消失。稀有将沿着路径前进，如果到达终点则将消失。"
L["dionae_note"] = "当她变为免疫时，点击四个 {npc:163747} 打破她的护盾。"
L["herculon_note"] = [[
收集 {item:172451} 并使用给 {npc:158659} 堆叠 {spell:343531}。10层时，他将激活。

可以从房间内或室外的耗尽的心能之罐中收集微粒。
]]
L["nikara_note"] = "和两名其他玩家，点击远古焚香来召唤。"
L["sotiros_orstus_note"] = "点击黑色的钟召唤稀有。"
L["sundancer_note"] = "点击雕像获得 {spell:332309} 增益，然后使用 {item:180445} 滑翔到稀有并骑上它。"
L["unstable_memory_note"] = "当 {npc:171018} 存在时可以刷新。拉一个 {npc:171018} 到其它会给它10层堆叠 {spell:333558}，把它变成稀有。"
L["wingflayer_note"] = "点击附近桌上的勇气号角召唤（东南方，楼梯上）。"

L["broken_flute"] = "击杀附近的 {npc:170009} 直到掉落 {item:180536}，使用此工具修理它。"
L["experimental_construct_part"] = "拾取附近 {item:180534} 并使用修理部件。新能有多个刷新地点。."
L["larion_harness"] = "位于野兽大厅内。"
L["memorial_offering"] = "从候选者之憩的 {npc:171526} 购买 {item:180788}。将其放在靠近宝箱的饮料托盘中以获取 {item:180797}。"
L["scroll_of_aeons"] = "在中心地区拾取2个 {item:173973} 并将它们放在附近的贡品盘上显出宝藏。"
L["vesper_of_silver_wind"] = "完成 {achievement:14339} 成就并和晋升高塔入口的 {npc:171732} 交谈铸造 {item:180858}。"

L["gift_of_agthia"] = "点击通往西北方断桥的火炬并携带 {spell:333320} 从火炬到火炬直到到达宝箱。点亮最后的火炬你会受益 {spell:333063}。"
L["gift_of_chyrus"] = "在宝箱前面跪下将被授予 {spell:333045}。"
L["gift_of_devos"] = [[
宝箱西南方一个火炬可以拾取获得 {spell:333912}。上坐骑，参加战斗或受到伤害将火焰会掉落。必须回到宝箱并将火焰放在虔诚的火盆以获取 {spell:333070}。

拾取火焰之前，清除宝箱前面的全部怪物。在运送火焰时，点击任意路上的 {npc:156571} 获得 {spell:335012} 负面效果提高移动速度。
]]
L["gift_of_thenios"] = [[
（临）宝箱后面称为“智慧之路”。这会指引一系列平台上不同的熏香进行沟通：

• 知识熏香
• 忍耐熏香
• 洞察熏香
• 审判熏香

小心按顺序与他们沟通 => 知识 => 洞察。在审判平台会出现“有见识的智慧之路”的宝珠。

这个宝珠将把你进入真正的审判熏香。与它沟通后最终飞行平台让你获得 {spell:333068} 打开宝箱。
]]
L["gift_of_vesiphone"] = "敲钟刷新一个 {npc:170849} 并击杀获得 {spell:333239} 负面效果。宝箱正对面的流水将清洁此负面效果，并获得 {spell:332785}。"

L["cache_of_the_ascended"] = "晋升宝箱"
L["cache_of_the_ascended_note"] = "与其他四名玩家，同时点击五个纯净的容器，勇气，谦卑，智慧和忠诚。然后前往候选者试练场击败晋升者议会获得宝箱奖励。"

L["anima_shard"] = "失落的心能碎片"
L["anima_shard_61225"] = "在桥下的较低平台上。"
L["anima_shard_61235"] = "在瀑布上方的壁架上。"
L["anima_shard_61236"] = "在主体结构中间的拱顶上。"
L["anima_shard_61237"] = "在水面上方的壁架上。"
L["anima_shard_61238"] = "在水中的一座小桥下。"
L["anima_shard_61239"] = "在薄石柱上。"
L["anima_shard_61241"] = "在初思之厅入口上方。"
L["anima_shard_61244"] = "在悬崖边的一块岩石上。"
L["anima_shard_61245"] = "在小瀑布上方的岩石上。"
L["anima_shard_61247"] = "在墙上的小水具上方。"
L["anima_shard_61249"] = "隐藏在纯洁之巅上层的石柱后面。"
L["anima_shard_61250"] = "坐在楼梯后面。"
L["anima_shard_61251"] = "坐在小铃铛下面。"
L["anima_shard_61253"] = "在一个下落的石拱道顶部。"
L["anima_shard_61254"] = "在一个小的木结构上。"
L["anima_shard_61257"] = "在正下方 {npc:162523} 的小壁架上。"
L["anima_shard_61258"] = "在英雄之眠下面的小壁架上。"
L["anima_shard_61260"] = "在平台下的地面上。"
L["anima_shard_61261"] = "在 {npc:163460} 洞穴上面的壁架上。"
L["anima_shard_61263"] = "在石柱上。"
L["anima_shard_61264"] = "在倾斜结构的顶部。"
L["anima_shard_61270"] = "坐在树的底部。"
L["anima_shard_61271"] = "在上层平台的一个书柜中。"
L["anima_shard_61273"] = "在突出悬崖正下方的壁架上。"
L["anima_shard_61274"] = "隐藏在平台下方。"
L["anima_shard_61275"] = "在野兽大厅一些桶的后面。"
L["anima_shard_61277"] = "在薄石柱上。"
L["anima_shard_61278"] = "在岩石下的桥下。"
L["anima_shard_61279"] = "在薄石柱上。"
L["anima_shard_61280"] = "在桌子的一角。"
L["anima_shard_61281"] = "在纪念祭珍品上方的壁架上。"
L["anima_shard_61282"] = "在悬崖顶下的壁架上。 跳到旁边的岩石上，否则您将被传送回去。"
L["anima_shard_61283"] = "米莉的礼拜堂下面洞穴内，在桶后面。"
L["anima_shard_61284"] = "在岩石悬突下的壁架上，向南行。"
L["anima_shard_61285"] = "在一个小的岩石壁架的尽头。"
L["anima_shard_61286"] = "在俯瞰道路的壁架上。"
L["anima_shard_61287"] = "在小瀑布上方的壁架上。"
L["anima_shard_61288"] = "在小壁架的顶端。"
L["anima_shard_61289"] = "在凉亭上。"
L["anima_shard_61290"] = "在狭窄的岩石壁架的尽头。"
L["anima_shard_61291"] = "在的池塘底部雕像脚下。"
L["anima_shard_61292"] = "在石牌坊的顶部。"
L["anima_shard_61293"] = "在较低水平的细石柱上。"
L["anima_shard_61294"] = "隐藏在一堆桶后面。"
L["anima_shard_61295"] = "在书架上 {npc:156889} 后面。"
L["anima_shard_61296"] = "在倒下的大钟后面。"
L["anima_shard_61297"] = "在石柱后面。"
L["anima_shard_61298"] = "坐在躺椅后面。"
L["anima_shard_61299"] = "隐藏在大火炬的后面。"
L["anima_shard_61300"] = "挂在中央字体的壁架上。"
L["options_icons_anima_shard"] = "失落的心能碎片"
L["options_icons_anima_shard_desc"] = "显示“碎片苦工”成就所需的全部50个失落的心能碎片。"

L["aspirants_rest"] = "候选者之憩"
L["eternal_gateway"] = "永恒之门"
L["exaltations_rise"] = "提振高地"
L["heros_rest"] = "英雄之眠"
L["sagehaven"] = "贤者港湾"
L["seat_of_eternal_hymns"] = "恒歌之座"
L["temple_of_humility"] = "谦逊神庙"
L["temple_of_purity"] = "纯洁神庙"
L["xandrias_vigil"] = "山德里娅的戒卫"

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "摧毁 {npc:159885} 后激活稀有。"
L["deepscar_note"] = "可能出现在伤逝剧场的多个入口。"
L["forgotten_mementos"] = "在宝藏西侧的房间拖拽宝库闸门之链打开大门。"
L["gieger_note"] = "攻击 {npc:162815} 后激活稀有。"
L["gristlebeak_note"] = "破坏附近的 {npc:162761} 后激活稀有。"
L["leeda_note"] = "击杀两个 {npc:162220} 单位后稀有刷新。"
L["malkorak_note"] = "在塔顶（很多楼梯）。"
L["schmitd_note"] = "使用附近的 {spell:313451} 破坏他的护盾。"
L["taskmaster_xox_note"] = "与 {npc:160204}，{npc:160230} 和 {npc:160226} 共享刷新。"
L["zargox_the_reborn_note"] = "使用 {item:175841} 位于 {npc:157124} 顶上。获得宝珠，你必须完成 {npc:157076} 的任务“以太生命”之后再与他交谈。"
L["mixed_pool_note"] = [[
从周围怪物收集材料并扔进池中。每30个材料，根据所使用的组合，将刷新七个稀有中的一个。

• 从北侧的 {npc:167923} 和 {npc:167948} 收集 {spell:306713}。

• 从南侧的 {npc:165015} 和 {npc:171142} 收集 {spell:306719}。

• 从南侧的 {npc:165027} 和 {npc:166438} 收集 {spell:306722}。
]]

L["blackhound_cache"] = "黑犬宝箱"
L["bladesworn_supply_cache"] = "刃誓补给箱"

L["glutharns_note"] = "在软泥瀑布后面的一个山洞里。击杀 {npc:172485} 和 {npc:172479} 解锁宝箱。"
L["kyrian_keepsake_note"] = "检查 {npc:169664} 拾取宝藏。"
L["misplaced_supplies"] = "在巨大的蘑菇顶上。上山后跳上较小的棕色蘑菇，然后上山跳上巨大的蘑菇。"
L["necro_tome_note"] = "要进入塔楼，必须完成一个 {npc:166657} 的小任务线。在顶层的书柜里。"
L["plaguefallen_chest_note"] = [[
站在绿色软泥中（需要治疗！）获得10层 {spell:330069} 并会转化为 {spell:330092}。

转化后，到 {npc:158406} 平台（入口在东侧）下面洞穴并点击管道传送宝箱。
]]
L["ritualists_cache_note"] = "从骨头堆（多个刷新点）拾取 {item:181558}。在 {npc:174386} 后面使用它完成装订仪式书并获得 {spell:337041} 增益。"
L["runespeakers_trove_note"] = "东侧找到 {npc:170563} 并击杀他获得 {item:181777}。"
L["stolen_jar_note"] = "在巨大的蘑菇下面的山洞里。"
L["strange_growth_note"] = "攻击 {npc:165037} 获得宝藏。"
L["vat_of_slime_note"] = "点击桌上的瓶子，然后点击软泥桶。"

L["giant_cache_of_epic_treasure"] = "巨大的史诗财宝箱"
L["spinebug_note"] = [[
快看！{spell:343124}！勇敢的冒险家快过去，这肯定不是诡计。等一下，那是卡拉赞的音乐吗？{npc:174663} 在这里干嘛…？

{spell:343163}!
]]

L["oonar_sorrowbane_note"] = [[
在伤逝剧场，可以找到哀伤克星插在地上和乌纳尔的手臂附在一起。|cFFFF8C00在尝试拉出之前，设置 {item:6948} 到 {npc:161702} 飞行点。|r

拉出 {item:181164}：

• 到格拉萨恩之腐东侧。
• 吃4层 {spell:327367} （2分钟负面效果）。
• 迅速炉石并拉动手臂。

拉出 {item:180273}：

• 从雷文德斯的 {npc:171808} 买个 {item:182163}。
• 从玛卓克萨斯的 {npc:166640} 买个 {item:180771}。
• 从 |cFFFFFD00[一路磕磕绊绊]|r 世界任务西侧得到2层 {spell:306272}。
• 在格拉萨恩之腐吃4层 {spell:327367}。
• 迅速炉石，喝下2种药水并拉出大宝剑。
]]

L["pet_cat"] = "宠爱该死的猫！"
L["hairball"] = ns.color.Red("只在凋魂之殇地下城内的腐烂圣所出现！")
L["lime"] = "坐在大骨头拱顶上。"
L["moldstopheles"] = "绕到茎秆后面并跳上蘑菇平台。到达最后的平台，使用坐骑并在茎秆上跳来跳去到达。"
L["pus_in_boots"] = "在桥的下面。"

L["options_icons_slime_cat"] = "猫咪"
L["options_icons_slime_cat_desc"] = "显示成就亡命九条的猫咪位置。"

L["exoramas"] = "埃索拉玛斯，祭仪密院"
L["nurakkir"] = "努拉基尔，锐眼密院"
L["overlook_primus"] = "瞭望台，兵主之座"
L["zerekriss"] = "泽雷克利斯，玛卓克萨斯"
L["zerekriss_note"] = "激活后，浮空城将在该区域飞行。抓住 {npc:165822} 滑落到地面。"

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["amalgamation_of_filth_note"] = "When the world quest \"Dirty Job: Demolition Detail\" is available click on a Rubbish Box and use {spell:324115} into the water."
L["amalgamation_of_light_note"] = "Move all three mirror traps to release the rare."
L["amalgamation_of_sin_note"] = "Obtain {item:180376} from the \"Summon Your Sins\" world quest and use it to summon the rare."
L["bog_beast_note"] = "Has a chance to spawn during the world quest \"Muck It Up\" after using {item:177880} on a {npc:166206}."
L["endlurker_note"] = "Click Anima Stake near {npc:165229} corpse and use {spell:321826} on top of the Shimmering Rift."
L["executioner_aatron_note"] = "Kill the three nearby {npc:166715} to remove {spell:324872}."
L["famu_note"] = "Talk to {npc:166483} to trigger the event."
L["grand_arcanist_dimitri_note"] = "Kill the four {npc:167467} to release the rare."
L["harika_note"] = [[
|cFFFF0000IMPORTANT:|r Items must be handed in in the correct order or the event will bug!

In Dredhollow to the west, loot the {item:176397} and both sets of {item:176396}. Give the tools to both {npc:165328} near the ballista, then turn the bolt into {npc:165327} and tell him to bring down the rare.
]]
L["innervus_note"] = "Kill nearby {npc:160375}s to obtain a {item:177223} and unlock the crypt."
L["leeched_soul_note"] = "Inside the nearby crypt. Walk near {npc:165151} to start the event."
L["lord_mortegore_note"] = "Kill surrounding mobs to obtain {item:174378} and use it to empower a {npc:161870}. The rare will spawn once all four sigils are empowered."
L["madalav_note"] = "Click Madalav's Hammer on the nearby anvil to summon him."
L["manifestation_of_wrath_note"] = "Has a chance to spawn when a {npc:169916} is recovered during the \"Swarming Souls\" world quest."
L["scrivener_lenua_note"] = "Return {npc:160753} to the Forbidden Library."
L["sinstone_hoarder_note"] = "Appears on the minimap as a treasure chest. Attempt to loot the {npc:162503} and the rare will reveal itself."
L["sire_ladinas_note"] = "Pick up a Remnant of Light nearby and use {spell:313065} on {npc:157733}."
L["soulstalker_doina_note"] = "Follow downstairs and through the mirror when she runs away."
L["tomb_burster_note"] = "Can be spawned if {npc:155777} is trapped in a web. Kill nearby {npc:155769}s and waves of {npc:155795}s until the rare spawns."
L["worldedge_gorger_note"] = [[
Obtain an {item:173939} from World Reavers, Devourers and Mites in the Banewood and the Endmire. Use it to light the Worldedge Braziers and summon the rare.

Has a chance to drop an {item:180583}, which begins a 7 day quest line to obtain the {spell:333027} mount.
]]

L["dredglaive_note"] = "Under the bridge in the {npc:173671} corpse."
L["lost_quill_note"] = "Loot {item:182475} from the bottle on the table in the Forbidden Library."
L["forbidden_chamber_note"] = "Loot a Discarded Anima Canister in front of the locked door and learn {spell:340701}. Use it to drain five of the nearby {npc:173838}s, then use {spell:340866} in front of the {npc:173786}."
L["taskmaster_trove_note"] = "Read the Ingress and Egress Rites then carefully make your way to the chest."
L["the_count_note"] = "Farm 99 {currency:1820} in the Endmire and then bring them to {npc:173488}."

L["abandoned_curios"] = "Abandoned Curios"
L["bleakwood_chest"] = "Bleakwood Chest"
L["chest_of_envious_dreams"] = "Chest of Envious Dreams"
L["filchers_prize"] = "Filcher's Prize"
L["fleeing_soul_bundle"] = "Fleeing Soul's Bundle"
L["forgotten_anglers_rod"] = "Forgotten Angler's Rod"
L["gilded_plum_chest"] = "Gilded Plum Chest"
L["gilded_plum_chest_note"] = "Kill the {npc:166680} wandering up and down the road."
L["remlates_cache"] = "Remlate's Hidden Cache"
L["remlates_cache_note"] = "On the outer wall of Darkhaven behind the crypt."
L["smuggled_cache"] = "Smuggled Cache"
L["wayfairer_spoils"] = "Wayfairer's Abandoned Spoils"

L["loyal_gorger_note"] = "Visit the Endmire and complete a daily offered by your {npc:173498} 7 times to obtain him as a mount."

L["sinrunner_note"] = "Bring food and supplies to {npc:173468} for six days to obtain her reins. She only appears for a few minutes at a time."
L["sinrunner_note_day1"] = "Offer Blanchy 8 {item:182581} from farm areas in Westfall."
L["sinrunner_note_day2"] = "Obtain a {item:182585} from {npc:173570} in Darkhaven and use it to clean Blanchy."
L["sinrunner_note_day3"] = "Equip Blanchy with 4 {item:182595} found on the roads surrounding Darkhaven."
L["sinrunner_note_day4"] = "Pick up the {item:182620} near {npc:173570} and fill it with water from Bastion or Ardenweald. Return the {item:182599} to Blanchy."
L["sinrunner_note_day5"] = "Equip Blanchy with a {item:182597}, sold by {npc:171808} near the Night Market in exchange for assorted meats."
L["sinrunner_note_day6"] = "Feed Blanchy 3 {item:179271}, sold by {npc:167815} by the Hole in the Wall."

L["options_icons_carriages"] = "Carriages"
L["options_icons_carriages_desc"] = "Display locations and paths of rideable carriages."

L["dominance_keep"] = "Dominance Keep"
L["eternal_terrace"] = "The Eternal Terrace"
L["feeders_thicket"] = "Feeder's Thicket"
L["halls_of_atonement"] = "Halls of Atonement"
L["pridefall_hamlet"] = "Pridefall Hamlet"
L["the_banewood"] = "The Banewood"

-------------------------------------------------------------------------------
----------------------------------- THE MAW -----------------------------------
-------------------------------------------------------------------------------

L["maw_intro_note"] = [[
Complete the introductory quest chain to unlock rares and events in the Maw.

Until you return {npc:170651} to Oribos, you will be phased from most other players.
]]

L["apholeias_note"] = "With 3 other players, stand on the corners of the platform and cast {spell:331783} to summon the rare."
L["ekphoras_note"] = "With 3 other players, stand on the corners of the platform and cast {spell:330650} to summon the rare."
L["orophea_note"] = "Pick up {spell:337143} to the southeast and offer it to {npc:172577} to activate."
L["sanngror_note"] = "If he is not attackable, wait until he is not experimenting on souls."
L["talaporas_note"] = "With 3 other players, stand on the corners of the platform and cast {spell:331800} to summon the rare."
L["valis_note"] = "Click the three {npc:174810} in the correct order to summon the rare. The order changes each time and clicking the wrong rune deals damage and debuffs you with {spell:343636}."
L["yero_note"] = "Approach {npc:172862} and then follow him down into a nearby cave where he becomes hostile."

L["exos_note"] = [[
Kill the other three Heralds of Grief, Pain and Loss to collect their etchings.

• {item:182328}
• {item:182326}
• {item:182327}

Combine all three etchings to create the {item:182329}, which can be used to summon the rare at the Altar of Domination. Use the {npc:173892} to reach the upper level.
]]

L["soul_well_note"] = "Catch the Stygia erupting from the Soul Well."
L["obliterated_soul_shards_note"] = "Collect Obliterated Soul Shards on the bridges."

L["chaotic_riftstone_note"] = "Activate to {spell:344157} quickly across the Maw."

L["options_icons_bonus_boss"] = "Bonus Elites"
L["options_icons_bonus_boss_desc"] = "Display locations of bonus elites."
L["options_icons_bonus_event"] = "Bonus Events"
L["options_icons_bonus_event_desc"] = "Display locations of bonus events."
L["options_icons_riftstone"] = "Chaotic Riftstones"
L["options_icons_riftstone_desc"] = "Display the locations of chaotic riftstone teleporters."