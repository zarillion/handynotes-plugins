local ADDON_NAME, _ = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhTW", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes 機械岡 & 納沙塔爾"
L["options_title"] = "機械岡 & 納沙塔爾"

-------------------------------------------------------------------------------
----------------------------------- MECHAGON ----------------------------------
-------------------------------------------------------------------------------

L["avenger_note"] = "當奧格索普‧奧布諾提斯是訪客時，殺死OOX-Fleetfoot/MG (區域滿地跑)來重生。"
L["beastbot_note"] = "在帕斯卡K1N6型製作一個［野獸機器人動力包］來啟動。"
L["cogstar_note"] = "殺死區域內任何地方的升級版哨衛，直到他傳送進來加強小怪。"
L["crazed_trogg_note"] = "在邦多的機械廠裡使用噴塗機，塗滿油漆的氣囊或機器人，用他大喊的顏色塗上自己。"
L["deepwater_note"] = "在帕斯卡K1N6型製作一個［百噚誘餌］來召喚。"
L["doppel_gang"] = "分身"
L["doppel_note"] = '從每日任務＂輪狂的建造狂熱＂獲得［減壓閥］，與其他兩名玩家一起啟動。'
L["drill_rig"] = "需要鑽探機 "
L["foul_manifest_note"] = "連接水中的電塔到外圍電塔通電，然後到旁邊山坡上找到開關按下就會出現。"
L["furor_note"] = '在每日任務 "來自諾達希爾的協助" 期間，點擊小藍色蘑菇直到出現。'
L["killsaw_note"] = "在飛逝森林的任何地方出現，似乎殺死鋸刃伐木機器人後比較容易出現。不會在風險投資公司在森林裡的時候出現，那時候沒有伐木機器人。"
L["leachbeast_note"] = "使用［發熱蒸發器線圈］啟動天氣改變裝置，天氣轉為下雨後，擊殺一定數量的濾液怪出現。"
L["nullifier_note"] = '使用藍色卡片－[遠距迴路旁通器] 或是DNT-碰撞轉移裝置駭入啟動。前者為廢料王掉落，後者為鑽探機JD41與JD99的小怪掉落。'
L["scrapclaw_note"] = "離岸在水中。"
L["sparkqueen_note"] = '當每日任務＂有蟲.好多蟲!＂期間，殺死一定數量蜘蛛出現。'
L["rusty_note"] = "在帕斯卡K1N6型上製作一個［個人時光移轉裝置］，以進入不同的未來。只有當克羅米不是訪客時才會出現。"
L["vaultbot_note"] = "風箏到邦多的機械廠的特斯拉線圈，或在帕斯卡K1N6型上製作一個保險庫機器人鑰匙來直接打開。"

L["iron_chest"] = "鐵潮帶鎖箱"
L["mech_chest"] = "機械箱"
L["msup_chest"] = "機械補給箱"
L["rust_chest"] = "老舊生鏽箱子"
L["iron_chest_note"] = "開啟鐵潮帶鎖箱的鑰匙從西湧列島小怪掉落。"
L["msup_chest_note"] = "開啟機械補給箱的鑰匙從西湧列島小怪掉落。"
L["rust_chest_note"] = "開啟老舊生鏽箱子的鑰匙從西湧列島小怪掉落。"

L["rec_rig"] = "廢料回收機"
L["rec_rig_note"] = "要啟動困難模式，使用超級對撞機武器來將所有輻射元素轉換為不穩定輻射元素。寵物可以在兩種難度中獲得。"

L["options_icons_mech_chest"] = "機械化箱"
L["options_icons_mech_chest_desc"] = "顯示機械化箱子的位置。有10個獨特的箱子可以每天洗一次，每個箱子有4-5個產卵位置。位置按顏色分組。"
L["options_icons_locked_chest"] = "鎖定箱子"
L["options_icons_locked_chest_desc"] = "在西湧列島中顯示上鎖箱子的位置。"
L["options_icons_recrig"] = "廢料回收機"
L["options_icons_recrig_desc"] = "顯示廢料回收機的位置以及事件獎賞。"

-------------------------------------------------------------------------------
----------------------------------- NAZJATAR ----------------------------------
-------------------------------------------------------------------------------

L["naz_intro_note"] = "完成入門任務鏈，解鎖Nazjatar上的rares，寶藏和世界任務。"

L["alga_note"] = "注意: 被四個小怪遮掩！"
L["allseer_note"] = "在卡美伊爾低層的任何地方出現。"
L["anemonar_note"] = "在它上方擊殺巨大的擎天魟來啟動。"
L["avarius_note"] = "使用鹵石鎬收集並將彩色晶體放在基座上。 你不必是一個礦工！"
L["banescale_note"] = "有很小的機率在殺死群母後立即出現。"
L["elderunu_note"] = "在卡美伊爾高層的任何地方出現。"
L["gakula_note"] = "驅趕血鳍蝌蚪直到它出現。"
L["glimmershell_note"] = "有小機率出現在微光殼巨蟹的位置。"
L["kelpwillow_note"] = "使用棱彩水晶魅惑［淤泥蛞蝓］後帶給它來啟動。"
L["lasher_note"] = "在土壤中種植發芽的種子並餵養蒼蠅。"
L["matriarch_note"] = "與另外兩位族母共享重生計時器。"
L["needle_note"] = "通常出現在［女王之門］區域。"
L["oronu_note"] = "到沉默市場找到NPC購買［溺水幼鷹獸］寵物帶著它靠近後就可啟動。"
L["rockweed_note"] = "殺死整個區域的失落的Algan和Wayward Algan直到他出現。 建議使用團隊，因為這可能是一個長期的苦工作。"
L["sandcastle_note"] = "使用顯現石在區域內的任何地方顯露寶箱直到它出現。"
L["tidelord_note"] = "殺死三個艾薩利塑能師以及招喚的被釋放的狂潮直到浪潮領主被召喚出來。"
L["tidemistress_note"] = "點擊未受干擾的樣本直到她出現。"
L["urduu_note"] = "在它面前重疊擊殺［鹿角暗礁行者］後來啟動。"
L["voice_deeps_notes"] = "使用脫下來的殼來衝破此岩石。"
L["vorkoth_note"] = "把餌食扔進池中直到它出現。"
L["area_spawn"] = "在周邊地區出現。"
L["cora_spawn"] = "在珊瑚林的任何地方出現。"
L["cave_spawn"] = "在洞穴中出現。"
L["east_spawn"] = "在區域的東半邊任何地方出現。"
L["ucav_spawn"] = "在水下的洞穴出現。"
L["zone_spawn"] = "在整個區域出現。"

L["supply_chest"] = "戰爭補給箱"
L["assassin_looted"] = "當為刺客時可以拾取。"

L["arcane_chest"] = "祕法寶箱"
L["glowing_chest"] = "發光的祕法寶箱"
L["arcane_chest_01"] = "在一些海藻下。"
L["arcane_chest_02"] = "在建築內部的上層"
L["arcane_chest_03"] = "在第二層。"
L["arcane_chest_04"] = "在瀑布上方的水中。"
L["arcane_chest_05"] = "在廢墟中。"
L["arcane_chest_06"] = "" -- in the open
L["arcane_chest_07"] = "在洞穴的後面。入口位於贊季爾沙灘東邊。"
L["arcane_chest_08"] = "藏在一些海星下面。"
L["arcane_chest_09"] = "在珍珠殼爬行者(暫譯)後面的一個洞穴裡。"
L["arcane_chest_10"] = "在一個脫下來的殼下面。"
L["arcane_chest_11"] = "在山丘的頂部。"
L["arcane_chest_12"] = "在瀑布的頂部。"
L["arcane_chest_13"] = "在懸崖的頂部，在樹後面。"
L["arcane_chest_14"] = "在伊露恩諾神殿內部。"
L["arcane_chest_15"] = "在建築物的右側。"
L["arcane_chest_16"] = "在水下的洞穴，入口在南方。"
L["arcane_chest_17"] = "在瀑布的頂部。"
L["arcane_chest_18"] = "在路徑下方的一個洞穴裡。"
L["arcane_chest_19"] = "在岩石拱門的頂部。 使用滑翔翼（或是飛行）"
L["arcane_chest_20"] = "在山的頂部。"
L["glowing_chest_1"] = "在水下洞穴的後面，防衛鐵塔。"
L["glowing_chest_2"] = "解開線條。"
L["glowing_chest_3"] = "在洞穴的後面。防衛鐵塔。"
L["glowing_chest_4"] = "消掉三個紅色符文。"
L["glowing_chest_5"] = "在洞穴，防衛鐵塔。"
L["glowing_chest_6"] = "解開線條。"
L["glowing_chest_7"] = "消掉四個藍色符文。"
L["glowing_chest_8"] = "在屋頂上。防衛鐵塔。"

L["slimy_cocoon"] = "軟泥的卵"
L["ravenous_slime_note"] = "使用棱彩水晶控制小動物餵養軟泥。重複五天，直到它產生一個帶有寵物的卵。軟泥將一直持續到下一周重置。"
L["slimy_cocoon_note"] = "一隻寵物準備從卵中收集！ 如果在您的階段它沒有出現，那麼卵的冷卻時間就會消失。 更改階段或稍後再回來查看。"

L["cat_figurine"] = "水晶貓雕像"
L["cat_figurine_01"] = "在一個水下洞穴。雕像在露天的地板上。入口在東邊。"
L["cat_figurine_02"] = "在附近瀑布下的一個洞穴裡。 雕像在牆上的海星下面。"
L["cat_figurine_03"] = "在一個水下洞穴。雕像被藏在某些破碎的貝殼下。"
L["cat_figurine_04"] = "在一個水下洞穴。雕像在露天的地板上。"
L["cat_figurine_05"] = "在一個小洞穴。雕像隱藏在地板上的植物後面。"
L["cat_figurine_06"] = "在一個充滿敵對的礁石行者的水下洞穴中。 小雕像在牆上。 入口在北方。"
L["cat_figurine_07"] = "在一個小洞穴。雕像在一些珊瑚的牆上。"
L["cat_figurine_08"] = "在一個小洞穴。躲避祕法圈。 小雕像在後面的高大的岩石上。"
L["cat_figurine_09"] = "在一個水下洞穴。雕像位於天花板的岩石拱門上。"
L["cat_figurine_10"] = "在路徑下方的一個洞穴裡。 雕像在三個桶之間。"


L["mardivas_lab"] = "瑪爾迪瓦斯實驗室"
L["no_reagent"] = "不使用水晶"
L["swater"] = "小深海"
L["gwater"] = "大深海"
L["sfire"] = "小火炎"
L["gfire"] = "大火炎"
L["searth"] = "小土岩"
L["gearth"] = "大土岩"
L["murloco"] = "莫落哥"
L["tentacle_taco"] = "出售 "..ITEM_QUALITY_COLORS[4].hex.."[飢餓使者的觸手捲]|r 如果你是穿著艾薩利怒濤者斗篷。"

L["options_icons_treasures_nazj"] = "寶藏"
L["options_icons_treasures_nazj_desc"] = "顯示［尋寶追蹤者］成就的箱子位置。"
L["options_icons_slimes_nazj"] = "飢餓的軟泥"
L["options_icons_slimes_nazj_desc"] = "顯示已經餵養可以產出戰寵的四種飢餓軟泥的位置。"
L["options_icons_cats_nazj"] = "貓咪雕像"
L["options_icons_cats_nazj_desc"] = "顯示'喵出喵咪喵像'成就的水晶貓位置。"
L["options_icons_misc_nazj"] = "其他"
L["options_icons_misc_nazj_desc"] = "顯示莫洛哥的洞穴以及瑪爾迪瓦斯的實驗室的位置。"

-------------------------------------------------------------------------------
------------------------------------ CAVES ------------------------------------
-------------------------------------------------------------------------------

L["blindlight_cave"] = "盲光洞穴的入口。"
L["caverndark_cave"] = "洞闇恐懼洞穴的入口。"
L["chasmhaunt_cave"] = "裂谷追魂鰻洞穴的入口。"
L["shassera_cave"] = "夏瑟菈洞穴的入口。"

L["Nazjatar"] = "納沙塔爾"
L["Mechagon"] = "機械岡"