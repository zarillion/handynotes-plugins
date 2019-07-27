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
ns.types = {};

for i, name in ipairs({
    'ACHIEVE', 'CAVE', 'ITEM', 'MISC', 'MOUNT', 'NPC', 'PET', 'RARE',
    'SUPPLY_CHEST', 'TITLE', 'TOY', 'TRANSMOG', 'TREASURE'
}) do
    ns.types[name] = i;
end

------------------------------------ TODO -------------------------------------

-- Add area indicators on hover for zone rares
-- Stick area indicators on click and highlight rare icon blue
-- Add backdrop tooltip for Naz zone-wide rares
-- Scale icons based on map size
-- Add filtering for reward types (pets vs mounts vs transmog vs achievements)

-------------------------------------------------------------------------------
----------------------------------- HELPERS -----------------------------------
-------------------------------------------------------------------------------

local function debug(...)
    if (Addon.db.profile.show_debug) then
        print(...);
    end
end

local _ttn = ADDON_NAME.."_npcToolTip";
local _tt = CreateFrame("GameTooltip", _ttn, UIParent, "GameTooltipTemplate");
local _npc_names = {};
local function GetCreatureNamebyID(id)
    local name = _npc_names[id];
    if not name then
        _tt:SetOwner(UIParent, "ANCHOR_NONE");
        _tt:SetHyperlink(("unit:Creature-0-0-0-0-%d"):format(id));
        name = _G[_ttn.."TextLeft1"]:GetText();
        if name and name ~= '' then
            _npc_names[id] = name;
        else
            name = UNKNOWN;
        end
    end
    return name;
end

local VERIFIERS = {
    [0] = function () return true end,
    [ns.types.ACHIEVE] = function (self)
        if select(4, GetAchievementInfo(self.id)) then return true end
        for i, c in ipairs(self.criteria) do
            local _, _, completed = GetAchievementCriteriaInfoByID(self.id, c.id);
            if not completed then return false end
        end
        return true;
    end,
    [ns.types.ITEM] = function (self)
        if self.quest then return IsQuestFlaggedCompleted(self.quest) end
        return true;
    end,
    [ns.types.MOUNT] = function (self)
        return select(11, C_MountJournal.GetMountInfoByID(self.id));
    end,
    [ns.types.PET] = function (self)
        return C_PetJournal.GetNumCollectedInfo(self.id) > 0;
    end,
    [ns.types.TOY] = function (self)
        return PlayerHasToy(self.item);
    end,
    [ns.types.TRANSMOG] = function (self)
        if self.itemIcon and select(2, IsAddOnLoaded('CanIMogIt')) then
            local l = self.itemLink;
            if CanIMogIt:PlayerKnowsTransmog(l) then return true end
            if not CanIMogIt:CharacterCanLearnTransmog(l) then return true end
            return false;
        end
        return true; -- CanIMogIt not available
    end
};

local CRITERIA_ICON = 'Interface\\AchievementFrame\\UI-Achievement-Criteria-Check';
local LOADING_ICON = 'Interface\\Icons\\Inv_misc_questionmark';

local RENDERERS = {
    [0] = function (self, tooltip)
        tooltip:AddLine('Unknown reward type: '..self.type);
    end,
    [ns.types.ACHIEVE] = function (self, tooltip)
        local _,name,_,completed,_,_,_,_,_,icon = GetAchievementInfo(self.id);
        tooltip:AddLine(ACHIEVEMENT_COLOR_CODE..'['..name..']|r');
        tooltip:AddTexture(icon, {margin={right=2}});
        for i, c in ipairs(self.criteria) do
            local cname,_,ccomp,qty,reqQty = GetAchievementCriteriaInfoByID(self.id, c.id);
            if (cname == '') then cname = qty..'/'..reqQty end

            local r, g, b = .6, .6, .6;
            local ctext = cname..(self.suffix or '')
            if (completed or ccomp) then
                r, g, b = 0, 1, 0;
            else
                ctext = "   - "..ctext
            end

            if c.note then
                tooltip:AddDoubleLine(ctext, c.note, r, g, b);
            else
                tooltip:AddLine(ctext, r, g, b);
            end

            if (completed or ccomp) then
                tooltip:AddTexture(CRITERIA_ICON, {
                    width=20, height=16, margin={left=10, right=-7}
                });
            end
        end
    end,
    [ns.types.ITEM] = function (self, tooltip)
        local status = '';
        if self.quest then
            local completed = IsQuestFlaggedCompleted(self.quest);
            status = completed and L['(completed)'] or L['(incomplete)'];
        end
        tooltip:AddDoubleLine(self.itemLink, status);
        tooltip:AddTexture(self.itemIcon or LOADING_ICON, {margin={right=2}});
    end,
    [ns.types.MOUNT] = function (self, tooltip)
        local collected = select(11, C_MountJournal.GetMountInfoByID(self.id));
        local status = collected and L["(known)"] or L["(missing)"];
        tooltip:AddDoubleLine(self.itemLink..' ('..L["mount"]..')', status);
        tooltip:AddTexture(self.itemIcon or LOADING_ICON, {margin={right=2}});
    end,
    [ns.types.PET] = function (self, tooltip)
        local n, m = C_PetJournal.GetNumCollectedInfo(self.id);
        local color = (n > 0) and L["(green)"] or L["(red)"];
        local status = string.format(color, n..'/'..m);
        tooltip:AddDoubleLine(self.itemLink..' ('..L["pet"]..')', status);
        tooltip:AddTexture(self.itemIcon or LOADING_ICON, {margin={right=2}});
    end,
    [ns.types.TITLE] = function (self, tooltip)
        tooltip:AddLine(self.title);
    end,
    [ns.types.TOY] = function (self, tooltip)
        local collected = PlayerHasToy(self.item);
        local status = collected and L["(known)"] or L["(missing)"];
        tooltip:AddDoubleLine(self.itemLink..' ('..L["toy"]..')', status);
        tooltip:AddTexture(self.itemIcon or LOADING_ICON, {margin={right=2}});
    end,
    [ns.types.TRANSMOG] = function (self, tooltip)
        -- TODO: display slot?
        local status = '';
        if self.itemIcon and select(2, IsAddOnLoaded('CanIMogIt')) then
            local collected = CanIMogIt:PlayerKnowsTransmog(self.itemLink);
            status = collected and L["(known)"] or L["(missing)"];
        end
        tooltip:AddDoubleLine(self.itemLink..' ('..L[self.slot]..')', status);
        tooltip:AddTexture(self.itemIcon or LOADING_ICON, {margin={right=2}});
    end
};

function normalizeNodes ()
    -- normalize node values that support different types (i.e. scalar/vector)
    for mapID, nodes in pairs(ns.nodes) do
        for coord, node in pairs(nodes) do
            if (type(node.quest) == 'number') then
                node.quest = {node.quest};
            end
            if (type(node.requires) == 'number') then
                node.requires = {node.requires};
            end
            if (node.minimap == nil) then
                node.minimap = true; -- nodes on minimap by default
            end
            for i, reward in ipairs(node.rewards or {}) do
                reward.obtained = VERIFIERS[reward.type] or VERIFIERS[0];
                reward.render = RENDERERS[reward.type] or RENDERERS[0];

                if reward.criteria ~= nil then
                    -- we allow a single number, table of numbers or table of
                    -- objects: {id=<number>, note=<string>}
                    if type(reward.criteria) == 'number' then
                        reward.criteria = {{id=reward.criteria}};
                    else
                        local crittab = {}
                        for i, criteria in ipairs(reward.criteria) do
                            if type(criteria) == 'number' then
                                crittab[#crittab + 1] = {id=criteria}
                            else
                                crittab[#crittab + 1] = criteria
                            end
                        end
                        reward.criteria = crittab
                    end
                end

                if reward.item then
                    -- cache item link
                    reward.itemLink = L["retrieving"];
                    local item = Item:CreateFromItemID(reward.item);
                    item:ContinueOnItemLoad(function()
                        reward.itemLink = item:GetItemLink();
                        reward.itemIcon = item:GetItemIcon();
                    end);
                end
            end

            node.done = function (self)
                for i, reward in ipairs(self.rewards or {}) do
                    if not reward:obtained() then return false end
                end
                return true;
            end

            node.getLabel = function (self)
                if self.label then
                    return self.label;
                elseif self.id then
                    return GetCreatureNamebyID(self.id);
                end
                return '';
            end
        end
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
                        title = node:getLabel(),
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

    tooltip:SetText(node:getLabel());
    if node.note and Addon.db.profile.show_notes then
        tooltip:AddLine(node.note, nil, nil, nil, true);
    end

    if Addon.db.profile.show_loot then
        for i, reward in ipairs(node.rewards or {}) do
            if i == 1 then
                -- add a blank line between the label/note and the rewards
                tooltip:AddLine(" ");
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
    self.db = LibStub("AceDB-3.0"):New(ADDON_NAME..'DB', ns.optionDefaults, "Default");
    self:RegisterEvent("PLAYER_ENTERING_WORLD", function ()
        normalizeNodes();
        self:UnregisterEvent("PLAYER_ENTERING_WORLD");
        self:ScheduleTimer("RegisterWithHandyNotes", 1);
    end);
end

function Addon:RegisterWithHandyNotes()
    do
        local mapID, minimap;
        local function iter(nodes, precoord)
            if not nodes then return nil end
            local coord, node = next(nodes, precoord)
            while coord do -- Have we reached the end of this zone?
                if node and self:IsNodeEnabled(node, mapID, coord, minimap) then
                    local icon, scale, alpha = self:GetNodeIcon(node);
                    return coord, nil, icon, scale, alpha;
                end
                coord, node = next(nodes, coord) -- Get next node
            end
            return nil, nil, nil, nil
        end
        function Addon:GetNodes2(_mapID, _minimap)
            debug('Loading nodes for map: '.._mapID..' (minimap='..tostring(_minimap)..')');
            mapID = _mapID;
            minimap = _minimap;
            return iter, ns.nodes[mapID], nil
        end
    end

    HandyNotes:RegisterPluginDB(ADDON_NAME, self, ns.options);
    self:RegisterBucketEvent({ "LOOT_CLOSED", "PLAYER_MONEY", "SHOW_LOOT_TOAST", "SHOW_LOOT_TOAST_UPGRADE" }, 2, "Refresh");
    self:Refresh();
end

function Addon:Refresh()
    self:SendMessage("HandyNotes_NotifyUpdate", ADDON_NAME);
end

function Addon:IsNodeEnabled(node, mapID, coord, minimap)
    local profile = self.db.profile;
    local hidden = self.db.char;

    -- All required quest ids must be true
    for i, quest in ipairs(node.requires or {}) do
        if not IsQuestFlaggedCompleted(quest) then return false end
    end

    -- Check of the node should not display on the minimap
    if not node.minimap and minimap then return false end

    -- Check for zone-specific exclusions
    if not ns.included[mapID](node, profile) then return false end

    -- Check if our type is configured to always display
    if profile.alwaysshowtreasures and node.type == ns.types.TREASURE then return true end
    if profile.alwaysshowrares and node.type == ns.types.RARE then return true end

    -- Check if we've been hidden by the user
    if hidden[mapID..'_coord_'..coord] then return false end

    -- If this is a cave, check if all our parents are hidden
    if node.type == ns.types.CAVE then
        for i, quest in ipairs(node.quest or {}) do
            for pcoord, pnode in pairs(ns.nodes[mapID]) do
                if pnode.type ~= ns.types.CAVE then
                    for k, pquest in ipairs(pnode.quest or {}) do
                        if pquest == quest and Addon:IsNodeEnabled(pnode, mapID, pcoord, minimap) then
                            return true;
                        end
                    end
                end
            end
        end
        return false; -- all are hidden
    end

    -- Exclude if we've collected everything and we're hiding "done" nodes
    if (profile.hideKnownLoot and node:done() and node.type == ns.types.RARE) then return false end

    -- Hide nodes attached to quests we've completed for the day
    for i, quest in ipairs(node.quest or {}) do
        if IsQuestFlaggedCompleted(quest) then return false end
    end

    return true
end

function Addon:GetNodeIcon(node)
    local scale = 1;
    local alpha = 1;
    local icon = ns.icons["default"];

    if node.type == ns.types.RARE then
        scale = self.db.profile.icon_scale_rares;
        alpha = self.db.profile.icon_alpha_rares;
        icon = ns.icons["skullWhite"];
        if not node:done() and node.quest == nil then
            icon = ns.icons["skullBlueRedGlow"];
        elseif not node:done() then
            icon = ns.icons["skullBlue"];
        elseif (node.quest == nil) then
            icon = ns.icons["skullWhiteRedGlow"];
        end
    elseif node.type == ns.types.TREASURE then
        scale = self.db.profile.icon_scale_treasures;
        alpha = self.db.profile.icon_alpha_treasures;
        icon = ns.icons["treasure"];
    elseif node.type == ns.types.SUPPLY_CHEST then
        scale = self.db.profile.icon_scale_treasures;
        alpha = self.db.profile.icon_alpha_treasures;
        icon = ns.icons["starChest"]
    elseif node.type == ns.types.PET then
        scale = self.db.profile.icon_scale_pets;
        alpha = self.db.profile.icon_alpha_pets;
        icon = ns.icons["battle_pet"];
    elseif node.type == ns.types.CAVE then
        scale = self.db.profile.icon_scale_caves;
        alpha = self.db.profile.icon_alpha_caves;
        icon = ns.icons["cave"];
    else
        scale = self.db.profile.icon_scale_other;
        alpha = self.db.profile.icon_alpha_other;
    end

    -- allow nodes to override their icon
    if node.icon then
        icon = ns.icons[node.icon] or node.icon;
    end

    -- allow icons to override their scale
    if icon.scale then
        scale = scale * icon.scale;
    end

    return icon, scale, alpha
end
