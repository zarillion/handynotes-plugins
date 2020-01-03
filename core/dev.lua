-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------
--------------------------------- DEVELOPMENT ---------------------------------
-------------------------------------------------------------------------------

--[[

To enable all development settings and functionality:

    1. Tweak any setting in the addon and exit the game.
    2. Open the settings file for this addon.
        WTF/Account/<account>/SavedVariables/HandyNotes_<this_addon>.lua
    3. Add a new line under profiles => Default.
        ["development"] = true,
    4. Save and star the game. You should now see development settings
       at the bottom of the addon settings window.

--]]

local function BootstrapDevelopmentEnvironment()
    -- Add development settings to the UI
    ns.options.args.DevelopmentGroup = {
        type = "group",
        order = 30,
        name = L["options_dev_settings"],
        desc = L["options_dev_settings_desc"],
        inline = true,
        args = {
            show_debug = {
                type = "toggle",
                arg = "show_debug",
                name = L["options_toggle_show_debug"],
                desc = L["options_toggle_show_debug_desc"],
                order = 1,
            },
            force_nodes = {
                type = "toggle",
                arg = "force_nodes",
                name = L["options_toggle_force_nodes"],
                desc = L["options_toggle_force_nodes_desc"],
                order = 3,
            }
        }
    }

    -- Print debug messages for each quest ID that is flipped
    local QTFrame = CreateFrame('Frame', ADDON_NAME.."QT")
    local lastCheck = GetTime()
    local quests = {}
    local max_quest_id = 100000
    C_Timer.After(1, function ()
        -- Give some time for quest info to load in before we start
        for id = 0, max_quest_id do quests[id] = IsQuestFlaggedCompleted(id) end
        QTFrame:SetScript('OnUpdate', function ()
            if GetTime() - lastCheck > 1 then
                for id = 0, max_quest_id do
                    local s = IsQuestFlaggedCompleted(id)
                    if s ~= quests[id] then
                        ns.debug('Quest', id, 'changed:', tostring(quests[id]), '=>', tostring(s))
                        quests[id] = s
                    end
                end
                lastCheck = GetTime()
            end
        end)
        ns.debug('Quest IDs are now being tracked')
    end)

    -- Listen for LCTRL + LALT when the world map is open to display nodes
    -- that have already been cleared by quest ids.
    local IQFrame = CreateFrame('Frame', ADDON_NAME.."IQ", WorldMapFrame)
    IQFrame:SetPropagateKeyboardInput(true)
    IQFrame:SetScript('OnKeyDown', function (_, key)
        if not ns.ignore_quests and (key == 'LCTRL' or key == 'LALT') then
            if IsLeftControlKeyDown() and IsLeftAltKeyDown() then
                IQFrame:SetPropagateKeyboardInput(false)
                ns.ignore_quests = true
                ns.addon:Refresh()
            end
        end
    end)
    IQFrame:SetScript('OnKeyUp', function (_, key)
        if ns.ignore_quests and (key == 'LCTRL' or key == 'LALT') then
            IQFrame:SetPropagateKeyboardInput(true)
            ns.ignore_quests = false
            ns.addon:Refresh()
        end
    end)
end

-------------------------------------------------------------------------------

ns.BootstrapDevelopmentEnvironment = BootstrapDevelopmentEnvironment
