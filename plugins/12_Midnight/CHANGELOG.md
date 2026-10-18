# v164

* Added a Locked Door marker with its possible spawn points as POIs in Kindo'jan's Labyrinth for Lock and Key and Lock and Key Master.
* Added the Renown 3/5/7/9 requirements to the Sturdy Chests behind the Loa-sealed doors.
* Added a marker for the My Labyrinth achievement in Kindo'jan's Labyrinth.
* NPC names in instances and delves are now preloaded and cached, so they stay visible while inside.

# v163

* Fixed a Lua error from the More Than Just Their Roots note before achievement data was loaded.
* Fixed map entry nodes and the options map button tainting the world map, which could block Blizzard's map pins with ADDON_ACTION_BLOCKED.

# v162

* Added a door in Eversong Woods that opens the map of the Labyrinth of Kindo'Jan.
* Removed the right click shortcut from map pins.
* Restored the Ritual Site entry nodes, which are always visible again.

# v161

* Added the missing Sturdy Chest in the Labyrinth of Kindo'Jan.
* Sturdy Chests in Jana'lai's Refuge and the Labyrinth of Kindo'Jan doors now show the area name.

# v160

* Added a right click shortcut on delve entrance pins that opens the map of that delve.
* Added the same shortcut to other map pins with a linked map (Ritual Sites, events), with a "Change map" hint in the top right of their tooltip.
* Added the Aqir Invasion markers, which show when the next invasion starts and while one is running.
* Added doors that switch between the two maps of the Labyrinth of Kindo'Jan.
* Added Sturdy Chests #15-#18 and the Thundering Hexmask to the lower map of the Labyrinth of Kindo'Jan, shown on both maps.
* Added the multiple spawn note to the Hexmask nodes in the Labyrinth of Kindo'Jan.
* Ritual Site entry nodes now only appear while the site is closed, and tell you when it opens again.
* Fixed the Mislaid Treasure marker staying on the map after "A Few More Can't Hurt" was earned.
* Localization updates

# v158

* Added the missing Ancient Chest quest IDs (#36-#38) in the Labyrinth of Kindo'Jan.
* Changed the Mislaid Oddity node to a single marker since the spawns are random.
* Fixed a duplicate quest ID on Ancient Chest #12.
* Fixed an invalid achievement criteria on the Hexmask nodes.
* Localization updates

# v157

* Added The Labyrinth of Kindo'Jan delve: Ancient Chests, Mislaid Oddities, and Hexmask achievement locations.
* Fixed Garsecg's achievement criteria in The Coiled Isle.
* Fixed the Tablet of Akil'zon node in Zul'Aman linking its reputation reward to the wrong quest.
* Localization updates

# v156

* Added Ensorcelled Cryptid node for the J'imothy pet in Silvermoon City.
* Fixed Sleepy Mandrake node showing for characters that already collected the pet.
* Curse Surge notes now show the live rotation interval from the event schedule instead of a hardcoded 45 minutes.
* Localization updates

# v155

* Disabled Arcantina daily object nodes removed in 12.1 (may return later); Explorer Pepe and Share a Drink remain active.
* Added Highly Decorated achievement in Arcantina.
* Removed Venomshot Greatbow from Sss'alik's transmog drops in The Coiled Isle.
* Fixed a crash with Decor rewards when housing data is not loaded.
* Localization updates

# v154

* Added a toggle to control whether timer and interval icons enlarge during their spawn window.
* Confirmed Ruby Writhe mount drops on Curse Surge elites in The Coiled Isle.
* Updated Sss'alik's POI in The Coiled Isle.
* Removed Snakehunter's Warglaive from shared drops in The Coiled Isle.
* Localization updates

# v153

* Live event tooltips now color-code the remaining time and refresh automatically when the timer window changes.
* Interval tooltips now show time remaining and next spawn on two lines, like live events.
* Timer icons now enlarge during the final 30 minutes (yellow) and 10 minutes (green) before a spawn, capped for longer cycles.
* Interval icons stay enlarged for 3 minutes after a spawn.
* Event and spawn timers now follow Blizzard's time display options (Use Local Time and the 12/24-hour clock).
* Timer tooltips label each time as local or server time, matching Blizzard's setting.
* Fixed rare node icons not enlarging during their timer window.
* Added a note to Curse Surge elites about the 45-minute event rotation and cross-realm grouping.
* Localization updates

# v152

* Added Curse Surge event rare nodes in The Coiled Isle with live countdown timers (remaining time and next event).
* Added live countdown timers to Ritual Site portal nodes.
* Added pet reward from Big'Mon rare in The Coiled Isle.
* Added transmog shared-appearances option (enabled by default) for reward collection checks.
* Fixed interval timers using the wrong region anchors for CN and TW realms.
* Event and spawn timers now display server time regardless of the player's timezone.
* Countdowns display seconds during the last minute.
* Updated notes for Vul'zahn Smuggled Treasure and Grave of Someone Forgotten to better reflect the steps required.
* Localization updates

# v151

* Added Mysterious Mix Master achievement support ({achievement:63432}) with Ofi the Sly and offering mix recipes.
* Added missing Coiled to Strike rare transmog drops.
* Localization updates

# v150

* Added The Underbelly entrance node in the Vaults of Atal'Utek.
* Added 12.1 story criteria to delve rewards.

# v149

* Fixed multiple coordinates
* Added Coiled Isles treasure transmog and housing decor rewards.
* Added Coiled Isles rare transmog drops and shared mounts: Ruby Writhe, Topaz Skyfang.
* Added Profane Ritual Spoils, Abandoned Amani Privateer's Cache, and Brine-Crusted Chest guidance notes.
* Fixed Grave of Someone Forgotten NPC interaction order.
* Localization updates

# v148

* Bump toc to 120100
* Added Coiled Isles zone support with rares, treasures, and skyriding glyph nodes.
* Added Coiled Isle Safari achievement support ({achievement:62492}) with a separate group and node set.
* Updated Student of Hissstory achievement handling and related node organization.
* Added/updated Coiled Isles treasure rewards and reputation coverage.
* Added Soft Underbelly achievement support ({achievement:62601}) in Coiled Isles, including NPC criteria mapping updates.
* Added Grave of Someone Forgotten guidance as a localized note with color-coded NPC POIs across Midnight locales.
* Added localized treasure guidance updates across all Midnight locales, including Lost Spirit and Vul'zahn workflow notes.
* Added color-coded POI guidance for multi-step treasure interactions.
* Updated Midnight patch/interface metadata and plugin wiring for new zone loading.
* Updated multiple Midnight coordinates/POIs and performed formatting/cleanup passes.

# v147

* Added ritual sites
* Localization updates

# v146

* Small node tweaks
* Localization updates
* Add fix for potential secret values in NPC names

# v145

* Added initial Naigtal and Val zones
* Added Renowned Beasts for Midnight Skinning.

# v144

* Multiple node and reward updates.
* Fixed a possible secret value access in the calendar event code.

# v143

* Fixed a tooltip warning.

# v142

* Localization updates

# v141

* Added Stormarion assualt rares in Voidstorm.
* Localization updates

# v140

* Fixed location of Voidstorm Defense Spear Blacksmithing profession treasure.
* Updated locations of Gulf of Memory Delve treasures.
* Localization updates

# v139

* Added Put a Pin in It achievement in Zul'Aman.
* Updated some Glowing Moths in Harandar.
* Localization updates

# v138

* Added Vial of Eversong Oddities Alchemy profession treasure in Silvermoon.
* Added Enchanted Sunfire Silk Enchanting profession treasure in Eversong Woods.
* Added Sweeping Harvester's Scythe Herbalism profession treasure in Zul'Aman.
* Added Half-Baked Techniques Inscription profession treasure in Eversong Woods.
* Added Contained Stormarion Defender mount to Stormarion Assualt rewards.
* Removed achievement from Abandoned Ritual Skull in Zul'Aman due to no longer been part of the Treasures of Zul'Aman achievement.
* Localization updates

# v136

* Removed Ruz'avalt's Prized Tackle from Zul'Aman.
* Fixed Blacksmithing profession treasure locations in Silvermoon.
* Localization updates

# v135

* Added Gnome Alone achievement in Zul'Aman.
* Fixed an issue with The Frog and the Princesses achievement in Zul'aman not displaying correctly.
* Localization updates

# v134

* Added item drops to rares
* Localization updates

# v133

* Updated lore object rep reward amount
* Updated location of several lore objects
* Updated location of several Skyriding Glyphs
* Updated location of several profession treasures
* Updated Spiritpaw Marathon achievement.
* Updated rep rewards for Zul'aman rares.
* Localization updates

# v132

* Midnight early access release!

# v131

* Initial release!
