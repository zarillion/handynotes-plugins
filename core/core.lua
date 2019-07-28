-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local Addon = LibStub("AceAddon-3.0"):NewAddon(ADDON_NAME,
    "AceBucket-3.0", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes", true)
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME);
if not HandyNotes then return end

ns.addon = Addon;
ns.included = {};
ns.locale = L;
ns.nodes = {};

------------------------------------ TODO -------------------------------------

-- Add area indicators on hover for zone rares
-- Stick area indicators on click and highlight rare icon blue
-- Add backdrop tooltip for Naz zone-wide rares
-- Add filtering for rewards (pets vs mounts vs transmog vs achievements)

-------------------------------------------------------------------------------
----------------------------------- HELPERS -----------------------------------
-------------------------------------------------------------------------------

local function debug(...)
    if (Addon.db.profile.show_debug) then
        print(...);
    end
end

local DropdownMenu = CreateFrame("Frame", ADDON_NAME.."DropdownMenu");
DropdownMenu.displayMode = "MENU";
local function initializeDropdownMenu (button, level, mapID, coord)
    if not level then return end
    local node = ns.nodes[mapID][coord];
    local spacer = {text='', disabled=1, notClickable=1, notCheckable=1};

    if (level == 1) then
        UIDropDownMenu_AddButton({
            text=L["context_menu_title"], isTitle=1, notCheckable=1
        }, level);

        UIDropDownMenu_AddButton(spacer, level);

        if select(2, IsAddOnLoaded('TomTom')) then
            UIDropDownMenu_AddButton({
                text=L["context_menu_add_tomtom"], notCheckable=1,
                func=function (button)
                    local x, y = HandyNotes:getXY(coord);
                    TomTom:AddWaypoint(mapID, x, y, {
                        title = node.label,
                        persistent = nil,
                        minimap = true,
                        world = true
                    });
                end
            }, level);
        end

        UIDropDownMenu_AddButton({
            text=L["context_menu_hide_node"], notCheckable=1,
            func=function (button)
                Addon.db.char[mapID..'_coord_'..coord] = true;
                Addon:Refresh()
            end
        }, level);

        UIDropDownMenu_AddButton({
            text=L["context_menu_restore_hidden_nodes"], notCheckable=1,
            func=function ()
                table.wipe(Addon.db.char)
                Addon:Refresh()
            end
        }, level);

        UIDropDownMenu_AddButton(spacer, level);

        UIDropDownMenu_AddButton({
            text=CLOSE, notCheckable=1,
            func=function() CloseDropDownMenus() end
        }, level);
    end
end

-------------------------------------------------------------------------------
---------------------------------- CALLBACKS ----------------------------------
-------------------------------------------------------------------------------

function Addon:OnEnter(mapID, coord)
    local node = ns.nodes[mapID][coord];
    local tooltip = self:GetParent() == WorldMapButton and WorldMapTooltip or GameTooltip;

    if self:GetCenter() > UIParent:GetCenter() then
        tooltip:SetOwner(self, "ANCHOR_LEFT");
    else
        tooltip:SetOwner(self, "ANCHOR_RIGHT");
    end

    tooltip:SetText(node.label);
    if node.note and Addon.db.profile.show_notes then
        tooltip:AddLine(node.note, nil, nil, nil, true);
    end

    if Addon.db.profile.show_loot then
        local firstAchieve, firstOther = true, true
        for i, reward in ipairs(node.rewards or {}) do

            -- Add a blank line between achievements and other rewards
            local isAchieve = ns.isinstance(reward, ns.reward.Achievement)
            if isAchieve and firstAchieve then
                tooltip:AddLine(" ")
                firstAchieve = false
            elseif not isAchieve and firstOther then
                tooltip:AddLine(" ")
                firstOther = false
            end

            reward:render(tooltip);
        end
    end

    tooltip:Show();
end

function Addon:OnLeave( mapID, coord )
    if self:GetParent() == WorldMapButton then
        WorldMapTooltip:Hide();
    else
        GameTooltip:Hide();
    end
end

function Addon:OnClick(button, down, mapID, coord)
    local node = ns.nodes[mapID][coord];
    if button == "RightButton" and down then
        DropdownMenu.initialize = function (button, level)
            initializeDropdownMenu(button, level, mapID, coord);
        end;
        ToggleDropDownMenu(1, nil, DropdownMenu, self, 0, 0)
    elseif button == "LeftButton" and down then
        -- toggle sticky overlay
    end
end

function Addon:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New(ADDON_NAME..'DB', ns.optionDefaults, "Default")
    self:RegisterEvent("PLAYER_ENTERING_WORLD", function ()
        self:UnregisterEvent("PLAYER_ENTERING_WORLD")
        self:ScheduleTimer("RegisterWithHandyNotes", 1)
    end);
end

-------------------------------------------------------------------------------
------------------------------------ MAIN -------------------------------------
-------------------------------------------------------------------------------

function Addon:RegisterWithHandyNotes()
    local force = self.db.profile.force_nodes

    do
        local mapID, minimap
        local function iter(nodes, precoord)
            if not nodes then return nil end
            if minimap and self.db.profile.hide_minimap then return nil end
            local coord, node = next(nodes, precoord)
            while coord do -- Have we reached the end of this zone?
                if node and (force or node:enabled(self.db, mapID, coord, minimap)) then
                    local icon, scale, alpha = node:display(self.db)
                    return coord, nil, icon, scale, alpha
                end
                coord, node = next(nodes, coord) -- Get next node
            end
            return nil, nil, nil, nil
        end
        function Addon:GetNodes2(_mapID, _minimap)
            debug('Loading nodes for map: '.._mapID..' (minimap='..tostring(_minimap)..')')
            mapID = _mapID
            minimap = _minimap
            return iter, ns.nodes[mapID], nil
        end
    end

    if self.db.profile.development then ns.add_dev_options() end
    HandyNotes:RegisterPluginDB(ADDON_NAME, self, ns.options)

    self:RegisterBucketEvent({ "LOOT_CLOSED", "PLAYER_MONEY", "SHOW_LOOT_TOAST", "SHOW_LOOT_TOAST_UPGRADE" }, 2, "Refresh")
    self:Refresh()
end

function Addon:Refresh()
    self:SendMessage("HandyNotes_NotifyUpdate", ADDON_NAME)
end
