local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

local Gold = ns.color.Gold
local Orange = ns.color.Orange
local Red = ns.color.Red

-------------------------------------------------------------------------------
------------------------------- ANTORAN WASTES --------------------------------
-------------------------------------------------------------------------------

L['commander_texlaz_note'] = 'No longer requires {quest:48831} world quest to be active. Take the green portal.'
L['doomcaster_suprax_note'] = 'No longer requires three players. Simply step on a rune to summon {npc:127703}.'
L['mother_rosula_note'] = 'Collect 100 {item:152999} from {npc:126073} and combine them to make a {item:153013}. Use the {item:153013} on her fel pool.'
L['reziera_the_seer_note'] = 'While buffed with {spell:254174} collect 500 {item:153021} to purchase {item:153226} from {npc:128134}. Use the {item:153226} to send you (and your party) to {npc:127706}.'
L['squadron_commander_vishax_note'] = 'Collect {item:152890} from {npc:127598}.\n\nCollect {item:152941}, {item:152940}, and {item:152891} from {npc:127597} and {npc:127596}.\n\nUse {item:152890} to get {quest:49007}.\n\n{note:This quest is sharable.}'
L['ven_orn_note'] = 'Enter the cave of spiders, take a right, and go down into another small cave. She is in this 2nd chamber at the rear.'

L['the_many_faced_devourer_note'] = 'Collect {item:152786} from {npc:126193} and {npc:126171} in {location:Scavenger\'s Boneyard}.\n\nCollect {item:152991}, {item:152992}, and {item:152993}.\n\nSummon {npc:127581} at the {npc:127442}.\n\n{note:If you can\'t see the {npc:127442} you may need to relog.}'
L['the_many_faced_devourer_checklist'] = Gold('Item Checklist (in bags or bank):')

L['orix_the_all_seer_note'] = 'Sells collectibles in exchange for {item:153021}.'

L['legion_war_supplies'] = 'Legion War Supplies'
L['legion_war_supplies_note'] = 'There are 9 unique legion war supplies that can each appear at set locations.'

L['options_icons_legion_war_supplies'] = 'Legion War Supplies'
L['options_icons_legion_war_supplies_desc'] = 'Display possible locations for legion war supplies (daily chests).'

-------------------------------------------------------------------------------
------------------------------------ ARGUS ------------------------------------
-------------------------------------------------------------------------------

L['drops_fel_spotted_egg'] = 'Drops {item:153190}'
L['fel_spotted_egg_contains'] = '{item:153190} can contain'

L['goblin_glider_treasure_note'] = 'Use {item:109076} to glide to the treasure.'
L['lightforged_warframe_treasure_note'] = 'Activate {item:152098} at the {npc:121365} aboard the {npc:126426}.\n\nUse {item:152098} and {spell:250434} to melt the rocks and find the treasure.'
L['lights_judgement_treasure_note'] = 'Activate {item:151830} at the {npc:121365} aboard the {npc:126426}.\n\nUse {item:151830} to explode the rocks and find the treasure.'
L['shroud_of_arcane_echoes_treasures_note'] = 'Activate {item:151912} at the {npc:121365} aboard the {npc:126426}.\n\nUse {item:151912} unlock the treasure.\n\n{note:"Will only open to one wielding the power that echoes that of the Augari."}'

-------------------------------------------------------------------------------
----------------------------------- AZSUNA ------------------------------------
-------------------------------------------------------------------------------

L['arcavellus_note'] = 'Kill {npc:90242s} and {npc:90243s} until the rare appears.'
L['beacher_note'] = 'Not available when the {wq:Helarjar Landing: Grey Shoals} world quest is active.'
L['brogozog_note'] = 'Speak with {npc:91097}.'
L['chief_bitterbrine_note'] = 'In the ship on the lower deck.'
L['devious_sunrunner_note'] = 'Use the Ley Portal in a small cave. Don\'t forget to loot the chest.'
L['doomlord_kazrok_note'] = 'Speak with {npc:91580}.'
L['felwing_note'] = 'Speak with {npc:105913} and then kill {npc:105919s} until the rare appears.'
L['golza_note'] = 'Blow the Horn of the Siren, then kill {npc:90774s} and {npc:90778s} until the rare appears.'
L['infernal_lord_note'] = 'Click the Cache of Infernals and kill {npc:90797s} until the rare appears.'
L['inquisitor_tivos_note'] = 'Use the Legion Portal. He is on a lower floor.'
L['shaliman_note'] = 'Walks around the pool.'

L['disputed_treasure'] = 'Disputed Treasure'
L['in_academy'] = 'Inside Nar\'thalas Academy.'
L['in_oceanus_cove'] = 'Inside the Oceanus Cove.'
L['seemingly_unguarded_treasure'] = 'Seemingly Unguarded Treasure'
L['seemingly_unguarded_treasure_note'] = 'Try to loot the treasure and then kill a few waves of {npc:94167s}.'
L['treasure_37958'] = 'On a lower level of the building.'
L['treasure_37980'] = 'Use the Ley Portal on the broken bridge.'
L['treasure_40711'] = 'Use the Ley Portal inside the tower.'
L['treasure_42282'] = 'On the balcony in a corner.'
L['treasure_42283'] = 'On the second floor.'
L['treasure_42287'] = 'Under water.'
L['treasure_42339'] = 'Don\'t wake up the bears.'

L['nightwatcher_merayl_note'] = 'Formations!'

L['book_1'] = 'Book 1 (Sunday)'
L['book_2'] = 'Book 2 (Monday)'
L['book_3'] = 'Book 3 (Tuesday)'
L['book_4'] = 'Book 4 (Wednesday)'
L['book_5'] = 'Book 5 (Thursday)'
L['book_6'] = 'Book 6 (Friday)'
L['book_7'] = 'Book 7 (Saturday)'

L['higher_dimensional_learning_location'] = 'Located at the top of the tower.'
L['higher_dimensional_learning_note'] = 'Purchase {item:129276} from {npc:107376} at |cFFFFFD00Crumbled Palace|r. Use {item:129276} each day to be teleported to a different book location.\n\nBook 1: Sunday\nBook 2: Monday\nBook 3: Tuesday\nBook 4: Wednesday\nBook 5: Thursday\nBook 6: Friday\nBook 7: Saturday'
L['higher_dimensional_learning_disclaimer'] = '{note:Teleporting to a book location does not guarentee the book will spawn. You may need to wait or check back later.}'

L['options_icons_higher_dimensional_learning'] = '{achievement:11175}'
L['options_icons_higher_dimensional_learning_desc'] = 'Display book locations for {achievement:11175}'

-------------------------------------------------------------------------------
-------------------------------- BROKEN SHORE ---------------------------------
-------------------------------------------------------------------------------

L['bringing_home_the_beacon_note'] = 'While under {npc:127264}, you will be buffed with {spell:240640}.\n\nKill demons to loot various |cFFFFFD00Sentinax Beacons|r.'

L['options_icons_bringing_home_the_beacon'] = '{achievement:11802}'
L['options_icons_bringing_home_the_beacon_desc'] = 'Display {npc:127264} locations for {achievement:11802}'

-------------------------------------------------------------------------------
---------------------------------- DALARAN ------------------------------------
-------------------------------------------------------------------------------

-- Midnight tz per region: US=>PST, KR=>KST, EU=>CET, TW=>CST, CN=>CST
local tz = ({'PST', 'KST', 'CET', 'CST', 'CST'})[GetCurrentRegion()]

L['sheddles_chest'] = 'Sheddle\'s Chest'
L['shoe_shine_kit_note'] = 'Every Saturday night at midnight (' .. tz .. ') {npc:97003} will drop his chest on the ground for a couple hours and leave.'
L['wand_simulated_life_note'] = 'Upstairs on the table.'

L['sir_galveston_note'] = 'Are you ready Sir Murkeston? Fight gallantly!'
L['amalia_note'] = 'You\'re all bark and no bite.'
L['tiffany_nelson_note'] = 'Bring it on!'
L['bohdi_sunwayver_note'] = 'Sun\'s out! Pets out!'

-------------------------------------------------------------------------------
----------------------------------- EREDATH -----------------------------------
-------------------------------------------------------------------------------

L['kaara_the_pale_note'] = '{npc:126860} no longer drops {item:153190}'
L['turek_the_lucid_note'] = 'In the |cFFFFFD00Oronaar Collapse|r'

L['ancient_eredar_cache'] = 'Ancient Eredar Cache'
L['ancient_eredar_cache_note'] = 'There are 6 unique ancient eredar caches that can each appear at set locations.'
L['void_seeped_cache'] = 'Void-Seeped Cache'
L['void_seeped_cache_note'] = 'There are 2 unique void-seeped caches that can each appear at set locations. |c00ff0000These do not contain transmogs.|r'

L['options_icons_ancient_eredar_cache'] = 'Ancient Eredar Cache'
L['options_icons_ancient_eredar_cache_desc'] = 'Display possible locations for ancient eredar caches (daily chests).'
L['options_icons_void_seeped_cache'] = 'Void-Seeped Cache'
L['options_icons_void_seeped_cache_desc'] = 'Display possible locations for void-seeped caches (daily chests).'

-------------------------------------------------------------------------------
-------------------------------- HIGHMOUNTAIN ---------------------------------
-------------------------------------------------------------------------------

L['odrogg_note'] = 'You think you can best my snails?'
L['grixis_tinypop_note'] = 'This\'ll be easy!'
L['bredda_tenderhide_note'] = 'Let the bravest prove victorious!'

-------------------------------------------------------------------------------
-------------------------------- KROKUUN --------------------------------------
-------------------------------------------------------------------------------

L['eredar_war_supplies'] = 'Eredar War Supplies'
L['eredar_war_supplies_note'] = 'There are 7 unique eredar war supplies that can each appear at set locations.'

L['options_icons_eredar_war_supplies'] = 'Eredar War Supplies'
L['options_icons_eredar_war_supplies_desc'] = 'Display possible locations for eredar war supplies (daily chests).'

-------------------------------------------------------------------------------
--------------------------------- STORMHEIM -----------------------------------
-------------------------------------------------------------------------------

L['trapper_jarrun_note'] = 'Muster your defenses mortal.'
L['robert_craig_note'] = 'Sic \'em!'

-------------------------------------------------------------------------------
---------------------------------- SURAMAR ------------------------------------
-------------------------------------------------------------------------------

L['varenne_note'] = 'I must get back to my cooking!'
L['master_tamer_flummox_note'] = 'Flummox no need pets! Flummox eats them NOW!'
L['aulier_note'] = 'Let\'s begin your lesson in humility.'

-------------------------------------------------------------------------------
--------------------------------- VAL'SHARA -----------------------------------
-------------------------------------------------------------------------------

L['anthydas_note'] = 'Loot the treasure chest on the second floor of the building next to the sink.'
L['elandris_note'] = 'Not available when the legion invasion world quest {wq:The Vale of Dread} is active.'
L['gathenak_note'] = 'Speak with {npc:112472}.'
L['gorebeak_note'] = 'Speak with {npc:92111}.'
L['jinikki_note'] = 'Speak with {npc:93677} and kill {npc:93684s} until the rare appears.'
L['kiranys_note'] = 'Click the Vibrating Arcane Trap.'
L['mad_henryk_note'] = 'Step into the {npc:109602}.'
L['skulvrax_note'] = 'Resuscitate {npc:92334} and follow her.'
L['theryssia_note'] = 'Read {npc:94194}\'s nameplate on the gravestone.'
L['unguarded_thistleleaf_treasure'] = 'Unguarded Thistleleaf Treasure'

L['in_darkpens'] = 'Inside the Darkpens.'
L['treasure_38366'] = 'Under the tree roots.'
L['treasure_38386'] = 'On the balcony on the second floor.'
L['treasure_38387'] = 'In an small cave under the inn. The entrance is behind the building.'
L['treasure_38391'] = 'Hidden behind a tree.'
L['treasure_38943'] = 'Go up the right stairs.'
L['treasure_39069'] = 'On the second floor balcony.'
L['treasure_39074'] = 'Under the tree.'
L['treasure_39080'] = 'In the basement. You need to start a questline beginning with {quest:38643} from {npc:92688} followed by {quest:38644} from {npc:92683}.'
L['treasure_39083'] = 'Hidden in a tree.'
L['treasure_39088'] = 'Hidden in the lake between some roots.'
L['treasure_39093'] = 'On the river under the roots.'

L['grumpy_note'] = 'Upstairs in the burning building.'

L['xorvasc_note'] = 'I\'m your worst nightmare.'
L['durian_strongfruit_note'] = 'If we must...'

-------------------------------------------------------------------------------
--------------------------------- ACROSS ZONES --------------------------------
-------------------------------------------------------------------------------

L['in_house'] = 'Inside the house.'
L['in_small_cottage'] = 'In a small cottage.'

L['glimmering_treasure_chest'] = 'Glimmering Treasure Chest'
L['small_treasure_chest'] = 'Small Treasure Chest'
L['treasure_chest'] = 'Treasure Chest'
L['treasures_discovered'] = 'treasures discovered'

L['general_pet_tamer_note'] = ns.color.Orange('Only appears when the corresponding world quest is active.')
