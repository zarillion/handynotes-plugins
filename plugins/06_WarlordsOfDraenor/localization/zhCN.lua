local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhCN')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- ACROSS ZONES ---------------------------------
-------------------------------------------------------------------------------

L['edge_of_reality'] = '现世边界'
L['edge_of_reality_note'] = ns.color.Yellow('现世边界') ..
                                ' 传送门将你带到一个场景，可以拾取 {item:121815}。'
L['treasures_discovered'] = '宝藏已发现'
L['strange_spore_treasure'] = '奇异孢子'
L['multiple_spawn_note'] = '在多个位置刷新。'

L['follower'] = '随从'
L['complete_quest'] = nil
L['appears_outside_garrison'] = nil

L['squirrels_note'] = nil
L['options_icons_squirrels'] = '{achievement:14728}'
L['options_icons_squirrels_desc'] = nil

-------------------------------------------------------------------------------
------------------------------- FROSTFIRE RIDGE -------------------------------
-------------------------------------------------------------------------------

L['frozen_slave_label'] = '{npc:82680}'
L['prisoner_cage_label'] = '囚笼'
L['slaves_freed'] = '解救奴隶'

L['delectable_ogre_delicacies_label'] = '{achievement:9534}'
L['delectable_ogre_delicacies_note'] = [[
{npc:82801}，{npc:82822}，和 {npc:82823} 可能在任意位置刷新

{spell:166684} 持续5分钟
{spell:166686} 持续2分钟
{spell:166687} 持续2分钟
]]

L['options_icons_writing_in_the_snow'] = '{achievement:9531}'
L['options_icons_writing_in_the_snow_desc'] =
    '显示 {achievement:9531} 成就中 |cffffff00散落的日志书页|r 的位置。'
L['options_icons_breaker_of_chains'] = '{achievement:9533}'
L['options_icons_breaker_of_chains_desc'] =
    '显示 {achievement:9533} 成就中 |cffffff00冰封的奴隶|r 和 |cffffff00囚笼|r 的位置。'
L['options_icons_delectable_ogre_delicacies'] = '{achievement:9534}'
L['options_icons_delectable_ogre_delicacies_desc'] =
    '显示 {achievement:9534} 成就中美食的位置。'

L['top_of_building'] = nil
L['top_of_tower'] = nil
L['wiggling_egg'] = '震动的蛋'
L['wiggling_egg_note'] = nil
L['grimfrost_treasure'] = '肃霜宝箱'
L['goren_leftovers'] = '鬣蜥人残渣'
L['survivalists_cache'] = nil
L['orc_couple'] = nil
L['orc_couple_note'] = nil
L['cragleapers_cache'] = '攀岩者的宝箱'
L['carved_obsidian_idol'] = nil
L['devourers_gutstone'] = nil
L['devourers_gutstone_note'] = nil
L['forgotten_supplies'] = '被遗忘的补给品'
L['time_warped_tower'] = nil
L['time_warped_tower_note'] = nil
L['frozen_frostwolf_axe'] = '冰封的霜狼战斧'
L['pale_loot_sack'] = '一袋白鬼战利品'
L['supply_dump'] = '遗弃的补给品'
L['sealed_jug'] = nil
L['slaves_stash'] = '奴隶的宝贝'
L['spectators_chest'] = nil
L['ogre_booty_002'] = nil
L['ogre_booty_003'] = nil
L['ogre_booty_006'] = nil
L['ogre_booty_010'] = nil
L['snow_covered_strongbox'] = nil
L['lagoon_pool'] = nil
L['lagoon_pool_note'] = nil
L['lucky_coin'] = nil
L['ogre_cache'] = nil
L['thunderlord_cache'] = nil
L['senas_stash'] = '塞娜小姐的物资'
L['senas_other_stash'] = '塞娜小姐的备用物资'
L['smoldering_true_iron_deposit'] = '阴燃的真铁矿脉'

-------------------------------------------------------------------------------
----------------------------------- GORGROND ----------------------------------
-------------------------------------------------------------------------------

L['poundfist_note'] = '重生时间非常长，在50到90小时之间。'
L['trophy_of_glory_note'] =
    '必须完成建造戈尔隆德要塞哨站让任务物品掉落。'
L['roardan_sky_terror_note'] =
    '在丛林之心和蛮兽岗哨范围飞行并在途中3个位置停留。'

L['explorer_canister_treasure'] = '探险家罐子'
L['discarded_pack_treasure'] = '被遗弃的包裹'
L['ockbars_pack_treasure'] = '奥卡巴的包裹'
L['stashed_emergency_rucksack_treasure'] = '隐秘的急救背包'
L['strange_looking_dagger_treasure'] = '样子古怪的匕首'
L['remains_of_balik_orecrusher_treasure'] = '巴里克·碎矿的遗骸'
L['odd_skull_treasure'] = '奇怪的颅骨'
L['sashas_secret_stash_treasure'] = '萨莎的秘密包裹'
L['vindicators_hammer_treasure'] = '守备官的战锤'
L['remains_if_balldir_deeprock_treasure'] = '波迪尔·深岩的遗物'
L['brokors_sack_treasure'] = '波尔卡的袋子'
L['suntouched_spear_treasure'] = '日灼之矛'
L['warm_goren_egg_treasure'] = '热乎乎的鬣蜥人蛋'
L['weapons_cache_treasure'] = '武器架'
L['petrified_rylak_egg_treasure'] = '石化的双头飞龙蛋'
L['snipers_crossbow_trerasure'] = '狙击手的强弩'
L['iron_supply_chest_treasure'] = '钢铁补给箱'
L['horned_skull_treasure'] = '长角的颅骨'
L['evermorn_supply_cache_treasure'] = '永晨补给篮'
L['harvestable_precious_crystal_treasure'] = '可收获的珍贵水晶'
L['femur_of_improbability_treasure'] = '稀有腿骨'
L['laughing_skull_cache_treasure'] = '嘲颅包裹'
L['pile_of_rubble_treasure'] = '一堆碎石'
L['ninja_pepe_treasure'] = '忍者佩佩'
L['attack_plans_treasure'] = '钢铁部落攻击指令'
L['laughing_skull_note'] = '在树上。'
L['warm_goren_egg_note'] = '{item:118705} 7天后孵化为 {item:118716}。'
L['ninja_pepe_note'] = '小屋内椅子上。'

L['protectors_of_the_grove_sublabel'] =
    '|cffffff00{npc:86259}|r，|cffffff00{npc:86258}|r，和 |cffffff00{npc:86257}|r 来自 |cffffff00丛林守护者|r'

L['prove_your_strength_note'] =
    '需要 {spell:164012} 要塞技能来激活。访问你的阵营哨站启用 |cffffff00格斗竞技场|r。'
L['prove_your_strength_drop_single'] = '%s 掉落。'
L['prove_your_strength_drop_double'] = '%s 或 %s 掉落。'

L['options_icons_attack_plans'] = '{achievement:9656}'
L['options_icons_attack_plans_desc'] =
    '显示 {achievement:9656} 成就中钢铁部落攻击指令的位置。'
L['options_icons_ancient_no_more'] = '{achievement:9678}'
L['options_icons_ancient_no_more_desc'] =
    '显示 {achievement:9678} 成就中稀有的位置。'
L['options_icons_fight_the_power'] = '{achievement:9655}'
L['options_icons_fight_the_power_desc'] =
    '显示 {achievement:9655} 成就中稀有的位置。'
L['options_icons_prove_your_strength'] = '{achievement:9402}'
L['options_icons_prove_your_strength_desc'] =
    '显示 {achievement:9402} 成就中掉落的位置。'

-------------------------------------------------------------------------------
------------------------------------ NAGRAND ----------------------------------
-------------------------------------------------------------------------------

L['highmaul_farm_path'] = [[
刷怪路径
1. 从前门开始，向右进入|cffffff00下水道|r。
2. 左转穿过角斗场区域。请务必在左上方标记俯瞰的食人魔。
3. 继续上楼梯，经过 {npc:87227} 的池塘。
4. 左转并向上进入 |cffffff00凯旋之路|r。
5. 走到岔路口。请务必将食人魔标记到右侧。
6. 左转进入|cffffff00市场区|r 并逆时针方向清除所有。
7. 向左进入|cffffff00元首之赐|r，继续沿着路径清除所有。
8. 再次向左，沿着小路，回到|cffffff00凯旋之路|r。
9. 上坐骑飞过去，进入|cffffff00角斗场|r。不要试图使用前门，它是锁着的。

向右飞出并返回前门。一波只需不到4分钟，当你回到前门时，一切都已经刷新了。
]]

L['steamwheedle_note'] =
    '从 |cffffff00悬槌堡|r 周围的 {npc:87223} 和 {npc:87222} 刷 {item:118099} 和 {item:118100}。交付物品给 {npc:87393} 获得声望。'

L['finding_your_waystones_label'] = '{achievement:9497}'
L['finding_your_waystones_note'] =
    '从 |cffffff00悬槌堡|r 周围的 {npc:87223} 和 {npc:87222} 刷 {item:117491}。'
L['ogre_waystones'] = '拾取食人魔道标石'

L['signal_horn_note'] =
    '从附近的 {npc:86658} 获得 {item:120290} 然后使用 {npc:87361} 来召唤 {npc:87239} 和 {npc:87344}。'

L['garroshs_shackles'] = '小屋内'
L['warsong_relics'] = '靠在小屋外的栅栏上'
L['stolen_draenei_tome'] = '可以在塔顶的多个位置刷新'
L['dirt_mound'] =
    '在附近击杀 {npc:86659} 来刷新 {npc:87280}。点击图腾获得 {spell:174572}。现在可以挖掘附近的 {npc:87530} 来寻找物品。'

L['stable_master_note'] =
    '和 {兽栏管理员} 交谈获得一个训练中的坐骑哨。\n\n{item:119441}\n{item:119442}\n{item:119443}\n{item:119444}\n{item:119445}\n{item:119446}\n\n使用哨子召唤你的坐骑并杀死目标。\n\n{achievement:9539} 需要 {item:118469} 来自 |cffffff002级兽栏|r。\n{achievement:9540} 需要 {item:118470} 来自 |cffffff003级兽栏|r。'

L['making_the_cut_note'] =
    '当 {npc:88210} 可用时，在 |cffffff00鲜血竞技场|r 附近杀死15个 {npc:88207}。一旦15个被杀死 {npc:88210} 将可成为目标。\n\n' ..
        ns.color.Red(
            '对一群废物来说还算不错！等你们准备好送死，就来面对克鲁德吧！')

L['options_icons_steamwheedle'] = '{achievement:9472}'
L['options_icons_steamwheedle_desc'] =
    '显示 {achievement:9472} 成就中刷怪的位置。'
L['options_icons_finding_your_waystones'] = '{achievement:9497}'
L['options_icons_finding_your_waystones_desc'] =
    '显示 {achievement:9497} 成就中刷怪的位置。'
L['options_icons_song_of_silence'] = '{achievement:9541}'
L['options_icons_song_of_silence_desc'] =
    '显示 {achievement:9541} 成就中稀有的位置。'
L['options_icons_buried_treasures'] = '{achievement:9548}'
L['options_icons_buried_treasures_desc'] =
    '显示 {achievement:9548} 成就中物品的位置。'
L['options_icons_the_stable_master'] =
    '{achievement:9539} and {achievement:9540}'
L['options_icons_the_stable_master_desc'] =
    '显示 {achievement:9539} 和 {achievement:9540} 成就中目标的位置。'
L['options_icons_making_the_cut'] = '{achievement:9617}'
L['options_icons_making_the_cut_desc'] =
    '显示 {achievement:9617} 成就中 |cffffff00血环奴贩|r 的位置。'

L['tree_branches'] = nil
L['follower_goldmane_note'] = nil
L['graveltooth_note'] = nil
L['gorepetal_note'] = nil
L['sean-whitesea_note'] = nil
L['viking_pepe'] = '维京佩佩'
L['fungus_covered_chest'] = '长满真菌的宝箱'
L['steamwheedle_supplies'] = '热砂补给品'
L['adventurers_staff'] = '冒险者的法杖'
L['elemental_shackles'] = nil
L['bounty_of_the_elements'] = '元素的宝藏'
L['bounty_of_the_elements_note'] = nil
L['abandoned_fishing_rod'] = '被遗弃的鱼竿'
L['abandoned_fishing_rod_note'] = nil
L['pile_of_dirt'] = '一堆泥土'
L['adventurers_sack'] = nil
L['mountain_climbers_pack'] = '登山者的包裹'
L['freshwater_clam'] = '淡水蛤蜊'
L['elemental_offering'] = '元素祭品'
L['warsong_helm'] = nil
L['adventurers_pack'] = '冒险者的包裹'
L['goldtoes_plunder'] = nil
L['goldtoes_plunder_note'] = nil
L['genedar_debris'] = nil
L['warsong_cache'] = '战歌宝箱'
L['adventurers_pouch'] = nil
L['voidinfused_crystal'] = '注灵水晶'
L['spirit_coffer'] = nil
L['treasure_of_kullkrosh'] = nil
L['treasure_of_kullkrosh_note'] = nil
L['goblin_pack'] = nil
L['lost_pendant'] = '遗失的吊坠'
L['bag_of_herbs'] = nil
L['telaar_defender_shield'] = nil
L['abandoned_cargo'] = '被遗弃的货箱'
L['highmaul_sledge'] = '悬槌大锤'
L['bonecarved_dagger'] = '骨质匕首'
L['smugglers_cache'] = '走私者的箱子'
L['smugglers_cache_note'] = nil
L['hidden_stash'] = '藏匿物'
L['burning_blade_cache'] = '火刃宝箱'
L['gamblers_purse'] = '赌徒的钱袋'
L['polished-saberon-skull'] = '抛光的刃牙虎人颅骨'
L['saberon-stash'] = '刃牙虎人储物箱'
L['important_exploration_supplies'] = '重要的探索补给'
L['warsong_lockbox'] = nil
L['appropriated_warsong_supplies'] = nil
L['warsong-spear'] = '战歌长矛'
L['ogre_beads'] = nil
L['grizzlemaws_bonepile'] = nil
L['warsong_supplies'] = nil
L['warsong_spoils'] = '战歌战利品'
L['adventurers_mace'] = '冒险者的钉锤'
L['spirits_gift'] = nil
L['spirits_gift_note'] = nil
L['pale_elixir'] = nil
L['watertight_bag'] = '防水袋'

-------------------------------------------------------------------------------
------------------------------ SHADOWMOON VALLEY ------------------------------
-------------------------------------------------------------------------------

L['you_have_been_rylakinated_note'] =
    '必须完成 {quest:34355}。\n\n从附近的 {npc:78999} 收集 {item:116978} 并控制 {npc:86085}。'

L['options_icons_you_have_been_rylakinated'] = '{achievement:9481}'
L['options_icons_you_have_been_rylakinated_desc'] =
    '显示 {achievement:9481} 成就中双头飞龙的位置。'

L['voidseer_kalurg_note'] = nil
L['giant_moonwillow_cone'] = '巨型月柳球果'
L['shadowmoon_treasure'] = '影月宝藏'
L['dusty_lockbox'] = '尘封的宝箱'
L['rotting_basket'] = '腐朽的篮子'
L['fantastic_fish'] = nil
L['stolen_treasure'] = nil
L['bubbling_cauldron'] = '冒泡的大锅'
L['shadowmoon_exile_treasure'] = '影月流亡者宝箱'
L['mushroom_covered_chest'] = '长满蘑菇的宝箱'
L['mikkals_chest'] = '米卡尔的箱子'
L['orc_skeleton'] = '兽人墓碑'
L['cargo_of_the_raven_queen'] = nil
L['alchemists_satchel'] = '炼金师的包裹'
L['ancestral_greataxe'] = '先祖巨斧'
L['hanging_satchel'] = '挂起的背包'
L['false_bottomed_jar'] = nil
L['astrologers_box'] = nil
L['grekas_urn'] = '格瑞卡的坛子'
L['beloveds_offering'] = '爱人的祭品'
L['uzkos_knickknacks'] = '乌兹克的小玩意儿'
L['veemas_herb_bag'] = '威玛的草药包'
L['ronokks-belongings'] = '罗诺克的物品'
L['demonic_cache'] = nil
L['iron_horde_tribute'] = nil
L['peaceful_offering'] = '和平祭礼'
L['iron_horde_cargo_shipment'] = '钢铁部落货箱'
L['waterlogged_chest'] = '浸水的箱子'
L['vindicators_cache'] = nil
L['swamplighter_hive'] = nil
L['scaly_rylak_egg'] = nil

-------------------------------------------------------------------------------
------------------------------- SPIRES OF ARAK --------------------------------
-------------------------------------------------------------------------------

L['forbidden_tome_note'] = [[
需要 {quest:36682} 日常任务才能激活或使用 {item:122409}。

与 {npc:85992} 互动以随机获得三个增益之一。

{spell:171783}
{spell:171787}
{spell:171768}
]]

L['options_icons_would_you_like_a_pamplet'] = '{achievement:9432}'
L['options_icons_would_you_like_a_pamplet_desc'] =
    '显示 {achievement:9432} 成就中物品的位置。'

L['outcasts_belongings'] = nil
L['sun_touched_cache'] = nil
L['elixir_note'] = nil
L['relics_of_the_outcasts'] = nil
L['misplaced_scrolls'] = nil
L['shattered_hand_cache'] = nil
L['lost_herb_satchel'] = nil
L['shattered_hand_lockbox'] = nil
L['orcish_signaling_horn'] = nil
L['varashas_egg'] = nil
L['garrison-supplies'] = nil
L['roobys_roo_note'] = nil
L['ephials_dark_grimoire'] = nil
L['an_old_key_note'] = nil
L['abandoned_mining_pick'] = nil
L['outcasts_pouch'] = '流亡者袋子'
L['misplaced_scroll'] = nil
L['offering-to-the-raven-mother'] = nil
L['pirate_pepe'] = nil
L['campaign_contributions'] = nil
L['campaign_contributions_note'] = nil
L['coinbenders_payment'] = nil
L['coinbenders_payment_note'] = nil
L['shredder_parts'] = nil
L['spray_o_matic_5000_xt'] = nil
L['mysterious_mushrooms'] = nil
L['ogron-plunder'] = nil
L['smuggled_apexis_artifacts'] = nil
L['sunderthorn_note'] = nil
L['waterlogged_satchel'] = nil
L['sethekk_ritual_brew'] = nil
L['nizzixs_chest'] = nil
L['nizzixs_chest_note'] = nil

-------------------------------------------------------------------------------
------------------------------------ TALADOR ----------------------------------
-------------------------------------------------------------------------------

L['wandering_vindicator_note'] =
    '击败他后，需要从石头中拾取宝剑。'
L['legion_vanguard_note'] =
    '从传送门中召唤 {npc:88494}。击杀传送门周围 {npc:83023} 及其它，会把他召唤出来。'
L['taladorantula_note'] =
    '踩踏卵巢并击杀周围的 {npc:75258} 来召唤 {npc:77634}。大约需要3到5分钟的踩踏时间。'
L['shirzir_note'] = '在地下墓穴。'
L['kharazos_galzomar_sikthiss_note'] =
    '{npc:78710}、{npc:78713} 和 {npc:78715} 共享掉落、刷新和路径。'
L['orumo_the_observer_note'] = [[
{npc:87668} 需要5人站在符文上直到他可被击杀。

或者，术士的 {spell:48020} 和武僧的 {spell:119996} 可用于传送到符文，这将所需人数减少到3个。

另一种选择是使用您自己的5个角色，将它们一个一个地移动到符文并在那里登出。

最后一个选择是只使用一个角色。站到符文，点亮它，传送出去并为每个符文重复。最好的方法是在附近设置 {item:6948}。

可以结合上述任何一种方法召唤 {npc:87668}。
]]

L['options_icons_cut_off_the_head'] = '{achievement:9633}'
L['options_icons_cut_off_the_head_desc'] =
    '显示 {achievement:9633} 成就中稀有的位置。'

L['light_of_the_sea'] = '海洋之光'
L['soulbinders_reliquary'] = nil
L['bonechewer_remnants'] = nil
L['bonechewer_spear'] = nil
L['bonechewer_spear_note'] = nil
L['treasure_of_angorosh'] = nil
L['aarkos_family_treasure'] = nil
L['aarkos_family_treasure_note'] = nil
L['farmers_bounty'] = nil
L['relic_of_telmor'] = nil
L['webbed_sac'] = nil
L['curious_deathweb_egg'] = nil
L['rusted_lockbox'] = nil
L['rusted_lockbox_note'] = nil
L['iron_box'] = '铁盒子'
L['draenei_weapons'] = '德莱尼武器'
L['knight_pepe'] = '骑士佩佩'
L['barrel_of_fish'] = '一桶鱼'
L['charred_sword'] = '烧焦的长剑'
L['relic_of_aruuna'] = '阿鲁纳遗物'
L['aruuna_mining_cart'] = '阿鲁纳矿车'
L['keluus_belongings'] = nil
L['luminous_shell'] = nil
L['foremans_lunchbox'] = '工头的午餐盒'
L['rooks_tacklebox'] = nil
L['jug_of_aged_ironwine'] = '一大壶陈年黑铁佳酿'
L['gift_of_the_ancients'] = nil
L['gift_of_the_ancients_note'] = nil
L['teroclaw_nest'] = '恐爪鸟巢穴'
L['pure_crystal_dust'] = '纯净水晶尘'

-------------------------------------------------------------------------------
--------------------------------- TANAAN JUNGLE -------------------------------
-------------------------------------------------------------------------------

L['deathtalon_note'] = ns.color.Red(
    '暗影领主艾斯卡喊道：在彼岸，你能找到的只有死亡！')
L['doomroller_note'] = ns.color.Red(
    '攻城大师玛塔克喊道：哈哈！狠狠践踏他们的尸体吧！')
L['terrorfist_note'] = ns.color.Red(
    '弗甘喊道：一头巨型小戈隆正冲向游侠避难所！我们需要援助！')
L['vengeance_note'] = ns.color.Red(
    '暴君维哈里喊道：爬虫只配被碾死！')
L['iron_armada_note'] =
    '此玩具也可在拍卖行购买并需要成就 {achievement:10353}。'
L['commander_kraggoth_note'] = '在东北塔顶上。'
L['grannok_note'] = '在东南塔顶上。'
L['szirek_the_twisted_note'] = '占领东侧据点召唤此稀有。'
L['the_iron_houndmaster_note'] = '占领西侧据点召唤此稀有。'
L['belgork_thromma_note'] = '此洞穴有2个入口。'
L['driss_vile_note'] = '在塔顶上。'
L['overlord_magruth_note'] = '击杀营地附近兽人让他刷新。'
L['mistress_thavra_note'] = '在洞穴上层。'
L['cindral_the_wildfire'] = nil
L['dorg_the_bloody_note'] = '在刷新点击杀 {npc:89706} 和其他敌人。'
L['grand_warlock_netherkurse_note'] = '击杀刷新点附近的敌人。'
L['ceraxas_note'] =
    '击杀后刷新的 {npc:90426} 有任务 {quest:38428} 获得宠物。'
L['commander_orgmok_note'] = '骑着 {npc:89676} 巡逻。'
L['rendrak_note'] =
    '从沼泽周围的 {npc:89788} 收集10个 {item:124045}。将它们结合起来召唤稀有。'
L['akrrilo_note'] =
    '从 {npc:92805} 购买 {item:124093} 并在黑齿挑战竞技场使用它。'
L['rendarr_note'] =
    '从 {npc:92805} 购买 {item:124094} 并在黑齿挑战竞技场使用它。'
L['eyepiercer_note'] =
    '从 {npc:92805} 购买 {item:124095} 并在黑齿挑战竞技场使用它。'
L['the_night_haunter_note'] = [[
收集10层 {spell:183612} 负面效果。

使用 {npc:92651} 或找到 {npc:92645}（100%几率）可以获得负面效果。
]]
L['xemirkol_note'] = [[
从 {npc:95424} 购买 {item:128502} 或 {item:128503} 并在刷新点使用它传送到 {npc:96235}。

水晶将你传送到附近的随机稀有地点，所以最好在击杀 {npc:92887} 并使用 {item:128502}。

{npc:96235} 有很长的重生计时器（大约一天），最好的方法是在服务器重启后或使用跨服务器。
]]

L['discarded_helm_treasure'] = '被遗弃的头盔'
L['weathered_axe_treasure'] = '风化的斧子'
L['axe_of_the_weeping_wolf_treasure'] = '哀狼之斧'
L['sacrificial_blade_treasure'] = '献祭之刃'
L['crystallized_essence_of_the_elements_treasure'] = '晶化元素精华'
L['snake_charmers_flute_treasure'] = '驯蛇人的笛子'
L['lodged_hunting_spear_treasure'] = '倒伏的狩猎长矛'
L['looted_mystical_staff_treasure'] = '抢来的神秘法杖'
L['the_blade_of_kranak_treasure'] = '卡纳克之刃'
L['forgotten_champions_blade_treasure'] = '被遗忘的勇士之剑'
L['rune_etched_femur_treasure'] = '铭文腿骨'
L['book_of_zyzzix_treasure'] = '茨兹克的书'
L['the_commanders_shield_treasure'] = '指挥官的盾牌'
L['scouts_belongings_treasure'] = '斥候的财物'
L['polished_crystal_treasure'] = '抛光水晶'
L['strange_sapphire_treasure'] = '古怪的蓝宝石'
L['censer_of_torment_treasure'] = '苦难熏炉'
L['overgrown_relic_treasure'] = '巨型遗物'
L['jewel_of_hellfire_treasure'] = '地狱火珠宝'
L['skull_of_the_mad_chief_treasure'] = '疯狂酋长之颅'
L['jeweled_arakkoa_effigy_treasure'] = '鸦人嵌宝雕像'
L['tome_of_secrets_treasure'] = '隐秘之书'
L['the_perfect_blossom_treasure'] = '完美之花'
L['brazier_of_awakening_treasure'] = '觉醒火盆'
L['dazzling_rod_treasure'] = '炫目之杖'
L['crystallized_fel_spike_treasure'] = '晶化邪能尖刺'
L['fel_drenched_satchel_treasure'] = '被邪能侵蚀的背包'
L['the_eye_of_grannok_treasure'] = '格兰诺克之眼'
L['borrowed_enchanted_spyglass_treasure'] = '“借来”的魔法望远镜'
L['bleeding_hollow_mushroom_stash_treasure'] = '血环蘑菇桶'
L['mysterious_corrupted_obelist_treasure'] = '神秘的腐化方尖碑'
L['spoils_of_war_treasure'] = '战争横财'
L['stolen_captains_chest_treasure'] = '失窃的船长宝箱'
L['bleeding_hollow_warchest_treasure'] = '血环战场储物箱'
L['looted_bleeding_hollow_treasure_treasure'] = '抢来的血环宝藏'
L['partially_mined_apexis_crystal_treasure'] = '挖过的埃匹希斯水晶'
L['pale_removal_equipment_treasure'] = '反白鬼设备'
L['stashed_iron_sea_booty_treasure'] = '隐藏的铁海宝藏'
L['ironbeards_treasure_treasure'] = '铁须的宝藏'
L['forgotten_sack_treasure'] = '被遗忘的袋子'
L['blackfang_island_cache_treasure'] = '黑齿岛宝箱'
L['fel_tainted_apexis_formation_treasure'] =
    '被邪能污染的埃匹希斯晶体'
L['jewel_of_the_fallen_star_treasure'] = '坠星珠宝'
L['forgotten_shard_of_the_cipher_treasure'] = '被遗忘的秘文碎片'
L['strange_fruit_treasure'] = '奇怪水果'
L['stashed_bleeding_hollow_loot_treasure'] = '抢来的血环宝藏'
L['forgotten_iron_horde_supplies_treasure'] =
    '被遗忘的钢铁部落补给品'
L['bejeweled_egg_treasure'] = '珠玉彩蛋'
L['dead_mans_chest_treasure'] = '亡灵宝藏'
L['the_commanders_shield_note'] = '建筑物内。'
L['the_eye_of_grannok_note'] = '在塔二层楼梯附近。'
L['tower_chest_note'] = '在塔顶上。'
L['spoils_of_war_note'] = '在小屋内。'
L['strange_fruit_note'] = '{item:127396} 14天后孵化为 {item:127394}。'
