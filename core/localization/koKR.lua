local ADDON_NAME, ns = ...
local L = ns.NewLocale('koKR')
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ GEAR -------------------------------------
-------------------------------------------------------------------------------

L['bag'] = '가방'
L['cloth'] = '천'
L['leather'] = '가죽'
L['mail'] = '사슬'
L['plate'] = '판금'
L['cosmetic'] = '장식'

L['1h_mace'] = '한손 둔기'
L['1h_sword'] = '한손 도검'
L['1h_axe'] = '한손 도끼'
L['2h_mace'] = '양손 둔기'
L['2h_axe'] = '양손 도끼'
L['2h_sword'] = '양손 도검'
L['shield'] = '방패'
L['dagger'] = '단검'
L['staff'] = '지팡이'
L['fist'] = '장착 무기'
L['polearm'] = '장창'
L['bow'] = '활'
L['gun'] = '총'
L['wand'] = '마법봉'
L['crossbow'] = '석궁'
L['offhand'] = '보조장비'
L['warglaive'] = '전투검'

L['ring'] = '반지'
L['neck'] = '목걸이'
L['cloak'] = '망토'
L['trinket'] = '장신구'

-------------------------------------------------------------------------------
---------------------------------- TOOLTIPS -----------------------------------
-------------------------------------------------------------------------------

L['activation_unknown'] = 'Activation unknown!'
L['requirement_not_found'] = 'Requirement location unknown!'
L['multiple_spawns'] = 'can appear in multiple locations.'

L['Requires'] = '요구사항'
L['ranked_research'] = '%s (연구단계 %d/%d)'

L['focus'] = '고정'
L['retrieving'] = '아이템 링크 가져오는 중...'
L['in_cave'] = '동굴 안에 있음.'
L['in_small_cave'] = '작은 동굴 안에 있음.'
L['in_water_cave'] = '수중 동굴 안에 있음.'
L['in_waterfall_cave'] = '폭포 뒤 동굴 안에 있음.'
L['in_water'] = '물 속에 있음.'
L['hourly'] = '한시간단위'
L['daily'] = '일간'
L['weekly'] = '주간'
L['normal'] = 'Normal'
L['hard'] = 'Hard'
L['mount'] = '탈것'
L['pet'] = '애완동물'
L['spell'] = '주문'
L['toy'] = '장난감'
L['rep'] = '평판'
L['completed'] = '완료'
L['incomplete'] = '미완료'
L['known'] = '확인'
L['missing'] = '미확인'
L['unobtainable'] = '획득불가'
L['unlearnable'] = '습득불가'
L['defeated'] = 'Defeated'
L['undefeated'] = 'Undefeated'

-------------------------------------------------------------------------------
--------------------------------- CONTEXT MENU --------------------------------
-------------------------------------------------------------------------------

L['context_menu_set_waypoint'] = '지도 비행경로 설정'
L['context_menu_add_tomtom'] = 'TomTom에 추가'
L['context_menu_hide_node'] = '이 지점 숨김'
L['context_menu_restore_hidden_nodes'] = '모든 숨긴 지점 복구'

L['map_button_text'] = '지도 상 아이콘 모양, 투명도, 크기 조정'

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

L['options_global'] = '전역'
L['options_zones'] = '개별지역'

L['options_general_description'] = 'Settings that control the behavior of nodes and their rewards.'
L['options_global_description'] = 'Settings that control the display of all nodes in all zones.'
L['options_zones_description'] = 'Settings that control the display of nodes in each individual zone.'

L['options_open_settings_panel'] = '설정창 열기'
L['options_open_world_map'] = '세계지도 열기'
L['options_open_world_map_desc'] = 'Open this zone in the world map.'

------------------------------------ ICONS ------------------------------------

L['options_icon_settings'] = '아이콘 설정'
L['options_scale'] = '크기'
L['options_scale_desc'] = '1 = 100%'
L['options_opacity'] = '투명도'
L['options_opacity_desc'] = '0 = 투명, 1 = 불투명'

---------------------------------- VISIBILITY ---------------------------------

L['options_show_worldmap_button'] = '세계지도 버튼 표시'
L['options_show_worldmap_button_desc'] = 'Add a quick-toggle dropdown menu to the top-right corner of the world map.'

L['options_visibility_settings'] = '가시성'
L['options_general_settings'] = '일반'
L['options_show_completed_nodes'] = '완료 지점 표시'
L['options_show_completed_nodes_desc'] = '이미 완료한 지점도 표시하도록 설정합니다'
L['options_toggle_hide_done_rare'] = 'Hide rare if all rewards known'
L['options_toggle_hide_done_rare_desc'] = 'Hide all rares for which all loot is known.'
L['options_toggle_hide_minimap'] = '미니맵 상의 모든 아이콘 숨김'
L['options_toggle_hide_minimap_desc'] = '이 애드온이 표시하는 미니맵 내의 모든 아이콘을 숨기고 지도에서만 나타나도록 합니다'
L['options_toggle_maximized_enlarged'] = '시계지도 최대화면 모드에서 아이콘 확대'
L['options_toggle_maximized_enlarged_desc'] = 'When the world map is maximized, enlarge all icons.'
L['options_toggle_use_char_achieves'] = '캐릭터별 업적'
L['options_toggle_use_char_achieves_desc'] = '계정 전체 대신 현재 캐릭터의 업적 진행 상황을 표시합니다'
L['options_toggle_per_map_settings'] = '지역별 설정 사용'
L['options_toggle_per_map_settings_desc'] = '개별 지역별로 토글, 크기, 투명도를 따로 설정합니다'
L['options_restore_hidden_nodes'] = '숨긴 지점 복구'
L['options_restore_hidden_nodes_desc'] = 'Restore all nodes hidden using the right-click context menu.'

L['options_rewards_settings'] = '보상'
L['options_reward_types'] = '보상 종류 표시'
L['options_mount_rewards'] = '탈것 보상 표시'
L['options_mount_rewards_desc'] = '탈것 보상을 툴팁에 표시하고 수집 진행상황을 추적합니다'
L['options_pet_rewards'] = '애완동물 보상 표시'
L['options_pet_rewards_desc'] = '애완동물 보상을 툴팁에 표시하고 수집 진행상황을 추적합니다'
L['options_toy_rewards'] = '장난감 보상 표시'
L['options_toy_rewards_desc'] = '장난감 보상을 툴팁에 표시하고 수집 진행상황을 추적합니다'
L['options_transmog_rewards'] = '형상변환 보상 표시'
L['options_transmog_rewards_desc'] = '형상변환 보상을 툴팁에 표시하고 수집 진행상황을 추적합니다'
L['options_all_transmog_rewards'] = '획득 불가 형상변환 보상 표시'
L['options_all_transmog_rewards_desc'] = '타직업으로만 수집가능한 형상변환 보상을 표시합니다'

L['options_icons_misc_desc'] = '기타 위치 정보 표시'
L['options_icons_misc'] = '기타'
L['options_icons_pet_battles_desc'] = '애완동물 트레이너 위치 표시'
L['options_icons_pet_battles'] = '애완동물 대전'
L['options_icons_rares_desc'] = '희귀몹 위치 표시'
L['options_icons_rares'] = '희귀몹'
L['options_icons_treasures_desc'] = '숨겨진 보물 위치 표시'
L['options_icons_treasures'] = '보물'

------------------------------------ FOCUS ------------------------------------

L['options_focus_settings'] = '관심지점'
L['options_poi_color'] = '관심지점 색상'
L['options_poi_color_desc'] = '해당 관심지점 아이콘이 활성화되어있을 때의 색상을 설정합니다'
L['options_path_color'] = 'Path color'
L['options_path_color_desc'] = 'Sets the color for the paths when an icon is in focus.'
L['options_reset_poi_colors'] = '색상 초기화'
L['options_reset_poi_colors_desc'] = '위 모든 색상을 기본으로 되돌립니다'

----------------------------------- TOOLTIP -----------------------------------

L['options_tooltip_settings'] = '툴팁'
L['options_toggle_show_loot'] = '드랍템 표시'
L['options_toggle_show_loot_desc'] = '드랍템 정보를 툴팁에 표시합니다'
L['options_toggle_show_notes'] = '가이드 표시'
L['options_toggle_show_notes_desc'] = '가이드가 있으면 툴팁에 표시합니다'

--------------------------------- DEVELOPMENT ---------------------------------

L['options_dev_settings'] = '개발도구'
L['options_toggle_show_debug_map'] = 'Debug Map IDs'
L['options_toggle_show_debug_map_desc'] = 'Show debug information for maps'
L['options_toggle_show_debug_quest'] = 'Debug Quest IDs'
L['options_toggle_show_debug_quest_desc'] = 'Show debug info for quest changes'
L['options_toggle_force_nodes'] = 'Force Nodes'
L['options_toggle_force_nodes_desc'] = 'Force display all nodes'
