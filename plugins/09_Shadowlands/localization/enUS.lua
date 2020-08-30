local ADDON_NAME, ns = ...
local L = LibStub("AceLocale-3.0"):NewLocale(ADDON_NAME, "enUS", true, true)
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- GENERAL -----------------------------------
-------------------------------------------------------------------------------

L["context_menu_title"] = "HandyNotes Shadowlands"
L["options_title"] = "Shadowlands"
L["covenant_required"] = "Requires a member of the %s."

-------------------------------------------------------------------------------
--------------------------------- ARDENWEALD ----------------------------------
-------------------------------------------------------------------------------

L["deifir_note"] = "Ride the rare around in a circle and use {spell:319566} and {spell:319575} to slow and stun him."
L["faeflayer_note"] = "In a small cave hidden behind a waterfall."
L["lehgo_note"] = "Destroy Quivering Gorm Eggs and kill {npc:171827} until he spawns. In a cave (entrance to the south-east in the Dusty Burrows)."
L["rootwrithe_note"] = "Poke the {npc:167928}s until the rare appears."
L["rotbriar_note"] = "Talk to {npc:171684} nearby to summon the rare after some dialog."
L["slumbering_note"] = "Running into the fog will stun and port you out. Use a flare or a pet with AOE to knock him out of the fog."
L["skuld_vit_note"] = "In a cave blocked by a barrier. A Night Fae must use {spell:310143} to enter the cave. Once he is pulled, the barrier will disappear."
L["valfir_note"] = "Click the Sparkling Animaseed midway down the path and use {spell:338045} to remove his {spell:338038} buff."
L["wrigglemortis_note"] = "Pull the {npc:164179} to spawn the rare."

L["star_lake"] = "Star Lake Amphitheater"
L["star_lake_note"] = "Talk to {npc:171743}, the Stage Director, the start one of the special encounters."

L["desiccated_moth"] = "Jump on the {npc:169997} northwest of the tree to float onto a branch. Burn {item:180784} in the Incense Burner to collect the treasure."
L["dreamsong_heart"] = "Use the {npc:169997} far to the northeast to get launched into the tree."
L["enchanted_dreamcatcher"] = "Hanging from the top of the roots. Easiest to jump up on the west side."
L["faerie_trove"] = "Located underneath the platform."
L["harmonic_chest"] = "Requires two people. One person plays the harp and the other plays the drum to unlock the chest."
L["hearty_dragon_plume"] = "Click {spell:333554} at the top of the nearby waterfalls and use it to float down onto the branch."
L["old_ardeite_note"] = "Kill {npc:160747} and {npc:160748} in Shimmerbough to the southeast for {item:174042}. Use this item to fly up near the rare and tag it."
L["swollen_anima_seed"] = "A large seed sitting inside a tree trunk."

-------------------------------------------------------------------------------
----------------------------------- BASTION -----------------------------------
-------------------------------------------------------------------------------

L["aspirant_eolis_note"] = "Loot a nearby {item:180613} and read it with the NPC targeted to activate him."
L["basilofos_note"] = "Move around the rock until a purple fixate marker appears over your head. Stand still and wait for four emotes to appear, then he will spawn."
L["beasts_of_bastion"] = "Beasts of Bastion"
L["beasts_of_bastion_note"] = "Talk to {npc:161441} to summon one of the four beasts."
L["corrupted_clawguard_note"] = "Loot a {item:180651} in Forgefire Outpost up the hill and use it to repair the {npc:171300}."
L["dark_watcher_note"] = "Can only be seen while dead. Talk to her and she will cast {spell:332830} on you before attacking."
L["demi_hoarder_note"] = "Starts with 99 stacks of {spell:333874}, reducing damage taken. Stacks are slowly removed with damage. The rare will follow a path and despawn if it reaches the end."
L["dionae_note"] = "When she becomes immune, click the four {npc:163747} to break her shield."
L["herculon_note"] = [[
Collect {item:172451} and use them to give {npc:158659} stacks of {spell:343531}. At 10 stacks, he will activate.

Motes can be collected from nearby Depleted Anima Canisters located in the room or just outside.
]]
L["nikara_note"] = "With two other players, click the Ancient Incense to summon."
L["wingflayer_note"] = "To summon, click the horn on the nearby table (southeast, up the stairs)."

L["broken_flute"] = "Kill nearby {npc:170009} until they drop the {item:180536}, then use the tools to repair it."
L["experimental_construct_part"] = "Loot a nearby {item:180534} and use it to repair the part. The anima has multiple spawn locations."
L["larion_harness"] = "Located inside the Hall of Beasts."
L["memorial_offering"] = "Purchase a {item:180788} from {npc:171526} in Aspirant's Rest. Place it in the drink tray near the chest to obtain the {item:180797}."
L["scroll_of_aeons"] = "Loot 2 {item:173973} in the center area and place them on the nearby tribute platters to reveal the treasure."

L["gift_of_agthia"] = "Click the lit torch near the broken bridge to the northwest and carry {spell:333320} from torch to torch until you reach the chest. Lighting the final torch will grant you {spell:333063}."
L["gift_of_chyrus"] = "Kneel in front of the chest to be granted {spell:333045}."
L["gift_of_thenios"] = [[
Behind the chest is a flight pad called "Path of Wisdom". This leads to a sequence of platforms with different incenses you can commune with:

• Incense of Knowledge
• Incense of Patience
• Incense of Insight
• Incense of Judgement

Commune with them in the order Patience => Knowledge => Insight. On the Judgement platform an orb called the "Path of Insightful Wisdom" will appear.

The orb will take you to the true Incense of Judgment. Commune with it and the final flight pad will grant you {spell:333068} to open the chest.
]]
L["gift_of_vesiphone"] = "Ring one of the bells to spawn a {npc:170849} and kill it to receive the {spell:333239} debuff. The falling water opposite the chest will cleanse this debuff and grant you {spell:332785}."

-------------------------------------------------------------------------------
--------------------------------- MALDRAXXUS ----------------------------------
-------------------------------------------------------------------------------

L["chelicerae_note"] = "Destroy the {npc:159885} to activate the rare."
L["gristlebeak_note"] = "Break all nearby {npc:162761} to engage the rare."
L["malkorak_note"] = "At the top of the tower (lots of stairs)."
L["schmitd_note"] = "Use nearby {spell:313451} to break his shield."

L["mixed_pool_note"] = [[
Gather ingredients from the surrounding mobs and toss them into the pool. Once 30 ingredients have been added, one of seven rares will spawn depending on the combination used.

• Collect {spell:306713} from {npc:167923} and {npc:167948} to the north.

• Collect {spell:306719} from {npc:165015} and {npc:171142} to the south.

• Collect {spell:306722} from {npc:165027} and {npc:166438} to the south.
]]

L["blackhound_cache"] = "Blackhound Cache"
L["bladesworn_supply_cache"] = "Bladesworn Supply Cache"
L["glutharns_note"] = "In a cave behind the waterfall of slime. Kill {npc:172485} and both {npc:172479} to unlock the chest."
L["kyrian_keepsake_note"] = "Inspect the {npc:169664} to loot the treasure."
L["plaguefallen_chest_note"] = [[
Stand in the green slime (requires healing!) to get 10 stacks of {spell:330069} and be transformed into a {spell:330092}.

Once transformed, visit the cave underneath {npc:158406}'s platform (entrance on the east side) and click the pipe to transport to the chest.
]]
L["stolen_jar_note"] = "In a cave underneath the giant mushroom."
L["strange_growth_note"] = "Pull on the {npc:165037} to reveal the treasure."
L["vat_of_slime_note"] = "Click the bottle on the table and then click on the vat of slime."

L["pet_cat"] = "Pet the damn cat!"
L["hairball"] = ns.color.Red("Only appears in the Festering Sanctum inside the Plaguefall dungeon!")
L["lime"] = "Sitting on top of the large bone arch."
L["moldstopheles"] = "Run around the back of the stalk and jump up the mushroom platforms. For the final platform, use a mount and jump at the corner where it meets the stalk."
L["pus_in_boots"] = "Located under the bridge."

L["options_toggle_kittens"] = "Kittens"
L["options_toggle_kittens_desc"] = "Display locations of kittens for the Nine Afterlives achievement."

-------------------------------------------------------------------------------
--------------------------------- REVENDRETH ----------------------------------
-------------------------------------------------------------------------------

L["endlurker_note"] = "Click Anima Stake near {npc:165229} corpse and use {spell:321826} on top of the Shimmering Rift."
L["executioner_aatron_note"] = "Kill the three nearby {npc:166715} to remove {spell:324872}."
L["famu_note"] = "Talk to {npc:166483} to trigger the event."
L["leeched_soul_note"] = "Inside the nearby crypt. Walk near {npc:165151} to start the event."
L["lord_mortegore_note"] = "Kill surrounding mobs to obtain {item:174378} and use it to empower a {npc:161870}. The rare will spawn once all four sigils are empowered."
L["scrivener_lenua_note"] = "Return {npc:160753} to the Forbidden Library."
L["sinstone_hoarder_note"] = "Appears on the minimap as a treasure chest. Attempt to loot the {npc:162503} and the rare will reveal itself."
L["soulstalker_doina_note"] = "Follow downstairs and through the mirror when she runs away."

L["darkreach_supplies"] = "Jump on the {npc:169995} and glide southwest into the hollowed spire directly above the Cache of the Night treasure."
L["dredglaive_note"] = "Under the bridge in the {npc:173671} corpse."
L["lost_quill_note"] = "Loot {item:182475} from the bottle on the table in the Forbidden Library."
L["taskmaster_trove_note"] = "Read the Ingress and Egress Rites then carefully make your way to the chest."
L["the_count_note"] = "Farm 99 {currency:1820} in the Endmire and then bring them to {npc:173488}."

L["bleakwood_chest"] = "Bleakwood Chest"
L["chest_of_envious_dreams"] = "Chest of Envious Dreams"
L["filchers_prize"] = "Filcher's Prize"
L["gilded_plum_chest"] = "Gilded Plum Chest"
L["gilded_plum_chest_note"] = "Kill the {npc:166680} wandering up and down the road."
L["remlates_cache"] = "Remlate's Hidden Cache"
L["remlates_cache_note"] = "On the outer wall of Darkhaven behind the crypt."
L["wayfairer_spoils"] = "Wayfairer's Abandoned Spoils"

L["options_toggle_carriages"] = "Carriages"
L["options_toggle_carriages_desc"] = "Display locations and paths of rideable carriages."