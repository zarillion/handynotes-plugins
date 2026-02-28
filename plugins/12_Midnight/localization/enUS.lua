local ADDON_NAME, ns = ...
local L = ns.NewLocale('enUS')
if not L then return end

-------------------------------------------------------------------------------
------------------------------------ COMMON -----------------------------------
-------------------------------------------------------------------------------

L['options_icons_delve_rewards'] = 'Delve Rewards'
L['options_icons_delve_rewards_desc'] = 'Display {location:Delve} rewards on tooltips.'

L['options_icons_stormarion_assault'] = 'Stormarion Assault'
L['options_icons_stormarion_assault_desc'] = 'Display {location:Stormarion Assault} rewards on tooltips.'

L['options_icons_abundance_rewards'] = 'Abundance'
L['options_icons_abundance_rewards_desc'] = 'Display {location:Abundance} rewards on tooltips.'

L['skyriding_glyph'] = 'Skyriding Glyph'
L['options_icons_skyriding_glyph'] = 'Skyriding Glyphs'
L['options_icons_skyriding_glyph_desc'] = 'Display the location of all skyriding glyphs.'

L['midnight_telescope'] = 'Telescope' -- is ingame called "Vista Flag" on beta
L['options_icons_telescope'] = '{achievement:62057}'
L['options_icons_telescope_desc'] = 'Display the location of all 10 telescopes for the {achievement:62057} achievement.'

L['options_icons_midnight_lore_hunter'] = '{achievement:62104}'
L['options_icons_midnight_lore_hunter_desc'] = 'Display lore object locations for {achievement:62104} achievement.'

L['options_icons_profession_treasures'] = 'Profession Treasures'
L['options_icons_profession_treasures_desc'] = 'Display locations of treasures which grant profession knowledge.'

L['options_icons_safari'] = '{achievement:61091}'
L['options_icons_safari_desc'] = 'Display battle pet locations for the {achievement:61091} achievement.'

-------------------------------------------------------------------------------
-------------------------------- EVERSONG WOODS --------------------------------
-------------------------------------------------------------------------------

L['options_icons_ever_painting'] = '{achievement:62185}'
L['options_icons_ever_painting_desc'] = 'Display painting locations for {achievement:62185} achievement.'
L['options_icons_runestone_rush'] = '{achievement:61961}'
L['options_icons_runestone_rush_desc'] = 'Display runestone locations for {achievement:61961} achievement.'

L['eversong_woods_stone_vat_of_wine_note'] = 'Requires 10x {item:256232} and 1x {item:256397} from {npc:251405}.\n\nStomp on the Grapes then add the yeast.'
L['on_flying_platform'] = 'On a flying platform.'
L['gift_of_the_phoenix_note'] = 'Catch 5 cinders from phoenixes that spawn after using the Gift of the Phoenix.'
L['triple_locked_safebox_note'] = 'Requires 3 Hidden Safebox Keys. Grab the purple torch next to the chest to reveal them.'
L['incomplete_book_of_sonnets'] = 'Incomplete Book of Sonnets'

-------------------------------------------------------------------------------
----------------------------------- HARANDAR -----------------------------------
-------------------------------------------------------------------------------

L['glowing_moth'] = 'Glowing Moth'
L['options_icons_glowing_moth'] = '{achievement:61052}'
L['options_icons_glowing_moth_desc'] = 'Shows the locations of Glowing Moths for {achievement:61052} achievement.'

L['sporespawned_cache_note'] = 'Interact with the {dot:Red}{object:Fungal Mallet} in Fungara Village to get the {spell:1266347} buff, and use it to ring the {object:Mycelium Gong}. The treasure will appear next to the gong.'
L['fungal_mallet'] = 'Fungal Mallet'
L['impenatrably_sealed_gourd_note'] = 'Loot {item:260251} from the nearby {object:Dangling Jug} and {item:260250} from the nearby {object:Hanging Flask} \nInteract with the {object:Durable Vase} and add the fluids to receive {item:260266} \nInteract with the treasure to receive the reward.'

L['options_icons_more_than_just_thier_roots'] = '{achievement:62188}'
L['options_icons_more_than_just_thier_roots_desc'] = 'Display the locations of NPCs for the {achievement:62188} achievement.'
L['more_than_just_thier_roots_note'] = 'Speak with the NPCs in the below locations:'
L['chonon_note'] = 'Up on the branches of the tree.'
L['funnid_note'] = 'High up on the branches of the world tree.'
L['kawayn_note'] = 'Up on the big tree trunk.'

L['altar_of_innocence'] = 'Altar of Innocence'
L['altar_of_vigor'] = 'Altar of Vigor'
L['altar_of_wisdom'] = 'Altar of Wisdom'
L['altar_of_innocence_note'] = 'Return {item:256882} to the {npc:254030} after Interacting with the {object:Altar of Innocence}.\n\nComplete the tasks for the remaining altars to spawn the {object:Gift of the Cycle} treasure in {location:The Den}.'
L['altar_of_vigor_note'] = 'Return {item:257024} to the {npc:254104} after Interacting with the {object:Altar of Vigor}.\n\nComplete the tasks for the remaining altars to spawn the {object:Gift of the Cycle} treasure in {location:The Den}.'
L['altar_of_wisdom_note'] = 'Return {item:257054} to the {npc:254116} after Interacting with the {object:Altar of Wisdom}.\n\nComplete the tasks for the remaining altars to spawn the {object:Gift of the Cycle} treasure in {location:The Den}.'

-------------------------------------------------------------------------------
---------------------------------- VOIDSTORM ----------------------------------
-------------------------------------------------------------------------------

L['bloody_sack_note'] = 'Collect {object:Dripping Meat} from nearby bone piles to feed the {object:Forgotten Oubliette}.'
L['malignant_chest_note'] = 'Activate the {object:Malignant Nodes} in the cave to unlock the chest.'
L['malignant_node'] = 'Malignant Node'

-------------------------------------------------------------------------------
---------------------------------- ZUL'AMAN ----------------------------------
-------------------------------------------------------------------------------

L['options_icons_frog_princess'] = '{achievement:62201}'
L['options_icons_frog_princess_desc'] = 'Display the locations of the frogs for the {achievement:62201} achievement.'

L['options_icons_song_seeker'] = '{achievement:61455}'
L['options_icons_song_seeker_desc'] = 'Display the locations of the Song Seekers for the {achievement:61455} achievement.'

L['options_icons_spiritpaw_marathon'] = '{achievement:62202}'
L['options_icons_spiritpaw_marathon_desc'] = 'Display the locations for the {achievement:62202} achievement.'
L['spiritpaw_marathon_note'] = 'Speak with {npc:258938}, then pick up the nearby {npc:250100} and take them to the {dot:Pink} within the {location:Temple of Jan\'alai} within 30 minutes. \n\n ' .. ns.color.Red('Do not mount up or you will lose the buff.')

-------------------------------------------------------------------------------
---------------------------------- ARCANTINA ----------------------------------
-------------------------------------------------------------------------------

L['share_a_drink_note'] = 'Purchase {item:251039} from {npc:250495} in the Arcantina and share it with all races.'

-------------------------------------------------------------------------------
----------------------------------- DELVES ------------------------------------
-------------------------------------------------------------------------------

L['sturdy_chest'] = 'Sturdy Chest'
L['sturdy_chest_suffix'] = 'Sturdy Chest found'
