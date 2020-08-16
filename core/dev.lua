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
            show_debug_map = {
                type = "toggle",
                arg = "show_debug_map",
                name = L["options_toggle_show_debug_map"],
                desc = L["options_toggle_show_debug_map_desc"],
                order = 1,
            },
            show_debug_quest = {
                type = "toggle",
                arg = "show_debug_quest",
                name = L["options_toggle_show_debug_quest"],
                desc = L["options_toggle_show_debug_quest_desc"],
                order = 2,
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

    -- Register all addons objects for the CTRL+ALT handler
    local plugins = "HandyNotes_ZarPlugins"
    if _G[plugins] == nil then _G[plugins] = {} end
    _G[plugins][#_G[plugins] + 1] = ns

    -- Initialize a history for quest ids so we still have a record after /reload
    if _G[ADDON_NAME.."DB"]['quest_id_history'] == nil then
        _G[ADDON_NAME.."DB"]['quest_id_history'] = {}
    end
    local history = _G[ADDON_NAME.."DB"]['quest_id_history']

    -- Print debug messages for each quest ID that is flipped
    local QTFrame = CreateFrame('Frame', ADDON_NAME.."QT")
    local lastCheck = GetTime()
    local quests = {}
    local max_quest_id = 100000
    C_Timer.After(2, function ()
        -- Give some time for quest info to load in before we start
        for id = 0, max_quest_id do quests[id] = IsQuestFlaggedCompleted(id) end
        QTFrame:SetScript('OnUpdate', function ()
            if GetTime() - lastCheck > 1 and ns.addon.db.profile.show_debug_quest then
                local changed = {}
                for id = 0, max_quest_id do
                    local s = IsQuestFlaggedCompleted(id)
                    if s ~= quests[id] then
                        changed[#changed + 1] = {'Quest', id, 'changed:', tostring(quests[id]), '=>', tostring(s)}
                        quests[id] = s
                    end
                end
                if #changed <= 10 then
                    -- changing zones will sometimes cause thousands of quest
                    -- ids to flip state, we do not want to report on those
                    for i, args in ipairs(changed) do
                        table.insert(history, 1, args)
                        ns.debugQuest(unpack(args))
                    end
                end
                if #history > 1000 then
                    for i = #history, 1001, -1 do
                        history[i] = nil
                    end
                end
                lastCheck = GetTime()
            end
        end)
        ns.debugQuest('Quest IDs are now being tracked')
    end)

    -- Listen for LCTRL + LALT when the world map is open to display nodes
    -- that have already been cleared by quest ids.
    local IQFrame = CreateFrame('Frame', ADDON_NAME.."IQ", WorldMapFrame)
    local groupPins = WorldMapFrame.pinPools.GroupMembersPinTemplate
    IQFrame:SetPropagateKeyboardInput(true)
    IQFrame:SetScript('OnKeyDown', function (_, key)
        if (key == 'LCTRL' or key == 'LALT') and IsLeftControlKeyDown() and IsLeftAltKeyDown() then
            IQFrame:SetPropagateKeyboardInput(false)
            for i, _ns in ipairs(_G[plugins]) do
                if not _ns.ignore_quests then
                    _ns.ignore_quests = true
                    _ns.addon:Refresh()
                end
            end
            -- Hide player pins on the map
            groupPins:GetNextActive():Hide()
        end
    end)
    IQFrame:SetScript('OnKeyUp', function (_, key)
        if key == 'LCTRL' or key == 'LALT' then
            IQFrame:SetPropagateKeyboardInput(true)
            for i, _ns in ipairs(_G[plugins]) do
                if _ns.ignore_quests then
                    _ns.ignore_quests = false
                    _ns.addon:Refresh()
                end
            end
            -- Show player pins on the map
            groupPins:GetNextActive():Show()
        end
    end)
end

-------------------------------------------------------------------------------

local function debug(...)
    if (ns.addon.db.profile.development) then print(...) end
end

local function debugMap(...)
    if (ns.addon.db.profile.show_debug_map) then print(...) end
end

local function debugQuest(...)
    if (ns.addon.db.profile.show_debug_quest) then print(...) end
end

ns.debug = debug
ns.debugMap = debugMap
ns.debugQuest = debugQuest

-------------------------------------------------------------------------------

ns.BootstrapDevelopmentEnvironment = BootstrapDevelopmentEnvironment
