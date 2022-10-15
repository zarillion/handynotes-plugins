local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

-------------------------------------------------------------------------------
-------------------------------- ACROSS ZONES ---------------------------------
-------------------------------------------------------------------------------

L['edge_of_reality'] = 'Edge of Reality'
L['edge_of_reality_note'] = ns.color.Yellow('Edge of Reality') ..
                                ' portal will take you to a scenario, where you can loot {item:121815}.'
L['treasures_discovered'] = 'treasures discovered'
L['strange_spore_treasure'] = 'Strange Spore'
L['multiple_spawn_note'] = 'Can spawn in multiple locations.'

L['follower'] = 'Follower'
L['complete_quest'] = 'Complete the quest(s).'
L['appears_outside_garrison'] = 'Will appear at your garrison.'

L['squirrels_note'] =
    'You must use the emote /love on critters not battle pets.'
L['options_icons_squirrels'] = '{achievement:14728}'
L['options_icons_squirrels_desc'] =
    'Critter locations for {achievement:14728} achievement.'

-------------------------------------------------------------------------------
------------------------------- FROSTFIRE RIDGE -------------------------------
-------------------------------------------------------------------------------

L['frozen_slave_label'] = '{npc:82680}'
L['prisoner_cage_label'] = 'Prisoner Cage'
L['slaves_freed'] = 'slaves freed'

L['delectable_ogre_delicacies_label'] = '{achievement:9534}'
L['delectable_ogre_delicacies_note'] = [[
{npc:82801}, {npc:82822}, and {npc:82823} can spawn in any location

{spell:166684} lasts 5 minutes
{spell:166686} lasts 2 minutes
{spell:166687} lasts 2 minutes
]]

L['options_icons_writing_in_the_snow'] = '{achievement:9531}'
L['options_icons_writing_in_the_snow_desc'] =
    'Display the locations of |cffffff00Tattered Journal Page|r for {achievement:9531}'
L['options_icons_breaker_of_chains'] = '{achievement:9533}'
L['options_icons_breaker_of_chains_desc'] =
    'Display the locations of |cffffff00Frozen Slave|r and |cffffff00Prisoner Cage|r for {achievement:9533}'
L['options_icons_delectable_ogre_delicacies'] = '{achievement:9534}'
L['options_icons_delectable_ogre_delicacies_desc'] =
    'Display the locations of delicacies for {achievement:9534}'

L['top_of_building'] = 'On top of the building.'
L['top_of_tower'] = 'On top of the tower.'
L['wiggling_egg'] = 'Wiggling Egg'
L['wiggling_egg_note'] = 'On top of the building in a nest.'
L['grimfrost_treasure'] = 'Grimfrost Treasure'
L['goren_leftovers'] = 'Goren Leftovers'
L['survivalists_cache'] = 'Survivalist\'s Cache'
L['orc_couple'] = 'Orc Couple'
L['orc_couple_note'] = 'Combine {item:107272} and {item:107273}.'
L['cragleapers_cache'] = 'Crag-Leaper\'s Cache'
L['carved_obsidian_idol'] = 'Carved Obsidian Idol'
L['devourers_gutstone'] = 'Devourer\'s Gutstone'
L['devourers_gutstone_note'] =
    'To start the ritual kill {npc:75235} and {npc:72156} will spawn.\n\nDon\'t kill {npc:72156}, feed him 10 {npc:75010} by carrying their corpses to the feeding area.'
L['forgotten_supplies'] = 'Forgotten Supplies'
L['time_warped_tower'] = 'Time-Warped Tower'
L['time_warped_tower_note'] = 'Loot the Ogers inside the tower.'
L['frozen_frostwolf_axe'] = 'Frozen Frostwolf Axe'
L['pale_loot_sack'] = 'Pale Loot Sack'
L['supply_dump'] = 'Supply Dump'
L['sealed_jug'] = 'Sealed Jug'
L['slaves_stash'] = 'Slave\'s Stash'
L['spectators_chest'] = 'Spectator\'s Chest'
L['ogre_booty_002'] = 'On the cages in the corner.'
L['ogre_booty_003'] = 'On a shelf.'
L['ogre_booty_006'] = 'Hangs from the ceiling.'
L['ogre_booty_010'] = 'Hangs from the ceiling.'
L['snow_covered_strongbox'] = 'Snow-Covered Strongbox'
L['lagoon_pool'] = 'Lagoon Pool'
L['lagoon_pool_note'] = 'Fish in the Lagoon Pool.'
L['lucky_coin'] = 'Lucky Coin'
L['ogre_cache'] = 'Ogre Cache'
L['thunderlord_cache'] = 'Thunderlord Cache'
L['senas_stash'] = 'Lady Sena\'s Materials Stash'
L['senas_other_stash'] = 'Lady Sena\'s Other Materials Stash'
L['smoldering_true_iron_deposit'] = 'Smoldering True Iron Deposit'

-------------------------------------------------------------------------------
----------------------------------- GORGROND ----------------------------------
-------------------------------------------------------------------------------

L['poundfist_note'] = 'Has really long respawn between 50 and 90 hours.'
L['trophy_of_glory_note'] =
    'You must finish building up your Gorgrond Garrison Outpost to get quest items to drop.'
L['roardan_sky_terror_note'] =
    'Flies around Tangleheart and Beastwatch and makes 3 stops on the way.'

L['explorer_canister_treasure'] = 'Explorer Canister'
L['discarded_pack_treasure'] = 'Discarded Pack'
L['ockbars_pack_treasure'] = 'Ockbar\'s Pack'
L['stashed_emergency_rucksack_treasure'] = 'Stashed Emergency Rucksack'
L['strange_looking_dagger_treasure'] = 'Strange Looking Dagger'
L['remains_of_balik_orecrusher_treasure'] = 'Remains of Balik Orecrusher'
L['odd_skull_treasure'] = 'Odd Skull'
L['sashas_secret_stash_treasure'] = 'Sasha\'s Secret Stash'
L['vindicators_hammer_treasure'] = 'Vindicator\'s Hammer'
L['remains_if_balldir_deeprock_treasure'] = 'Remains of Balldir Deeprock'
L['brokors_sack_treasure'] = 'Brokor\'s Sack'
L['suntouched_spear_treasure'] = 'Suntouched Spear'
L['warm_goren_egg_treasure'] = 'Warm Goren Egg'
L['weapons_cache_treasure'] = 'Weapons Cache'
L['petrified_rylak_egg_treasure'] = 'Petrified Rylak Egg'
L['snipers_crossbow_trerasure'] = 'Sniper\'s Crossbow'
L['iron_supply_chest_treasure'] = 'Iron Supply Chest'
L['horned_skull_treasure'] = 'Horned Skull'
L['evermorn_supply_cache_treasure'] = 'Evermorn Supply Cache'
L['harvestable_precious_crystal_treasure'] = 'Harvestable Precious Crystal'
L['femur_of_improbability_treasure'] = 'Femur of Improbability'
L['laughing_skull_cache_treasure'] = 'Laughing Skull Cache'
L['pile_of_rubble_treasure'] = 'Pile of Rubble'
L['ninja_pepe_treasure'] = 'Ninja Pepe'
L['attack_plans_treasure'] = 'Iron Horde Attack Orders'
L['laughing_skull_note'] = 'Up in the tree.'
L['warm_goren_egg_note'] =
    '{item:118705} incubates in 7 days into {item:118716}.'
L['ninja_pepe_note'] = 'Inside the hut sitting on a chair.'

L['protectors_of_the_grove_sublabel'] =
    '|cffffff00{npc:86259}|r, |cffffff00{npc:86258}|r, and |cffffff00{npc:86257}|r form the |cffffff00Protectors of the Grove|r'

L['prove_your_strength_note'] =
    'Requires {spell:164012} garrison ability to be active. To enable |cffffff00The Sparring Arena|r visit your faction outpost.'
L['prove_your_strength_drop_single'] = 'Dropped by %s.'
L['prove_your_strength_drop_double'] = 'Dropped by %s or %s.'

L['options_icons_attack_plans'] = '{achievement:9656}'
L['options_icons_attack_plans_desc'] =
    'Display the locations of Iron Horde Attack Orders for {achievement:9656}.'
L['options_icons_ancient_no_more'] = '{achievement:9678}'
L['options_icons_ancient_no_more_desc'] =
    'Display rare locations for {achievement:9678}'
L['options_icons_fight_the_power'] = '{achievement:9655}'
L['options_icons_fight_the_power_desc'] =
    'Display rare locations for {achievement:9655}'
L['options_icons_prove_your_strength'] = '{achievement:9402}'
L['options_icons_prove_your_strength_desc'] =
    'Display drop locations for {achievement:9402}'

-------------------------------------------------------------------------------
------------------------------------ NAGRAND ----------------------------------
-------------------------------------------------------------------------------

L['highmaul_farm_path'] = [[
Farming Path
1. Start at the front gate and go right into |cffffff00The Underbelly|r.
2. Go left through the gladiator pit area. Be sure to tag the ogre overlooking on the upper left.
3. Continue up the stairs and past the pond with the {npc:87227}.
4. Turn left and up into the |cffffff00Path of Victors|r.
5. Go up to the fork in the path. Be sure to tag the ogre to the right.
6. Turn left into |cffffff00The Market District|r and clear the entire thing out moving counterclockwise.
7. Go left into |cffffff00The Imperator's Favor|r, continue following the path and clear it all.
8. To Left again, down the path, and back into |cffffff00The Path of Victors|r.
9. Mount up and fly up, over, and into |cffffff00The Coliseum|r. Don't try to use the front door, it's locked.

Fly out to the right and back to the front gate. One single run takes just under 4 minutes and by the time you're back at the front gate everything will have already respawned.
]]

L['steamwheedle_note'] =
    'Farm {item:118099} and {item:118100} from {npc:87223} and {npc:87222} around |cffffff00Highmaul|r. Turn items into {npc:87393} for reputation.'

L['finding_your_waystones_label'] = '{achievement:9497}'
L['finding_your_waystones_note'] =
    'Farm {item:117491} from {npc:87223} and {npc:87222} around |cffffff00Highmaul|r'
L['ogre_waystones'] = 'ogre waystones looted'

L['signal_horn_note'] =
    'Obtain {item:120290} from nearby {npc:86658} then use the {npc:87361} to summon {npc:87239} and {npc:87344}.'

L['garroshs_shackles'] = 'Inside hut'
L['warsong_relics'] = 'Against a fence outside a hut'
L['stolen_draenei_tome'] = 'Can spawn in multiple locations on top of towers'
L['dirt_mound'] =
    'Kill {npc:86659} to spawn a {npc:87280} on the floor nearby. Click the totem to receive {spell:174572}. You can now dig up nearby {npc:87530} to find items.'

L['stable_master_note'] =
    'Talk to {stablemaster} to receive a mount-in-training whistle.\n\n{item:119441}\n{item:119442}\n{item:119443}\n{item:119444}\n{item:119445}\n{item:119446}\n\nUse the whistle to summon your mount-in-training and kill the target.\n\n{achievement:9539} requires {item:118469} from a |cffffff00Level 2 Stables|r.\n{achievement:9540} requires {item:118470} from a |cffffff00Level 3 Stables|r.'

L['making_the_cut_note'] =
    'While {npc:88210} is available kill 15 {npc:88207} around |cffffff00The Ring of Blood|r. Once 15 have been killed {npc:88210} will become targetable.\n\n' ..
        ns.color.Red(
            'Not bad for a bunch of worthless pukes! Come face Krud when you ready to die!')

L['options_icons_steamwheedle'] = '{achievement:9472}'
L['options_icons_steamwheedle_desc'] =
    'Display farm location for {achievement:9472}'
L['options_icons_finding_your_waystones'] = '{achievement:9497}'
L['options_icons_finding_your_waystones_desc'] =
    'Display farm location for {achievement:9497}'
L['options_icons_song_of_silence'] = '{achievement:9541}'
L['options_icons_song_of_silence_desc'] =
    'Display rare locations for {achievement:9541}'
L['options_icons_buried_treasures'] = '{achievement:9548}'
L['options_icons_buried_treasures_desc'] =
    'Display item locations for {achievement:9548}'
L['options_icons_the_stable_master'] =
    '{achievement:9539} and {achievement:9540}'
L['options_icons_the_stable_master_desc'] =
    'Display target locations for {achievement:9539} and {achievement:9540}'
L['options_icons_making_the_cut'] = '{achievement:9617}'
L['options_icons_making_the_cut_desc'] =
    'Display |cffffff00Bloodring Slaver|r locations for {achievement:9617}'

L['tree_branches'] = 'In den Ästen des Baums.'
L['follower_goldmane_note'] =
    'Kill {npc:80080} for {item:111863} to free {npc:80083}.'
L['graveltooth_note'] = 'Kill {npc:84255} until {npc:84263} spawns.'
L['gorepetal_note'] =
    'In a cave.\n\nDoes not show up on the minimap. You have to click on the Pristine Lily to spawn {npc:83509}.'
L['sean-whitesea_note'] =
    'Open the Abandoned Chest so that {npc:83542} appears.'
L['viking_pepe'] = 'Viking Pepe'
-- Treasures
L['fungus_covered_chest'] = 'Fungus-Covered Chest'
L['steamwheedle_supplies'] = 'Steamwheedle Supplies'
L['adventurers_staff'] = 'Adventurer\'s Staff'
L['elemental_shackles'] = 'Elemental Shackles'
L['bounty_of_the_elements'] = 'Bounty of the Elements'
L['bounty_of_the_elements_note'] =
    'Click the Totems in the following order:\n 1. {npc:84307}\n 2. {npc:84343}\n 3. {npc:84345}\n 4. {npc:84347}'
L['abandoned_fishing_rod'] = 'Abandoned Fishing Rod'
L['abandoned_fishing_rod_note'] =
    'Use the Abandoned Fishing Rod to summon {npc:82975}.'
L['pile_of_dirt'] = 'A Pile of Dirt'
L['adventurers_sack'] = 'Adventurer\'s Sack'
L['mountain_climbers_pack'] = 'Mountain Climber\'s Pack'
L['freshwater_clam'] = 'Freshwater Clam'
L['elemental_offering'] = 'Elemental Offering'
L['warsong_helm'] = 'Warsong Helm'
L['adventurers_pack'] = 'Adventurer\'s Pack'
L['goldtoes_plunder'] = 'Goldtoe\'s Plunder'
L['goldtoes_plunder_note'] =
    'You need {item:114054} from a Parrot who is flying nearby to open the treasure.'
L['genedar_debris'] = 'Genedar Debris'
L['warsong_cache'] = 'Warsong Cache'
L['adventurers_pouch'] = 'Adventurer\'s Pouch'
L['voidinfused_crystal'] = 'Void-Infused Crystal'
L['spirit_coffer'] = 'Spirit Coffer'
L['treasure_of_kullkrosh'] = 'Treasure of Kull\'krosh'
L['treasure_of_kullkrosh_note'] = 'In the basement of the building'
L['goblin_pack'] = 'Goblin Pack'
L['lost_pendant'] = 'Lost Pendant'
L['bag_of_herbs'] = 'Bag of Herbs'
L['telaar_defender_shield'] = 'Telaar Defender Shield'
L['abandoned_cargo'] = 'Abandoned Cargo'
L['highmaul_sledge'] = 'Highmaul Sledge'
L['bonecarved_dagger'] = 'Bone-Carved Dagger'
L['smugglers_cache'] = 'Smuggler\'s Cache'
L['smugglers_cache_note'] = 'Avoid the tripwire by jumping over it.'
L['hidden_stash'] = 'Hidden Stash'
L['burning_blade_cache'] = 'Burning Blade Cache'
L['gamblers_purse'] = 'Gambler\'s Purse'
L['polished-saberon-skull'] = 'Polished Saberon Skull'
L['saberon-stash'] = 'Saberon Stash'
L['important_exploration_supplies'] = 'Important Exploration Supplies'
L['warsong_lockbox'] = 'Warsong Lockbox'
L['appropriated_warsong_supplies'] = 'Appropriated Warsong Supplies'
L['warsong-spear'] = 'Warsong Spear'
L['ogre_beads'] = 'Ogre Beads'
L['grizzlemaws_bonepile'] = 'Grizzlemaw\'s Bonepile'
L['warsong_supplies'] = 'Warsong Supplies'
L['warsong_spoils'] = 'Warsong Spoils'
L['adventurers_mace'] = 'Adventurer\'s Mace'
L['spirits_gift'] = 'Spirit\'s Gift'
L['spirits_gift_note'] =
    'Light all 6 forgotten brazier to make the treasure appear.'
L['pale_elixir'] = 'Pale Elixir'
L['watertight_bag'] = 'Watertight Bag'

-------------------------------------------------------------------------------
------------------------------ SHADOWMOON VALLEY ------------------------------
-------------------------------------------------------------------------------

L['you_have_been_rylakinated_note'] =
    'Must complete {quest:34355}.\n\nCollect {item:116978} from {npc:78999} nearby to control {npc:86085}.'

L['options_icons_you_have_been_rylakinated'] = '{achievement:9481}'
L['options_icons_you_have_been_rylakinated_desc'] =
    'Display Rylak locations for {achievement:9481}'

L['voidseer_kalurg_note'] = 'Kill all {npc:78135}.'
L['giant_moonwillow_cone'] = 'Giant Moonwillow Cone'
L['shadowmoon_treasure'] = 'Shadowmoon Treasure'
L['dusty_lockbox'] = 'Dusty Lockbox'
L['rotting_basket'] = 'Rotting Basket'
L['fantastic_fish'] = 'Fantastic Fish'
L['stolen_treasure'] = 'Stolen Treasure'
L['bubbling_cauldron'] = 'Bubbling Cauldron'
L['shadowmoon_exile_treasure'] = 'Shadowmoon Exile Treasure'
L['mushroom_covered_chest'] = 'Mushroom-Covered Chest'
L['mikkals_chest'] = 'Mikkal\'s Chest'
L['orc_skeleton'] = 'Orc Skeleton'
L['cargo_of_the_raven_queen'] = 'Cargo of the Raven Queen'
L['alchemists_satchel'] = 'Alchemist\'s Satchel'
L['ancestral_greataxe'] = 'Ancestral Greataxe'
L['hanging_satchel'] = 'Hanging Satchel'
L['false_bottomed_jar'] = 'False-Bottomed Jar'
L['astrologers_box'] = 'Astrologer\'s Box'
L['grekas_urn'] = 'Greka\'s Urn'
L['beloveds_offering'] = 'Beloved\'s Offering'
L['uzkos_knickknacks'] = 'Uzko\'s Knickknacks'
L['veemas_herb_bag'] = 'Veema\'s Herb Bag'
L['ronokks-belongings'] = 'Ronokk\'s Belongings'
L['demonic_cache'] = 'Demonic Cache'
L['iron_horde_tribute'] = 'Iron Horde Tribute'
L['peaceful_offering'] = 'Peaceful Offering'
L['iron_horde_cargo_shipment'] = 'Iron Horde Cargo Shipment'
L['waterlogged_chest'] = 'Waterlogged Chest'
L['vindicators_cache'] = 'Vindicator\'s Cache'
L['swamplighter_hive'] = 'Swamplighter Hive'
L['scaly_rylak_egg'] = 'Scaly Rylak Egg'

-------------------------------------------------------------------------------
------------------------------- SPIRES OF ARAK --------------------------------
-------------------------------------------------------------------------------

L['forbidden_tome_note'] = [[
Requires {quest:36682} daily quest to be active or use {item:122409}.

Interact with {npc:85992} to randomly receive one of three buffs.

{spell:171783}
{spell:171787}
{spell:171768}
]]

L['options_icons_would_you_like_a_pamplet'] = '{achievement:9432}'
L['options_icons_would_you_like_a_pamplet_desc'] =
    'Display item locations for {achievement:9432}'

L['outcasts_belongings'] = 'Outcast\'s Belongings'
L['sun_touched_cache'] = 'Sun-Touched Cache'
L['elixir_note'] = 'Is needed for {npc:86941}.'
L['relics_of_the_outcasts'] = 'Relics of the Outcasts'
L['misplaced_scrolls'] = 'Misplaced Scrolls'
L['shattered_hand_cache'] = 'Shattered Hand Cache'
L['lost_herb_satchel'] = 'Lost Herb Satchel'
L['shattered_hand_lockbox'] = 'Shattered Hand Lockbox'
L['orcish_signaling_horn'] = 'Orcish Signaling Horn'
L['varashas_egg'] = 'Varasha\'s Egg'
L['garrison-supplies'] = 'Garrison Supplies'
L['roobys_roo_note'] =
    'Feed {npc:84342} 3 times {item:114835} while following him behind the house. There he will leave you a "Treasure".\n\nYou get {item:114835} from {npc:82432}, she is in the kitchen in the lower floor.'
L['ephials_dark_grimoire'] = 'Ephial\'s Dark Grimoire'
L['an_old_key_note'] = 'The treasure is inside Admiral Tailor\'s Garrison.'
L['abandoned_mining_pick'] = 'Abandoned Mining Pick'
L['outcasts_pouch'] = 'Outcast\'s Pouch'
L['misplaced_scroll'] = 'Misplaced Scroll'
L['offering-to-the-raven-mother'] = 'Offering to the Raven Mother'
L['pirate_pepe'] = 'Pirate Pepe'
L['campaign_contributions'] = 'Campaign Contributions'
L['campaign_contributions_note'] =
    'On the second floor. On a shelf above the door.'
L['coinbenders_payment'] = 'Coinbender\'s Payment'
L['coinbenders_payment_note'] = 'At the bottom of the sea.'
L['shredder_parts'] = 'Shredder Parts'
L['spray_o_matic_5000_xt'] = 'Spray-O-Matic 5000 XT'
L['mysterious_mushrooms'] = 'Mysterious Mushrooms'
L['ogron-plunder'] = 'Ogron Plunder'
L['smuggled_apexis_artifacts'] = 'Smuggled Apexis Artifacts'
L['sunderthorn_note'] =
    'Kill {npc:84905} and {npc:84909} until {npc:84912} spawns.'
L['waterlogged_satchel'] = 'Waterlogged Satchel'
L['sethekk_ritual_brew'] = 'Sethekk Ritual Brew'
L['nizzixs_chest'] = 'Nizzix\'s Chest'
L['nizzixs_chest_note'] =
    'Click on the Escape Pod floating nearby in the water.'

-------------------------------------------------------------------------------
------------------------------------ TALADOR ----------------------------------
-------------------------------------------------------------------------------

L['wandering_vindicator_note'] =
    'After defeating him, you need to loot his sword from the stone.'
L['legion_vanguard_note'] =
    '{npc:88494} is summoned from portal. Kill {npc:83023} around portal and any other, that comes out to summon him.'
L['taladorantula_note'] =
    'Squish eggs sacks and kill {npc:75258} around to summon {npc:77634}. Takes around 3 to 5 minutes of squishing.'
L['shirzir_note'] = 'In underground tomb.'
L['kharazos_galzomar_sikthiss_note'] =
    '{npc:78710}, {npc:78713} and {npc:78715} share the same drop, spawn and path.'
L['orumo_the_observer_note'] = [[
{npc:87668} requires 5 people standing on runes before him to be able to kill him.

Alternatively, Warlocks can use {spell:48020} and Monks {spell:119996} to teleport on runes, which decreases number of required people to 3.

Another option is to use 5 of your own characters, move them one by one to runes and logout them there.

Last option is to use only one character. Go to rune, lit it up, teleport out and repeat for each rune. Best way is to set up {item:6948} somewhere close.

You can combine any of methods above to summon {npc:87668}.
]]

L['options_icons_cut_off_the_head'] = '{achievement:9633}'
L['options_icons_cut_off_the_head_desc'] =
    'Display rare locations for {achievement:9633}'

L['light_of_the_sea'] = 'Light of the Sea'
L['soulbinders_reliquary'] = 'Soulbinder\'s Reliquary'
L['bonechewer_remnants'] = 'Bonechewer Remnants'
L['bonechewer_spear'] = 'Bonechewer Spear'
L['bonechewer_spear_note'] =
    'In a cave.\n\nKill {npc:77564}, the spear is on his back.'
L['treasure_of_angorosh'] = 'Treasure of Ango\'rosh'
L['aarkos_family_treasure'] = 'Aarko\'s Family Treasure'
L['aarkos_family_treasure_note'] =
    'Speak to {npc:77664} some enemies will appear. After you killed {npc:77677} the treasure will appear.'
L['farmers_bounty'] = 'Farmer\'s Bounty'
L['relic_of_telmor'] = 'Relic of Telmor'
L['webbed_sac'] = 'Webbed Sac'
L['curious_deathweb_egg'] = 'Curious Deathweb Egg'
L['rusted_lockbox'] = 'Rusted Lockbox'
L['rusted_lockbox_note'] = 'In a cave, way down in the water.'
L['iron_box'] = 'Iron Box'
L['draenei_weapons'] = 'Draenei Weapons'
L['knight_pepe'] = 'Knight Pepe'
L['barrel_of_fish'] = 'Barrel of Fish'
L['charred_sword'] = 'Charred Sword'
L['relic_of_aruuna'] = 'Relic of Aruuna'
L['aruuna_mining_cart'] = 'Aruuna Mining Cart'
L['keluus_belongings'] = 'Keluu\'s Belongings'
L['luminous_shell'] = 'Luminous Shell'
L['foremans_lunchbox'] = 'Foreman\'s Lunchbox'
L['rooks_tacklebox'] = 'Rook\'s Tacklebox'
L['jug_of_aged_ironwine'] = 'Jug of Aged Ironwine'
L['gift_of_the_ancients'] = 'Gift of the Ancients'
L['gift_of_the_ancients_note'] =
    'In a cave.\n\nTurn the statues so that all three are facing the center.'
L['teroclaw_nest'] = 'Teroclaw Nest'
L['pure_crystal_dust'] = 'Pure Crystal Dust'

-------------------------------------------------------------------------------
--------------------------------- TANAAN JUNGLE -------------------------------
-------------------------------------------------------------------------------

L['deathtalon_note'] = ns.color.Red(
    'Shadow Lord Iskar yells: Behind the veil, all you find is death!')
L['doomroller_note'] = ns.color.Red(
    'Siegemaster Mar\'tak yells: Hah-ha! Trample their corpses!')
L['terrorfist_note'] = ns.color.Red(
    'Frogan yells: A massive gronnling is heading for Rangari Refuge! We are going to require some assistance!')
L['vengeance_note'] = ns.color.Red(
    'Tyrant Velhari yells: Insects deserve to be crushed!')
L['iron_armada_note'] =
    'This toy is also buyable on AH and is required for {achievement:10353}.'
L['commander_kraggoth_note'] = 'At the top of the north-east tower.'
L['grannok_note'] = 'At the top of the south-east tower.'
L['szirek_the_twisted_note'] =
    'Capture the East Strongpoint to summon this rare.'
L['the_iron_houndmaster_note'] =
    'Capture the West Strongpoint to summon this rare.'
L['belgork_thromma_note'] = 'This cave has 2 entrances.'
L['driss_vile_note'] = 'On top of the tower.'
L['overlord_magruth_note'] = 'Kill orcs around camp to spawn it.'
L['mistress_thavra_note'] = 'In a cave on upper floor.'
L['dorg_the_bloody_note'] =
    'Kill {npc:89706} and other enemies at spawn location.'
L['grand_warlock_netherkurse_note'] = 'Kill enemies around spawn point.'
L['ceraxas_note'] =
    'Spawns {npc:90426} with quest {quest:38428} for pet after killing it.'
L['commander_orgmok_note'] = 'Rides around on {npc:89676}.'
L['rendrak_note'] =
    'Collect 10 {item:124045} from {npc:89788} around bog. Combine them to summon rare.'
L['akrrilo_note'] =
    'Buy {item:124093} from {npc:92805} and use it at Blackfang Challenge Arena.'
L['rendarr_note'] =
    'Buy {item:124094} from {npc:92805} and use it at Blackfang Challenge Arena.'
L['eyepiercer_note'] =
    'Buy {item:124095} from {npc:92805} and use it at Blackfang Challenge Arena.'
L['the_night_haunter_note'] = [[
Collect 10 stacks of {spell:183612} debuff.

You can get debuff by using {npc:92651} or by finding {npc:92645} (100% chance).
]]
L['xemirkol_note'] = [[
Buy {item:128502} or {item:128503} from {npc:95424} and use it at spawn point to get teleported to {npc:96235}.

Crystals teleport you to random rare in vicinity, so best chance is to kill {npc:92887} and use {item:128502}.

{npc:96235} has long respawn timer (around a day) and best way to get it is after realm restart or by using server jump.
]]

L['discarded_helm_treasure'] = 'Discarded Helm'
L['weathered_axe_treasure'] = 'Weathered Axe'
L['axe_of_the_weeping_wolf_treasure'] = 'Axe of the Weeping Wolf'
L['sacrificial_blade_treasure'] = 'Sacrificial Blade'
L['crystallized_essence_of_the_elements_treasure'] =
    'Crystallized Essence of the Elements'
L['snake_charmers_flute_treasure'] = 'Snake Charmer\'s Flute'
L['lodged_hunting_spear_treasure'] = 'Lodged Hunting Spear'
L['looted_mystical_staff_treasure'] = 'Looted Mystical Staff'
L['the_blade_of_kranak_treasure'] = 'The Blade of Kra\'nak'
L['forgotten_champions_blade_treasure'] = 'Forgotten Champion\'s Blade'
L['rune_etched_femur_treasure'] = 'Rune Etched Femur'
L['book_of_zyzzix_treasure'] = 'Book of Zyzzix'
L['the_commanders_shield_treasure'] = 'The Commander\'s Shield'
L['scouts_belongings_treasure'] = 'Scout\'s Belongings'
L['polished_crystal_treasure'] = 'Polished Crystal'
L['strange_sapphire_treasure'] = 'Strange Sapphire'
L['censer_of_torment_treasure'] = 'Censer of Torment'
L['overgrown_relic_treasure'] = 'Overgrown Relic'
L['jewel_of_hellfire_treasure'] = 'Jewel of Hellfire'
L['skull_of_the_mad_chief_treasure'] = 'Skull of the Mad Chief'
L['jeweled_arakkoa_effigy_treasure'] = 'Jeweled Arakkoa Effigy'
L['tome_of_secrets_treasure'] = 'Tome of Secrets'
L['the_perfect_blossom_treasure'] = 'The Perfect Blossom'
L['brazier_of_awakening_treasure'] = 'Brazier of Awakening'
L['dazzling_rod_treasure'] = 'Dazzling Rod'
L['crystallized_fel_spike_treasure'] = 'Crystallized Fel Spike'
L['fel_drenched_satchel_treasure'] = 'Fel-Drenched Satchel'
L['the_eye_of_grannok_treasure'] = 'The Eye of Grannok'
L['borrowed_enchanted_spyglass_treasure'] = '\'Borrowed\' Enchanted Spyglass'
L['bleeding_hollow_mushroom_stash_treasure'] = 'Bleeding Hollow Mushroom Stash'
L['mysterious_corrupted_obelist_treasure'] = 'Mysterious Corrupted Obelisk'
L['spoils_of_war_treasure'] = 'Spoils of War'
L['stolen_captains_chest_treasure'] = 'Stolen Captain\'s Chest'
L['bleeding_hollow_warchest_treasure'] = 'Bleeding Hollow Warchest'
L['looted_bleeding_hollow_treasure_treasure'] =
    'Looted Bleeding Hollow Treasure'
L['partially_mined_apexis_crystal_treasure'] = 'Partially Mined Apexis Crystal'
L['pale_removal_equipment_treasure'] = 'Pale Removal Equipment'
L['stashed_iron_sea_booty_treasure'] = 'Stashed Iron Sea Booty'
L['ironbeards_treasure_treasure'] = 'Ironbeard\'s Treasure'
L['forgotten_sack_treasure'] = 'Forgotten Sack'
L['blackfang_island_cache_treasure'] = 'Blackfang Island Cache'
L['fel_tainted_apexis_formation_treasure'] = 'Fel-Tainted Apexis Formation'
L['jewel_of_the_fallen_star_treasure'] = 'Jewel of the Fallen Star'
L['forgotten_shard_of_the_cipher_treasure'] = 'Forgotten Shard of the Cipher'
L['strange_fruit_treasure'] = 'Strange Fruit'
L['stashed_bleeding_hollow_loot_treasure'] = 'Stashed Bleeding Hollow Loot'
L['forgotten_iron_horde_supplies_treasure'] = 'Forgotten Iron Horde Supplies'
L['bejeweled_egg_treasure'] = 'Bejeweled Egg'
L['dead_mans_chest_treasure'] = 'Dead Man\'s Chest'
L['the_commanders_shield_note'] = 'Inside building.'
L['the_eye_of_grannok_note'] = 'On the second floor of tower near the stairs.'
L['tower_chest_note'] = 'At the top of a tower.'
L['spoils_of_war_note'] = 'Inside the hut.'
L['strange_fruit_note'] =
    '{item:127396} incubates in 14 days into {item:127394}.'
