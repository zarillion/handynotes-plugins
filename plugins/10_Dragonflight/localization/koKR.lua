local ADDON_NAME, ns = ...
local L = ns.NewLocale('koKR')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['elite_loot_higher_ilvl'] = '{note:다른 희귀몹보다 더 높은 레벨의 장비를 드랍합니다.}'
L['gem_cluster_note'] = '필요한 아이템은 {faction:2507} 영예 21이 되면 {object:원정대 정찰병의 짐} 또는 {object:흐트러진 흙}에서 얻을 수 있습니다.'

L['options_icons_bonus_boss'] = nil
L['options_icons_bonus_boss_desc'] = nil

L['options_icons_profession_treasures'] = '전문기술 보물'
L['options_icons_profession_treasures_desc'] = '전문기술 관련 지식을 습득할 수 있는 보물 위치를 표시합니다.'

L['dragon_glyph'] = '용 문양'
L['options_icons_dragon_glyph'] = '용 문양'
L['options_icons_dragon_glyph_desc'] = '56개의 전체 용 문양 위치를 표시합니다.'

L['dragonscale_expedition_flag'] = '용비늘 원정대 깃발'
L['flags_placed'] = '깃발 꽂기 완료'
L['options_icons_flag'] = '{achievement:15890}'
L['options_icons_flag_desc'] = '{achievement:15890} 업적을 위한 전체 20개의 깃발 꽂기 위치를 표시합니다.'

L['broken_banding_note'] = '석상의 오른발 발목 안쪽에 있음'
L['chunk_of_sculpture_note'] = '용 조각상 정면 기준 오른쪽 뒤 땅바닥에 있음'
L['dislodged_dragoneye_note'] = '용 조각상 몸통 아래 잔해 위에 있음'
L['finely_carved_wing_note'] = '용 조각상 오른 무릎 아래 있음'
L['fragment_requirement_note'] = '{note:파편수집이 가능하려면 먼저 {location:날개쉼터 대사관} 내 용 조각상에서 작업중인 {npc:193914}와 대화해야 합니다.}'
L['golden_claw_note'] = '용 조각상 정면 기준 오른쪽 뒷발 발톱 아래 있음'
L['precious_stone_fragment_note'] = '조각상 오른발 아래 있음'
L['stone_dragontooth_note'] = '용 조각상 정면 기준 받침대 아래 왼쪽 땅바닥에 있음'
L['tail_fragment_note'] = '용 조각상 꼬리 안쪽에 있음'
L['wrapped_gold_band_note'] = '용 조각상 정면 기준 왼쪽 뒷발에 있음'
L['options_icons_fragment'] = '{achievement:16323}'
L['options_icons_fragment_desc'] = '{achievement:16323} 업적을 위한 조각상 파편 위치를 표시합니다.'

L['options_icons_kite'] = '{achievement:16584}'
L['options_icons_kite_desc'] = '{achievement:16584} 업적을 위한 {npc:198118} 위치를 표시합니다.'

L['disturbed_dirt'] = '흐트러진 흙'
L['options_icons_disturbed_dirt'] = '흐트러진 흙'
L['options_icons_disturbed_dirt_desc'] = '{object:흐트러진 흙}의 위치를 표시합니다.'

L['scout_pack'] = '원정대 정찰병의 짐'
L['options_icons_scout_pack'] = '원정대 정찰병의 짐'
L['options_icons_scout_pack_desc'] = '{object:원정대 정찰병의 짐} 위치를 표시합니다.'

L['magicbound_chest'] = '마법결속 보관함'
L['options_icons_magicbound_chest'] = '마법결속 보관함'
L['options_icons_magicbound_chest_desc'] = '마법결속 보관함의 위치를 표시합니다.'
L['ice_bound_chest'] = '[Ice Bound Chest]'

L['tuskarr_tacklebox'] = nil
L['options_icons_tuskarr_tacklebox'] = nil
L['options_icons_tuskarr_tacklebox_desc'] = nil

L['dr_best'] = '개인 최고 기록:\n - 일반: %.3f초\n - 고급: %.3f초'
L['dr_best_dash'] = '개인 최고 기록:\n - %.3f초'
L['dr_note'] = '목표 시간:\n - 일반: %s초 / %s초\n - 고급: %s초 / %s초'
L['dr_note_dash'] = '목표 시간:\n - %s초 / %s초'
L['dr_bronze'] = '\n\n경주를 완주하고 ' .. ns.color.Bronze('동메달') .. '을 획득하세요.'
L['options_icons_dragonrace'] = '용 조련술 경주'
L['options_icons_dragonrace_desc'] = '용 조련술 경주 위치를 표시합니다.'

L['squirrels_note'] = '전투 애완동물이 아닌 동물에게 {emote:/사랑} 을 해야 합니다'
L['options_icons_squirrels'] = '{achievement:16729}'
L['options_icons_squirrels_desc'] = '{achievement:16729} 업적을 위한 동물 위치를 표시합니다.'

L['hnj_sublabel'] = '해당 지역에서 시카르 사냥의 제전 진행 필요'
L['hnj_western_azure_span_hunt'] = '죽은 나무 꼭대기에 있음'
L['hnj_northern_thaldraszus_hunt'] = nil
L['options_icons_hemet_nesingwary_jr'] = '{achievement:16542}'
L['options_icons_hemet_nesingwary_jr_desc'] = '{achievement:16542} 업적을 위한 {npc:194590}의 위치를 표시합니다.'

L['pretty_neat_note'] = '"셀카" 사진기로 사진 찍기'
L['pretty_neat_note_blazewing'] = '{location:넬타루스} 던전 내 {npc:189901} 공략 시에 찾을 수 있습니다.'
L['options_icons_pretty_neat'] = '{achievement:16446}'
L['options_icons_pretty_neat_desc'] = '{achievement:16446} 업적을 위한 NPC 위치를 표시합니다.'

L['large_lunker_sighting'] = '큰 생선 목격 장소'
L['large_lunker_sighting_note'] = '{item:194701} 5개를 던져 {npc:192919} 또는 희귀몹을 소환합니다.'

L['options_icons_legendary_album'] = '{achievement:16570}'
L['options_icons_legendary_album_desc'] = '{achievement:16570} 업적을 위한 전설적인 캐릭터의 위치를 표시합니다.'

L['signal_transmitter_label'] = '지룡 구멍 생성기 신호 송신기'
L['signal_transmitter_note'] = nil
L['options_icons_signal_transmitter'] = '지룡 구멍 생성기 신호 송신기'
L['options_icons_signal_transmitter_desc'] = '{item:198156}를 이용하기 위한 {object:비활성화된 신호 송신기} 위치를 표시합니다.'

L['rare_14h'] = nil
L['time_format_12hrs'] = nil
L['time_format_24hrs'] = nil
L['now'] = nil
L['spawns_at_night'] = '저녁에만 출몰합니다. (서버 시각 기준 18:30)'

L['elemental_storm'] = nil
L['elemental_storm_thunderstorm'] = nil
L['elemental_storm_sandstorm'] = nil
L['elemental_storm_firestorm'] = nil
L['elemental_storm_snowstorm'] = nil

L['elemental_storm_brakenhide_hollow'] = nil
L['elemental_storm_cobalt_assembly'] = nil
L['elemental_storm_dragonbane_keep'] = nil
L['elemental_storm_imbu'] = nil
L['elemental_storm_nokhudon_hold'] = nil
L['elemental_storm_ohniri_springs'] = nil
L['elemental_storm_primalist_future'] = nil
L['elemental_storm_primalist_tomorrow'] = nil
L['elemental_storm_scalecracker_keep'] = nil
L['elemental_storm_slagmire'] = nil
L['elemental_storm_tyrhold'] = nil

L['elemental_overflow_obtained_suffix'] = nil
L['empowered_mobs_killed_suffix'] = nil

L['elemental_storm_mythressa_note_start'] = nil
L['elemental_storm_mythressa_note_end'] = nil

L['options_icons_elemental_storm'] = nil
L['options_icons_elemental_storm_desc'] = nil

L['elusive_creature_note'] = nil
L['options_icons_elusive_creature'] = '{item:193906}'
L['options_icons_elusive_creature_desc'] = nil

L['grand_hunts_label'] = nil
L['longhunter_suffix'] = nil
L['the_best_at_what_i_do_suffix'] = nil

L['options_icons_grand_hunts'] = nil
L['options_icons_grand_hunts_desc'] = nil

L['reed_chest'] = '갈대 보관함'
L['options_icons_reed_chest'] = '갈대 보관함'
L['options_icons_reed_chest_desc'] = nil

L['dracthyr_supply_chest'] = '드랙티르 보급품 보관함'
L['options_icons_dracthyr_supply_chest'] = '드랙티르 보급품 보관함'
L['options_icons_dracthyr_supply_chest_desc'] = nil

L['simmering_chest'] = '일렁이는 보관함'
L['options_icons_simmering_chest'] = '일렁이는 보관함'
L['options_icons_simmering_chest_desc'] = nil

L['frostbound_chest'] = '서리결속 보관함'
L['options_icons_frostbound_chest'] = '서리결속 보관함'
L['options_icons_frostbound_chest_desc'] = nil

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['bisquis_note'] = '{location:이스카라} 의 공동체 잔치에서 전설의 수프를 요리한 후 {npc:197557} 처치'
L['blightfur_note'] = '{npc:193633}에게 말을 걸어 소환합니다.'
L['brackenhide_rare_note'] = '{npc:197344} > {npc:197353} > {npc:197354} > {npc:197356} 순서로 10분 단위로 젠됩니다.'
L['fisherman_tinnak_note'] = '{object:망가진 낚싯대}, {object:찢어진 낚시 그물}, {object:오래된 작살}을 모두 수집하면 생성됩니다.'
L['frostpaw_note'] = '{object:나무 망치}를 획득 후, 20초 내에 {object:나무 그루터기} 위의 {object:놀 때려잡기}를 모두 부수면 소환됩니다.'
L['sharpfang_note'] = nil
L['spellwrought_snowman_note'] = '{npc:193424} 10개를 모아 {npc:193242}으로 가져갑니다.'
L['trilvarus_loreweaver_note'] = '{object:노래하는 파편}을 클릭하여 {spell:382076} 효과를 얻어 {object:방전된 집중 장치}를 활성화하면 생성됩니다.'

L['breezebiter_note'] = nil

L['forgotten_jewel_box_note'] = '{item:199065}는 {object:원정대 정찰병의 짐} 또는 {object:흐트러진 흙}에서 얻을 수 있습니다.'
L['gnoll_fiend_flail_note'] = '{item:199066}는 {object:원정대 정찰병의 짐} 또는 {object:흐트러진 흙}에서 얻을 수 있습니다.'
L['pepper_hammer_note'] = '아래 있는 {object:나무 수액}을 수집한 후 {object:막대}를 사용하여 {npc:195373}를 불러냅니다.\n\n|cFFFF0000(버그: 막대를 클릭하려면 재시작이 필요할 수 있습니다)|r'
L['snow_covered_scroll'] = '눈으로 뒤덮힌 두루마리'

L['pm_engi_frizz_buzzcrank'] = '사원 옆에 서있음'
L['pm_jewel_pluutar'] = '건물 안에 있음'
L['pm_script_lydiara_whisperfeather'] = '의자에 앉아 있음'
L['pt_alch_experimental_decay_sample_note'] = '커다란 녹색 가마솥 안에 있음'
L['pt_alch_firewater_powder_sample_note'] = nil
L['pt_ench_enriched_earthen_shard_note'] = '바위 더미 위에 있음'
L['pt_ench_faintly_enchanted_remains_note'] = '{object:마나에 굶주린 수정 묶음}을 클릭하여 소환된 몹을 잡은 후 생성되는 잔재를 습득합니다.'
L['pt_ench_forgotten_arcane_tome_note'] = '무덤 입구 오른쪽 바닥에 있음'
L['pt_jewel_crystalline_overgrowth_note'] = '작은 연못 옆에 있음'
L['pt_jewel_harmonic_crystal_harmonizer_note'] = '상자를 클릭하여 버프를 얻은 다음 3개의 수정을 클릭합니다.'
L['pt_leath_decay_infused_tanning_oil_note'] = '통 안에 있음'
L['pt_leath_treated_hides_note'] = nil
L['pt_leath_well_danced_drum_note'] = nil
L['pt_script_dusty_darkmoon_card_note'] = '건물 내부 상층에 있음'
L['pt_script_frosted_parchment_note'] = '{npc:190776} 뒤에 있음'
L['pt_smith_spelltouched_tongs_note'] = '막힌 작은 동굴 안에 있음'
L['pt_tailor_decaying_brackenhide_blanket_note'] = '임시 천막 안의 나무에 걸려있음'
L['pt_tailor_intriguing_bolt_of_blue_cloth_note'] = '계단을 따라 왼쪽으로 갑니다.'

L['leyline_note'] = '지맥 수정을 재정렬하세요.'
L['options_icons_leyline'] = nil
L['options_icons_leyline_desc'] = '{achievement:16638} 업적에 필요한 모든 지맥 수정의 위치를 표시합니다.'

L['river_rapids_wrangler_note'] = nil
L['seeing_blue_note'] = '하늘빛 기록 보관소 상단에서 코발트 의회까지 착륙하지 않고 한번에 비행하세요.'
L['snowman_note'] = '주변에 {npc:197599} 3개가 놓여있습니다. (다른 플레이어가 이미 사용 중일수도 있음) 눈덩이 모두 굴려 {npc:197838}와 {npc:197839}에게 가져가 눈사람을 만듭니다.\n눈덩이를 각각 적당한 크기로 키우면 업적을 획득할 수 있습니다.'

L['snowclaw_cub_note_start'] = nil
L['snowclaw_cub_note_item1'] = nil
L['snowclaw_cub_note_item2'] = nil
L['snowclaw_cub_note_end'] = nil

L['tome_of_polymoph_duck'] = nil

L['temperamental_skyclaw_note_start'] = '다음을 수집하세요. (경매장에서 거래 가능):'
L['temperamental_skyclaw_note_end'] = '{npc:190892}에게 말을 걸어 안장을 얹은 슬라이번에 대해 물어보고 수집한 "간식"을 줍니다.'

L['elder_poa_note'] = '{item:200071}을 반납하여 {faction:2511} 평판을 획득합니다.'

L['artists_easel_note_step1'] = nil
L['artists_easel_note_step2'] = nil
L['artists_easel_note_step3'] = nil
L['artists_easel_note_step4'] = nil

L['somewhat_stabilized_arcana_note'] = nil

L['stranded_soul_note'] = nil

L['gethdazr_note'] = nil

L['tuskarr_chest'] = '투스카르 상자'
L['options_icons_tuskarr_chest'] = nil
L['options_icons_tuskarr_chest_desc'] = nil

L['community_feast_label'] = nil
L['options_icons_community_feast'] = nil
L['options_icons_community_feast_desc'] = nil

L['decay_covered_chest'] = '부패로 뒤덮인 보관함'
L['options_icons_decay_covered_chest'] = '부패로 뒤덮인 보관함'
L['options_icons_decay_covered_chest_desc'] = nil

L['icemaw_storage_cache'] = '얼음아귀 저장품 상자'
L['options_icons_icemaw_storage_cache'] = '얼음아귀 저장품 상자'
L['options_icons_icemaw_storage_cache_desc'] = nil

L['kazzi_note_start'] = nil
L['kazzi_note_item'] = nil
L['kazzi_achievement_suffix'] = nil

-------------------------------------------------------------------------------
------------------ FORBIDDEN REACH (DRACTHYR STARTING ZONE) -------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = '마력 깃든 바람 가방'
L['bag_of_enchanted_wind_note'] = '탑 위에 있음'
L['hessethiash_treasure'] = nil
L['lost_draconic_hourglass'] = nil
L['suspicious_bottle_treasure'] = '수상쩍은 병'
L['mysterious_wand'] = nil
L['mysterious_wand_note'] = nil

-------------------------------------------------------------------------------
------------------------- FORBIDDEN REACH (MAIN ZONE) -------------------------
-------------------------------------------------------------------------------

-- Locations
L['in_dragonskull_island'] = nil
L['in_froststone_vault'] = nil
L['in_the_high_creche'] = nil
L['in_the_lost_atheneum'] = nil
L['in_the_siege_creche'] = nil
L['in_the_support_creche'] = nil
L['in_the_war_creche'] = nil
L['in_zskera_vaults'] = nil

-- Rares
L['duzalgor_note'] = nil
L['mad_eye_carrey_note'] = nil
L['wymslayer_angvardi_note'] = nil
L['loot_specialist_note'] = nil

-- Profession Rares
L['profession_required'] = nil
L['pr_crafting_note'] = nil
L['pr_gathering_note'] = nil
L['pr_recipe_note'] = nil

L['pr_awakened_soil'] = nil
L['pr_book_of_arcane_entities'] = nil
L['pr_damaged_buzzspire'] = nil
L['pr_empty_crab_trap'] = nil
L['pr_farescale_shrine'] = nil
L['pr_raw_argali_pelts'] = nil
L['pr_resonating_crystal'] = nil
L['pr_rumbling_deposit'] = nil
L['pr_spellsworn_ward'] = nil
L['pr_spiceless_stew'] = nil
L['pr_tuskarr_kite_post'] = nil
L['pr_tuskarr_tanning_rack'] = nil
L['pr_volatile_brazier'] = nil

-- Treasures
L['storm_bound_chest_label'] = nil

-- Forbidden Hoard
L['hoarder_of_the_forbidden_reach_suffix'] = nil
L['forbidden_spoils_suffix'] = nil
L['forbidden_hoard_label'] = nil

L['options_icons_forbidden_hoard'] = nil
L['options_icons_forbidden_hoard_desc'] = nil

-- Froststone Primal Vault Storm
L['froststone_vault_storm_label'] = nil
L['gooey_snailemental_note'] = nil

L['options_icons_froststone_vault_storm'] = nil
L['options_icons_froststone_vault_storm_desc'] = nil

-- Small Treasures
L['small_treasures_label'] = nil
L['small_treasures_note'] = nil

L['options_icons_small_treasures'] = nil
L['options_icons_small_treasures_desc'] = nil

-- Zskera Vaults
L['zskera_vaults_label'] = nil
L['zskera_vaults_note'] = nil
L['door_buster_suffix'] = nil

L['recipe_rat_note_1'] = nil
L['recipe_rat_note_2'] = nil
L['recipe_rat_note_3'] = nil
L['recipe_rat_note_4'] = nil

L['mm_start_note'] = nil
L['mm_status_note'] = nil

L['options_icons_zskera_vaults'] = nil
L['options_icons_zskera_vaults_desc'] = nil

-- Librarian of the Reach
L['confiscated_journal_label'] = nil
L['farscale_manifesto_label'] = nil
L['lost_expeditions_notes_label'] = nil
L['pirate_proclamation_label'] = nil
L['spellsworn_missive_label'] = nil
L['vrykul_tome_label'] = nil

L['library_note'] = nil

L['options_icons_librarian_of_the_reach'] = nil
L['options_icons_librarian_of_the_reach_desc'] = nil

-- Scroll Hunter
L['scroll_hunter_suffix'] = nil
L['scroll_hunter_note'] = nil

L['options_icons_scroll_hunter'] = nil
L['options_icons_scroll_hunter_desc'] = nil

-- While We Were Sleeping
L['options_icons_scalecommander_item'] = nil
L['options_icons_scalecommander_item_desc'] = nil

-- Misc
L['spellsworn_gateway'] = nil
L['gemstone_of_return'] = nil

L['morqut_village_vendor_note'] = nil

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['eaglemaster_niraak_note'] = '주변의 {npc:186295} 또는 {npc:186299}를 잡다보면 소환됩니다.'
L['hunter_of_the_deep_note'] = nil
L['porta_the_overgrown_note'] = nil
L['scaleseeker_mezeri_note'] = nil
L['shade_of_grief_note'] = '{npc:193166}를 클릭하면 소환됩니다.'
L['windscale_the_stormborn_note'] = nil
L['windseeker_avash_note'] = '주변의 {npc:195742} 또는 {npc:187916}를 잡다보면 소환됩니다.'
L['zarizz_note'] = '{npc:193169} 네마리가 있는 상태에서 {emote:/야유} 하면 소환됩니다.'

L['aylaag_outpost_note'] = nil
L['eaglewatch_outpost_note'] = nil
L['river_camp_note'] = nil

L['defend_clan_aylaag'] = nil
L['defend_clan_aylaag_note'] = nil

L['gold_swong_coin_note'] = '동굴 안 {npc:191608} 오른편에 있음'
L['nokhud_warspear_note'] = '{item:194540}은 {object:원정대 정찰병의 짐} 또는 {object:흐트러진 흙}에서 얻을 수 있습니다.'
L['slightly_chewed_duck_egg_note'] = '{npc:192997}를 찾아 쓰다듬으면 {item:195453}를 얻게 되는데 이를 사용합니다. {item:199171}은 3일이 지나면 {item:199172}로 부화합니다.'
L['yennus_boat'] = '투스카르 장난감 배'
L['yennus_boat_note'] = '{object:투스카르 장난감 배}를 클릭하여 {item:200876}를 습득하면, 이를 {npc:195252}에게 돌려주는 {quest:72063} 퀘스트를 시작할 수 있게 됩니다.'

L['forgotten_dragon_treasure_label'] = nil
L['forgotten_dragon_treasure_step1'] = nil
L['forgotten_dragon_treasure_step2'] = nil
L['forgotten_dragon_treasure_step3'] = nil
L['forgotten_dragon_treasure_step4'] = nil
L['fdt_crystalline_flower'] = nil
L['fdt_ancient_stone'] = nil
L['fdt_emerald_chest'] = nil

L['pm_ench_shalasar_glimmerdusk'] = '부서진 탑의 2층에 있습니다.'
L['pm_herb_hua_greenpaw'] = nil
L['pm_leath_erden'] = '강가에 죽은 {npc:193092} 옆에 있습니다.'
L['pt_alch_canteen_of_suspicious_water_note'] = '동굴 깊은 곳 죽은 {npc:194887} 근처.'
L['pt_ench_stormbound_horn_note'] = '{location:바람노래 마루} 지역에 있음'
L['pt_jewel_fragmented_key_note'] = '부서진 건물 안 나무 뿌리 밑.'
L['pt_jewel_lofty_malygite_note'] = '동굴 내 공중에 떠 있습니다.'
L['pt_leath_wind_blessed_hide_note'] = '{location:시카르 고원} 켄타우로스 캠프 내부.'
L['pt_script_sign_language_reference_sheet_note'] = '천막 입구에 매달려 있음'
L['pt_smith_ancient_spear_shards_note'] = '{location:루사타르 요새} 서쪽 동굴 내부.'
L['pt_smith_falconer_gauntlet_drawings_note'] = '바다의 섬에 있는 오두막 안.'
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = '막사 안쪽 바닥에 깔려있음. ' .. ns.color.Orange('막사 내부 3마리 정예 조심')
L['pt_tailor_silky_surprise_note'] = '{object:개박하 줄기}를 찾아 전리품을 얻으세요.'

L['lizi_note'] = '{quest:65901}로 시작하는 수습생의 외출 스토리라인을 먼저 완료하세요. 리지를 회복시켜 탈것을 받으려면 매일 퀘스트를 완료해야 합니다.\n\n퀘스트 완료에 필요한 아이템에 추가로 퀘스트 당 {currency:2003} 150개, 총 750개의 {currency:2003}이 필요합니다.'
L['lizi_note_day1'] = '{location:용의 섬} 전역의 곤충형 몹으로부터 {item:192615} 20개를 수집하세요.'
L['lizi_note_day2'] = '{location:용의 섬}전역의 식물형 몹에게서 {item:192658} 20개를 수집하세요.'
L['lizi_note_day3'] = '{location:용의 섬}전역에서 낚시로 {item:194966} 10개를 수집하세요. {location:온아라 평야} 내륙에 가장 흔함.'
L['lizi_note_day4'] = '{location:온아라 평야} 전역의 매머드에게서 {item:192636} 20개를 수집하세요.'
L['lizi_note_day5'] = '{npc:190014}에게서 {quest:71195}를 수락하고 {location:온이르 샘} 남쪽 천막에 있는 {npc:190015}에게서 {item:200598} 1개를 얻으세요.'

L['ohnahra_note_start'] = nil
L['ohnahra_note_item1'] = nil
L['ohnahra_note_item2'] = nil
L['ohnahra_note_item3'] = nil
L['ohnahra_note_end'] = nil

L['bakar_note'] = '쓰다듬어주세요!'
L['bakar_ellam_note'] = nil
L['bakar_hugo_note'] = '아일라그 야영지와 같이 이동합니다.'
L['options_icons_bakar'] = nil
L['options_icons_bakar_desc'] = '{achievement:16424} 업적을 위한 모든 바카르의 위치를 표시합니다.'

L['ancestor_note'] = '{location:나무계단 전초 기지}에 있는 천막 내 {object:각성의 정수}를 사용해 {spell:369277} 버프 효과(1시간 지속)를 얻으면 볼 수 있는 선조에게 그가 요구하는 아이템을 바칩니다.'
L['options_icons_ancestor'] = nil
L['options_icons_ancestor_desc'] = '{achievement:16423} 업적을 위한 선조의 위치를 표시합니다.'

L['dreamguard_note'] = '꿈수호병을 대상으로 지정하고 {emote:/쿨쿨} 합니다.'
L['options_icons_dreamguard'] = nil
L['options_icons_dreamguard_desc'] = '{achievement:16574} 업적을 위한 꿈수호병 위치를 표시합니다.'

L['khadin_note'] = '{item:191784}을 교환하여 전문기술 지식을 습득합니다'
L['the_great_swog_note'] = '{item:199338}, {item:199339}, {item:199340}을 교환하여 {item:202102}를 얻습니다.'
L['hunt_instructor_basku_note'] = '{item:200093}을 반납하여 {faction:2503} 평판을 획득합니다.'
L['elder_yusa_note'] = nil
L['initiate_kittileg_note'] = nil

L['quackers_duck_trap_kit'] = nil
L['quackers_spawn'] = nil

L['knew_you_nokhud_do_it_note'] = nil
L['options_icons_nokhud_do_it'] = '{achievement:16583}'
L['options_icons_nokhud_do_it_desc'] = nil

L['chest_of_the_flood'] = nil

L['aylaag_camp_note'] = nil

L['clan_chest'] = '부족 보관함'
L['options_icons_clan_chest'] = nil
L['options_icons_clan_chest_desc'] = nil

L['lightning_bound_chest'] = '번개의 결속 상자'
L['options_icons_lightning_bound_chest'] = '번개의 결속 상자'
L['options_icons_lightning_bound_chest_desc'] = nil

L['bloodgullet_note'] = nil

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['ancient_protector_note'] = nil
L['blightpaw_note'] = nil
L['corrupted_proto_dragon_note'] = nil
L['lord_epochbrgl_note'] = nil
L['the_great_shellkhan_note'] = nil
L['weeping_vilomah_note'] = nil
L['woofang_note'] = nil

L['acorn_harvester_note'] = nil
L['cracked_hourglass_note'] = '{item:199068}은 {object:원정대 정찰병의 짐} 또는 {object:흐트러진 흙}에서 얻을 수 있습니다.'
L['sandy_wooden_duck_note'] = nil

L['tasty_hatchling_treat_note'] = '책장 뒤에 있는 통에서 얻을 수 있음'

L['pm_mining_bridgette_holdug'] = '풀이 우거진 바위 기둥 위에 있음'
L['pm_tailor_elysa_raywinder'] = '탑 위로 중간쯤 튀어나온 선반 위에 있음'
L['pt_alch_contraband_concoction_note'] = '덤불 속에 숨겨져있음. {note:찾기 힘듬}'
L['pt_alch_tasty_candy_note'] = nil
L['pt_ench_fractured_titanic_sphere_note'] = '{location:티르홀드} 남쪽에 있음'
L['pt_jewel_alexstraszite_cluster_note'] = '{location:티르홀드} 내에 있음'
L['pt_jewel_painters_pretty_jewel_note'] = '등불 안에 있음'
L['pt_leath_decayed_scales_note'] = '바구니 안에 있음'
L['pt_script_counterfeit_darkmoon_deck_note'] = nil
L['pt_script_forgetful_apprentices_tome_note'] = '큰 망원경 근처 탁자 위에 있음'
L['pt_script_how_to_train_your_whelpling_note'] = nil
L['pt_smith_draconic_flux_note'] = '건물 내에 있음'
L['pt_tailor_ancient_dragonweave_bolt_note'] = '모래밭에 놓여있는 작은 갈색 책'
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = '모래에 파묻혀 있음'

L['picante_pomfruit_cake_note'] = '{item:200904}이 제공될 때까지 {location:루비 연회장}을 매일 체크해야 합니다. 연회장에 방문하면 {achievement:16556} 업적을 위해 3가지 음식을 모두 맛보는 것을 잊지마세요.'
L['icecrown_bleu_note'] = '{location:장인 무역시장}에 있는 {npc:196729} {title:<치즈 상인>}이 판매합니다.'
L['dreamwarding_dripbrew_note'] = '{location:심야 연구소}에 있는 {npc:197872} {title:<카페인술사>}가 판매합니다.'
L['arcanostabilized_provisions_note'] = '{location:원시술사 평행세계}의 {location:시간의 합일점}에 있는 {npc:198831} {title:<주방장>}이 판매합니다.'
L['steamed_scarab_steak_note'] = '{location:평온의 꿈 온천}에 있는 {npc:197586} {title:<온천 바텐더>}가 판매합니다.'
L['craft_creche_crowler_note'] = '{location:루비 생명의 제단}, {location:초록비늘 여관}, {location:두멧골 야영지}, {location:시간의 합일점} 중 한 곳을 매일 무작위로 방문하는 {npc:187444} {title:<방랑 용음료 상인>}이 판매합니다.'
L['bivigosas_blood_sausages_note'] = '{location:겔리키르 초소}에 있는 {npc:188895} {title:<음식과 음료>}이 판매합니다.'
L['rumiastrasza_note'] = nil
L['options_icons_specialties'] = nil
L['options_icons_specialties_desc'] = '{achievement:16621} 업적을 위한 음식과 음료의 위치를 표시합니다.'

L['new_perspective_note'] = '절경에서 "셀카" 사진기로 사진을 촬영하세요. 올바른 위치에서 카메라 모드로 진입하면 보라색 빛기둥이 표시됩니다.\n\n업적 진행이 안될 경우 시야를 변경해보세요.'
L['options_icons_new_perspective'] = nil
L['options_icons_new_perspective_desc'] = '{achievement:16634} 업적을 위한 절경의 위치를 표시합니다.'

L['ruby_feast_gourmand'] = '매일 무작위로 선정된 요리사가 서로 다른 음식과 음료를 제공합니다.'

L['sorotis_note'] = '{item:199906}을 반납하여 {faction:2510} 평판을 획득합니다.'
L['lillian_brightmoon_note'] = '{item:201412}을 반납하여 {faction:2507} 평판을 획득합니다.'

L['chest_of_the_elements'] = nil

L['hoard_of_draconic_delicacies_note_start'] = nil
L['hoard_of_draconic_delicacies_note_end'] = nil

L['brendormi_note_start'] = nil
L['brendormi_note_item'] = nil
L['brendormi_note_currency'] = nil

L['titan_chest'] = '티탄 궤짝'
L['options_icons_titan_chest'] = '티탄 궤짝'
L['options_icons_titan_chest_desc'] = nil

-------------------------------------------------------------------------------
------------------------------ THE WAKING SHORE -------------------------------
-------------------------------------------------------------------------------

L['brundin_the_dragonbane_note'] = nil
L['captain_lancer_note'] = '{spell:388945} 이벤트가 완료된 직후 생성됩니다.'
L['enkine_note'] = nil
L['lepidoralia_note'] = '{location:요동치는 동굴} 내에 있음. {npc:193342}가 {npc:193274}를 잡는 것을 도와주다보면 생성됩니다.'
L['obsidian_citadel_rare_note'] = '모든 플레이어들은 {item:191264} %d개를 %s에게 반납해야 합니다. 열쇠를 제작하는데 {item:191251} 30개와 {item:193201} 3개가 필요하며, 해당 아이템은 {location:흑요석 성채} 내 몹들에게서 획득할 수 있습니다.'
L['shadeslash_note'] = nil
L['obsidian_throne_rare_note'] = '{location:흑요석 왕좌} 내부에 있음.'
L['slurpo_snail_note'] = '{location:하늘빛 평원}의 동굴(11, 41)에서 {item:201033}을 습득하여 이 동굴 내에서 사용하면 소환됩니다.'
L['worldcarver_atir_note'] = nil

L['bubble_drifter_note'] = '{item:199061}는 {object:원정대 정찰병의 짐} 또는 {object:흐트러진 흙}에서 얻을 수 있습니다.'
L['dead_mans_chestplate_note'] = '탑 내부 중간층에 있음'
L['fullsails_supply_chest_note'] = nil
L['golden_dragon_goblet_note'] = nil
L['lost_obsidian_cache'] = nil
L['lost_obsidian_cache_step1'] = nil
L['lost_obsidian_cache_step2'] = nil
L['lost_obsidian_cache_step3'] = nil
L['misty_treasure_chest_note'] = nil
L['onyx_gem_cluster_note'] = nil
L['torn_riding_pack_note'] = '폭포 꼭대기에 위치.'
L['yennus_kite_note'] = '나무 꼭대기의 나뭇가지에 걸려있음.'

L['fullsails_supply_chest'] = '풀세일 보급품 상자'
L['hidden_hornswog_hoard_note'] = [[
{npc:192362} 주변에 있는 {object:"관찰의 수수께끼: 현장 지침서"}에 적힌 세가지 아이템을 구하여 {item:200063}을 조합한 후 먹이로 줍니다. 간식을 먹고나면 옆으로 비켜줘서 전리품을 획득할 수 있게 됩니다.

{item:200064}{dot:Yellow}
{item:200065}{dot:Blue}
{item:200066}{dot:White}
]]

L['pm_alch_grigori_vialtry'] = '{location:섬광서리 강습지}가 내려다보이는 난간에 있음.'
L['pm_skin_zenzi'] = '강 옆에 앉아 있음'
L['pm_smith_grekka_anvilsmash'] = '폐허가 된 탑 옆 풀밭에 앉아 있음'
L['pt_alch_frostforged_potion_note'] = '얼음 분화구 한가운데 있음'
L['pt_alch_well_insulated_mug_note'] = '{location:용의 파멸 성채}에서 다수의 정예몹 사이에 있습니다.'
L['pt_ench_enchanted_debris_note'] = '{npc:194872}를 사용하여 따라가면 마지막에 잔해를 주울 수 있습니다.'
L['pt_ench_flashfrozen_scroll_note'] = '{location:섬광서리 거주지} 내부에 있음.'
L['pt_ench_lava_infused_seed_note'] = '{location:비늘파괴자 성채} 지역 꽃 안에 있음.'
L['pt_engi_boomthyr_rocket_note'] = nil
L['pt_engi_intact_coil_capacitor_note'] = nil
L['pt_jewel_closely_guarded_shiny_note'] = nil
L['pt_jewel_igneous_gem_note'] = nil
L['pt_leath_poachers_pack_note'] = '강바닥에 불페라 시체 옆에 있음'
L['pt_leath_spare_djaradin_tools_note'] = '붉은용 시체 옆에 있음'
L['pt_script_pulsing_earth_rune_note'] = '부서진 건물 내 탁자 뒤에 있음'
L['pt_smith_ancient_monument_note'] = nil
L['pt_smith_curious_ingots_note'] = '{location:비늘파괴자 성채} 내 바닥에 작은 주괴가 있음'
L['pt_smith_glimmer_of_blacksmithing_wisdom_note'] = nil
L['pt_smith_molten_ingot_note'] = '주괴 3개를 용암속으로 넣으면 소환됩니다. 몹을 잡은 후 생성되는 상자에서 전리품을 획득하세요.'
L['pt_smith_qalashi_weapon_diagram_note'] = '모루 위에 있음'
L['pt_tailor_itinerant_singed_fabric_note'] = '보스몹이 있는 동굴 입구 바로 앞 나무에 걸려있음. ' .. ns.color.Orange('용조련술로 정확하게 착지하거나 흑마법사 관문 필요')
L['pt_tailor_mysterious_banner_note'] = '건물 꼭대기에서 펄럭이고 있음'

L['quack_week_1'] = '1주차'
L['quack_week_2'] = '2주차'
L['quack_week_3'] = '3주차'
L['quack_week_4'] = '4주차'
L['quack_week_5'] = '5주차'
L['lets_get_quacking'] = '매주 {npc:187863} 한마리씩만 구출할 수 있습니다.'

L['complaint_to_scalepiercer_note'] = '막사 내부 왼쪽 벽에 있는 {object:돌 서판}을 클릭하세요.'
L['grand_flames_journal_note'] = '막사 바깥쪽 뒷편에 있는 {object:돌 서판}을 클릭하세요.'
L['wyrmeaters_recipe_note'] = '막사 내부 왼쪽에 있는 {object:돌 서판}을 클릭하세요.'

L['options_icons_ducklings'] = nil
L['options_icons_ducklings_desc'] = '{achievement:16409} 업적을 위한 새끼 오리의 위치를 표시합니다.'
L['options_icons_chiseled_record'] = nil
L['options_icons_chiseled_record_desc'] = '{achievement:16412} 업적을 위한 석판의 위치를 표시합니다.'

L['grand_theft_mammoth_note'] = '{npc:194625}를 타고 {npc:198163}에게 데려갑니다.\n\n|cFFFF0000(버그: {npc:194625}와 상호작용할 수 없을 경우, /reload 하세요.)|r'
L['options_icons_grand_theft_mammoth'] = nil
L['options_icons_grand_theft_mammoth_desc'] = '{achievement:16493} 업적을 위한 {npc:194625}의 위치를 표시합니다.'

L['options_icons_stories'] = nil
L['options_icons_stories_desc'] = '{achievement:16406} 업적을 위한 퀘스트 위치를 표시합니다.'
L['all_sides_of_the_story_garrick_and_shuja_note'] = '연계퀘스트를 시작하고 {npc:184449}과 {npc:184451}의 이야기를 들어보세요.'
L['all_sides_of_the_story_duroz_and_kolgar_note'] = '탑승장 아래 작은 방에 있음.\n\n연계퀘스트를 시작하고 {npc:194800}와 {npc:194801}의 이야기를 들어보세요. 2주 후에 추가 퀘스트가 해제됩니다.'
L['all_sides_of_the_story_tarjin_note'] = '{quest:70779}로 시작되는 연계퀘스트를 진행하세요.\n{npc:196214}이 매주 다른 이야기를 들려줄 것입니다.'
L['all_sides_of_the_story_veritistrasz_note'] = '{quest:70132} 퀘스트를 시작하고 {npc:194076}의 모든 이야기를 들어보세요.\n그 후에 {quest:70134}과 {quest:70268}의 잠금이 해제됩니다.\n\n마지막 퀘스트에는 {location:용의 파멸 성채} 지역에서 발견할 수 있는 {item:198661}이 필요합니다.'

L['slumbering_worldsnail_note1'] = nil

L['slumbering_worldsnail_note2'] = nil

L['magmashell_note'] = '{location:흑요석 성채} 주변의 {npc:193138}를 잡아 {item:201883}을 얻은 다음 {npc:199010}에게 사용합니다.\n\n{note:사용시 용암 내에서 20초동안 캐스팅이 필요하므로 힐러를 동반하거나 {item:200116} 같은 아이템을 사용하는 것을 추천합니다}.}'

L['otto_note_start1'] = nil
L['otto_note_start2'] = nil
L['otto_note_item1'] = nil
L['otto_note_item2'] = nil
L['otto_note_item3'] = nil
L['otto_note_end'] = nil

L['options_icons_safari'] = nil
L['options_icons_safari_desc'] = '{achievement:16519} 업적을 위한 전투애완동물의 위치를 표시합니다.'
L['shyfly_note'] = '{npc:189102}를 보려면 {quest:70853} 퀘스트 중이어야 합니다.'

L['cataloger_jakes_note'] = '{item:192055}을 반납하여 {faction:2507} 평판을 획득합니다.'

L['snack_attack_suffix'] = nil
L['snack_attack_note'] = nil
L['options_icons_snack_attack'] = '{achievement:16410}'
L['options_icons_snack_attack_desc'] = nil

L['loyal_magmammoth_step_1'] = nil
L['loyal_magmammoth_step_2'] = nil
L['loyal_magmammoth_step_3'] = nil
L['loyal_magmammoth_true_friend'] = nil
L['loyal_magmammoth_wrathion_quatermaster_note'] = nil
L['loyal_magmammoth_sabellian_quatermaster_note'] = nil
L['loyal_magmammoth_harness_note'] = nil
L['loyal_magmammoth_taming_note'] = nil

L['djaradin_cache'] = nil
L['options_icons_djaradin_cache'] = nil
L['options_icons_djaradin_cache_desc'] = nil

L['dragonbane_siege_label'] = nil
L['options_icons_dragonbane_siege'] = nil
L['options_icons_dragonbane_siege_desc'] = nil
