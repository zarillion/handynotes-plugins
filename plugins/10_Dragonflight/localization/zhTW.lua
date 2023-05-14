local ADDON_NAME, ns = ...
local L = ns.NewLocale('zhTW')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['elite_loot_higher_ilvl'] = '{note:這個稀有有機會掉落高裝等的拾取!}'
L['gem_cluster_note'] = '需要的物品可以在 {faction:2507} 名望21後, 在 {object:遠征隊斥侯包} 和{object:挖過的土} 找到.'

L['options_icons_bonus_boss'] = '獎勵精英'
L['options_icons_bonus_boss_desc'] = '顯示獎勵精英位置.'

L['options_icons_profession_treasures'] = '專業技能寶藏'
L['options_icons_profession_treasures_desc'] = '顯示會給予專業技能知識的寶藏位置.'

L['dragon_glyph'] = '龍之雕紋'
L['options_icons_dragon_glyph'] = '龍之雕紋'
L['options_icons_dragon_glyph_desc'] = '顯示全部64個龍之雕紋的位置.'

L['dragonscale_expedition_flag'] = '龍鱗遠征隊'
L['flags_placed'] = '旗幟已插上'
L['options_icons_flag'] = '{achievement:15890}'
L['options_icons_flag_desc'] = '顯示 {achievement:15890} 成就中全部20個旗幟的位置.'

L['broken_banding_note'] = '在雕像的右腳踝上.'
L['chunk_of_sculpture_note'] = '在地上, 在龍雕像的左邊.'
L['dislodged_dragoneye_note'] = '在龍雕像胸部底下的石頭上.'
L['finely_carved_wing_note'] = '在龍雕像右膝底下.'
L['fragment_requirement_note'] = '{note:在你能夠收集碎塊前, 你需要詢問在 {location:翼息大使館} 龍之雕像的 {npc:193915} 他在這裡幹嘛.}'
L['golden_claw_note'] = '在龍雕像的右後爪.'
L['precious_stone_fragment_note'] = '在雕像的右腳下.'
L['stone_dragontooth_note'] = '在龍雕像台座旁的地上.'
L['tail_fragment_note'] = '在龍雕像尾巴上.'
L['wrapped_gold_band_note'] = '在龍雕像的左後爪下.'
L['options_icons_fragment'] = '{achievement:16323}'
L['options_icons_fragment_desc'] = '顯示成就 {achievement:16323} 所需的碎塊位置.'

L['options_icons_kite'] = '{achievement:16584}'
L['options_icons_kite_desc'] = '顯示成就 {achievement:16584} 所需的 {npc:198118} 位置.'

L['disturbed_dirt'] = '挖過的土'
L['options_icons_disturbed_dirt'] = '挖過的土'
L['options_icons_disturbed_dirt_desc'] = '顯示 {object:挖過的土} 可能的位置.'

L['scout_pack'] = '遠征隊斥侯包'
L['options_icons_scout_pack'] = '遠征隊斥侯包'
L['options_icons_scout_pack_desc'] = '顯示 {object:遠征隊斥侯包} 可能的位置.'

L['magicbound_chest'] = '縛法寶箱'
L['options_icons_magicbound_chest'] = '縛法寶箱'
L['options_icons_magicbound_chest_desc'] = '顯示 {object:縛法寶箱} 可能的位置.'
L['ice_bound_chest'] = nil

L['tuskarr_tacklebox'] = '巨牙海民釣具箱'
L['options_icons_tuskarr_tacklebox'] = '巨牙海民釣具箱'
L['options_icons_tuskarr_tacklebox_desc'] = '顯示 {object:巨牙海民釣具箱} 可能的位置.'

L['dr_best'] = '你的最快時間:\n - 普通: %.3fs\n - 進階: %.3fs\n - 反向: %.3fs'
L['dr_best_dash'] = '你的最佳時間:\n - %.3fs'
L['dr_note'] = '目標時間:\n - 普通: %ss / %ss\n - 進階: %ss / %ss\n - 反向: %ss / %ss'
L['dr_note_dash'] = '目標時間:\n - %ss / %ss'
L['dr_bronze'] = '\n\n完成賽事來取得 ' .. ns.color.Bronze('銅牌') .. '.'
L['options_icons_dragonrace'] = '飛龍競速'
L['options_icons_dragonrace_desc'] = '顯示區域內所有飛龍競速的位置.'

L['squirrels_note'] = '你必須對小動物而不是戰寵使用表情 {emote:/love}.'
L['options_icons_squirrels'] = '{achievement:16729}'
L['options_icons_squirrels_desc'] = '顯示 {achievement:16729} 成就中小動物的位置.'

L['hnj_sublabel'] = '需要當地的席卡氏族大狩獵'
L['hnj_western_azure_span_hunt'] = '在死掉樹的頂端.'
L['hnj_northern_thaldraszus_hunt'] = '{note:注意: 當大狩獵事件開始時, 你需要快點找到他. 如果太晚的話, 他可能會被野怪殺死.}'
L['options_icons_hemet_nesingwary_jr'] = '{achievement:16542}'
L['options_icons_hemet_nesingwary_jr_desc'] = '顯示成就 {achievement:16542} 所需的 {npc:194590} 位置.'

L['pretty_neat_note'] = '使用任何自拍相機拍一張照'
L['pretty_neat_note_blazewing'] = '可以在地城 {location:奈薩魯斯堡} 中和首領 {npc:189901} 的戰鬥中發現.'
L['options_icons_pretty_neat'] = '{achievement:16446}'
L['options_icons_pretty_neat_desc'] = '顯示成就 {achievement:16446} 所需的鳥類位置.'

L['large_lunker_sighting'] = '大傢伙目擊地點'
L['large_lunker_sighting_note'] = '使用5個 {item:194701} 來召喚 {npc:192919} 或是稀有.'

L['options_icons_legendary_album'] = '{achievement:16570}'
L['options_icons_legendary_album_desc'] = '顯示成就 {achievement:16570} 所需的傳奇角色所在位置.'

L['signal_transmitter_label'] = '龍洞產生器信號發送器'
L['signal_transmitter_note'] = '{note:需要點機械心靈 10點\n需要點新奇作品 30點.}\n\n和 {object:關閉的信號發送器} 互動來允許你傳送到此位置.'
L['options_icons_signal_transmitter'] = '龍洞產生器信號發送器'
L['options_icons_signal_transmitter_desc'] = '顯示 {item:198156} 所需的 {object:關閉的信號發送器} 位置.'

L['rare_14h'] = '此稀有和其他稀有們共用一個14小時的循環, 每30分鐘會重生一隻稀有.\n\n下個可能的重生時間是: {note:%s}'
L['now'] = '現在'
L['spawns_at_night'] = '{note:僅在晚上重生 (伺服器時間 18:30 之後)}'

L['elemental_storm'] = '元素風暴'
L['elemental_storm_thunderstorm'] = '雷霆風暴'
L['elemental_storm_sandstorm'] = '沙塵風暴'
L['elemental_storm_firestorm'] = '火焰風暴'
L['elemental_storm_snowstorm'] = '冰雪風暴'

L['elemental_storm_brakenhide_hollow'] = '蕨皮谷'
L['elemental_storm_cobalt_assembly'] = '鈷藍集會'
L['elemental_storm_dragonbane_keep'] = '龍禍要塞'
L['elemental_storm_imbu'] = '伊姆布'
L['elemental_storm_nokhudon_hold'] = '諾庫敦堡'
L['elemental_storm_ohniri_springs'] = '雍伊爾溫泉'
L['elemental_storm_primalist_future'] = '洪荒使者未來'
L['elemental_storm_primalist_tomorrow'] = '洪荒使者未來'
L['elemental_storm_scalecracker_keep'] = '碎鱗者要塞'
L['elemental_storm_slagmire'] = '熔渣泥沼'
L['elemental_storm_tyrhold'] = '提爾堡'

L['elemental_overflow_obtained_suffix'] = '元素溢流已取得'
L['empowered_mobs_killed_suffix'] = '強化生物已擊殺'

L['elemental_storm_mythressa_note_start'] = '使用 {currency:2118} 交換裝備, 寵物和1個座騎.'
L['elemental_storm_mythressa_note_end'] = '你現在有 %s 個 {currency:2118}.'

L['options_icons_elemental_storm'] = '元素風暴'
L['options_icons_elemental_storm_desc'] = '顯示元素風暴的獎勵.'

L['elusive_creature_note'] = '在 {object:餌食工匠} 升級到 {object:專精等級 40/40} 可以讓你每天用所製造的 {item:193906} 召喚並剝皮獨特的難捉動物一次.'
L['options_icons_elusive_creature'] = '{item:193906}'
L['options_icons_elusive_creature_desc'] = '顯示 {item:193906} 所召喚出來的難捉的動物的位置.'

L['grand_hunts_label'] = '大狩獵'
L['longhunter_suffix'] = '狩獵階段完成'
L['the_best_at_what_i_do_suffix'] = '首領已擊殺'

L['options_icons_grand_hunts'] = '大狩獵'
L['options_icons_grand_hunts_desc'] = '顯示 {object:大狩獵} 的位置和獎勵.'

L['ancient_stone_label'] = nil
L['options_icons_ancient_stones'] = '{achievement:17560}'
L['options_icons_ancient_stones_desc'] = nil

L['reed_chest'] = '蘆葦箱子'
L['options_icons_reed_chest'] = '蘆葦箱子'
L['options_icons_reed_chest_desc'] = '顯示 {object:蘆葦箱子} 可能的位置.'

L['dracthyr_supply_chest'] = '半龍人補給箱'
L['options_icons_dracthyr_supply_chest'] = '半龍人補給箱'
L['options_icons_dracthyr_supply_chest_desc'] = '顯示 {object:半龍人補給箱} 可能的位置.'

L['simmering_chest'] = '滾燙箱子'
L['options_icons_simmering_chest'] = '滾燙箱子'
L['options_icons_simmering_chest_desc'] = '顯示 {object:滾燙箱子} 可能的位置.'

L['frostbound_chest'] = '霜縛寶箱'
L['options_icons_frostbound_chest'] = '霜縛寶箱'
L['options_icons_frostbound_chest_desc'] = '顯示 {object:霜縛寶箱} 可能的位置.'

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['bisquis_note'] = '在 {location:伊斯凱拉} 的集體盛宴煮出傳奇級後打敗 {npc:197557}.'
L['blightfur_note'] = '和 {npc:193633} 交談來召喚稀有.'
L['brackenhide_rare_note'] = '這些稀有會有10分鐘的間隔以 {npc:197344} > {npc:197353} > {npc:197354} > {npc:197356} 的順序刷新.'
L['fisherman_tinnak_note'] = '收集{object:破損的釣魚竿}, {object:破損的捕漁網} 和 {object:舊魚叉}來召喚稀有.'
L['frostpaw_note'] = '在取得 {object:木頭錘子} 後, 你有20秒可以在 {object:樹樁} 上打 {object:痛扁豺狼人}, 並刷新稀有.'
L['sharpfang_note'] = '幫助 {npc:192747} 打敗 {npc:192748} 來刷新稀有.'
L['spellwrought_snowman_note'] = '收集 10個 {npc:193424} 並且把他們帶到 {npc:193242}.'
L['trilvarus_loreweaver_note'] = '收集一個 {object:歌唱碎片} 來取得 {spell:382076} 接著點擊 {object:未充能法器} 來召喚稀有.'

L['breezebiter_note'] = '在空中環繞飛行, 飛上天空來把他拉下來, 重生點在右側山洞.'

L['forgotten_jewel_box_note'] = '{item:199065} 可以在 {object:遠征隊斥侯包} 和 {object:挖過的土} 中找到.'
L['gnoll_fiend_flail_note'] = '{item:199066} 可以在 {object:遠征隊斥侯包} 和 {object:挖過的土} 中找到.'
L['pepper_hammer_note'] = '收集 {object:樹液} 然後點選 {object:棍子} 來引誘 {npc:195373}.\n\n{bug:(BUG: 要點選棍子可能需要你重載UI)}'
L['snow_covered_scroll'] = '覆滿雪的卷軸'

L['pm_engi_frizz_buzzcrank'] = '站在祭壇邊.'
L['pm_jewel_pluutar'] = '在建築內.'
L['pm_script_lydiara_whisperfeather'] = '在長椅上坐著.'
L['pt_alch_experimental_decay_sample_note'] = '在一個綠色的大鍋內.'
L['pt_alch_firewater_powder_sample_note'] = '在木頭房子外面的花瓶附近.'
L['pt_ench_enriched_earthen_shard_note'] = '在一堆石頭上.'
L['pt_ench_faintly_enchanted_remains_note'] = '點選 {npc:194882} 來召喚並殺掉怪物. 然後拾取出現的水晶'
L['pt_ench_forgotten_arcane_tome_note'] = '在墓穴入口右邊的地上.'
L['pt_jewel_crystalline_overgrowth_note'] = '在小池塘邊.'
L['pt_jewel_harmonic_crystal_harmonizer_note'] = '點選 {object:共鳴鑰匙} 來獲得增益 {spell:384802}, 然後再點選湖中的3個{object:嗡鳴水晶} 來打開箱子.'
L['pt_leath_decay_infused_tanning_oil_note'] = '在桶子裡.'
L['pt_leath_treated_hides_note'] = '在 {location:雪革營地}.'
L['pt_leath_well_danced_drum_note'] = '和 {npc:186446} 跟 {npc:186448} 在一個地下建築物內. 修好 {npc:194862} 附近的鼓. 當他開始在上面跳舞時你就可以拾取物品.'
L['pt_script_dusty_darkmoon_card_note'] = '在一個建築物內的上層.'
L['pt_script_frosted_parchment_note'] = '在 {npc:190776} 後面.'
L['pt_smith_spelltouched_tongs_note'] = '在一個被堵住的小山洞裡.'
L['pt_tailor_decaying_brackenhide_blanket_note'] = '掛在一個臨時帳篷內的樹上.'
L['pt_tailor_intriguing_bolt_of_blue_cloth_note'] = '沿者階梯的左方.'

L['leyline_note'] = '重新校正地脈'
L['options_icons_leyline'] = '{achievement:16638}'
L['options_icons_leyline_desc'] = '顯示成就 {achievement:16638} 中所有地脈的位置.'

L['river_rapids_wrangler_note'] = '和 {npc:186157} 對話並選擇 "我想要再搭一次你的激流泛舟". 你有60秒來收集40層的 {spell:373490}.'
L['seeing_blue_note'] = '從蒼藍文庫上空不著陸的飛行直到鈷藍集會.'
L['snowman_note'] = '這裡有3個 {npc:197599} 躺在這個區域 (可能被其他玩家移動位置), 滾動他們到兩個小孩 {npc:197838} 和 {npc:197839}.\n當雪球有正確大小時你會獲得成就.'

L['snowclaw_cub_note_start'] = '你必須完成在 {location:沃卓肯} 的 {npc:192522} 給予的 {quest:67094} 故事線來取得 {title:『榮譽林精』} 稱號.\n\n收集下列物品:'
L['snowclaw_cub_note_item1'] = '從 {location:甦醒海岸} 的各種 {npc:182559} 拾取3個 {item:197744}.'
L['snowclaw_cub_note_item2'] = '從 {location:甦醒海岸} 的 {npc:193310} 購買1個 {item:198356}.'
L['snowclaw_cub_note_end'] = [[
{note:所有的物品都可以在拍賣場買到. 如果你沒有剛好擁有用來和 {npc:193310} 購買東西所需的 {item:199215} 時, 這會特別有幫助.}

當你裝備上稱號{title:『榮譽林精』}後, 提供所需的4個物品給 {npc:196768} 來取得寵物.

{note:如果你在之前失去了稱號你可以重複再做任務來取得. 明天或是下禮拜重置後再試一次.}'
]]

L['tome_of_polymoph_duck'] = '使用 {spell:1953} 來進入洞窟並和 {object:初學者的法力風暴} 書互動來完成任務.'

L['temperamental_skyclaw_note_start'] = '收集 (或從拍賣場購買):'
L['temperamental_skyclaw_note_end'] = '詢問上鞍蠍尾飛狐的事並且將收集的餐點交給 {npc:190892}.'

L['elder_poa_note'] = '用 {item:200071} 交換 {faction:2511} 聲望.'

L['artists_easel_note_step1'] = '{quest:70166}\n{npc:194415}, 在 {location:遠古瞰台} 的塔的頂端, 會請你將他的畫作交給 {npc:194323}, 有史以來最偉大的畫家.'
L['artists_easel_note_step2'] = '{quest:70168}\n{npc:194425} 會請你從 {location:晶紅生命之池}, {location:諾庫德進攻據點}, 和 {location:蕨皮谷} 收集畫作.'
L['artists_easel_note_step3'] = '{quest:70170}\n{npc:194425} 會請你從 {location:灌注迴廊}, {location:阿爾蓋薩學院}, {location:蒼藍密庫}, 和 {location:奈薩魯斯堡} 收集畫作.'
L['artists_easel_note_step4'] = '將最後的畫作交給 {npc:194323} 並取得你的玩具!\n\n{note:傳奇和傳奇鑰石地城不會掉落畫作.}'

L['somewhat_stabilized_arcana_note'] = '在塔的頂端.\n\n完成由 {npc:197100} 給予的任務線來取得玩具.'

L['stranded_soul_note'] = [[
在擊殺 {npc:196900} 後他會爆炸成4個 {npc:196901}.
你需要啟動他們來融掉雪牆 (建議兩個玩家).

殺掉裡面的 {npc:197183}, 你會收到 {item:200528}.
]]

L['gethdazr_note'] = [[
作為在 {location:伊姆布} 發生的事件的一部分而重生. 首先在 ({dot:Blue}) 吹響 {object:伊姆布大號角}.
號角只有在殺死 {npc:196155} 後才會變成可點擊的. 重生時間約需30~60分鐘.

{npc:191143}({dot:Green}) 和其他NPC會從 {location:伊姆布} 東北方的入口開始嘗試清出一條路到 {npc:196165} 會刷新的峭壁.
NPC在沒有獲得幫助情況下有可能會死,並且讓事件失敗.

此事件可以單人解完,但是推薦2~3人進行.
]]

L['tuskarr_chest'] = '巨牙海民寶箱'
L['options_icons_tuskarr_chest'] = '巨牙海民寶箱'
L['options_icons_tuskarr_chest_desc'] = '顯示 {object:巨牙海民寶箱} 可能的位置.'

L['community_feast_label'] = '{spell:388961}'
L['options_icons_community_feast'] = '{spell:388961}'
L['options_icons_community_feast_desc'] = '顯示 {spell:388961} 的位置和獎勵.'

L['decay_covered_chest'] = '覆滿腐敗的箱子'
L['options_icons_decay_covered_chest'] = '覆滿腐敗的箱子'
L['options_icons_decay_covered_chest_desc'] = '顯示 {object:覆滿腐敗的箱子} 可能的位置.'

L['icemaw_storage_cache'] = '冰喉儲藏所'
L['options_icons_icemaw_storage_cache'] = '冰喉儲藏所'
L['options_icons_icemaw_storage_cache_desc'] = '顯示 {object:冰喉儲藏所} 可能的位置.'

L['kazzi_note_start'] = '使用 {item:202017} 和 {item:202018} 交換塑形, 飛龍自訂, 一隻寵物, 和更多.'
L['kazzi_note_item'] = '你現在有 %s 個 {item:%s}.'
L['kazzi_achievement_suffix'] = '東毛語等級'

-------------------------------------------------------------------------------
------------------ FORBIDDEN REACH (DRACTHYR STARTING ZONE) -------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = '一袋祕法之風'
L['bag_of_enchanted_wind_note'] = '位於塔頂內.'
L['hessethiash_treasure'] = '赫瑟西亞許的不隱密寶箱'
L['lost_draconic_hourglass'] = '失落的龍沙漏'
L['suspicious_bottle_treasure'] = '可疑的瓶子'
L['mysterious_wand'] = '神秘魔杖'
L['mysterious_wand_note'] = '撿起 {object:水晶鑰匙} 並把它放進 {object:水晶法器} 內.'

-------------------------------------------------------------------------------
------------------------- FORBIDDEN REACH (MAIN ZONE) -------------------------
-------------------------------------------------------------------------------

L['in_dragonskull_island'] = '在 {location:龍顱島}'
L['in_froststone_vault'] = '在 {location:霜石密庫}'
L['in_the_high_creche'] = '在 {location:至高育所}'
L['in_the_lost_atheneum'] = '在 {location:失落圖書室}'
L['in_the_siege_creche'] = '在 {location:圍城育所}'
L['in_the_support_creche'] = '在 {location:支援育所}'
L['in_the_war_creche'] = '在 {location:戰爭育所}'
L['in_zskera_vaults'] = '在 {location:澤斯克拉密庫}'

L['duzalgor_note'] = '收集一瓶 {spell:400751}({dot:Green}) 以用來治療 {location:支援育所} 內的毒氣.'
L['mad_eye_carrey_note'] = '{npc:201181} 會和 {npc:201184} 以及 {npc:201182} 一起出現.'
L['wymslayer_angvardi_note'] = '{npc:201013} 會和 {npc:201310} 一起出現.'
L['loot_specialist_note'] = '{npc:203353} 刷新時有 {spell:406143} 和 {spell:132653} 並且當被攻擊時會逃跑.\n\n{note:在他完成施法 {spell:406141} 前快點殺掉他.}'

L['profession_required'] = '{note:需要有 %s 專業技能的玩家}'
L['pr_crafting_note'] = '使用 {item:%2$s} 製造 {item:%1$s} 並和 {object:%3$s} 互動來召喚稀有.'
L['pr_gathering_note'] = '使用 {item:%s} 並和 {object:%s} 互動來召喚稀有.'
L['pr_recipe_note'] = '配方 {item:%s} 可以從 {npc:202445} 處使用 10{item:190456} 購買.'
L['pr_summoning_note'] = '召喚稀有的玩家會有 {spell:405161} 和額外獎勵掉落.'

L['pr_awakened_soil'] = '覺醒土壤'
L['pr_book_of_arcane_entities'] = '秘法生物之書'
L['pr_damaged_buzzspire'] = '受損的嗡鳴尖塔505'
L['pr_empty_crab_trap'] = '空的螃蟹陷阱'
L['pr_farescale_shrine'] = '遠鱗聖壇'
L['pr_raw_argali_pelts'] = '阿戈利羊生毛皮'
L['pr_resonant_crystal'] = '共鳴水晶'
L['pr_rumbling_deposit'] = '震地礦床'
L['pr_spellsworn_ward'] = '誓法者結界'
L['pr_spiceless_stew'] = '無調味燉肉'
L['pr_tuskarr_kite_post'] = '巨牙海民風箏木樁'
L['pr_tuskarr_tanning_rack'] = '巨牙海民製皮架'
L['pr_volatile_brazier'] = '熾烈火盆'

L['options_icons_profession_rares'] = '專業稀有'
L['options_icons_profession_rares_desc'] = '顯示專業稀有的位置.'

L['storm_bound_chest_label'] = '颶縛寶箱'

L['hoarder_of_the_forbidden_reach_suffix'] = '小寶藏已開啟'
L['forbidden_spoils_suffix'] = '禁忌之境寶箱已開啟'
L['forbidden_hoard_label'] = '禁忌之境寶箱'

L['options_icons_forbidden_hoard'] = '禁忌之境寶箱'
L['options_icons_forbidden_hoard_desc'] = '顯示 {object:禁忌之境寶箱} 可能的位置.'

L['froststone_vault_storm_label'] = '霜石密庫洪荒風暴'
L['gooey_snailemental_note'] = '從 {object:霜石密庫洪荒風暴} 首領收集50個 {item:204352} 來合成 {item:192785}.'

L['options_icons_froststone_vault_storm'] = '霜石密庫洪荒風暴'
L['options_icons_froststone_vault_storm_desc'] = '顯示 {object:霜石密庫洪荒風暴} 的位置和獎勵.'

L['small_treasures_label'] = '小寶藏'
L['small_treasures_note'] = '小寶藏共享刷新點.\n\n在 {location:莫克特村} 處從 {npc:200566} 購買 {item:204558} 並使用來取得 {spell:405637} 增益讓你可以在小地圖上看到小寶藏60分鐘.'

L['options_icons_small_treasures'] = '小寶藏'
L['options_icons_small_treasures_desc'] = '顯示小寶藏可能的位置.'

L['zskera_vaults_label'] = '澤斯克拉密庫'
L['zskera_vaults_note'] = '從稀有和箱子收集 {item:202196} 來打開在 {location:澤斯克拉密庫} 裡的門.'
L['door_buster_suffix'] = '扇門已使用澤斯克拉密庫鑰匙解鎖'

L['broken_waygate_label'] = '壞掉的傳送門'
L['neltharions_toolkit_note'] = [[1. 收集在 {location:澤斯克拉密庫} 內隨機刷新的 {item:204278}.

2. 到 {location:甦醒海岸} 的 {location:灼燃棲所}.

3. 在洞穴內 {npc:193310} 的旁邊找到 {object:壞掉的傳送門}.

4. 修復 {object:壞掉的傳送門}. {note:這可能需要點好幾次.}

5. 傳送到 {location:澤斯克拉密庫} 內的隱藏房間. 殺掉 {npc:200375} 和 {npc:203639} 後開啟 {object:黑曜華麗貯藏箱} 來取得你的拾取!]]

L['recipe_rat_note_1'] = '在 {location:澤斯克拉密庫} 裡和  {npc:202982} 對話後, {item:202252} 會進入你的背包.'
L['recipe_rat_note_2'] = '和 {item:202252} 互動取得 {item:204340}. {note:(5分鐘冷卻)}'
L['recipe_rat_note_3'] = '當你有30個 {item:204340} 時,組合碎片取得食譜.'
L['recipe_rat_note_4'] = '{note:這隻老鼠喜歡起司並且大約三分鐘會吃掉一個 {item:3927}. 好好規劃!}'

L['mm_start_note'] = '收集和組合各種在 {location:澤斯克拉密庫} 內找到的物品.'
L['mm_status_note'] = '組合下列物品:\n{item:%s}\n{item:%s}'

L['options_icons_zskera_vaults'] = '澤斯克拉密庫'
L['options_icons_zskera_vaults_desc'] = '顯示 {location:澤斯克拉密庫} 的獎勵.'

L['confiscated_journal_label'] = '被沒收的日誌'
L['farscale_manifesto_label'] = '遠鱗宣言'
L['lost_expeditions_notes_label'] = '遠征隊筆記'
L['pirate_proclamation_label'] = '海盜宣言'
L['spellsworn_missive_label'] = '誓法者文件'
L['vrykul_tome_label'] = '維酷秘典'

L['library_note'] = '開啟 {object:%s} 並拾取 {item:%s}.'

L['options_icons_librarian_of_the_reach'] = '{achievement:17530}'
L['options_icons_librarian_of_the_reach_desc'] = '顯示成就 {achievement:17530} 所需的書本位置. {note:有些書在 {location:澤斯克拉密庫} 內}.'

L['dracthyr_runestone_label'] = '半龍人符文石'
L['scroll_hunter_suffix'] = '從封印的卷軸找到的寶藏'
L['scroll_hunter_note'] = '從 {location:禁忌之境} 的稀有和寶藏收集封印的卷軸.\n\n打開 {item:%s} 會在地圖上標記一個 X. 可以找到 {item:%s} 可以提升 {faction:%s} 的聲望.'

L['options_icons_scroll_hunter'] = '{achievement:17532}'
L['options_icons_scroll_hunter_desc'] = '顯示成就 {achievement:17532} 所需的卷軸獎勵位置.'

L['options_icons_scalecommander_item'] = '{achievement:17315}'
L['options_icons_scalecommander_item_desc'] = '顯示成就 {achievement:17315} 所需的物品位置. {note:有些物品在 {location:澤斯克拉密庫} 內}.'

L['spellsworn_gateway'] = '誓法者傳送門'
L['gemstone_of_return'] = '回歸寶石'

L['treysh_note'] = '使用 {currency:2118} 或金幣交換塑型, 裝備和坐騎.'
L['renown_envoy_label'] = '名望特使'
L['renown_envoy_note'] = '使用 {currency:2118} 或金幣交換坐騎, 寵物, 塑型, 飛龍自訂, 配方和其他有用物品.\n\n從 {npc:200566} 處用 2000個 {currency:2118} 購買 {item:204383} 有機率開到 {item:191915}.'
L['trader_hagarth_note'] = '使用 {item:190456} 交換工匠珍品設計圖.'

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['eaglemaster_niraak_note'] = '殺死附近的 {npc:186295} 和 {npc:186299} 來刷新稀有.'
L['hunter_of_the_deep_note'] = '點選武器架然後射魚直到稀有刷新.'
L['porta_the_overgrown_note'] = '在西邊的湖底部找到5個 {item:194426}, 然後撒5個 {item:194426} 到 {npc:191953} 上來刷新稀有.'
L['scaleseeker_mezeri_note'] = '把 {item:194681} 交給 {npc:193224} 並跟著她直到她揭露稀有.\n\n{note:在 {location:蒼藍高地} 的 {location:三瀑布守望} 的 {npc:190315} 是最近的商人.}'
L['shade_of_grief_note'] = '點選 {npc:193166} 來召喚稀有.'
L['windscale_the_stormborn_note'] = '殺死對 {npc:192357} 引導法術的 {npc:192367}.'
L['windseeker_avash_note'] = '殺死附近的 {npc:195742} 和 {npc:187916} 來刷新稀有.'
L['zarizz_note'] = '點選並對著4個 {npc:193169} 使用 {emote:/hiss} 來召喚稀有.'

L['aylaag_outpost_note'] = '{note:只有 {faction:艾拉格氏族} 的營地在 {location:艾拉格哨站} 時此稀有會刷新.}'
L['eaglewatch_outpost_note'] = '{note:只有 {faction:艾拉格氏族} 的營地在 {location:鷹守哨站} 時此稀有會刷新.}'
L['river_camp_note'] = '{note:T只有 {faction:艾拉格氏族} 的營地在 {location:河邊營地} 時此稀有會刷新.}'

L['defend_clan_aylaag'] = '保護艾拉格氏族'
L['defend_clan_aylaag_note'] = '{note:只在保護 {faction:艾拉格氏族} 營地遷徙事件時刷新, 沒有掉落物.}'

L['gold_swong_coin_note'] = '和 {npc:191608} 一起在山洞內, 且在她的右側.'
L['nokhud_warspear_note'] = '{item:194540} 可以在 {object:遠征隊斥侯包} 和 {object:挖過的土} 中找到.'
L['slightly_chewed_duck_egg_note'] = '找到並撫摸 {npc:192997} 來取得 {item:195453} 後再使用它. {item:199171} 將在3天後孵化成 {item:199172}.'
L['yennus_boat'] = '巨牙海民玩具船'
L['yennus_boat_note'] = '拾取 {object:巨牙海民玩具船} 來取得 {item:200876}, 其可以開始任務 {quest:72063}, 可以向 {npc:195252} 回報.'

L['forgotten_dragon_treasure_label'] = '失落巨龍寶藏'
L['forgotten_dragon_treasure_step1'] = '1. 在 {location:雍亞拉平原} 的西邊從 {object:結晶花}({dot:Green}) 收集5個 {item:195884}.'
L['forgotten_dragon_treasure_step2'] = '2. 組合花瓣來製造 {item:195542} 並拜訪 {object:遠古石頭}({dot:Yellow}).'
L['forgotten_dragon_treasure_step3'] = '3. 在 {object:遠古石頭} 附近使用 {item:195542} 來獲得20秒的增益 {spell:378935} 讓你可以跟著花徑到達一個山洞 ({dot:Blue}). 在花上奔跑來增加增益的時間以讓你到達 {object:翡翠箱子}({dot:Blue}) 並拾取 {item:195041}.'
L['forgotten_dragon_treasure_step4'] = '當你有鑰匙後, 前往 {object:失落巨龍寶藏} 來打開他並取得你的飛龍觀察者手稿.'
L['fdt_crystalline_flower'] = '結晶花'
L['fdt_ancient_stone'] = '遠古石頭'
L['fdt_emerald_chest'] = '翡翠箱子'

L['pm_ench_shalasar_glimmerdusk'] = '在壞掉的塔2樓.'
L['pm_herb_hua_greenpaw'] = '在一棵樹邊跪著'
L['pm_leath_erden'] = '在河邊一個死掉的 {npc:193092} 旁邊站著.'
L['pt_alch_canteen_of_suspicious_water_note'] = '在洞穴深處, 在死掉的 {npc:194887} 附近.'
L['pt_ench_stormbound_horn_note'] = '在 {location:風頌高地}.'
L['pt_jewel_fragmented_key_note'] = '在一個崩塌建築裡的樹根下.'
L['pt_jewel_lofty_malygite_note'] = '漂浮在一個洞穴的空中.'
L['pt_leath_wind_blessed_hide_note'] = '在 {location:席卡高地} 內的半人馬營地.'
L['pt_script_sign_language_reference_sheet_note'] = '掛在帳篷的入口.'
L['pt_smith_ancient_spear_shards_note'] = '在{location:拉札薩爾之境}.'
L['pt_smith_falconer_gauntlet_drawings_note'] = '湖上的小島, 在一個小屋內.'
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = '坐落於一個小屋. {note:小屋內有三支菁英}.'
L['pt_tailor_silky_surprise_note'] = '找到並拾取一個 {object:貓草嫩葉}.'

L['lizi_note'] = '完成從 {quest:65901} 開始的 學徒的休假日 故事線.'
L['lizi_note_day1'] = '從 {location:巨龍群島} 的昆蟲怪物收集20個 {item:192615}.'
L['lizi_note_day2'] = '從 {location:巨龍群島} 的植物怪物收集20個 {item:192658}.'
L['lizi_note_day3'] = '從 {location:巨龍群島} 的任意水域釣到10個 {item:194966}. 常見於 {location:雍亞拉平原} 的內陸.'
L['lizi_note_day4'] = '從 {location:雍亞拉平原} 的猛瑪象收集20個 {item:192636}.'
L['lizi_note_day5'] = '從 {npc:190014} 接受任務 {quest:71195}, 並且從 {location:雍伊爾溫泉} 南邊帳篷內的 {npc:190015} 取得1個 {item:200598}.'

L['ohnahra_note_start'] = '完成在 {location:雍伊爾溫泉} 的每日任務線 {quest:71196} 來取得 {item:192799}. 從在{location:雍伊爾溫泉} 的風之賢者帳篷之後的 {npc:190022} 處接受任務 {quest:72512}.\n\n收集以下的材料:'
L['ohnahra_note_item1'] = '從 {location:諾庫德進攻據點} 地城 (英雄難度)的最後首領 {npc:186151} 收集3個 {item:201929}, 不是100%掉落.'
L['ohnahra_note_item2'] = '從 {npc:196707} 使用50個 {currency:2003} 和1個 {item:194562} 來購買1個 {item:201323} .\n{item:194562} 可以從 {location:薩爪祖斯} 的時佚系列怪物的掉落物取得.'
L['ohnahra_note_item3'] = '從拍賣場購買1個 {item:191507}. (煉金師名望22後可以從 {npc:196707} 購買 {item:191588}'
L['ohnahra_note_end'] = '當你取得所有材料後, 和 {npc:194796} 回報任務並取得你的坐騎.'

L['bakar_note'] = '撫摸那隻狗!'
L['bakar_ellam_note'] = '如果足夠的人撫摸了這隻狗, 她會帶你去她的寶藏.'
L['bakar_hugo_note'] = '和艾拉格營地一起旅行.'
L['options_icons_bakar'] = '{achievement:16424}'
L['options_icons_bakar_desc'] = '顯示成就 {achievement:16424} 所需的所有巴卡犬的位置.'

L['ancestor_note'] = '在 {location:木階哨站} 的帳篷從 {object:甦醒精華} 取得 {spell:369277} 增益(1小時)來看到先祖並且提供他們需要的物品.'
L['options_icons_ancestor'] = '{achievement:16423}'
L['options_icons_ancestor_desc'] = '顯示成就 {achievement:16423} 中先祖的位置.'

L['dreamguard_note'] = '點選夢境守衛並且使用表情符號 {emote:/sleep}'
L['options_icons_dreamguard'] = '{achievement:16574}'
L['options_icons_dreamguard_desc'] = '顯示 {achievement:16574} 成就所需的夢境守衛位置.'

L['khadin_note'] = '使用 {item:191784} 交換專業知識.'
L['the_great_swog_note'] = '使用 {item:199338}, {item:199339} 和 {item:199340} 來交換 {item:202102}.'
L['hunt_instructor_basku_note'] = '用 {item:200093} 交換 {faction:2503} 聲望'
L['elder_yusa_note'] = '選取 {npc:192818} 並使用 {emote:/hungry} 來取得烹飪食譜.'
L['initiate_kittileg_note'] = '完成 {quest:66226} 來取得玩具!'

L['quackers_duck_trap_kit'] = '要召喚 {npc:192557}. 首先你需要可以在附近 {location:艾拉格營地} 找到的 {item:194740}.{dot:Blue}\n\n 要製造成 {item:194712} 你需要如下的材料:'
L['quackers_spawn'] = '接著你需要用 {item:194712} 在附近的巢邊抓住一隻鴨子. 然後在 {npc:192581} 使用 {item:194739} 來召喚 {npc:192557}.'

L['knew_you_nokhud_do_it_note'] = '{note:所有3個物品都是唯一且有30分鐘的時限.}\n\n從 {location:諾庫敦堡} 附近的 {npc:185357}, {npc:185353} 和 {npc:185168} 收集 {item:200184}, {item:200194} 和 {item:200196}.\n\n組合他們來製造 {item:200201} 並使用它後和 {npc:197884} 說話來開始訓練.\n\n使用你的 |cFFFFFD00額外動作按鈕|r 來完成它並取得你的成就.\n\n{note:在元素風暴期間與團隊一起會讓農物品更加簡單.}'
L['options_icons_nokhud_do_it'] = '{achievement:16583}'
L['options_icons_nokhud_do_it_desc'] = '顯示成就 {achievement:16583} 有用的幫助訊息.'

L['chest_of_the_flood'] = '洪流寶箱'

L['aylaag_camp_note'] = '{faction:艾拉格氏族} 每3天又3小時 (75小時) 移動到另外一個營地, 跟著他們並在路上保護他們.'

L['clan_chest'] = '氏族箱子'
L['options_icons_clan_chest'] = '氏族箱子'
L['options_icons_clan_chest_desc'] = '顯示 {object:氏族箱子} 可能的位置.'

L['lightning_bound_chest'] = nil
L['options_icons_lightning_bound_chest'] = nil
L['options_icons_lightning_bound_chest_desc'] = '顯示 {object:Lightning Bound Chests} 可能的位置.'

L['bloodgullet_note'] = '在 {location:木階哨站} 的一個帳篷裡的 {object:甦醒精華} 取得 {spell:369277} 增益(1小時) 來看到靈獸.\n\n{note:只有獸王獵看的到.}'

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['ancient_protector_note'] = '殺掉附近的 {npc:193244} 來取得 {item:197708}. 組合5個 {item:197708} 來產生 {item:197733}. 並且使用它來啟動附近的 {object:泰坦反應爐}.'
L['blightpaw_note'] = '和附近的 {npc:193222} 交談並同意幫助他.'
L['corrupted_proto_dragon_note'] = '和 {object:腐化的龍蛋} 互動來召喚稀有.'
L['lord_epochbrgl_note'] = '點擊 {npc:193257} 來刷新稀有.'
L['the_great_shellkhan_note'] = '從 {location:蒼藍高地} 的 {location:寇莉格微光水灣} 收集 {item:200949}, 在3分鐘內走回去找 {npc:191416} 繳回物品來啟動稀有並取得成就.\n\n {note:在開始前確定 {npc:191416} 和 {npc:191305}在那裡.每週只有1個角色可以撿起並繳回物品來啟動稀有, 之後 {npc:191416} 只會感謝你.}'
L['weeping_vilomah_note'] = '和 {npc:193206} 對話來召喚稀有.'
L['woofang_note'] = '撫摸 {npc:193156} 來召喚稀有.'

L['acorn_harvester_note'] = '在附近的地上收集一個 {object:橡實} 來取得 {spell:388485} 之後再和 {npc:196172} 互動.\n\n{bug:(BUG: 要點選 {npc:196172} 可能需要重新載入)}.'
L['cracked_hourglass_note'] = '{item:199068} 可以在 {object:遠征隊斥侯包} 和 {object:挖過的土} 中找到.'
L['sandy_wooden_duck_note'] = '收集 {item:199069} 並使用它.'

L['tasty_hatchling_treat_note'] = '在書架後的一個桶子內.'

L['pm_mining_bridgette_holdug'] = '在一個長草的石柱頂端.'
L['pm_tailor_elysa_raywinder'] = '在塔中間的平台上.'
L['pt_alch_contraband_concoction_note'] = '藏在樹叢內 {note:很難看到}.'
L['pt_alch_tasty_candy_note'] = '各丟一個在附近的 {object:[Discarded Toy]} 到每個大鍋, 然後殺掉刷新出來的怪物.'
L['pt_ench_fractured_titanic_sphere_note'] = '{location:提爾堡} 南邊.'
L['pt_jewel_alexstraszite_cluster_note'] = '{location:提爾堡} 內.'
L['pt_jewel_painters_pretty_jewel_note'] = '在燈座內.'
L['pt_leath_decayed_scales_note'] = '在一個袋子裡.'
L['pt_script_counterfeit_darkmoon_deck_note'] = '和 {npc:194856} 講話並幫助她整理散落在他腳邊的 {object:風暴套卡}. 依照順序點選卡片 (1到8) 之後和她交談來取得套卡.'
L['pt_script_forgetful_apprentices_tome_note'] = '在桌上一個大圓規旁.'
L['pt_script_how_to_train_your_whelpling_note'] = '躺在沙盒內的一本小綠書.'
L['pt_smith_draconic_flux_note'] = '在一棟建築內.'
L['pt_tailor_ancient_dragonweave_bolt_note'] = '點選 {object:古老的龍紡織布機} 來完成一個小遊戲把線捲連到中間的寶石.'
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = '在一堆沙中的小旗幟.'

L['picante_pomfruit_cake_note'] = '{item:200904} 不是每天都有, 請每天回來 {location:晶紅盛宴} 檢查. 當你在這的時候, 記得試吃3種有的食物來同時完成 {achievement:16556}.'
L['icecrown_bleu_note'] = '從在 {location:工匠市場} 的 {npc:196729} {title:<乳酪商>} 處購買.'
L['dreamwarding_dripbrew_note'] = '從在 {location:深夜實驗室} 的 {npc:197872} {title:<咖啡法師>} 處購買.'
L['arcanostabilized_provisions_note'] = '從在 {location:時光合流} 內的 {location:洪荒使者未來} 的 {npc:198831} {title:<大廚>} 處購買.'
L['steamed_scarab_steak_note'] = '從在 {location:安詳夢境水療中心} 的 {npc:197586} {title:<水療中心酒保>} 處購買.'
L['craft_creche_crowler_note'] = '從在每天在以下地圖隨機位置的 {npc:187444} {title:<旅行龍釀商人>}: {location:晶紅生命聖殿}, {location:龍鱗基地}, {location:穆斯提的大帳篷}, {location:遺鏈旅店}, {location:時光合流}, {location:蓋利奇爾崗哨} 和 {location:綠鱗旅店} 處購買.'
L['bivigosas_blood_sausages_note'] = '從在 {location:蓋利奇爾崗哨} 的 {npc:188895} {title:<食物和飲料>} 處購買.'
L['rumiastrasza_note'] = '{note:在 {location:沃卓肯} 完成從 {quest:71238} 開始的每日任務線, 否則成就沒辦法完成.}'
L['options_icons_specialties'] = '{achievement:16621}'
L['options_icons_specialties_desc'] = '顯示成就 {achievement:16621} 所需的食物和飲料位置.'

L['new_perspective_note'] = '在遠景位置使用任何自拍相機拍張照. 當一進入拍攝模式拍攝位置會被一個紫色圈圈標記.\n\n如果你沒有取得成就進度, 請換一個視角.'
L['options_icons_new_perspective'] = '{achievement:16634}'
L['options_icons_new_perspective_desc'] = '顯示成就 {achievement:16634} 所需的遠景位置.'

L['ruby_feast_gourmand'] = '一個隨機的客座大廚會每天提供不同的食物和飲料.'

L['sorotis_note'] = '用 {item:199906} 交換 {faction:2510} 聲望.'
L['lillian_brightmoon_note'] = '用 {item:201412} 交換 {faction:2507} 聲望.'

L['chest_of_the_elements'] = '元素寶箱'

L['hoard_of_draconic_delicacies_note_start'] = '完成以下由 {npc:189479} 給予的7個任務:'
L['hoard_of_draconic_delicacies_note_end'] = '當所有任務都完成後, {npc:189479} 會給予 {quest:67071} 來收到你的食譜.\n\n{note:任務是根據來訪 {location:晶紅盛宴} 的客座主廚, 順序可能會和上表不同.}'

L['brendormi_note_start'] = '用 {item:202039} 和 {currency:2118} 交換裝備, 1個寵物, 1個玩具和1個坐騎.'
L['brendormi_note_item'] = '你現在有 %s {item:202039}.'
L['brendormi_note_currency'] = '你現在有 %s {currency:2118}.'

L['titan_chest'] = '泰坦寶箱'
L['options_icons_titan_chest'] = '泰坦寶箱'
L['options_icons_titan_chest_desc'] = '顯示 {object:泰坦寶箱} 可能的位置.'

L['living_mud_mask_note'] = [[
{npc:197346} 會掉落給予你 {quest:70377} 任務的 {item:200586}. 你可以帶到 {npc:198062} 處去回報.

在這之後你必須要再和 {npc:198062} 說話並向他要求更好的獎勵. 他會要求搭乘"滑翔翼"回到貴賓區並且以"進一步享受他的同行作為更好獎勵".

當你到達浮島時 {npc:198062} 會躺在地板上. 再次和她說話, 說他看起來死人.

一個小軟泥怪 {npc:198590} 會刷新並跑到 {npc:197232} 後面的樹枝上. 當你靠的夠近時, 軟泥怪會給你任務 {quest:72060}.

回到坐在長凳上的 {npc:197232} 處, 並回報任務來取得 {item:200872}.
]]

-------------------------------------------------------------------------------
------------------------------ THE WAKING SHORE -------------------------------
-------------------------------------------------------------------------------

L['brundin_the_dragonbane_note'] = '喀拉希戰爭隊伍坐在他們的 {npc:192737} 往這座塔旅行.'
L['captain_lancer_note'] = '在完成 {spell:388945} 事件後會立即重生'
L['enkine_note'] = '殺掉沿著熔岩河的 {npc:193137}, {npc:193138} 或 {npc:193139} 取得 {item:201092}, 使用它並在 {npc:191866} 的附近熔岩中釣魚.'
L['lepidoralia_note'] = '在 {location:振翅洞穴}. 幫助 {npc:193342} 抓住 {npc:193274} 直到稀有刷新.'
L['obsidian_citadel_rare_note'] = '你或其他玩家必須要繳交總共 %d個 {item:191264} 給 %s. 要鑄造鑰匙你需要結合30個 {item:191251} 和3個 {item:193201}, 你可以在 {location:黑曜王座} 的怪物身上取得這些物品.'
L['shadeslash_note'] = '依序點擊 {object:失竊的球體}, {object:失竊的望遠鏡} 和 {object:失竊的法器} 來召喚稀有.'
L['obsidian_throne_rare_note'] = '在 {location:黑曜王座} 內.'
L['slurpo_snail_note'] = '在{location:蒼藍高地} 的山洞 (11, 41) 從 {object:鹽水晶} 上拾取 {item:201033} 並且在 {location:甦醒海岸} 的山洞使用來召喚他.'
L['worldcarver_atir_note'] = '從附近的 {npc:187366} 收集3個 {item:191211}, 並且將他們放置在 {npc:197395} 來召喚稀有.'

L['bubble_drifter_note'] = '{item:199061} 可以在 {object:遠征隊斥侯包} 和 {object:挖過的土} 中找到.'
L['dead_mans_chestplate_note'] = '在塔中間的樓層.'
L['fullsails_supply_chest_note'] = '鑰匙由 {location:翼息大使館} 南方的 {npc:187971} 和 {npc:187320} 掉落.'
L['golden_dragon_goblet_note'] = '從 {location:荒野海岸} 上的 {npc:190056} 拾取 {item:202081}並完成小任務線.'
L['lost_obsidian_cache'] = '失落黑曜儲藏箱'
L['lost_obsidian_cache_step1'] = '1. 在 {npc:186763} 腳邊拾取 {item:194122}.'
L['lost_obsidian_cache_step2'] = '2. 對 {npc:191851} 使用 {item:194122}, 然後騎著他到達洞穴入口.'
L['lost_obsidian_cache_step3'] = '3. 在山洞內從 {object:失落貯物所鑰匙} 拾取 {item:198085}, 然後打開 {object:失落黑曜貯藏箱} 來取得玩具.'
L['misty_treasure_chest_note'] = '站在突出瀑布的 {npc:185485} 來進入洞窟.'
L['onyx_gem_cluster_note'] = '當 {faction:2507} 的名望到達21時, 你可以完成任務 {quest:70833} 來取得報酬 {item:200738} (每個帳號一次) 或是從 {npc:189065} 處用3個 {item:192863} 和 500{currency:2003} 來購買地圖並使用它.'
L['torn_riding_pack_note'] = '在瀑布的頂端.'
L['yennus_kite_note'] = '卡在樹頂的一根樹枝.'

L['fullsails_supply_chest'] = '滿帆補給箱'
L['hidden_hornswog_hoard_note'] = [[
收集三個不同物品並且在靠近 {npc:192362} 附近的 {object:"觀察謎題: 田野指南"} 來組合以取得 {item:200063} 並且餵給牠. 接著牠會讓開路讓你拾取牠的寶藏.

{item:200064}{dot:Yellow}
{item:200065}{dot:Blue}
{item:200066}{dot:White}
]]

L['pm_alch_grigori_vialtry'] = '在一個平台上俯瞰 {location:閃霜進攻地}.'
L['pm_skin_zenzi'] = '在河邊坐著.'
L['pm_smith_grekka_anvilsmash'] = '在塔的廢墟旁邊的草地上.'
L['pt_alch_frostforged_potion_note'] = '在冰坑中間.'
L['pt_alch_well_insulated_mug_note'] = '在 {location:龍禍要塞} 內許多菁英怪之間.'
L['pt_ench_enchanted_debris_note'] = '使用並跟著 {npc:194872} 走到最後來拾取殘骸.'
L['pt_ench_flashfrozen_scroll_note'] = '在 {location:閃霜營地} 的洞穴系統內.'
L['pt_ench_lava_infused_seed_note'] = '在 {location:碎鱗者要塞} 的一朵花內.'
L['pt_engi_boomthyr_rocket_note'] = '收集列在 {object:轟希爾火箭筆記} 內的物品:\n\n{item:198815}\n{item:198817}\n{item:198816}\n{item:198814}\n\n當你收集完後, 帶著它們回來到火箭旁以取得寶藏.'
L['pt_engi_intact_coil_capacitor_note'] = '和三個 {object:外露的線} 互動來修好並拾取 {object:超載的特斯拉線圈}.'
L['pt_jewel_closely_guarded_shiny_note'] = '巢邊樹下的藍色寶石.'
L['pt_jewel_igneous_gem_note'] = '快速點選在岩漿內的小島上的三個水晶.'
L['pt_leath_poachers_pack_note'] = '在河岸旁一個死掉的狐狸人旁邊.'
L['pt_leath_spare_djaradin_tools_note'] = '在紅龍屍體旁邊.'
L['pt_script_pulsing_earth_rune_note'] = '在倒塌建築內的桌子後方.'
L['pt_smith_ancient_monument_note'] = '擊敗在臺座上環繞著劍的4個 {npc:188648}.\n\n{bug:(BUG: 目前在點選劍後你不會取得物品, 取而代之的是它在過段時間後會寄到你的信箱.)}'
L['pt_smith_curious_ingots_note'] = '在 {location:碎鱗者要塞} 內地上的小金屬錠.'
L['pt_smith_glimmer_of_blacksmithing_wisdom_note'] = '在 {object:昏暗熔爐} 旁製造1個 {item:189541}, 然後在 {object:淬火盆} 裡的物品會變成可拾取的.'
L['pt_smith_molten_ingot_note'] = '踢3個金屬錠到熔岩中來召喚怪物. 在擊敗怪物後拾取箱子.'
L['pt_smith_qalashi_weapon_diagram_note'] = '在一個鐵砧上方.'
L['pt_tailor_itinerant_singed_fabric_note'] = '在最後首領刷新的山洞外面樹上掛著的一片織物. {note:需要精準的御龍術或是術士傳送門}.'
L['pt_tailor_mysterious_banner_note'] = '在建築物的頂端飄著.'

L['quack_week_1'] = '第1個星期'
L['quack_week_2'] = '第2個星期'
L['quack_week_3'] = '第3個星期'
L['quack_week_4'] = '第4個星期'
L['quack_week_5'] = '第5個星期'
L['lets_get_quacking'] = '你每個禮拜只能拯救一個 {npc:187863}.'

L['complaint_to_scalepiercer_note'] = '點選小屋內的 {object:石板} (在左側後方).'
L['grand_flames_journal_note'] = '點選小屋外面後方的 {object:石板}.'
L['wyrmeaters_recipe_note'] = '點選小屋內的 {object:石板} (在左側).'

L['options_icons_ducklings'] = '{achievement:16409}'
L['options_icons_ducklings_desc'] = '顯示成就 {achievement:16409} 所需的小鴨子位置.'
L['options_icons_chiseled_record'] = '{achievement:16412}'
L['options_icons_chiseled_record_desc'] = '顯示成就 {achievement:16412} 所需的石板位置.'

L['grand_theft_mammoth_note'] = '騎 {npc:194625} 到 {npc:198163}.\n\n{bug:(BUG: 如果你不能和 {npc:194625} 互動請使用 /reload.)}'
L['options_icons_grand_theft_mammoth'] = '{achievement:16493}'
L['options_icons_grand_theft_mammoth_desc'] = '顯示成就 {achievement:16493} 所需 {npc:194625} 的位置.'

L['options_icons_stories'] = '{achievement:16406}'
L['options_icons_stories_desc'] = '成就 {achievement:16406} 所需的任務位置.'
L['all_sides_of_the_story_garrick_and_shuja_note'] = '開始任務線並聆聽 {npc:184449} 和 {npc:184451} 的故事.'
L['all_sides_of_the_story_duroz_and_kolgar_note'] = '在平台下方的小房間.\n\n開始任務線並聆聽 {npc:194800} 和 {npc:194801} 的故事. 更多的任務會在接下來的兩個禮拜內解鎖.'
L['all_sides_of_the_story_tarjin_note'] = '從 {quest:70779} 開始的任務線.\n\n每個禮拜 {npc:196214} 會告訴你一個另外的故事.'
L['all_sides_of_the_story_veritistrasz_note'] = '開始任務 {quest:70132} 來了解所有有關 {npc:194076} 的故事.\n之後你會解鎖任務 {quest:70268} 和接著的任務 {quest:70134}.\n\n關於最後一個任務, 你會需要可以在 {location:龍禍要塞} 內找到的 {item:198661}.'

L['slumbering_worldsnail_note1'] = [[
1. 從 {location:黑曜龍堡} 附近的怪物收集3個 {item:193201} 和30個 {item:191251} 來製造 {item:191264}.

2. 和 {npc:187275} 用 {item:191264} 交換 {item:200069}.

3. 箱子有30%的機率會含有 {item:199215}.

4. 使用會員證會給你 {spell:386848} 減益, 讓你可以在 {location:黑曜龍堡} 附近農 {item:202173}.

5. 蒐集1000個 {item:202173} 來購買 {item:192786}.
]]

L['slumbering_worldsnail_note2'] = '{note:注意: 如果你死了你會失去你的會員減益. 要嘛是你在死前和 {npc:193310} 使用20個 {item:202173} 購買新的會員證或是你需要繳交更多的鑰匙來有機率的從箱子裡取得新的會員證.}'

L['magmashell_note'] = '從 {location:黑曜龍堡} 附近的 {npc:193138} 身上拾取 {item:201883} 並帶給 {npc:199010}.\n\n{note:要取得坐騎需要在熔岩上引導1個20秒的法術, 推薦找個治療者或是帶著 {item:200116}.}'

L['otto_note_start1'] = '和 {location:雍亞拉平原} 的 {npc:191608} 購買1個 {item:202102} 來取得 {item:202042}.\n\n袋子可以用75個 {item:199338} 購買. 硬幣可以在 {location:巨龍群島} 釣魚或是擊敗釣魚洞的 {title:<大傢伙>} 怪物取得.'
L['otto_note_start2'] = '前往在 {location:嘶鳴岩洞} 的 {location:泡泡浴} 潛水酒吧找到一塊跳舞墊. 站在上面直到昏厥然後拾取旁邊的 {item:202061}.'
L['otto_note_item1'] = '收集100個 {item:202072}, 可以在 {location:蒼藍高地} 的 {location:伊斯凱拉} 的開放水域高機率釣到. 和桶子一起使用會給你一個 {item:202066}.'
L['otto_note_item2'] = '收集25個 {item:202073}, 可以在 {location:甦醒海岸} 的 {location:黑曜王座} 附近的熔岩較稀有釣到. 和桶子一起使用會給你一個 {item:202068}.'
L['otto_note_item3'] = '收集1個 {item:202074}, 可以在 {location:薩爪祖斯} 的 {location:阿爾蓋薩學院} 附近的水裡較稀有釣到. 和桶子一起使用會給你一個 {item:202069}.'
L['otto_note_end'] = '回到 {location:甦醒海岸} 的 {location:嘶鳴岩洞}, 將桶子放在你之前找到的地方來召喚 {npc:199563} 並取得你的坐騎!'

L['options_icons_safari'] = '{achievement:16519}'
L['options_icons_safari_desc'] = '顯示成就 {achievement:16519} 所需的戰寵位置'
L['shyfly_note'] = '你必須要正在做 {quest:70853} 任務才能看到 {npc:189102}.'

L['cataloger_jakes_note'] = '用 {item:192055} 交換 {faction:2507} 聲望.'

L['snack_attack_suffix'] = '點心已餵給哞肉'
L['snack_attack_note'] = '收集 {npc:195806} 並餵給哞肉20次.\n\n{note:不需要在一次進攻中餵完.}'
L['options_icons_snack_attack'] = '{achievement:16410}'
L['options_icons_snack_attack_desc'] = '顯示成就 {achievement:16410} 所需的 {npc:195806} 位置.'

L['loyal_magmammoth_step_1'] = '第一步'
L['loyal_magmammoth_step_2'] = '第二步'
L['loyal_magmammoth_step_3'] = '第三步'
L['loyal_magmammoth_true_friend'] = '摯友'
L['loyal_magmammoth_wrathion_quatermaster_note'] = '從 {npc:199020} 或 {npc:188625} 購買 {item:201840} ' .. ns.color.Gold('(800 金)')
L['loyal_magmammoth_sabellian_quatermaster_note'] = '從 {npc:199020} 或 {npc:188625} 購買 {item:201839} ' .. ns.color.Gold('(800 金)')
L['loyal_magmammoth_harness_note'] = '從 {npc:191135} 購買 {item:201837}.'
L['loyal_magmammoth_taming_note'] = '當你騎著 {npc:198150} 時使用 {item:201837} 來取得你的座騎!\n\n{note:回報指出你只能在 {location:熾烈高地} 找到的 {npc:198150} 上使用.}'

L['djaradin_cache'] = '加拉登貯物所'
L['options_icons_djaradin_cache'] = '加拉登貯物所'
L['options_icons_djaradin_cache_desc'] = '顯示 {object:加拉登貯物所} 可能的位置.'

L['dragonbane_siege_label'] = '{spell:388945}'
L['options_icons_dragonbane_siege'] = '{spell:388945}'
L['options_icons_dragonbane_siege_desc'] = '顯示 {spell:388945} 的位置和獎勵.'

L['phoenix_wishwing_note'] = [[
在取得 {item:199203} 後, {npc:196214} 會提供一個獎勵 {item:193373} 的可回報任務.
要完成這個任務, 你需要下列的東西 (你可以以任意順序取得):
]]
L['phoenix_wishwing_talisman'] = [[
%s {item:199203}

此物品由 {location:阿拉卡山} 的 {npc:88045} {dot:Gold} 出售. 如果找不到 {npc:88045}, 請完成 {quest:35010} 後就能看到他.
你需要下列物品來購買它:]]
L['phoenix_wishwing_phoenix_ember'] = '%s {item:199099}\n在 {location:時光漫遊火源之界} 的 {npc:52530} 掉落.'
L['phoenix_wishwing_sacred_ash'] = '%s {item:199097}\n可以在 {location:阿拉卡山} 附近的 {object:烹飪鍋} 找到.'
L['phoenix_wishwing_inert_ash'] = '%s {item:199092}\n由 {location:安戈洛環形山} {dot:Gray} 中間的 {npc:6520} 稀有掉落. 和 {npc:6521} 共享重生點(但是不會掉落物品), 所以請殺掉兩者.'
L['phoenix_wishwing_smoldering_ash'] = [[
%s {item:199080}

在 {location:巨龍群島} 上農各種 {npc:鳳凰} {dot:Yellow}. 例如 {npc:181764} 和 {npc:195448}.
通常可以在 {location:甦醒海岸} 的 {location:黑曜龍堡} 附近找到.
]]
L['phoenix_wishwing_ash_feather'] = [[
%s {item:202062}

要看到 {object:羽毛} 你需要從 {location:甦醒海岸} 的 {location:黑曜王座} 裡的 {npc:189207} {dot:Green} 購買 {item:199177}.
使用項鍊並撿起在 {location:黑曜龍堡} 附近的 {location:熾烈高地} 和 {location:熔渣泥沼} 可以找到的 {item:202062} {dot:Red}.
]]
L['phoenix_wishwing_info'] = '這是位於 {location:巨龍群島} 上 {location:甦醒海岸} 的收藏品 {item:193373} 的一部分.'

L['bugbiter_tortoise_note'] = '收集 {item:202082}({dot:Red}) 和 {item:202084}({dot:Green}) 來和 {npc:187077} 交換你的 {item:202085}.\n\n{npc:187077} 需要在有世界任務 {quest:66070} 時.'

-------------------------------------------------------------------------------
------------------------------- Zaralek Cavern --------------------------------
-------------------------------------------------------------------------------

L['in_deepflayer_nest'] = '在 {location:深岩剝石怪巢穴} 內'

L['brulsef_the_stronk_note'] = '從 {object:巨型收穫寶箱} 拾取你的獎勵.'

L['ancient_zaqali_chest_note'] = '使用附近的 {object:瓶裝熔岩} 來打開箱子.'
L['blazing_shadowflame_chest_note'] = '裝備 {item:15138} 來拾取箱子, 可以從拍賣場購買或是由製皮製造.'
L['crystal_encased_chest_note'] = '和藍色 {object:調和水晶} ({dot:Blue}) 與紅色 {object:調和水晶} ({dot:Red}) 互動來開啟箱子.'
L['old_trunk_note'] = '找到並點選 {npc:204277} 5次, 來取得 {item:204323}. {note:第一隻老鼠在箱子附近}'
L['well_chewed_chest_note'] = '{item:202869}({dot:Green}) 藏在山洞裡的 {npc:199962} 下面.'

L['molten_hoard_label'] = '熔火貯藏'
L['fealtys_reward_label'] = '效忠獎勵'
L['fealtys_reward_note'] = '跪 {emote:/kneel} 在西南方的龍雕像前面直到他噴火後才能打開箱子'
L['dreamers_bounty_label'] = '夢旅者的獎賞'
L['dreamers_bounty_note'] = '{object:夢旅者的獎賞} 只有在你從附近的 {npc:201068} 獲得 {spell:400066} 減益時才能被拾取.'
L['moth_pilfered_pouch_label'] = '飛蛾偷竊的小包'
L['moth_pilfered_pouch_note'] = '接住 {npc:203225} 讓他有5層的 {spell:405358} 來幫助它飛行.\n\n之後它會飛到袋子附近並揭露給你.'
L['waterlogged_bundle_label'] = '浸濕的包裹'

L['stolen_stash_label'] = '偷取的儲物箱'
L['ritual_offering_label'] = '儀式祭品'
L['options_icons_ritual_offering'] = '儀式祭品'
L['options_icons_ritual_offering_desc'] = '顯示 {object:儀式祭品} 可能的位置.'
L['nal_kskol_reliquary_label'] = '納克斯科聖匣'
L['nal_kskol_reliquary_note'] = '使用 {object:聖匣存取控制臺} 並解開謎題來開啟 {object:納克斯科聖匣}.'

L['molten_scoutbot_note'] = '開啟 {object:熔火偵查機器人} 並拾取 {item:204855}.'
L['bolts_and_brass_note'] = '開啟 {object:螺栓與黃銅} 並拾取 {item:204850}.'

L['sniffen_sage_suffix'] = '特殊物品已發現'

L['big_slick_note'] = '從 {npc:201752} 完成他的每日任務並達到 {faction:2568} 聲望 "專業" 可以取得坐騎.\n\n 展示以下達到25級的蝸牛 (戰寵) 每隻也可獲得100聲望:'
L['grogul_note'] = '和 {npc:204672} 交談並選擇一種零食可以鼓勵那種蝸牛跑得更快.\n{note:此成就可以在名望7之前獲得.}'

L['saccratos_note'] = '用 {item:204727} 交換寵物, 坐騎和更多東西.'
L['ponzo_note'] = '用 {item:204985} 和 {item:205903} 交換飛龍自訂, 寵物, 坐騎和更多東西.'

L['smelly_trash_pile_label'] = '臭臭垃圾堆'
L['options_icons_smelly_trash_pile'] = '臭臭垃圾堆'
L['options_icons_smelly_trash_pile_desc'] = '顯示 {object:臭臭垃圾堆} 可能的位置.'

L['seething_cache_treasure_note'] = '要能夠看到 {object:沸騰貯藏箱} 並拾取 {item:192779}. 你需要在 {location:扎拉萊克洞窟} 的 {location:薩克利火山口} 內, 從 {object:沸騰寶珠} 上取得3層 {spell:399342} 減益.'
L['chest_of_the_flights_treasure_note'] = '要開啟寶箱你必須按照順序點選 {object:Empowered Gems} {note:紅> 黑 > 藍 > 黃 > 綠}.'
L['curious_top_hat_note'] = '當你有 {spell:410288} 增益時和 {npc:205010} 互動來拿到 {item:205021}. 如果你沒有增益的時候靠近他他會跑掉.'

L['zaralek_rotation_active'] = nil
L['zaralek_rotation_inactive'] = nil

L['options_icons_zone_event'] = nil
L['options_icons_zone_event_desc'] = nil
