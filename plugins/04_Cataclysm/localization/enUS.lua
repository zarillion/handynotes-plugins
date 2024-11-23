local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

-------------------------------------------------------------------------------
----------------------------------- COMMON ------------------------------------
-------------------------------------------------------------------------------

L['options_icons_safari'] = 'Kalimdor / Eastern Kingdoms Safari'
L['options_icons_safari_desc'] = 'Display battle pet locations for the {achievement:6585} and {achievement:6586} achievements.'

-------------------------------------------------------------------------------
--------------------------------- MOUNT HYJAL ---------------------------------
-------------------------------------------------------------------------------

L['hyjal_phase0'] = 'Phase 0 - Pre Invasion'
L['hyjal_phase1'] = 'Phase 1 - Invasion'
L['hyjal_phase2'] = 'Phase 2 - The Sanctuary of Malorne'
L['hyjal_phase3'] = 'Phase 3 - The Molten Front'
L['hyjal_phase4a'] = 'Phase 4a - The Druids of the Talon Area'
L['hyjal_phase4b'] = 'Phase 4b - The Shadow Wardens Area'
L['hyjal_phase5'] = 'Phase 5 - The Regrowth'

L['hyjal_phase1_note'] = 'Complete Quests in {location:Mount Hyjal} until you get {quest:29389}. This questline will start the Invasion Phase.'
L['hyjal_phase2_note'] = 'To advance into Phase 2 you need 10 {currency:416} for {quest:29198}.\n\nYou earn {currency:416} from daily quests.'
L['hyjal_phase3_note'] = 'To advance into Phase 3 you need 15 {currency:416} for {quest:29201}.\n\nYou earn {currency:416} from daily quests.'
L['hyjal_phase4_note'] = [[
Phase 4 is split into 2 parts.

To advance into Phase 4a you need 150 {currency:416} for {quest:29181}.
To advance into Phase 4b you need 150 {currency:416} for {quest:29214}.

You earn {currency:416} from daily quests.
]]
L['hyjal_phase5_note'] = 'To advance into Phase 5 you need to complete {quest:29215} and {quest:29182}.' -- review

L['portal_molten_front'] = 'Portal to the Molten Front'
L['portal_mount_hyjal'] = 'Portal to Mount Hyjal'

L['spider_hill_note'] = [[
Reach the highest point in the {location:Widow's Clutch}.

To reach the top you have to aggro the {npc:52981} without killing them. They will cast {spell:97959} and pull you up.
Recommended methods for max level characters:

{item:46725}
Demon Hunter: {spell:185245}
Druid: {spell:2908}
Hunter: {spell:1513}
Mage: {spell:241178}
Paladin: {spell:62124}
Priest: {spell:528}
Rogue: {spell:36554}
Shaman: {spell:52870}
Warrior: {spell:355}
]]

L['fiery_lords_note'] = 'Only one {title:Lord} is up at a time, after killing it the next will spawn immediately.'
L['have_we_met_note'] = [[
An elite group of fighters will assist you at the daily quest as you arrive in {location:Sethria's Roost}.

Use the emote {emote:/wave} to wave to the required NPC.
]]

L['ludicrous_speed_note'] = [[
While on the quest {daily:29147}, obtain 65 stacks of {spell:100957}.

{npc:52594} gives 15 stacks
{npc:52596} gives 5 stacks
{npc:52595} gives 1 stack
]]

L['angry_little_squirrel_note'] = 'Pull an enemy to the tree and an {npc:52195} will bonk on its head.'
L['hyjal_bear_cub_note'] = 'While on the quest {daily:29161}, throw a {npc:52688} on a {npc:52795}' -- review
L['child_of_tortolla_note'] = 'While on the quest {daily:29101}, instead of punting a turtle into the water, punt it at a {npc:52219}.' -- review
L['ready_for_raiding_2_note'] = 'Slay the following {title:Lieutenant of Flame} in {location:Ragnaros\' Reach} without getting hit by their special attacks.'
L['flawless_victory_note'] = 'Solo kill a {npc:52552} without taking any damage from {spell:97243} or {spell:96688}.'
L['gang_war_note'] = 'Win a duel in {location:Sethria\'s Roost} while on the quest {daily:29128}.'
L['death_from_above_note'] = [[
Bomb the {title:<Firelord>} while you are on the quest {daily:29290}.

{note:Only 3 {title:Firelord}s are active at a time. To complete the achievement faster dont turn in the quest and come back tomorrow.}
]]
L['flamewaker_sentinel_note'] = 'Use {item:137663} to lower his health and so he cast {spell:98369}. Dodge all shots and then kill him.'
L['flamewaker_shaman_note'] = 'Use {item:137663} to get him to low health. Wait until he kills himself.'

L['options_icons_spider_hill_desc'] = 'Displays the location for the {achievement:5872} achievement.'
L['options_icons_fiery_lords_desc'] = 'Displays the locations of the elementals for the {achievement:5861} achievement.'
L['options_icons_have_we_met_desc'] = 'Displays the quest location for the {achievement:5865} achievement.'
L['options_icons_unbeatable_pterodactyl_desc'] = 'Displays the quest location for the {achievement:5860} achievement.'
L['options_icons_ludicrous_speed_desc'] = 'Displays the location for the {achievement:5862} achievement.'
L['options_icons_critter_revenge_desc'] = 'Displays the locations of the critters for the {achievement:5868} achievement.'
L['options_icons_r4r_2_desc'] = 'Displays the location for the {achievement:5873} achievement.'
L['options_icons_flawless_victory_desc'] = 'Displays the location for the {achievement:5873} achievement.'
L['options_icons_gang_war_desc'] = 'Display the location for the {achievement:5864} achievement.'
L['options_icons_death_from_above_desc'] = 'Displays the locations for the {achievement:5874} achievement.'
L['options_icons_infernal_ambassadors_desc'] = 'Displays the locations for the {achievement:5869} achievement.'
L['options_icons_fireside_chat_desc'] = 'Displays the locations of NPCs for the {achievement:5870} achievement.'
L['options_icons_molten_flow_master_desc'] = 'Displays the locations for the {achievement:5871} achievement.'

-------------------------------------------------------------------------------
---------------------------------- DEEPHOLM -----------------------------------
-------------------------------------------------------------------------------

L['portal_to_therazane'] = 'Portal to Therazane\'s Throne'
L['portal_to_earth_temple'] = 'Portal to Temple of Earth'

L['fungal_frenzy_note'] = [[
Suffer the effects of a {spell:83803}, {spell:83805}, {spell:83747} and {spell:83804} simultaneously.

{dot:Bronze} {spell:83747}
Redish-brown mushroom with white border.
Makes you shrink.

{dot:Red} {spell:83803}
Large red mushroom, near water.
Surrounds you with a red mist, increases damage dealt.

{dot:Blue} {spell:83805}
Blue mushroom with white border.
Makes you run faster.

{dot:LightBlue} {spell:83804}
Purple mushroom with pink dots.
Collect this mushroom last, it will only throw you in the air, you won't get any buff.

{note:The mushrooms can only be found if you are on the quest {daily:27050}.
All mushrooms are displayed as {object:Sprouting Crimson Mushroom}.}
]]
L['rock_lover_note'] = 'Stay away from {npc:44258}.'

L['options_icons_broodmother_desc'] = 'Displays the quest location for the {achievement:5447} achievement.'
L['options_icons_fungal_frenzy_desc'] = 'Displays the mushroom locations for the {achievement:5450} achievement.'
L['options_icons_fungalophobia_desc'] = 'Displays the quest location for the {achievement:5445} achievement.'
L['options_icons_glop_family_desc'] = 'Displays the quest location for the {achievement:5446} achievement.'
L['options_icons_rock_lover_desc'] = 'Displays the location and path to {npc:49956} for the {achievement:5449} achievement.'

-------------------------------------------------------------------------------
----------------------------------- VASHJIR -----------------------------------
-------------------------------------------------------------------------------

L['options_icons_whale_shark_desc'] = 'Displays the location of {npc:40728} for the {achievement:4975} achievement.'

-------------------------------------------------------------------------------
----------------------------- TWILIGHT HIGHLANDS ------------------------------
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
------------------------------------ ULDUM ------------------------------------
-------------------------------------------------------------------------------
