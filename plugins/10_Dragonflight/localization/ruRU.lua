local ADDON_NAME, ns = ...
local L = ns.NewLocale('ruRU')
if not L then return end
-- Russian translation by ZamestoTV, Сстра (Ирина), Артем

-------------------------------------------------------------------------------
-------------------------------- DRAGON ISLES ---------------------------------
-------------------------------------------------------------------------------

L['elite_loot_385'] = ns.color.Orange('Из этого редкого монстра можно получить добычу более высокого уровня!')
L['gem_cluster_note'] = 'Эти предметы станут доступны с 21-го уровня известности с Драконьей Экспедиции, их можно найти в Сумках разведчиков экспедиции и в Потревоженной почве.'

L['options_icons_bonus_boss'] = 'Бонусные элитные монстры'
L['options_icons_bonus_boss_desc'] = 'Отображение местоположения бонусных элитных монстров.'

L['options_icons_profession_treasures'] = 'Сокровища Профессии'
L['options_icons_profession_treasures_desc'] = 'Отображение местонахождения сокровищ, дающих знания для профессий.'

L['dragon_glyph'] = 'Драконий символ'
L['options_icons_dragon_glyph'] = 'Драконий символ'
L['options_icons_dragon_glyph_desc'] = 'Показать расположение всех 48 драконьих символов.'

L['dragonscale_expedition_flag'] = 'Флаг Драконьей экспедиции'
L['flags_placed'] = 'высокий пик'
L['options_icons_flag'] = '{achievement:15890}'
L['options_icons_flag_desc'] = 'Показать расположение всех 20 флагов для достижения {achievement:15890}.'

L['broken_banding_note'] = 'На лодыжке правой ноги статуи.'
L['chunk_of_sculpture_note'] = 'На земле, от статуи дракона слева.'
L['dislodged_dragoneye_note'] = 'На скале под грудью статуи дракона.'
L['finely_carved_wing_note'] = 'Под правым коленом статуи дракона.'
L['fragment_requirement_note'] = ns.color.Red('Прежде чем вы сможете собирать разбросанные предметы, вам нужно спросить {npc:193915} в |cFFFFFD00посольстве Крылатого Приюта|r что она здесь делает, ее можно найти у статуи дракона.')
L['golden_claw_note'] = 'У задней правой лапы статуи дракона.'
L['precious_stone_fragment_note'] = 'Под правой ногой статуи.'
L['stone_dragontooth_note'] = 'На земле рядом с пьедесталом статуи дракона.'
L['tail_fragment_note'] = 'На хвосте статуи дракона.'
L['wrapped_gold_band_note'] = 'Под задним правым когтем статуи дракона.'
L['options_icons_fragment'] = '{achievement:16323}'
L['options_icons_fragment_desc'] = 'Отображение местоположения фрагментов статуи для достижения {achievement:16323}.'

L['options_icons_kite'] = '{achievement:16584}'
L['options_icons_kite_desc'] = 'Показать местоположение {npc:198118} для достижения {achievement:16584}.'

L['disturbed_dirt'] = 'Потревоженная почва'
L['options_icons_disturbed_dirt'] = 'Потревоженная почва'
L['options_icons_disturbed_dirt_desc'] = 'Показать местоположение потревоженной почвы.'

L['scout_pack'] = 'Сумка разведчика экспедиции'
L['options_icons_scout_pack'] = 'Сумка разведчика экспедиции'
L['options_icons_scout_pack_desc'] = 'Отображение местоположения Сумок разведчиков экспедиции.'

L['dr_best'] = 'Ваше лучшее время:\n - Обычный: %.3fс\n - Сложный: %.3fс'
L['dr_best_dash'] = 'Ваше лучшее время:\n - %.3fс'
L['dr_note'] = 'Отведенное время:\n - Обычный: %sс / %sс\n - Сложный: %sс / %sс'
L['dr_note_dash'] = 'Отведенное время:\n - %sс / %sс'
L['dr_bronze'] = '\n\nЗавершите гонку, чтобы получить ' .. ns.color.Bronze('Бронзу') .. '.'
L['options_icons_dragonrace'] = 'Гонка на драконах'
L['options_icons_dragonrace_desc'] = 'Отображение местоположения гонок на драконах.'

L['squirrels_note'] = 'Вы должны использовать эмоцию /любовь на зверьках, а не на боевых питомцах.'
L['options_icons_squirrels'] = '{achievement:16729}'
L['options_icons_squirrels_desc'] = 'Места появления зверьков для {achievement:16729}'

L['hnj_sublabel'] = 'Требуется местная Шикаарская Великая Охота'
L['hnj_western_azure_span_hunt'] = 'На вершине мертвого дерева.'
L['hnj_northern_thaldraszus_hunt'] = ns.color.Orange('Примечание: когда начнется событие охоты, вам нужно быстро подойти к нему. Если вы опоздаете, его убьют монстры.')
L['options_icons_hemet_nesingwary_jr'] = '{achievement:16542}'
L['options_icons_hemet_nesingwary_jr_desc'] = 'Показать местоположение {npc:194590} для достижения {achievement:16542}.'

L['pretty_neat_note'] = 'Сделайте снимок с помощью СЕЛФИ камеры.'
L['pretty_neat_note_blazewing'] = 'Можно найти во время сражения с боссом {npc:189901} в ' .. ns.color.Yellow('Нелтарий') .. ' подземелье.'
L['options_icons_pretty_neat'] = '{achievement:16446}'
L['options_icons_pretty_neat_desc'] = 'Отображение местоположения НПС для достижения {achievement:16446}.'

L['large_lunker_sighting'] = 'Поиск рыб-гигантов'
L['large_lunker_sighting_note'] = 'Используйте 5x {item:194701}, чтобы призвать либо {npc:192919}, либо редкого монстра.'

L['options_icons_legendary_album'] = '{achievement:16570}'
L['options_icons_legendary_album_desc'] = 'Отображение мест с легендарными личностями для {achievement:16570}.'

-------------------------------------------------------------------------------
------------------------------- THE AZURE SPAN --------------------------------
-------------------------------------------------------------------------------

L['brackenhide_rare_note'] = 'Эти редкие монстры появляются в установленной ротации {npc:197344} > {npc:197353} > {npc:197354} > {npc:197356} с интервалом в 10 минут.'
L['fisherman_tinnak_note'] = 'Соберите |cFFFFFD00Сломанную удочку|r, |cFFFFFD00Рванную рыболовную сеть|r и |cFFFFFD00Старый гарпун|r для призыва редкого монстра.'
L['spellwrought_snowman_note'] = 'Соберите 10x {npc:193424} и принесите их к {npc:193242}.'
L['trilvarus_loreweaver_note'] = 'Возьмите |cFFFFFD00Напевающий фрагмент|r и получите {spell:382076} затем используйте |cFFFFFD00Незаряженное сосредоточение|r для того, чтобы призвать редкого монстра.'

L['breezebiter_note'] = 'Летает в небе, чтобы приземлить его просто летайте возле него.'

L['forgotten_jewel_box_note'] = '{item:199065} можно найти в сумках разведчика экспедиции и потревоженной почве.'
L['gnoll_fiend_flail_note'] = '{item:199066} можно найти в сумках разведчика экспедиции и потревоженной почве.'
L['pepper_hammer_note'] = 'Возьмите |cFFFFFD00Древесный сок|r и используйте его на |cFFFFFD00палочке|r чтобы приманить {npc:195373}.\n\n|cFFFF0000(БАГ: Чтобы нажать на палку, может потребоваться перезагрузка)|r'
L['snow_covered_scroll'] = 'Занесенный снегом свиток'

L['pm_engi_frizz_buzzcrank'] = 'Стоит рядом со святыней.'
L['pm_jewel_pluutar'] = 'Внутри здания.'
L['pm_script_lydiara_whisperfeather'] = 'Сидит на скамейке.'
L['pt_alch_experimental_decay_sample_note'] = 'Внутри большого зеленого котла.'
L['pt_alch_firewater_powder_sample_note'] = 'Снаружи бревенчатый дом рядом с вазой.'
L['pt_ench_enriched_earthen_shard_note'] = 'На куче камней.'
L['pt_ench_faintly_enchanted_remains_note'] = 'Нажмите на |cFFFFFD00Жаждущую маны друзу|r, чтобы вызвать и убить монстра. Затем заберите кристалл, который появляется.'
L['pt_ench_forgotten_arcane_tome_note'] = 'Лежит на полу справа от входа в гробницу.'
L['pt_jewel_crystalline_overgrowth_note'] = 'Рядом с небольшим прудом.'
L['pt_jewel_harmonic_crystal_harmonizer_note'] = 'Нажмите на сундук, чтобы получить бафф, затем нажмите на 3 кристалла.'
L['pt_leath_decay_infused_tanning_oil_note'] = 'В бочке.'
L['pt_leath_treated_hides_note'] = nil
L['pt_leath_well_danced_drum_note'] = 'В подземном здании с {npc:186446} и {npc:186448}. Почините барабан рядом с {npc:194862}. Как только он станцует на нем, вы сможете забрать предмет.'
L['pt_script_dusty_darkmoon_card_note'] = 'Внутри здания на верхнем уровне.'
L['pt_script_frosted_parchment_note'] = 'За {npc:190776}.'
L['pt_smith_spelltouched_tongs_note'] = 'Внутри небольшой заблокированной пещеры.'
L['pt_tailor_decaying_brackenhide_blanket_note'] = 'Висит на дереве в импровизированной палатке.'
L['pt_tailor_intriguing_bolt_of_blue_cloth_note'] = 'Идите по лестнице налево.'

L['leyline_note'] = 'Силовые линии Простора.'
L['options_icons_leyline'] = '{achievement:16638}'
L['options_icons_leyline_desc'] = 'Показать расположение всех силовых линий для достижения {achievement:16638}.'

L['river_rapids_wrangler_note'] = nil
L['seeing_blue_note'] = 'Пролетите с вершины Лазурных архивов до Кобальтовой ассамблеи за один полет.'
L['snowman_note'] = 'В этом районе лежит три {npc:197599} (могли быть перемещены другими игроками), бросьте их двум детям {npc:197838} и {npc:197839}.\nВы получите достижение, когда снежки будут подходящего размера.'

L['snowclaw_cub_note_start'] = nil
L['snowclaw_cub_note_item1'] = nil
L['snowclaw_cub_note_item2'] = nil
L['snowclaw_cub_note_end'] = nil

L['tome_of_polymoph_duck'] = 'Используйте {spell:1953}, чтобы войти в пещеру и взаимодействовать с |cFFFFFD00Манаштормы для новичков|r для взятия и завершения задания.'

L['temperamental_skyclaw_note'] = [[
Собрать (или купить на аукционе):

20x {item:201420}
20x {item:201421}
20x {item:201422}

Спросите о оседланной лисе-виверне и покажите {npc:190892} собранные "блюда".
]]

L['elder_poa_note'] = 'Обменяйте {item:200071} на репутацию с |cFFFFFD00Искарскими клыкаррами|r.'

-------------------------------------------------------------------------------
------------------------------- FORBIDDEN REACH -------------------------------
-------------------------------------------------------------------------------

L['bag_of_enchanted_wind'] = 'Мешок зачарованного ветра'
L['bag_of_enchanted_wind_note'] = 'Расположен в башне.'
L['hessethiash_treasure'] = 'Плохо спрятанное сокровище Гессетиаша'
L['lost_draconic_hourglass'] = 'Потерянные песочные часы драконов'
L['suspicious_bottle_treasure'] = 'Подозрительная бутылка'
L['mysterious_wand'] = 'Таинственный жезл'
L['mysterious_wand_note'] = 'Поднимите |cFFFFFD00Кристальный ключ|r и поместите его в |cFFFFFD00Кристаллическое средоточие|r.'

-------------------------------------------------------------------------------
------------------------------ OHN'AHRAN PLAINS -------------------------------
-------------------------------------------------------------------------------

L['hunter_of_the_deep_note'] = 'Нажмите на стойку с оружием и стреляйте в рыбу, пока не появится редкий монстр.'
L['scaleseeker_mezeri_note'] = 'Предложите {item:194681} {npc:193224} и следуйте за ней, пока она не покажет редкого монстра.'
L['shade_of_grief_note'] = 'Нажмите на {npc:193166}, чтобы вызвать редкого монстра.'
L['windscale_the_stormborn_note'] = 'Убейте {npc:192367}, которые находятся возле {npc:192357}.'
L['zarizz_note'] = 'Выберите в цели и используйте эмоцию ' .. ns.color.Orange('/шипение') .. ' на четырех {npc:193169}, чтобы призвать редкого монстра.'

L['gold_swong_coin_note'] = 'Внутри пещеры с {npc:191608} справа от него.'
L['nokhud_warspear_note'] = '{item:194540} можно найти в сумках разведчика экспедиции и потревоженной почве.'
L['slightly_chewed_duck_egg_note'] = 'Найдите и погладьте {npc:192997}, чтобы получить {item:195453}, затем используйте ее. {item:199171} превратиться через 3 дня в {item:199172}.'
L['yennus_boat'] = 'Игрушечная лодка клыкарров'
L['yennus_boat_note'] = 'Возьмите |cFFFFFD00игрушечную лодку клыкарров|r, чтобы получить {item:200876}, который запускает задание {quest:72063}, которое можно сдать у {npc:195252}.'

L['pm_ench_shalasar_glimmerdusk'] = 'На втором этаже разрушенной башни.'
L['pm_herb_hua_greenpaw'] = 'Встаньте на колени рядом с деревом.'
L['pm_leath_erden'] = 'Стоит рядом с мертвым {npc:193092} у реки.'
L['pt_alch_canteen_of_suspicious_water_note'] = 'Глубоко внутри пещеры рядом с мертвым {npc:194887}.'
L['pt_ench_stormbound_horn_note'] = 'В |cFFFFFD00Подъеме Песни Ветра|r.'
L['pt_jewel_fragmented_key_note'] = 'Под корнями дерева в разрушенном здании.'
L['pt_jewel_lofty_malygite_note'] = 'Парит в воздухе в пещере.'
L['pt_leath_wind_blessed_hide_note'] = 'Внутри |cFFFFFD00Шикаарского нагорья|r Лагерь кентавров.'
L['pt_script_sign_language_reference_sheet_note'] = 'Висит у входа в палатку.'
L['pt_smith_ancient_spear_shards_note'] = 'Внутри пещеры к западу от |cFFFFFD00рубежа Русза\'тар|r.'
L['pt_smith_falconer_gauntlet_drawings_note'] = 'Остров в море, внутри хижины.'
L['pt_tailor_noteworthy_scrap_of_carpet_note'] = 'В маленькой хижине. ' .. ns.color.Orange('В хижине 3 элитных противника.')
L['pt_tailor_silky_surprise_note'] = 'Найти и открыть |cFFFFFD00Заколдованная вайя|r.'

L['lizi_note'] = 'Завершите сюжетную линию Похождения посвященного, начав с {quest:65901}. Выполняйте ежедневные задания, чтобы вылечить Яшу и получить средство передвижения.\n\nВ дополнение к предметам, требуемым для всех заданий, требуется 150x {currency:2003} за задание, в общей сложности 750x {currency:2003}.'
L['lizi_note_day1'] = 'Соберите 20x {item:192615} с монстров насекомых на |cFFFFFD00Драконьих Островах|r.'
L['lizi_note_day2'] = 'Соберите 20x {item:192658} с монстров растений на |cFFFFFD00Драконьих Островах|r.'
L['lizi_note_day3'] = 'Соберите 10x {item:194966} ловится из любых водоемов на |cFFFFFD00Драконьих Островах|r. Чаще всего встречается в реках на |cFFFFFD00Равнине Он\'ары|r.'
L['lizi_note_day4'] = 'Соберите 20x {item:192636} с мамонтов и яков на |cFFFFFD00Заставе большекопытов|r.'
L['lizi_note_day5'] = 'Примите задание {quest:71195} у {npc:190014} и получите 1x {item:200598} от {npc:190015} в палатке к югу от |cFFFFFD00Ключей Он\'ир|r.'

L['ohnahra_note_start'] = 'Завершите сюжетную линию Похождения посвященного, начав с {quest:65901} у {npc:190022} который появиться в |cFFFFFD00ключах Он\'ир|r за хижиной жреца ветра.\n\nСоберите следующие материалы:'
L['ohnahra_note_item1'] = 'Заберите 3x {item:201929} у {npc:186151}, финальный босс подземелья |cFFFFFD00Наступление клана Нокхуд|r (героический режим). Шанс не 100%.'
L['ohnahra_note_item2'] = 'Купите 1x {item:201323} у {npc:196707} за 50x {currency:2003} и 1x {item:194562}.\n{item:194562} можно получить с Затерянных во времени монстров в |cFFFFFD00Тальдразусе|r.'
L['ohnahra_note_item3'] = 'Купите 1x {item:191507} на аукционе. (Алхимики могут приобрести {item:191588} у {npc:196707}, начиная с 22-го уровня известности)'
L['ohnahra_note_end'] = 'Когда у вас будут все материалы, вернитесь к {npc:190022} и возьмите задание {quest:72512}. Отправляйтесь к {npc:194796}, чтобы сдать задание и получить средство передвижение.'

L['bakar_note'] = 'Погладь собаку!'
L['bakar_ellam_note'] = 'Если достаточное количество игроков погладит эту собаку, она приведет вас к своим сокровищам.'
L['bakar_hugo_note'] = 'Путешествует с лагерем Айлааг.'
L['options_icons_bakar'] = '{achievement:16424}'
L['options_icons_bakar_desc'] = 'Отображение местоположения всех собак (бакар) для достижения {achievement:16424}.'

L['ancestor_note'] = nil
L['options_icons_ancestor'] = '{achievement:16423}'
L['options_icons_ancestor_desc'] = 'Показать местонахождение предков для {achievement:16423}.'

L['dreamguard_note'] = 'Возьмите в цель Изумрудного Стражника и  ' .. ns.color.Orange('/спать')
L['options_icons_dreamguard'] = '{achievement:16574}'
L['options_icons_dreamguard_desc'] = 'Отображать места Изумрудных Стражников для {achievement:16574}'

L['khadin_note'] = 'Обмен {item:191784} на знания по профессии.'
L['the_great_swog_note'] = 'Обменять {item:199338}, {item:199339} и {item:199340} на {item:202102}.'
L['hunt_instructor_basku_note'] = 'Обменяйте {item:200093} на репутацию с |cFFFFFD00Кентаврами Маруук|r.'

-------------------------------------------------------------------------------
--------------------------------- THALDRASZUS ---------------------------------
-------------------------------------------------------------------------------

L['ancient_protector_note'] = 'Убейте поблизости {npc:193244}, чтобы получить {item:197708}. Объедините 5 {item:197708}, чтобы создать {item:197733}, и используйте его, чтобы активировать близлежащий Реактор Титанов.'
L['blightpaw_note'] = 'Поговорите с {npc:193222} поблизости и согласитесь помочь ему.'
L['corrupted_proto_dragon_note'] = 'Осмотрите |cFFFFFD00Оскверненное яйцо дракона|r, чтобы вызвать редкого монстра.'
L['weeping_vilomah_note'] = 'Поговорите с {npc:193206}, чтобы призвать редкого монстра.'
L['woofang_note'] = 'Погладьте {npc:193156}, чтобы призвать редкого монстра.'

L['acorn_harvester_note'] = 'Подберите |cFFFFFD00желудь|r с земли поблизости, чтобы получить {spell:388485}, а затем взаимодействуйте с {npc:196172}.\n\n|cFFFF0000(БАГ: чтобы нажать на {npc:196172}, может потребоваться перезагрузка.)|r.'
L['cracked_hourglass_note'] = '{item:199068} можно найти в сумках разведчика экспедиции и потревоженной почве.'
L['sandy_wooden_duck_note'] = 'Возьмите {item:199069} и используйте ее.'

L['tasty_hatchling_treat_note'] = 'В бочке за книжной полкой.'

L['pm_mining_bridgette_holdug'] = 'На вершине травянистого каменного столба.'
L['pm_tailor_elysa_raywinder'] = 'На выступе на полпути к башне.'
L['pt_alch_contraband_concoction_note'] = 'Спрятался в кустах. ' .. ns.color.Orange('Трудно увидеть.')
L['pt_alch_furry_gloop_note'] = 'Бросьте ближайшего {npc:194855} в каждый котел, затем убейте появившегося монстра.'
L['pt_ench_fractured_titanic_sphere_note'] = 'К югу от |cFFFFFD00Тирхолда|r.'
L['pt_jewel_alexstraszite_cluster_note'] = 'В |cFFFFFD00Тирхолде|r.'
L['pt_jewel_painters_pretty_jewel_note'] = 'Внутри фонаря.'
L['pt_leath_decayed_scales_note'] = 'Внутри корзины.'
L['pt_script_counterfeit_darkmoon_deck_note'] = nil
L['pt_script_forgetful_apprentices_tome_note'] = 'На столе возле большого телескопа.'
L['pt_script_how_to_train_your_whelpling_note'] = 'Маленькая коричневая книга лежит в песочнице.'
L['pt_smith_draconic_flux_note'] = 'Внутри здания.'
L['pt_tailor_ancient_dragonweave_bolt_note'] = 'Нажать на |cFFFFFD00Древний прядильный станок драконов|r чтобы завершить мини-игру, в которой вы соединяете катушки с нитками с центральным камнем.'
L['pt_tailor_miniature_bronze_dragonflight_banner_note'] = 'Маленький баннер внутри кучи песка.'

L['picante_pomfruit_cake_note'] = '{item:200904} доступен не каждый день, поэтому проверяйте |cFF00CCFFРубиновый Пир|r ежедневно. Пока вы там, не забудьте попробовать 3 доступных блюда, чтобы выполнить {achievement:16556}.'
L['icecrown_bleu_note'] = 'Купить у {npc:196729} ' .. ns.color.NPC('<Сыровар>') .. ' на |cFF00CCFFРынке Ремесленников|r.'
L['dreamwarding_dripbrew_note'] = 'Купить у {npc:197872} ' .. ns.color.NPC('<Кофеиномант>') .. ' в |cFFFFFD00Ночной лаборатории|r.'
L['arcanostabilized_provisions_note'] = 'Купить у {npc:198831} ' .. ns.color.NPC('<Главный шеф-повар>') .. ' используйте |cFF00CCFFПортал|r чтобы переместиться в |cFF00CCFFБудущее воинов стихий|r.'
L['steamed_scarab_steak_note'] = 'Купить у {npc:197586} ' .. ns.color.NPC('<Бармен курорта>') .. ' на |cFFFFFD00Курорте Мирные Сны|r.'
L['craft_creche_crowler_note'] = 'Купить у {npc:187444} ' .. ns.color.NPC('<Странствующий продавец драконьего хмеля>') .. ' может быть в одном из случайных мест на карте (меняет свое положение ежедневно): |cFFFFFD00Рубиновое святилище Жизни|r, |cFFFFFD00Таверна Зеленый дракон|r, |cFFFFFD00Затерянный лагерь|r, |cFFFFFD00Временной Перекресток|r.'
L['bivigosas_blood_sausages_note'] = 'Купить у {npc:188895} ' .. ns.color.NPC('<Еда и напитки>') .. ' на |cFFFFFD00Геликирском аванпосте|r.'
L['options_icons_specialties'] = '{achievement:16621}'
L['options_icons_specialties_desc'] = 'Показать места еды и напитков для достижения {achievement:16621}.'

L['new_perspective_note'] = 'Сделайте снимок с помощью СЕЛФИ камеры, живописных мест. Место будет отмечено фиолетовым кружком света, как только вы перейдете в режим камеры.\n\nЕсли вы не получаете зачет в достижение, измените свою точку обзора.'
L['options_icons_new_perspective'] = '{achievement:16634}'
L['options_icons_new_perspective_desc'] = 'Живописные места для достижения {achievement:16634}.'

L['ruby_feast_gourmand'] = 'Каждый день случайно приглашенный шеф-повар подает разные блюда и напитки.'

L['sorotis_note'] = 'Обменяйте {item:199906} на репутацию c |cFFFFFD00Союзом Вальдраккена|r.'

-------------------------------------------------------------------------------
------------------------------ THE WAKING SHORE -------------------------------
-------------------------------------------------------------------------------

L['brundin_the_dragonbane_note'] = 'Боевой отряд куалаши отправляется на {npc:192737} к этой башне.'
L['captain_lancer_note'] = 'Появляется сразу после завершения события {spell:388945}.'
L['enkine_note'] = 'Убейте {npc:193137}, {npc:193138} или {npc:193139} вдоль лавового берега реки, чтобы получить {item:201092}, используйте его и ловите рыбу рядом с {npc:191866} в лаве.'
L['lepidoralia_note'] = nil
L['obsidian_citadel_rare_note'] = 'Вы и другие игроки должны вернуть в общей сложности %dx {item:191264} к %s. Чтобы создать ключ, вам нужно объединить 30x {item:191251} и 3x {item:193201}, вы можете получить эти предметы из монстров в |cFFFFFD00Обсидиановой Цитадели|r.'
L['shadeslash_note'] = 'Нажмите на |cFFFFFD00Украденное средоточие|r, чтобы призвать редкого монстра.'
L['obsidian_throne_rare_note'] = 'Внутри |cFFFFFD00Обсидиановой цитадели|r.'
L['skald_impaler_note'] = 'Используйте 5x {item:194701}, чтобы призвать редкого монстра.'
L['slurpo_snail_note'] = 'Добудьте {item:201033} из пещеры в |cFFFFFD00Лазурном Просторе|r (11, 41) и используйте его в этой пещере, чтобы вызвать редкого монстра.'
L['worldcarver_atir_note'] = 'Соберите 3x {item:191211} у {npc:187366} поблизости и поместите их в {npc:197395}, чтобы призвать редкого монстра.'

L['bubble_drifter_note'] = '{item:199061} можно найти в сумках разведчика экспедиции и потревоженной почве.'
L['dead_mans_chestplate_note'] = 'Внутри башни на среднем этаже.'
L['fullsails_supply_chest_note'] = 'Ключ падает с {npc:187971} и {npc:187320} к югу от |cFFFFFD00Посольства Крылатого Приюта|r.'
L['golden_dragon_goblet_note'] = 'Добудьте {item:202081} у {npc:190056} на |cFFFFFD00Диких берегах|r и завершите небольшую линейку заданий.'
L['misty_treasure_chest_note'] = 'Встаньте на {npc:185485}, которая торчит из водопада, чтобы войти в пещеру.'
L['onyx_gem_cluster_note'] = 'На 21-м уровне известности у Драконьей Экспедиции вы можете выполнить задание {quest:70833}, чтобы получить {item:200738} в качестве награды (один раз на аккаунт), или купить карту у {npc:189065} за 3 {item:192863} и 500 {currency:2003} и используйте ее.'
L['torn_riding_pack_note'] = 'Расположен на вершине водопада.'
L['yennus_kite_note'] = 'Застрял в ветке на вершине дерева.'

L['fullsails_supply_chest'] = 'Сундук с припасами Коры'
L['hidden_hornswog_hoard_note'] = [[
Соберите три разных предмета и объедините их у |cFFFFFD00"Загадки для внимательных: практический справочник"|r рядом с {npc:192362}, чтобы получить {item:200063} и накормить его. Затем он уйдет с дороги, чтобы вы могли забрать его сокровище.

{item:200064}
{item:200065}
{item:200066}
]]

L['pm_alch_grigori_vialtry'] = 'На выступе с видом на |cFFFFFD00Осаду Морозной Вспышки|r.'
L['pm_skin_zenzi'] = 'Сидит рядом с рекой.'
L['pm_smith_grekka_anvilsmash'] = 'Сидит в траве рядом с разрушенной башней.'
L['pt_alch_frostforged_potion_note'] = 'Посреди ледяного кратера.'
L['pt_alch_well_insulated_mug_note'] = 'В |cFFFFFD00Драконьей Погибели|r между несколькими элитными монстрами.'
L['pt_ench_enchanted_debris_note'] = 'Активируйте и следуйте за {npc:194872}, чтобы собрать обломки в конце.'
L['pt_ench_flashfrozen_scroll_note'] = 'Внутри |cFFFFFD00Анклава Морозной Вспышки|r.'
L['pt_ench_lava_infused_seed_note'] = 'В цветке в |cFFFFFD00Крепости Расколотой Чешуи|r.'
L['pt_engi_boomthyr_rocket_note'] = nil
L['pt_engi_intact_coil_capacitor_note'] = nil
L['pt_jewel_closely_guarded_shiny_note'] = 'Синий драгоценный камень под деревом рядом с гнездом.'
L['pt_jewel_igneous_gem_note'] = 'Быстро нажмите на 3 кристалла на маленьких островах внутри магмы.'
L['pt_leath_poachers_pack_note'] = 'Рядом с мертвой вульперой у русла реки.'
L['pt_leath_spare_djaradin_tools_note'] = 'Рядом с мертвым красным драконом.'
L['pt_script_pulsing_earth_rune_note'] = 'За столом внутри разрушенного здания.'
L['pt_smith_ancient_monument_note'] = nil
L['pt_smith_curious_ingots_note'] = nil
L['pt_smith_glimmer_of_blacksmithing_wisdom_note'] = nil
L['pt_smith_molten_ingot_note'] = 'Пните 3 слитка в лаву, чтобы вызвать монстра. Откройте сундук после победы над ним.'
L['pt_smith_qalashi_weapon_diagram_note'] = 'На вершине наковальни.'
L['pt_tailor_itinerant_singed_fabric_note'] = nil
L['pt_tailor_mysterious_banner_note'] = 'Висит над зданиями.'

L['quack_week_1'] = 'Неделя 1'
L['quack_week_2'] = 'Неделя 2'
L['quack_week_3'] = 'Неделя 3'
L['quack_week_4'] = 'Неделя 4'
L['quack_week_5'] = 'Неделя 5'
L['lets_get_quacking'] = 'Вы можете спасти только одного {npc:187863} в неделю.'

L['complaint_to_scalepiercer_note'] = nil
L['grand_flames_journal_note'] = nil
L['wyrmeaters_recipe_note'] = nil

L['options_icons_ducklings'] = '{achievement:16409}'
L['options_icons_ducklings_desc'] = 'Показать местонахождение утят для достижения {achievement:16409}.'
L['options_icons_chiseled_record'] = '{achievement:16412}'
L['options_icons_chiseled_record_desc'] = 'Показать расположение планшетов для достижения {achievement:16412}.'

L['grand_theft_mammoth_note'] = 'Прокатитесь на {npc:194625} до {npc:198163}.\n\n|cFFFF0000(БАГ: если вы не можете взаимодействовать с {npc:194625}, используйте /reload.)|r'
L['options_icons_grand_theft_mammoth'] = '{achievement:16493}'
L['options_icons_grand_theft_mammoth_desc'] = 'Показать местоположение {npc:194625} для достижения {achievement:16493}.'

L['options_icons_stories'] = '{achievement:16406}'
L['options_icons_stories_desc'] = 'Места заданий для достижения {achievement:16406}.'
L['all_sides_of_the_story_garrick_and_shuja_note'] = 'Начните цепочку заданий и выслушайте историю {npc:184449} и {npc:184451}.'
L['all_sides_of_the_story_duroz_and_kolgar_note'] = 'В маленькой комнате под платформой.\n\nНачните цепочку заданий и выслушайте историю {npc:194800} и {npc:194801}. Другие задания будут разблокированы в течение следующих двух недель.'
L['all_sides_of_the_story_tarjin_note'] = 'Начните цепочку заданий с {quest:70779}.\n{npc:196214} будет рассказывать вам новую историю каждую неделю.'
L['all_sides_of_the_story_veritistrasz_note'] = 'Начать задание {quest:70132} по всем историям {npc:194076}.\nПосле этого вы разблокируете {quest:70134}, а затем {quest:70268}.\n\nДля последнего задания вам понадобится {item:198661}, который находится внутри ' .. ns.color.Yellow('Драконьей Погибели') .. '.'

L['slumbering_worldsnail_note1'] = [[
1. Соберите 3x {item:193201} и 30x {item:191251} с монстров обитающих в |cFFFFFD00Обсидиановой Цитадели|r, чтобы получить {item:191264}.

2. Обменяйте {item:191264} на {item:200069} у {npc:187275}.

3. С вероятностью 30% в сундуке будет {item:199215}.

4. Использование данного предмета даст вам дебафф {spell:386848}, который позволит вам собирать {item:202173} с монстров в |cFFFFFD00Обсидиановой цитадели|r.

5. Соберите 1000x {item:202173}, чтобы купить {item:192786}.]]

L['slumbering_worldsnail_note2'] = ns.color.Orange('Примечание: если вы умрете, вы потеряете дебафф членства. Либо купите новое членство у {npc:193310} за 20x {item:202173} перед смертью, либо вам нужно сдать больше ключей, чтобы получить шанс получить новое членство из сундука.')

L['magmashell_note'] = 'Добудьте {item:201883} с {npc:193138} вокруг |cffffff00Обсидиановой цитадели|r и отнесите к {npc:199010}.\n\n' .. ns.color.Orange('Вам нужно будет продержаться в лаве 20 секунд, чтобы получить средство передвижение. Поэтому рекомендуем взять с собой целителя или игрушку {item:200116}.')

L['otto_note_start1'] = nil
L['otto_note_start2'] = nil
L['otto_note_start3'] = nil
L['otto_note_item1'] = nil
L['otto_note_item2'] = nil
L['otto_note_item3'] = nil
L['otto_note_end'] = nil

L['options_icons_safari'] = '{achievement:16519}'
L['options_icons_safari_desc'] = 'Отображение местоположения боевых питомцев для {achievement:16519}.'
L['shyfly_note'] = 'Вы должны выполнить задание {quest:70853}, чтобы увидеть {npc:189102}.'

L['cataloger_jakes_note'] = 'Обменяйте {item:192055} на репутацию с |cFFFFFD00Драконьей экспедицией|r.'
