local ADDON_NAME, ns = ...
local L = ns.NewLocale('koKR')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['elite_loot_385'] = nil
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

L['magicbound_chest'] = nil
L['options_icons_magicbound_chest'] = nil
L['options_icons_magicbound_chest_desc'] = nil

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

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['brackenhide_rare_note'] = '{npc:197344} > {npc:197353} > {npc:197354} > {npc:197356} 순서로 10분 단위로 젠됩니다.'
L['fisherman_tinnak_note'] = 'Collect |cFFFFFD00망가진 낚싯대|r, |cFFFFFD00찢어진 낚시 그물|r, |cFFFFFD00오래된 작살|r을 모두 수집하면 생성됩니다.'
L['spellwrought_snowman_note'] = '{npc:193424} 10개를 모아 {npc:193242}로 가져갑니다.'
L['trilvarus_loreweaver_note'] = '|cFFFFFD00노래하는 파편|r을 클릭하여 {spell:382076} 효과를 얻어 |cFFFFFD00방전된 집중 장치|r를 활성화하면 생성됩니다.'

L['breezebiter_note'] = nil

L['forgotten_jewel_box_note'] = '{item:199065}는 원정대 정찰병의 짐과 흐트러진 흙에서 얻을 수 있습니다.'
L['gnoll_fiend_flail_note'] = '{item:199066}는 원정대 정찰병의 짐과 흐트러진 흙에서 얻을 수 있습니다.'
L['pepper_hammer_note'] = '아래 있는 |cFFFFFD00나무 수액|r을 수집한 후 |cFFFFFD00막대|r를 사용하여 {npc:195373}를 불러냅니다.\n\n|cFFFF0000(버그: 막대를 클릭하려면 재시작이 필요할 수 있습니다)|r'
L['snow_covered_scroll'] = '눈으로 뒤덮힌 두루마리'

L['pm_engi_frizz_buzzcrank'] = nil
L['pm_jewel_pluutar'] = '건물 안에 있음'
L['pm_script_lydiara_whisperfeather'] = nil
L['pt_alch_experimental_decay_sample_note'] = nil
L['pt_alch_firewater_powder_sample_note'] = nil
L['pt_ench_enriched_earthen_shard_note'] = nil
L['pt_ench_faintly_enchanted_remains_note'] = nil
L['pt_ench_forgotten_arcane_tome_note'] = nil
L['pt_jewel_crystalline_overgrowth_note'] = nil
L['pt_jewel_harmonic_crystal_harmonizer_note'] = nil
L['pt_leath_decay_infused_tanning_oil_note'] = nil
L['pt_leath_treated_hides_note'] = nil
L['pt_leath_well_danced_drum_note'] = nil
L['pt_script_dusty_darkmoon_card_note'] = nil
L['pt_script_frosted_parchment_note'] = nil
L['pt_smith_spelltouched_tongs_note'] = nil
L['pt_tailor_decaying_brackenhide_blanket_note'] = nil
L['pt_tailor_intriguing_bolt_of_blue_cloth_note'] = nil

L['leyline_note'] = nil
L['options_icons_leyline'] = nil
L['options_icons_leyline_desc'] = nil

L['river_rapids_wrangler_note'] = nil
L['seeing_blue_note'] = nil
L['snowman_note'] = nil

L['snowclaw_cub_note_start'] = nil
L['snowclaw_cub_note_item1'] = nil
L['snowclaw_cub_note_item2'] = nil
L['snowclaw_cub_note_end'] = nil

L['tome_of_polymoph_duck'] = nil

L['temperamental_skyclaw_note'] = nil

L['elder_poa_note'] = nil

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN REACH -------------------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = nil
L['bag_of_enchanted_wind_note'] = nil
L['hessethiash_treasure'] = nil
L['lost_draconic_hourglass'] = nil
L['suspicious_bottle_treasure'] = nil
L['mysterious_wand'] = nil
L['mysterious_wand_note'] = nil

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['hunter_of_the_deep_note'] = nil
L['scaleseeker_mezeri_note'] = nil
L['shade_of_grief_note'] = nil
L['windscale_the_stormborn_note'] = nil
L['zarizz_note'] = nil

L['gold_swong_coin_note'] = nil
L['nokhud_warspear_note'] = nil
L['slightly_chewed_duck_egg_note'] = nil
L['yennus_boat'] = nil
L['yennus_boat_note'] = nil

L['pm_ench_shalasar_glimmerdusk'] = nil
L['pm_herb_hua_greenpaw'] = nil
L['pm_leath_erden'] = nil
L['pt_alch_canteen_of_suspicious_water_note'] = nil
L['pt_ench_stormbound_horn_note'] = nil
L['pt_jewel_fragmented_key_note'] = nil
L['pt_jewel_lofty_malygite_note'] = nil
L['pt_leath_wind_blessed_hide_note'] = nil
L['pt_script_sign_language_reference_sheet_note'] = nil
L['pt_smith_ancient_spear_shards_note'] = nil
L['pt_smith_falconer_gauntlet_drawings_note'] = nil
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = nil
L['pt_tailor_silky_surprise_note'] = nil

L['lizi_note'] = nil
L['lizi_note_day1'] = nil
L['lizi_note_day2'] = nil
L['lizi_note_day3'] = nil
L['lizi_note_day4'] = nil
L['lizi_note_day5'] = nil

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
L['hunt_instructor_basku_note'] = nil

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['ancient_protector_note'] = nil
L['blightpaw_note'] = nil
L['corrupted_proto_dragon_note'] = nil
L['weeping_vilomah_note'] = nil
L['woofang_note'] = nil

L['acorn_harvester_note'] = nil
L['cracked_hourglass_note'] = nil
L['sandy_wooden_duck_note'] = nil

L['tasty_hatchling_treat_note'] = nil

L['pm_mining_bridgette_holdug'] = nil
L['pm_tailor_elysa_raywinder'] = nil
L['pt_alch_contraband_concoction_note'] = nil
L['pt_alch_furry_gloop_note'] = nil
L['pt_ench_fractured_titanic_sphere_note'] = nil
L['pt_jewel_alexstraszite_cluster_note'] = nil
L['pt_jewel_painters_pretty_jewel_note'] = nil
L['pt_leath_decayed_scales_note'] = nil
L['pt_script_counterfeit_darkmoon_deck_note'] = nil
L['pt_script_forgetful_apprentices_tome_note'] = nil
L['pt_script_how_to_train_your_whelpling_note'] = nil
L['pt_smith_draconic_flux_note'] = nil
L['pt_tailor_ancient_dragonweave_bolt_note'] = nil
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = nil

L['picante_pomfruit_cake_note'] = nil
L['icecrown_bleu_note'] = nil
L['dreamwarding_dripbrew_note'] = nil
L['arcanostabilized_provisions_note'] = nil
L['steamed_scarab_steak_note'] = nil
L['craft_creche_crowler_note'] = nil
L['bivigosas_blood_sausages_note'] = nil
L['options_icons_specialties'] = nil
L['options_icons_specialties_desc'] = nil

L['new_perspective_note'] = nil
L['options_icons_new_perspective'] = nil
L['options_icons_new_perspective_desc'] = nil

L['ruby_feast_gourmand'] = nil

L['sorotis_note'] = nil

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
L['dead_mans_chestplate_note'] = nil
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
L['pt_ench_enchanted_debris_note'] = nil
L['pt_ench_flashfrozen_scroll_note'] = nil
L['pt_ench_lava_infused_seed_note'] = nil
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
L['pt_tailor_itinerant_singed_fabric_note'] = nil
L['pt_tailor_mysterious_banner_note'] = nil

L['quack_week_1'] = nil
L['quack_week_2'] = nil
L['quack_week_3'] = nil
L['quack_week_4'] = nil
L['quack_week_5'] = nil
L['lets_get_quacking'] = nil

L['complaint_to_scalepiercer_note'] = nil
L['grand_flames_journal_note'] = nil
L['wyrmeaters_recipe_note'] = nil

L['options_icons_ducklings'] = nil
L['options_icons_ducklings_desc'] = nil
L['options_icons_chiseled_record'] = nil
L['options_icons_chiseled_record_desc'] = nil

L['grand_theft_mammoth_note'] = nil
L['options_icons_grand_theft_mammoth'] = nil
L['options_icons_grand_theft_mammoth_desc'] = nil

L['options_icons_stories'] = nil
L['options_icons_stories_desc'] = nil
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
L['options_icons_safari_desc'] = nil
L['shyfly_note'] = nil

L['cataloger_jakes_note'] = nil
