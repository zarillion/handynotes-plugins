local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

local Gold = ns.color.Gold

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
L['legion_war_supplies_note'] = 'There are 9 unique {object:Legion War Supplies} that can each appear at set locations.'

L['options_icons_legion_war_supplies'] = 'Legion War Supplies'
L['options_icons_legion_war_supplies_desc'] = 'Display possible locations for {object:Legion War Supplies} (daily chests).'

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
L['devious_sunrunner_note'] = 'Use the {object:Ley Portal} in a small cave. Don\'t forget to loot the chest.'
L['doomlord_kazrok_note'] = 'Speak with {npc:91580}.'
L['felwing_note'] = 'Speak with {npc:105913} and then kill {npc:105919s} until the rare appears.'
L['golza_note'] = 'Blow the {object:Horn of the Siren}, then kill {npc:90774s} and {npc:90778s} until the rare appears.'
L['infernal_lord_note'] = 'Click the {object:Cache of Infernals} and kill {npc:90797s} until the rare appears.'
L['inquisitor_tivos_note'] = 'Use the {object:Legion Portal}. He is on a lower floor.'
L['shaliman_note'] = 'Walks around the pool.'

L['disputed_treasure'] = 'Disputed Treasure'
L['in_academy'] = 'Inside {location:Nar\'thalas Academy}.'
L['in_oceanus_cove'] = 'Inside the {location:Oceanus Cove}.'
L['seemingly_unguarded_treasure'] = 'Seemingly Unguarded Treasure'
L['seemingly_unguarded_treasure_note'] = 'Try to loot the {object:Seemingly Unguarded Treasure} and then kill a few waves of {npc:94167s}.'
L['treasure_37958'] = 'On a lower level of the building.'
L['treasure_37980'] = 'Use the {object:Ley Portal} on the broken bridge.'
L['treasure_40711'] = 'Use the {object:Ley Portal} inside the tower.'
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
L['higher_dimensional_learning_note'] = 'Purchase {item:129276} from {npc:107376} at {location:Crumbled Palace}. Use {item:129276} each day to be teleported to a different book location.\n\nBook 1: Sunday\nBook 2: Monday\nBook 3: Tuesday\nBook 4: Wednesday\nBook 5: Thursday\nBook 6: Friday\nBook 7: Saturday'
L['higher_dimensional_learning_disclaimer'] = '{note:Teleporting to a book location does not guarentee the book will spawn. You may need to wait or check back later.}'

L['options_icons_higher_dimensional_learning'] = '{achievement:11175}'
L['options_icons_higher_dimensional_learning_desc'] = 'Display book locations for {achievement:11175} achievement.'

-------------------------------------------------------------------------------
-------------------------------- BROKEN SHORE ---------------------------------
-------------------------------------------------------------------------------

L['bringing_home_the_beacon_note'] = 'While under {npc:127264}, you will be buffed with {spell:240640}.\n\nKill demons to loot various |cFFFFFD00Sentinax Beacons|r.'

L['options_icons_bringing_home_the_beacon'] = '{achievement:11802}'
L['options_icons_bringing_home_the_beacon_desc'] = 'Display {npc:127264} locations for {achievement:11802} achievement.'

L['hidden_wyrmtongue_cache_label'] = 'Hidden Wyrmtongue Cache'
L['in_horde_ship'] = 'In the crashed Horde airship.'
L['broken_shore_worldboss_note'] = 'Will only spawn when the {location:The Nether Disruptor} is up. Only one Worldboss will spawn per cycle.'
L['sentinax_rare_note'] = [[
To spawn the bosses you need to farm the mobs and use beacons to open portals under {npc:127264} while you have the {spell:240640} buff.

{npc:%d} requires
{item:%d}
->
{item:%d}
->
{item:%d}

When the {location:The Nether Disruptor} is up, {npc:120898} will sell {item:147775} that can be used on {npc:120751s} up to 50 time per day.
The Portals will then spawn Elite Mobs that have a higher chance of dropping {item:%d}.
]]

-------------------------------------------------------------------------------
---------------------------------- DALARAN ------------------------------------
-------------------------------------------------------------------------------

-- Midnight tz per region: US=>PST, KR=>KST, EU=>CET, TW=>CST, CN=>CST
local tz = ({'PST', 'KST', 'CET', 'CST', 'CST'})[GetCurrentRegion()] or UNKNOWN

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
L['turek_the_lucid_note'] = 'In the {location:Oronaar Collapse}'

L['ancient_eredar_cache'] = 'Ancient Eredar Cache'
L['ancient_eredar_cache_note'] = 'There are 6 unique {object:Ancient Eredar Caches} that can each appear at set locations.'
L['void_seeped_cache'] = 'Void-Seeped Cache'
L['void_seeped_cache_note'] = 'There are 2 unique {object:Void-Seeped Caches} that can each appear at set locations. {note:These do not contain transmogs.}'

L['options_icons_ancient_eredar_cache'] = 'Ancient Eredar Cache'
L['options_icons_ancient_eredar_cache_desc'] = 'Display possible locations for {object:Ancient Eredar Caches} (daily chests).'
L['options_icons_void_seeped_cache'] = 'Void-Seeped Cache'
L['options_icons_void_seeped_cache_desc'] = 'Display possible locations for {object:Void-Seeped Caches} (daily chests).'

-------------------------------------------------------------------------------
-------------------------------- HIGHMOUNTAIN ---------------------------------
-------------------------------------------------------------------------------

L['odrogg_note'] = 'You think you can best my snails?'
L['grixis_tinypop_note'] = 'This\'ll be easy!'
L['bredda_tenderhide_note'] = 'Let the bravest prove victorious!'
L['unethical_adventurers'] = 'Unethical Adventurers'
L['unethical_adventurers_note'] = 'Click on the {object:Seemingly Unguarded Treasure} to summon the {npc:Unethical Adventurers}.'
L['taurson_note'] = 'Talk to {npc:97653} and challange him to fight.\nWhen you defeat him, {object:Taurson\'s Prize} will spawn.'
L['arru_note'] = 'Talk to {npc:97215} to start the encounter with {npc:97220}.\n\nWhen {npc:97215} has tamed the bear, {object:Thunder Totem Stolen Goods} will spawn in the back of the small cave.'
L['tt_hoc'] = 'Down in the {location:Hall of Chieftains}.'
L['steamy_jewelry_box'] = 'A Steamy Jewelry Box'
L['flamescale_note'] = 'Use the {object:Abandoned Fishing Pole} to summon {npc:97793}.'
L['amateur_hunters_note'] = 'After defeating the three {npc:Amateur Hunters} the {object:Battered Chest} will spawn in the back of the small cave.'
L['treasure_40482'] = 'On the nose of the huge statue.'
L['mrrklr_note'] = 'Free {npc:98754} to spawn {npc:98311}.'
L['mytna_talonscreech_note'] = 'Talk to {npc:97579} to start the fight against {npc:97593}.'
L['devouring_darkness_note'] = 'Extinguish all {npc:97543s} to summon {npc:100495}.'
L['totally_safe_treasure_chest'] = 'Totally Safe Treasure Chest'
L['rocfeather_kite_note'] = 'Combine {item:131809}, {item:131926} and {item:131927} with {item:131810}, to get the {item:131811}.'

-------------------------------------------------------------------------------
-------------------------------- KROKUUN --------------------------------------
-------------------------------------------------------------------------------

L['eredar_war_supplies'] = 'Eredar War Supplies'
L['eredar_war_supplies_note'] = 'There are 7 unique {object:Eredar War Supplies} that can each appear at set locations.'

L['options_icons_eredar_war_supplies'] = 'Eredar War Supplies'
L['options_icons_eredar_war_supplies_desc'] = 'Display possible locations for {object:Eredar War Supplies} (daily chests).'

-------------------------------------------------------------------------------
--------------------------------- STORMHEIM -----------------------------------
-------------------------------------------------------------------------------
L['to_stormheim'] = 'Portal to Stormheim'
L['to_helheim'] = 'Portal to Helheim'

L['trapper_jarrun_note'] = 'Muster your defenses mortal.'
L['robert_craig_note'] = 'Sic \'em!'
L['stormtalon_note'] = 'Try not to One-Shot him or you won\'t be able to mount him.'
L['going_up_note'] = 'Ascend to the top of {location:Nashal\'s Watch} in {location:Stormheim}.' -- wowhead.com/achievement=10627
L['nameless_king_note'] = 'Use the {object:Offering Shrine} to summon {npc:92763}.'
L['captain_brvet_note'] = 'Use the {object:Horn of the Helmouth} to summon {npc:92685}.'
L['mother_clacker_note'] = 'Speak to {npc:92343} and kill the {npc:92349s} to summon {npc:91780}.'
L['thane_irglov_note'] = 'Defeat the champions to make him attackable.'

L['hook_and_sinker'] = '{npc:92590} & {npc:92591}'
L['forsaken_deathsquad'] = 'Forsaken Deathsquad'
L['worgen_stalkers'] = 'Worgen Stalkers'

-------------------------------------------------------------------------------
---------------------------------- SURAMAR ------------------------------------
-------------------------------------------------------------------------------

L['varenne_note'] = 'I must get back to my cooking!'
L['master_tamer_flummox_note'] = 'Flummox no need pets! Flummox eats them NOW!'
L['aulier_note'] = 'Let\'s begin your lesson in humility.'
L['myonix_note'] = '{bug:Currently bugged, needs a relog to show the credit towards {achievement:11265} achievement.}'
L['arcanist_lylandre_note'] = 'To attack her you must remove the barriers by clicking on the crystals.'
L['gorgroth_note'] = 'Use the {object:Portal Key} to summon {npc:110832}.'
L['inside_temple_of_faladora'] = 'Inside the {location:Temple of Fal\'adora}.'
L['inside_falanaar_tunnels'] = 'Inside the {location:Falanaar Tunnels}.'
L['ancient_mana_chunk'] = 'Ancient Mana Chunk'
L['dusty_coffer'] = 'Dusty Coffer'
L['protected_treasure_chest'] = 'Protected Treasure Chest'

-------------------------------------------------------------------------------
--------------------------------- VAL'SHARA -----------------------------------
-------------------------------------------------------------------------------

L['anthydas_note'] = 'Loot the treasure chest on the second floor of the building next to the sink.'
L['elandris_note'] = 'Not available when the legion invasion world quest {wq:The Vale of Dread} is active.'
L['gathenak_note'] = 'Speak with {npc:112472}.'
L['gorebeak_note'] = 'Speak with {npc:92111}.'
L['jinikki_note'] = 'Speak with {npc:93677} and kill {npc:93684s} until the rare appears.'
L['kiranys_note'] = 'Click the {object:Vibrating Arcane Trap}.'
L['mad_henryk_note'] = 'Step into the {npc:109602}.'
L['skulvrax_note'] = 'Resuscitate {npc:92334} and follow her.'
L['theryssia_note'] = 'Read {npc:94194}\'s nameplate on the gravestone.'
L['unguarded_thistleleaf_treasure'] = 'Unguarded Thistleleaf Treasure'

L['in_darkpens'] = 'Inside the {location:Darkpens}.'
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

L['general_pet_tamer_note'] = '{note:Only appears when the corresponding world quest is active.}'

L['options_icons_safari'] = '{achievement:11233}'
L['options_icons_safari_desc'] = 'Display battle pet locations for the {achievement:11233} achievement.'
