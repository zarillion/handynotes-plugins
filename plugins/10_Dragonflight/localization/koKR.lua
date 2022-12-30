local ADDON_NAME, ns = ...
local L = ns.NewLocale('koKR')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['elite_loot_385'] = '다른 희귀몹보다 더 높은 레벨의 장비를 드랍합니다.'
L['gem_cluster_note'] = '필요한 아이템은 용비늘 원전대 영예 21이 되면 원정대 정찰병의 짐과 흐트러진 흙에서 얻을 수 있습니다.'

L['options_icons_bonus_boss'] = nil
L['options_icons_bonus_boss_desc'] = nil

L['options_icons_profession_treasures'] = '전문기술 보물'
L['options_icons_profession_treasures_desc'] = '전문기술 관련 지식을 습득할 수 있는 보물 위치를 표시합니다.'

L['dragon_glyph'] = '용 문양'
L['options_icons_dragon_glyph'] = '용 문양'
L['options_icons_dragon_glyph_desc'] = '48개의 전체 용 문양 위치를 표시합니다.'

L['dragonscale_expedition_flag'] = '용비늘 원정대 깃발'
L['flags_placed'] = '깃발 꽂기 완료'
L['options_icons_flag'] = '{achievement:15890}'
L['options_icons_flag_desc'] = '{achievement:15890} 업적을 위한 전체 20개의 깃발 꽂기 위치를 표시합니다.'

L['broken_banding_note'] = '석상의 오른발 발목 안쪽에 있음'
L['chunk_of_sculpture_note'] = '용 조각상 정면 기준 오른쪽 뒤 땅바닥에 있음'
L['dislodged_dragoneye_note'] = '용 조각상 몸통 아래 잔해 위에 있음'
L['finely_carved_wing_note'] = '용 조각상 오른 무릎 아래 있음'
L['fragment_requirement_note'] = ns.color.Red('파편수집이 가능하려면 먼저 |cFFFFFD00날개쉼터 대사관|r 내 용 조각상에서 작업중인 {npc:193914}와 대화해야 합니다.')
L['golden_claw_note'] = '용 조각상 정면 기준 오른쪽 뒷발 발톱 아래 있음'
L['precious_stone_fragment_note'] = '용 조각상 오른발 아래 있음'
L['stone_dragontooth_note'] = '용 조각상 정면 기준 받침대 아래 왼쪽 땅바닥에 있음'
L['tail_fragment_note'] = '용 조각상 꼬리 안쪽에 있음'
L['wrapped_gold_band_note'] = '용 조각상 정면 기준 왼쪽 뒷발에 있음'
L['options_icons_fragment'] = '{achievement:16323}'
L['options_icons_fragment_desc'] = '{achievement:16323} 업적을 위한 조각상 파편 위치를 표시합니다.'

L['options_icons_kite'] = '{achievement:16584}'
L['options_icons_kite_desc'] = '{achievement:16584} 업적을 위한 {npc:198118} 위치를 표시합니다.'

L['disturbed_dirt'] = '흐트러진 흙'
L['options_icons_disturbed_dirt'] = '흐트러진 흙'
L['options_icons_disturbed_dirt_desc'] = '흐트러진 흙의 위치를 표시합니다.'

L['scout_pack'] = '원정대 정찰병의 짐'
L['options_icons_scout_pack'] = '원정대 정찰병의 짐'
L['options_icons_scout_pack_desc'] = '원정대 정찰병의 짐 위치를 표시합니다.'

L['magicbound_chest'] = '마법결속 보관함'
L['options_icons_magicbound_chest'] = '마법결속 보관함'
L['options_icons_magicbound_chest_desc'] = '마법결속 보관함의 위치를 표시합니다.'

L['dr_best'] = '개인 최고 기록:\n - 일반: %.3f초\n - 고급: %.3f초'
L['dr_best_dash'] = '개인 최고 기록:\n - %.3f초'
L['dr_note'] = '목표 시간:\n - 일반: %s초 / %s초\n - 고급: %s초 / %s초'
L['dr_note_dash'] = '목표 시간:\n - %s초 / %s초'
L['dr_bronze'] = '\n\n경주를 완주하고 ' .. ns.color.Bronze('동메달') .. '을 획득하세요.'
L['options_icons_dragonrace'] = '용 조련술 경주'
L['options_icons_dragonrace_desc'] = '용 조련술 경주 위치를 표시합니다.'

L['squirrels_note'] = '전투 애완동물이 아닌 동물에게 /love 를 해야 합니다'
L['options_icons_squirrels'] = '{achievement:16729}'
L['options_icons_squirrels_desc'] = '{achievement:16729} 업적을 위한 동물 위치를 표시합니다.'

L['hnj_sublabel'] = '해당 지역에서 시카르 사냥의 제전 진행 필요'
L['hnj_western_azure_span_hunt'] = '죽은 나무 꼭대기에 있음'
L['hnj_northern_thaldraszus_hunt'] = nil
L['options_icons_hemet_nesingwary_jr'] = '{achievement:16542}'
L['options_icons_hemet_nesingwary_jr_desc'] = '{achievement:16542} 업적을 위한 {npc:194590}의 위치를 표시합니다.'

L['pretty_neat_note'] = '"셀카" 사진기로 사진 찍기'
L['pretty_neat_note_blazewing'] = '' .. ns.color.Yellow('넬타루스') .. ' 던전 내 {npc:189901} 공략 시에 찾을 수 있습니다.'
L['options_icons_pretty_neat'] = '{achievement:16446}'
L['options_icons_pretty_neat_desc'] = '{achievement:16446} 업적을 위한 NPC 위치를 표시합니다.'

L['large_lunker_sighting'] = '큰 생선 목격 장소'
L['large_lunker_sighting_note'] = '{item:194701} 5개를 던져 {npc:192919} 또는 희귀몹을 소환합니다.'

L['options_icons_legendary_album'] = '{achievement:16570}'
L['options_icons_legendary_album_desc'] = '{achievement:16570} 업적을 위한 전설적인 캐릭터의 위치를 표시합니다.'

L['signal_transmitter_label'] = nil
L['signal_transmitter_note'] = nil
L['options_icons_signal_transmitter'] = nil
L['options_icons_signal_transmitter_desc'] = nil

L['spawns_hourly'] = nil
L['spawns_at_night'] = nil

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['blightfur_note'] = nil
L['brackenhide_rare_note'] = '{npc:197344} > {npc:197353} > {npc:197354} > {npc:197356} 순서로 10분 단위로 젠됩니다.'
L['fisherman_tinnak_note'] = '|cFFFFFD00망가진 낚싯대|r, |cFFFFFD00찢어진 낚시 그물|r, |cFFFFFD00오래된 작살|r을 모두 수집하면 생성됩니다.'
L['frostpaw_note'] = nil
L['sharpfang_note'] = nil
L['spellwrought_snowman_note'] = '{npc:193424} 10개를 모아 {npc:193242}로 가져갑니다.'
L['trilvarus_loreweaver_note'] = '|cFFFFFD00노래하는 파편|r을 클릭하여 {spell:382076} 효과를 얻어 |cFFFFFD00방전된 집중 장치|r를 활성화하면 생성됩니다.'

L['breezebiter_note'] = nil

L['forgotten_jewel_box_note'] = '{item:199065}는 원정대 정찰병의 짐과 흐트러진 흙에서 얻을 수 있습니다.'
L['gnoll_fiend_flail_note'] = '{item:199066}는 원정대 정찰병의 짐과 흐트러진 흙에서 얻을 수 있습니다.'
L['pepper_hammer_note'] = '아래 있는 |cFFFFFD00나무 수액|r을 수집한 후 |cFFFFFD00막대|r를 사용하여 {npc:195373}를 불러냅니다.\n\n|cFFFF0000(버그: 막대를 클릭하려면 재시작이 필요할 수 있습니다)|r'
L['snow_covered_scroll'] = '눈으로 뒤덮힌 두루마리'

L['pm_engi_frizz_buzzcrank'] = '사원 옆에 서있음'
L['pm_jewel_pluutar'] = '건물 안에 있음'
L['pm_script_lydiara_whisperfeather'] = '의자에 앉아 있음'
L['pt_alch_experimental_decay_sample_note'] = '커다란 녹색 가마솥 안에 있음'
L['pt_alch_firewater_powder_sample_note'] = nil
L['pt_ench_enriched_earthen_shard_note'] = '바위 더미 위에 있음'
L['pt_ench_faintly_enchanted_remains_note'] = '|cFFFFFD00마나에 굶주린 수정 묶음|r을 클릭하여 소환된 몹을 잡은 후 생성되는 잔재를 습득합니다.'
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

L['temperamental_skyclaw_note'] = [[
다음을 수집하세요. (경매장에서 거래 가능):

{item:201420} 20개
{item:201421} 20개
{item:201422} 20개

{npc:190892}에게 말을 걸어 안장을 얹은 슬라이번에 대해 물어보고 수집한 "간식"을 줍니다.
]]

L['elder_poa_note'] = '{item:200071}을 반납하여 |cFFFFFD00이스카라 투스카르|r 평판을 획득합니다.'

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN REACH -------------------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = '마력 깃든 바람 가방'
L['bag_of_enchanted_wind_note'] = nil
L['hessethiash_treasure'] = nil
L['lost_draconic_hourglass'] = nil
L['suspicious_bottle_treasure'] = nil
L['mysterious_wand'] = nil
L['mysterious_wand_note'] = nil

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['eaglemaster_niraak_note'] = nil
L['hunter_of_the_deep_note'] = nil
L['porta_the_overgrown_note'] = nil
L['scaleseeker_mezeri_note'] = nil
L['shade_of_grief_note'] = nil
L['windscale_the_stormborn_note'] = nil
L['zarizz_note'] = nil

L['gold_swong_coin_note'] = nil
L['nokhud_warspear_note'] = nil
L['slightly_chewed_duck_egg_note'] = nil
L['yennus_boat'] = nil
L['yennus_boat_note'] = nil

L['pm_ench_shalasar_glimmerdusk'] = '부서진 탑의 2층에 있습니다.'
L['pm_herb_hua_greenpaw'] = nil
L['pm_leath_erden'] = '강가에 죽은 {npc:193092} 옆에 있습니다.'
L['pt_alch_canteen_of_suspicious_water_note'] = '동굴 깊은 곳 죽은 {npc:194887} 근처.'
L['pt_ench_stormbound_horn_note'] = '|cFFFFFD00바람노래 마루|r 내'
L['pt_jewel_fragmented_key_note'] = '부서진 건물 안 나무 뿌리 밑.'
L['pt_jewel_lofty_malygite_note'] = '동굴 내 공중에 떠 있습니다.'
L['pt_leath_wind_blessed_hide_note'] = '|cFFFFFD00시카르 고원|r 켄타우로스 캠프 내부.'
L['pt_script_sign_language_reference_sheet_note'] = '천막 입구에 매달려 있음'
L['pt_smith_ancient_spear_shards_note'] = '|cFFFFFD00루사타르 요새|r 서쪽 동굴 내부.'
L['pt_smith_falconer_gauntlet_drawings_note'] = '바다의 섬에 있는 오두막 안.'
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = '막사 안쪽 바닥에 깔려있음. ' .. ns.color.Orange('막사 내부 3마리 정예 조심')
L['pt_tailor_silky_surprise_note'] = '|cFFFFFD00개박하 줄기|r를 찾아 전리품을 얻으세요.'

L['lizi_note'] = '{quest:65901}로 시작하는 수습생의 외출 스토리라인을 먼저 완료하세요. 리지를 회복시켜 탈것을 받으려면 매일 퀘스트를 완료해야 합니다.\n\n퀘스트 완료에 필요한 아이템에 추가로 퀘스트 당 {currency:2003} 150개, 총 750개의 {currency:2003}이 필요합니다.'
L['lizi_note_day1'] = '|cFFFFFD00용의 섬|r 전역의 곤충형 몹으로부터 {item:192615} 20개를 수집하세요.'
L['lizi_note_day2'] = '|cFFFFFD00용의 섬|r전역의 식물형 몹에게서 20x {item:192658}을 수집하세요.'
L['lizi_note_day3'] = '|cFFFFFD00용의 섬|r전역에서 낚시로 {item:194966} 10개를 수집하세요. |cFFFFFD00온아라 평야|r 내륙에 가장 흔함.'
L['lizi_note_day4'] = '|cFFFFFD00온아라 평야|r 전역의 매머드에게서 {item:192636} 20개를 수집하세요.'
L['lizi_note_day5'] = '{npc:190014}에게서 {quest:71195}를 수락하고 |cFFFFFD00온이르 샘|r 남쪽 천막에 있는 {npc:190015}에게서 {item:200598} 1개를 얻으세요.'

L['ohnahra_note_start'] = nil
L['ohnahra_note_item1'] = nil
L['ohnahra_note_item2'] = nil
L['ohnahra_note_item3'] = nil
L['ohnahra_note_end'] = nil

L['bakar_note'] = nil
L['bakar_ellam_note'] = nil
L['bakar_hugo_note'] = nil
L['options_icons_bakar'] = nil
L['options_icons_bakar_desc'] = nil

L['ancestor_note'] = nil
L['options_icons_ancestor'] = nil
L['options_icons_ancestor_desc'] = nil

L['dreamguard_note'] = nil
L['options_icons_dreamguard'] = nil
L['options_icons_dreamguard_desc'] = nil

L['khadin_note'] = nil
L['the_great_swog_note'] = nil
L['hunt_instructor_basku_note'] = '{item:200093}을 반납하여 |cFFFFFD00마루크 켄타우로스|r 평판을 획득합니다.'
L['elder_yusa_note'] = nil
L['initiate_kittileg_note'] = nil

L['quackers_duck_trap_kit'] = nil
L['quackers_spawn'] = nil

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['ancient_protector_note'] = nil
L['blightpaw_note'] = nil
L['corrupted_proto_dragon_note'] = nil
L['lord_epochbrgl_note'] = nil
L['weeping_vilomah_note'] = nil
L['woofang_note'] = nil

L['acorn_harvester_note'] = nil
L['cracked_hourglass_note'] = nil
L['sandy_wooden_duck_note'] = nil

L['tasty_hatchling_treat_note'] = '책장 뒤에 있는 통에서 얻을 수 있음'

L['pm_mining_bridgette_holdug'] = nil
L['pm_tailor_elysa_raywinder'] = '탑 위로 중간쯤 튀어나온 선반 위에 있음'
L['pt_alch_contraband_concoction_note'] = nil
L['pt_alch_furry_gloop_note'] = nil
L['pt_ench_fractured_titanic_sphere_note'] = '|cFFFFFD00티르홀드|r 남쪽에 있음'
L['pt_jewel_alexstraszite_cluster_note'] = '|cFFFFFD00Tyrhold|r 내에 있음'
L['pt_jewel_painters_pretty_jewel_note'] = nil
L['pt_leath_decayed_scales_note'] = '바구니 안에 있음'
L['pt_script_counterfeit_darkmoon_deck_note'] = nil
L['pt_script_forgetful_apprentices_tome_note'] = nil
L['pt_script_how_to_train_your_whelpling_note'] = nil
L['pt_smith_draconic_flux_note'] = nil
L['pt_tailor_ancient_dragonweave_bolt_note'] = nil
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = '모래에 파묻혀 있음'

L['picante_pomfruit_cake_note'] = '{item:200904}이 제공될 때까지 |cFF00CCFF루비 연회장|r을 매일 체크해야 합니다. 연회장에 방문하면 {achievement:16556} 업적을 위해 3가지 음식을 모두 맛보는 것을 잊지마세요.'
L['icecrown_bleu_note'] = '|cFF00CCFF장인 무역시장|r에 있는 {npc:196729} ' .. ns.color.NPC('<치즈 상인>') .. '이 판매합니다.'
L['dreamwarding_dripbrew_note'] = '|cFFFFFD00The Late Night Lab|r에 있는 {npc:197872} ' .. ns.color.NPC('<Caffeinomancer>') .. '이 판매합니다.'
L['arcanostabilized_provisions_note'] = '|cFF00CCFFTemporal Conflux|r in the |cFF00CCFFPrimalist Future|r에 있는 {npc:198831} ' .. ns.color.NPC('<Head Chef>') .. '이 판매합니다.'
L['steamed_scarab_steak_note'] = '|cFFFFFD00Serene Dreams Spa|r에 있는 {npc:197586} ' .. ns.color.NPC('<Spa Bartender>') .. '이 판매합니다.'
L['craft_creche_crowler_note'] = '|cFFFFFD00Ruby Lifeshrine|r, |cFFFFFD00초록비늘 여관|r, |cFFFFFD00두멧골 야영지|r, |cFFFFFD00Temporal Conflux|r 중 한 곳을 매일 무작위로 방문하는 {npc:187444} ' .. ns.color.NPC('<Traveling Dragonbrew Vendor>') .. '이 판매합니다.'
L['bivigosas_blood_sausages_note'] = '|cFFFFFD00겔리키르 초소|r에 있는 {npc:188895} ' .. ns.color.NPC('<음식과 음료>') .. '이 판매합니다.'
L['options_icons_specialties'] = nil
L['options_icons_specialties_desc'] = '{achievement:16621} 업적을 위한 음식과 음료의 위치를 표시합니다.'

L['new_perspective_note'] = '절경에서 "셀카" 사진기로 사진을 촬영하세요. 올바른 위치에서 카메라 모드로 진입하면 보라색 빛기둥이 표시됩니다.\n\n업적 진행이 안될 경우 시야를 변경해보세요.'
L['options_icons_new_perspective'] = nil
L['options_icons_new_perspective_desc'] = '{achievement:16634} 업적을 위한 절경의 위치를 표시합니다.'

L['ruby_feast_gourmand'] = '매일 무작위로 선정된 요리사가 서로 다른 음식과 음료를 제공합니다.'

L['sorotis_note'] = '{item:199906}을 반납하여 |cFFFFFD00발드라켄 협의회|r 평판을 획득합니다.'
L['lillian_brightmoon_note'] = nil

-------------------------------------------------------------------------------
------------------------------ THE WAKING SHORE -------------------------------
-------------------------------------------------------------------------------

L['brundin_the_dragonbane_note'] = nil
L['captain_lancer_note'] = nil
L['enkine_note'] = nil
L['lepidoralia_note'] = nil
L['obsidian_citadel_rare_note'] = nil
L['shadeslash_note'] = nil
L['obsidian_throne_rare_note'] = nil
L['skald_impaler_note'] = nil
L['slurpo_snail_note'] = nil
L['worldcarver_atir_note'] = nil

L['bubble_drifter_note'] = nil
L['dead_mans_chestplate_note'] = '탑 내부 중간층에 있음'
L['fullsails_supply_chest_note'] = nil
L['golden_dragon_goblet_note'] = nil
L['misty_treasure_chest_note'] = nil
L['onyx_gem_cluster_note'] = nil
L['torn_riding_pack_note'] = nil
L['yennus_kite_note'] = nil

L['fullsails_supply_chest'] = nil
L['hidden_hornswog_hoard_note'] = nil

L['pm_alch_grigori_vialtry'] = nil
L['pm_skin_zenzi'] = nil
L['pm_smith_grekka_anvilsmash'] = nil
L['pt_alch_frostforged_potion_note'] = nil
L['pt_alch_well_insulated_mug_note'] = nil
L['pt_ench_enchanted_debris_note'] = '{npc:194872}를 사용하여 따라가면 마지막에 잔해를 주울 수 있습니다.'
L['pt_ench_flashfrozen_scroll_note'] = '|cFFFFFD00섬광서리 거주지|r 내부에 있음.'
L['pt_ench_lava_infused_seed_note'] = '|cFFFFFD00비늘파괴자 성채|r 지역 꽃 안에 있음.'
L['pt_engi_boomthyr_rocket_note'] = nil
L['pt_engi_intact_coil_capacitor_note'] = nil
L['pt_jewel_closely_guarded_shiny_note'] = nil
L['pt_jewel_igneous_gem_note'] = nil
L['pt_leath_poachers_pack_note'] = nil
L['pt_leath_spare_djaradin_tools_note'] = nil
L['pt_script_pulsing_earth_rune_note'] = nil
L['pt_smith_ancient_monument_note'] = nil
L['pt_smith_curious_ingots_note'] = nil
L['pt_smith_glimmer_of_blacksmithing_wisdom_note'] = nil
L['pt_smith_molten_ingot_note'] = nil
L['pt_smith_qalashi_weapon_diagram_note'] = nil
L['pt_tailor_itinerant_singed_fabric_note'] = '보스몹이 있는 동굴 입구 바로 앞 나무에 걸려있음. ' .. ns.color.Orange('용조련술로 정확하게 착지하거나 흑마법사 관문 필요')
L['pt_tailor_mysterious_banner_note'] = '건물 꼭대기에서 펄럭이고 있음'

L['quack_week_1'] = '1주차'
L['quack_week_2'] = '2주차'
L['quack_week_3'] = '3주차'
L['quack_week_4'] = '4주차'
L['quack_week_5'] = '5주차'
L['lets_get_quacking'] = '매주 {npc:187863} 한마리씩만 구출할 수 있습니다.'

L['complaint_to_scalepiercer_note'] = nil
L['grand_flames_journal_note'] = nil
L['wyrmeaters_recipe_note'] = nil

L['options_icons_ducklings'] = nil
L['options_icons_ducklings_desc'] = '{achievement:16409} 업적을 위한 새끼 오리의 위치를 표시합니다.'
L['options_icons_chiseled_record'] = nil
L['options_icons_chiseled_record_desc'] = '{achievement:16412} 업적을 위한 석판의 위치를 표시합니다.'

L['grand_theft_mammoth_note'] = '{npc:194625}를 타고 {npc:198163}에게 데려갑니다.\n\n|cFFFF0000(버그: {npc:194625}와 상호작용할 수 없을 경우, /reload 하세요.)|r'
L['options_icons_grand_theft_mammoth'] = nil
L['options_icons_grand_theft_mammoth_desc'] = '{achievement:16493} 업적을 위한 {npc:194625}의 위치를 표시합니다.'

L['options_icons_stories'] = nil
L['options_icons_stories_desc'] = '{achievement:16406} 업적을 위한 퀘스트 위치를 표시합니다.'
L['all_sides_of_the_story_garrick_and_shuja_note'] = nil
L['all_sides_of_the_story_duroz_and_kolgar_note'] = nil
L['all_sides_of_the_story_tarjin_note'] = nil
L['all_sides_of_the_story_veritistrasz_note'] = nil

L['slumbering_worldsnail_note1'] = nil

L['slumbering_worldsnail_note2'] = nil

L['magmashell_note'] = nil

L['otto_note_start1'] = nil
L['otto_note_start2'] = nil
L['otto_note_start3'] = nil
L['otto_note_item1'] = nil
L['otto_note_item2'] = nil
L['otto_note_item3'] = nil
L['otto_note_end'] = nil

L['options_icons_safari'] = nil
L['options_icons_safari_desc'] = '{achievement:16519} 업적을 위한 전투애완동물의 위치를 표시합니다.'
L['shyfly_note'] = nil

L['cataloger_jakes_note'] = '{item:192055}을 반납하여 |cFFFFFD00용비늘 원정대|r 평판을 획득합니다.'
