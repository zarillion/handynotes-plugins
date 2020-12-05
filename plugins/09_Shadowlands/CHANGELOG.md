# v25

* Added a 'Zone-Specific settings' option to change display settings per-zone.
* Added a node for the Animaflow Teleporter.
* Added better covenant icons.
* Added grapple locations for the Maw.
* Added lots of (mostly 1H axe) transmogs from Maldraxxus rares.
* Added missing bow transmog from the Mystic Rainbowhorn.
* Added missing cosmetic cloak / quest reward from Oily Invertebrate.
* Added missing Macabre spawn location.
* Added missing pet reward for Swelling Tear rares.
* Added missing pet reward from Eternas the Tormentor.
* Added missing toy and note for Enforcer Aegeon.
* Added missing transmog rewards to Demi the Relic Hoarder.
* Added more spawn locations for Chapter 7 of Mercia's Legacy.
* Added quest id for the Bangle of Seniority upgrade.
* Added Stygian Cache locations for the Maw.
* Cleaned up Inquisitor, Ritualist and Fugitive Soul displays in Revendreth.
* Cleaned up the Mixed Pool of Monstrosities tooltip.
* Fixed bullet-point character display for zhCN fonts.
* Fixed spawn locations for Shadeweaver and Dolos.
* Removed a beta-only maw event that has not spawned on retail.
* Removed the beta summoning criteria for Harika.
* Split Ve'nari upgrades into Maw / Torghast sections.
* Lots of localization updates!

# v24

* Added POIs for the Great Horn of the Runestag (focus the Rainbowhorn by left-clicking).
* Added exact routes for the Mystic Rainbowhorn (like he's going to live that long on retail!)
* Fixed Zargox quest id and updated note with Bone Mass spawn trigger.
* Fixed the backwards Tauralus for Tahonta and Sabriel.
* Fixed the quest id for the Misplaced Supplies treasure.
* Display Ve'nari upgrades as individual items (quest ids for higher upgrades to be added later).
* Removed "Night Fae required" note for the Night Mare mount.
* Localization updates!

# v23

* Added lost book locations for the [Fractured Faerie Tales](https://www.wowhead.com/achievement=14788/fractured-faerie-tales#comments:id=3261263) achievement.
* Added futigive soul locations for the [Absolution for All](https://www.wowhead.com/achievement=14274/absolution-for-all) achievement.
* Added mount and note to the Theater of Pain tooltip.
* Added pet and toy rewards to the vignette tooltips for Covenant Calling chests (the big ones on the world map).
* Added missing quest id for Macabre.
* Added a note for spawning the Drifting Sorrow bonus boss in the Maw.
* Added a missing maw lore reward for Dath Rezara.
* Added remaining maw set items to Apholeias and Exos.
* Added some API improvements to help items and spells render in tooltips more reliably.
* Fixed one of the Dredbat Statue locations for the Bat! achievement.
* The Cache of Eyes treasure in Maldraxxus will now disappear once the pet is learned.

# v22

* Added many new rewards discovered by players since launch!
* Added missing quest ids for Ikras and Bog Beast.
* Added Macabre rare locations now that players have discovered how to summon him!
* Fixed incorrect quest id for Razkazzar and incorrect POI/note for Agonix.
* Rewards that only drop for a specific covenant now display that covenant's icon.
* Localization updates for frFR, ruRU and zhTW.

# v21

* Fixed error on tooltip renderer for unresolved items.

# v20

* Bumped UI version to 90002.
* Removed Icecrown prepatch minibosses.
* Localization updates for esES, ruRU and zhTW.

# v19

* Updated Icecrown minibosses with new 10 minute spawn rate (thanks rombarcz!)
* Added the two missing Dredbat statues.
* Added a missing Castle Sinrunner location.
* Added quest ID for The Count treasure / pet.
* Added tribute locations for the [Count Your Blessings](https://www.wowhead.com/achievement=14767/count-your-blessings) achievement.
* Added vesper locations for the [Rallying Cry of the Ascended](https://www.wowhead.com/achievement=14734/rallying-cry-of-the-ascended) achievement.
* Added a proper texture for the head of POI arrows.
* Removed the POI refresh rate option in favor of a much faster refresh method.

# v18

* Added Ve'nari to the map to track Maw and Torghast upgrades.
* Added Family Exorcist achievements to the pet trainer tooltips.
* Added Castle Sinrunner routes for the What We Ride in the Shadows achievement.
* Added Dredbat Statue routes for the Bat! achievement.
* Added inquisitor locations for the Its Always Sinny in Revendreth achievement.
* Added minimap POI refresh rate option to use when 'Rotate Minimap' is enabled.
* Added more localization updates.

# v17

* Fixed prepatch miniboss drop tables based on Wowhead data.
* Fixed miniboss glows appearing for already-spawned bosses.

# v16

* Ignore old/stale saved spawn times for prepatch mini bosses.

# v15

* Another fix for vignette tracking.

# v14

* Removed covenant transport networks (Blizzard now displays these).
* Fixed a bug in the vignette scanning code: `(string expected, got nil)`
* Mini-boss spawn timers are now saved between reloads.
* The next boss to spawn is now highlighted.
* Added frFR translations for the prepatch stuff (thanks Galiwyx!)

# v13

* Fixed the positioning of a couple prepatch bosses.
* Added spawn times to the prepatch boss tooltips (populated after seeing a boss appear).
* Added Blue Proto-Drake drop for Skadi.

# v12

* Display upgrade requirement for Chaotic Riftstones.
* Added an option to show character achievement progress instead of account progress.
* Added an option to enlarge all icons by 30% when the world map is maximized.
* Added quick-toggle option to open settings panel.
* Added button in map settings to open corresponding world map.
* Added descriptions and icons to the quick-toggle menu groups.
* Improved tooltip formatting for quests, daily quests, world quests and achievements.
* Numerous cleans and bugfixes to the core plugin code.
* Localization updates for deDE, esES, ruRU and zhCN.

## Prepatch Event

* Do not remove prepatch bosses after kills (they are continuously lootable).
* Highlight the full spawn path of the prepatch bosses on hover.

# v11

* Fixed "Hide rare, if all loot known" option.
* Set interface version to 90001 until SL launch.

# v10

* Fix criteria errors on retail (mostly in Bastion).

# v9

* Updated translations for prepatch event.

# v8

* POI and path colors can now be customized (thanks Dathwada!).
* Added new achievement criterias for Revendreth treasures.
* Added prepatch event rares and rewards (based on adrianganjiang's work).

# v7

* Fixed intro node for the Maw.

# v6

* Removed all achievement criteria removed in today's patch.
* Removed some sub-maps that were not meant to appear in the setting panel.
* Added frFR translation (thanks Lightuky!)

# v5

* Added covenant transport networks.
* Added final Lost Anima Shard location.
* Added notes for rares with anima channeling requirements.
* Added info/loot to numerous rares and treasures.
* Added highlight and focus glows for *all* icons.
* Requirement text will now turn white once met (item, spell, etc).
* Added a workaround for the [MINIMAP_UPDATE_ZOOM bug](https://www.curseforge.com/wow/addons/herebedragons/issues/28).
* Added zhCN translation (thanks Adavak!)

# v4

* Added rares, bonus bosses and bonus events to the Maw.
* Added Chaotic Riftstone locations to the Maw.
* Added Sinrunner Blanchy and Loyal Gorger nodes.
* Many new rares, treasures and rewards added to existing zones.
* Collected Lost Anima Shards are now automatically removed from the map.
* Added a quick toggle menu for nodes to the world map.
* Revamps settings panels under *Interface > Addons > HandyNotes*.

# v3

* Added five more Lost Anima Crystal locations. One more to go!

# v2

* Added remaining discovered Lost Anima Crystals.

# v1

* Added rares & treasures for all zones.
* Added Revendreth carriages with paths.
* Added Maldraxxus cats and mixed pool.