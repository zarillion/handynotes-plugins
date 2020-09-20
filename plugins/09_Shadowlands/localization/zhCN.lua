local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "zhCN", false, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes：暗影国度"
L["options_title"] = "暗影国度"
L["covenant_required"] = "需要%s盟约。"

local ACHAN = "anima channeled to %s."
L["achan_citadel_of_loyalty"] = ACHAN:format('忠诚堡垒')
L["achan_dominance_keep"] = ACHAN:format('统御要塞')
L["achan_dreamsong_fenn"] = ACHAN:format('梦歌沼泽')
L["achan_house_of_constructs"] = ACHAN:format('造物密院')
L["achan_temple_of_courage"] = ACHAN:format('勇气神庙')
L["achan_theater_of_pain"] = ACHAN:format('伤逝剧场')
L["achan_tirna_scithe"] = ACHAN:format('塞兹仙林')
L["achan_wanecrypt_hill"] = ACHAN:format('凋窖岭')

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "骑上圈内的稀有并使用 {spell:319566} 和 {spell:319575} 使其减速和昏迷。"
L["faeflayer_note"] = "瀑布后面隐藏的小洞穴内。"
L["humongozz_note"] = "种植一个 {item:175247} 在潮湿的沃土将刷新 {npc:164122}。在一分钟后 {spell:319367}，稀有将刷新。区域内的许多怪物都掉落蘑菇。"
L["lehgo_note"] = "摧毁颤动的戈姆蛋并击杀 {npc:171827} 直到他出现。在洞穴内（入口在东南尘泥地穴内）。"
L["rootwrithe_note"] = "触碰 {npc:167928} 直到稀有出现。"
L["rotbriar_note"] = "和 {npc:171684} 交谈对话后在附近召唤稀有。"
L["slumbering_note"] = "跑到迷雾中将昏迷并被带出。使用信号弹或带 AOE 的宠物把他击出迷雾。"
L["skuld_vit_note"] = "在被障碍物阻挡的山洞中。法夜必须使用 {spell:310143} 进入洞穴。他进入战斗后，障碍物将消失。"
L["valfir_note"] = "在闪光的心能之种下降过程中点击并使用 {spell:338045} 移除他的 {spell:338038} 增益。"
L["wrigglemortis_note"] = "与 {npc:164179} 战斗刷新稀有。"

L["night_mare_note"] = [[
前往塞兹仙林，并沿着西北悬崖的树根路前往破损的车。在那可以在地面上拾取 {item:181243}。

把此物品带给位于闪瀑盆地的 {npc:165704}。她讲给你一个 {item:181242} 换成10个 {item:173204}。|cFFFF8C00如果她不在这里，你必须完成|cFFFFFD00戈姆蛴围栏的麻烦|r和|cFFFFFD00捣蛋的林鬼|r任务线。|r

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

L["aspirant_eolis_note"] = "Loot a nearby {item:180613} and read it with the NPC targeted to activate him."
L["baedos_note"] = "Carry casks of Fermenting Purian Fruit from the surrounding area to {npc:161536} until he activates."
L["basilofos_note"] = "Move around the rock until a purple fixate marker appears over your head. Stand still and wait for four emotes to appear, then he will spawn."
L["beasts_of_bastion"] = "晋升堡垒之兽"
L["beasts_of_bastion_note"] = [[
Talk to {npc:161441} to summon one of the four beasts.

|cFFFF0000NOTE|r: The NPC is often bugged and will not talk to you.
]]
L["bookkeeper_mnemis_note"] = "Has a chance to spawn in place of the {npc:166867} units in the area."
L["cloudfeather_patriarch_note"] = "Kill {npc:158110} in the area until the rare emotes and spawns."
L["collector_astor_note"] = "Read all six chapters of Mercia's Legacy scattered around the room, after which you will receive a whisper from {npc:157979}. Talk to her to receive {spell:333779}, allowing you to find the hidden {item:180569} to the northwest. Returning the chapter will spawn the rare."
L["corrupted_clawguard_note"] = "Loot a {item:180651} in Forgefire Outpost up the hill and use it to repair the {npc:171300}."
L["dark_watcher_note"] = "Can only be seen while dead. Talk to her and she will cast {spell:332830} on you before attacking."
L["demi_hoarder_note"] = "Starts with 99 stacks of {spell:333874}, reducing damage taken. Stacks are slowly removed with damage. The rare will follow a path and despawn if it reaches the end."
L["dionae_note"] = "When she becomes immune, click the four {npc:163747} to break her shield."
L["herculon_note"] = [[
Collect {item:172451} and use them to give {npc:158659} stacks of {spell:343531}. At 10 stacks, he will activate.

Motes can be collected from nearby 耗尽的心能之罐 located in the room or just outside.
]]
L["nikara_note"] = "With two other players, click the Ancient Incense to summon."
L["sundancer_note"] = "Click the statue to obtain the {spell:332309} buff, then use a {item:180445} to glide to the rare and mount it."
L["unstable_memory_note"] = "Can be spawned when {npc:171018}s are present. Drag one {npc:171018} into others to give it 10 stacks of {spell:333558}, turning it into the rare."
L["wingflayer_note"] = "To summon, click the Horn of Courage on the nearby table (southeast, up the stairs)."

L["broken_flute"] = "Kill nearby {npc:170009} until they drop the {item:180536}, then use the tools to repair it."
L["experimental_construct_part"] = "Loot a nearby {item:180534} and use it to repair the part. The anima has multiple spawn locations."
L["larion_harness"] = "Located inside the 野兽大厅."
L["memorial_offering"] = "Purchase a {item:180788} from {npc:171526} in 候选者之憩. Place it in the drink tray near the chest to obtain the {item:180797}."
L["scroll_of_aeons"] = "Loot 2 {item:173973} in the center area and place them on the nearby tribute platters to reveal the treasure."
L["vesper_of_silver_wind"] = "Complete the {achievement:14339} achievement and then talk to {npc:171732} near the entrance to Spires of Ascension to forge a {item:180858}."

L["gift_of_agthia"] = "Click the lit torch near the broken bridge to the northwest and carry {spell:333320} from torch to torch until you reach the chest. Lighting the final torch will grant you {spell:333063}."
L["gift_of_chyrus"] = "Kneel in front of the chest to be granted {spell:333045}."
L["gift_of_devos"] = [[
Southwest of the chest is a torch where you can pick up the {spell:333912}. Mounting, entering combat or taking damage will drop the flame. You must make your way back to the chest and place the flame in the Brazier of Devotion to be granted {spell:333070}.

Before picking up the flame, clear all mobs in front of the chest. While running the flame, click any {npc:156571} along the way for a {spell:335012} debuff that increases movement speed.
]]
L["gift_of_thenios"] = [[
Behind the chest is a flight pad called "智慧之路". This leads to a sequence of platforms with different incenses you can commune with:

• Incense of Knowledge
• Incense of Patience
• Incense of Insight
• Incense of Judgement

Commune with them in the order Patience => Knowledge => Insight. On the Judgement platform an orb called the "Path of Insightful Wisdom" will appear.

The orb will take you to the true Incense of Judgment. Commune with it and the final flight pad will grant you {spell:333068} to open the chest.
]]
L["gift_of_vesiphone"] = "Ring one of the bells to spawn a {npc:170849} and kill it to receive the {spell:333239} debuff. The falling water opposite the chest will cleanse this debuff and grant you {spell:332785}."

L["cache_of_the_ascended"] = "Cache of the Ascended"
L["cache_of_the_ascended_note"] = "With four other players, click the five Vespers of Purity, Courage, Humility, Wisdom and Loyalty at the same time. Afterwards, head to Aspirant's Crucible to defeat the Ascended Council and reveal the cache."

L["anima_shard"] = "失落的心能碎片"
L["anima_shard_61225"] = "On a lower platform below the bridge."
L["anima_shard_61235"] = "On a ledge above the waterfall."
L["anima_shard_61236"] = "On top of an arch halfway up the main structure."
L["anima_shard_61237"] = "On a ledge just above the water."
L["anima_shard_61238"] = "In the water beneath a small bridge."
L["anima_shard_61239"] = "On top of a thin stone column."
L["anima_shard_61241"] = "Above the entrance to the Chamber of First Reflection."
L["anima_shard_61244"] = "On a rock in the side of the cliff."
L["anima_shard_61245"] = "On a rock above a small waterfall."
L["anima_shard_61247"] = "On the wall above a small water fixture."
L["anima_shard_61249"] = "Hidden behind a stone column on the upper level of 纯洁之巅."
L["anima_shard_61250"] = "Sitting behind a staircase."
L["anima_shard_61251"] = "Sitting beneath a small bell."
L["anima_shard_61253"] = "On top of a fallen stone archway."
L["anima_shard_61254"] = "On top of a small wooden structure."
L["anima_shard_61257"] = "On a small ledge directly beneath {npc:162523}."
L["anima_shard_61258"] = "On a small ledge on the underside of 英雄之眠."
L["anima_shard_61260"] = "On the ground under the platform."
L["anima_shard_61261"] = "On a ledge above {npc:163460}'s cave."
L["anima_shard_61263"] = "On top of a stone pillar."
L["anima_shard_61264"] = "On top of a tilted structure."
L["anima_shard_61270"] = "Sitting at the base of a tree."
L["anima_shard_61271"] = "In a bookcase on the upper platform."
L["anima_shard_61273"] = "On a ledge directly below the jutting cliff."
L["anima_shard_61274"] = "Hidden beneath the platform."
L["anima_shard_61275"] = "In the Hall of Beasts behind some barrels."
L["anima_shard_61277"] = "On top of a thin stone column."
L["anima_shard_61278"] = "Underneath the bridge on a rock."
L["anima_shard_61279"] = "On top of a thin stone column."
L["anima_shard_61280"] = "On the corner of the table."
L["anima_shard_61281"] = "On a ledge above the Memorial Offerings treasure."
L["anima_shard_61282"] = "On a ledge way below the cliff top. Jump on the rock next to it or you will be ported back up."
L["anima_shard_61283"] = "In a cave under Miri's Chapel, behind some barrels."
L["anima_shard_61284"] = "On a ledge under a rocky overhang, path to the south."
L["anima_shard_61285"] = "At the end of a small rock ledge."
L["anima_shard_61286"] = "On a ledge overlooking the path."
L["anima_shard_61287"] = "On a ledge above the small waterfall."
L["anima_shard_61288"] = "On the tip of a small ledge."
L["anima_shard_61289"] = "On top of the gazebo."
L["anima_shard_61290"] = "At the end of a narrow rock ledge."
L["anima_shard_61291"] = "At the bottom of the pond by the feet of a statue."
L["anima_shard_61292"] = "On top of the stone archway."
L["anima_shard_61293"] = "On top of a thin stone column on the lower level."
L["anima_shard_61294"] = "Hidden behind a stack of barrels."
L["anima_shard_61295"] = "Behind {npc:156889} in a bookshelf."
L["anima_shard_61296"] = "Behind the large fallen bell."
L["anima_shard_61297"] = "Behind a stone pillar."
L["anima_shard_61298"] = "Sitting behind a lounge chair."
L["anima_shard_61299"] = "Hidden behind a large torch."
L["anima_shard_61300"] = "On a ledge hanging over the central font."
L["options_icons_anima_shard"] = "失落的心能碎片"
L["options_icons_anima_shard_desc"] = "Display the locations of all 50 lost anima shards for the 碎片苦工 achievement."

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Destroy the {npc:159885} to activate the rare."
L["deepscar_note"] = "Can appear in multiple entrances to the 伤逝剧场."
L["forgotten_mementos"] = "Pull the Vault Portcullis Chain in the chamber west of the treasure to open the gate."
L["gieger_note"] = "Pull the {npc:162815} to activate the rare."
L["gristlebeak_note"] = "Break all nearby {npc:162761} to engage the rare."
L["leeda_note"] = "Kill the two {npc:162220}s until the rare spawns."
L["malkorak_note"] = "At the top of the tower (lots of stairs)."
L["schmitd_note"] = "Use nearby {spell:313451} to break his shield."
L["taskmaster_xox_note"] = "Shares a spawn with {npc:160204}, {npc:160230} and {npc:160226}."
L["zargox_the_reborn_note"] = "Use {item:175841} on top of the {npc:157124}. To obtain the orb, you must complete the quest \"The Aetherlife\" from {npc:157076} and talk to him again."
L["mixed_pool_note"] = [[
Gather ingredients from the surrounding mobs and toss them into the pool. Once 30 ingredients have been added, one of seven rares will spawn depending on the combination used.

• Collect {spell:306713} from {npc:167923} and {npc:167948} to the north.

• Collect {spell:306719} from {npc:165015} and {npc:171142} to the south.

• Collect {spell:306722} from {npc:165027} and {npc:166438} to the south.
]]

L["blackhound_cache"] = "黑犬宝箱"
L["bladesworn_supply_cache"] = "刃誓补给箱"

L["glutharns_note"] = "In a cave behind the waterfall of slime. Kill {npc:172485} and both {npc:172479} to unlock the chest."
L["kyrian_keepsake_note"] = "Inspect the {npc:169664} to loot the treasure."
L["misplaced_supplies"] = "On top of the giant mushroom. Run up the hill and jump onto the smaller brown mushroom, then run up the larger hill and jump onto the giant mushroom."
L["necro_tome_note"] = "To get access to the tower, you have to start a small quest line from {npc:166657}. In a bookcase on the top floor."
L["plaguefallen_chest_note"] = [[
Stand in the green slime (requires healing!) to get 10 stacks of {spell:330069} and be transformed into a {spell:330092}.

Once transformed, visit the cave underneath {npc:158406}'s platform (entrance on the east side) and click the pipe to transport to the chest.
]]
L["ritualists_cache_note"] = "Loot the {item:181558} from a bone pile (multiple spawn locations). Use them to complete the Book of Binding Rituals on the stand behind {npc:174386} and gain the {spell:337041} buff."
L["runespeakers_trove_note"] = "Find {npc:170563} to the east and kill him to obtain the {item:181777}."
L["stolen_jar_note"] = "In a cave underneath the giant mushroom."
L["strange_growth_note"] = "Pull on the {npc:165037} to reveal the treasure."
L["vat_of_slime_note"] = "Click the bottle on the table and then click on the vat of slime."

L["giant_cache_of_epic_treasure"] = "Giant Cache of Epic Treasure"
L["spinebug_note"] = [[
Oh look! A {spell:343124}! Approach it brave adventurer, this is surely not a ruse. Wait, is that the music from Karazhan? What is this {npc:174663} doing here ...?

{spell:343163}!
]]

L["oonar_sorrowbane_note"] = [[
In the Theater of Pain, you will find Sorrowbane stuck in the ground and Oonar's Arm attached to it. |cFFFF8C00Before attempting to pull either, set your {item:6948} to {npc:161702} by the flight point.|r

To pull {item:181164} free:

• Travel to Glutharn's Decay to the east.
• Eat 4x {spell:327367} (2min debuff).
• Quickly hearth and pull on the arm.

To pull {item:180273} free:

• Purchase 1 {item:182163} from {npc:171808} in Revendreth.
• Purchase 1 {item:180771} from {npc:166640} in Maldraxxus.
• Get 2 stacks of {spell:306272} from the |cFFFFFD00[A Few Bumps Along the Way]|r world quest to the west.
• Eat 4x {spell:327367} in Glutharn's Decay.
• Quickly hearth, drink both potions and pull on the sword.
]]

L["pet_cat"] = "Pet the damn cat!"
L["hairball"] = ns.color.Red("Only appears in the 腐烂圣所 inside the 凋魂之殇 dungeon!")
L["lime"] = "Sitting on top of the large bone arch."
L["moldstopheles"] = "Run around the back of the stalk and jump up the mushroom platforms. For the final platform, use a mount and jump at the corner where it meets the stalk."
L["pus_in_boots"] = "Located under the bridge."

L["options_icons_slime_cat"] = "Kittens"
L["options_icons_slime_cat_desc"] = "Display locations of kittens for the 亡命九条 achievement."

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