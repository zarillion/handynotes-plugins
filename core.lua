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

-- Add slime eggs to map (requires=func)
-- Hide nodes on minimap with minimap=false
-- Add area indicators on hover for zone rares
-- Stick area indicators on click and highlight rare icon blue
-- Add backdrop tooltip for Naz zone-wide rares
-- Update options with appropriate filtering for nodes and rewards
-- Update tooltip with new options:
--     Hide this node (hides by coord)
--     Hide all related nodes (if quest ~= nil) (hides all by questid)
--	   Restore all hidden nodes
--     Send to TomTom?
-- Scale icons based on map size
-- Remove startup delays, run based off proper events
-- Check for MogIt/TomTom at time of use rather than startup
-- Fix tooltip caching, should never see "loading ..."
-- Add icons to tooltips?
-- Clean up tooltips by type (learned/unlearned), type of left side after item
-- Refactor tooltip rendering and loot detection, no more giant functions.

-------------------------------------------------------------------------------
----------------------------------- GLOBALS -----------------------------------
-------------------------------------------------------------------------------

local isTomTomloaded = false;
local isCanIMogItloaded = false;
local clickedMapFile = nil;
local clickedCoord = nil;

-------------------------------------------------------------------------------
----------------------------------- HELPERS -----------------------------------
-------------------------------------------------------------------------------

local function debug(msg)
	if (Addon.db.profile.show_debug) then
		print(msg);
	end
end

local function playerHasLoot( loot )
	if ( loot == nil ) then
		-- no loot no need
		return true
	elseif ( loot["forceUnknown"] ) then
		return false;
	elseif ( loot.type == ns.types.MOUNT ) then
		-- check mount known
		local n,_,_,_,_,_,_,_,_,_,hasMount,j=C_MountJournal.GetMountInfoByID( loot.id );
		return hasMount;
	elseif ( loot.type == ns.types.PET ) then
		-- check pet quantity
		local n,m = C_PetJournal.GetNumCollectedInfo( loot.id );
		return n >= 1;
	elseif ( loot.type == ns.types.TOY ) then
		-- check toy known
		return PlayerHasToy( loot.item );
	elseif ( isCanIMogItloaded == true and loot.type == ns.types.TRANSMOG ) then
		-- check transmog known with canimogit
		local _,itemLink = GetItemInfo( loot.item );
		if ( itemLink ~= nil ) then
			if ( CanIMogIt:PlayerKnowsTransmog( itemLink ) or not CanIMogIt:CharacterCanLearnTransmog( itemLink ) ) then
				return true;
			else
				return false;
			end
		else
			return true
		end
    elseif ( loot.type == ns.types.ACHIEVE ) then
        local _,_,_,completed = GetAchievementInfo(loot.id);
        if (completed) then return true end
        for i, criteria in ipairs(loot.criteria) do
            local _,_,completed = GetAchievementCriteriaInfoByID(loot.id, criteria);
            if (not completed) then return false end
        end
        return true;
	elseif (loot.type == ns.types.ITEM and loot.quest) then
		return IsQuestFlaggedCompleted(loot.quest);
	else
		-- default assume not needed
		return true;
	end
end

local function updateLoot( node )
    -- debug('Updating rewards for node: '..tostring(node.id));
	local total = 0;
	local failed = 0;
	node["allLootKnown"] = true;
	if ((node["rewards"] ~= nil) and (type(node["rewards"]) == "table") ) then
		local ii;
		for ii = 1, #node["rewards"] do
			if ( node["rewards"][ii].item ) then
				total = total + 1;
				local _, itemLink = GetItemInfo(node["rewards"][ii].item);
				if ( not itemLink ) then failed = failed + 1 end
			end
            if ( not playerHasLoot( node["rewards"][ii] ) ) then
                node["allLootKnown"] = false;
            end
		end
	end
	return total, failed;
end

--
--
--	Tooltip
--
--

local npc_tooltip = CreateFrame("GameTooltip", ADDON_NAME.."_npcToolTip", UIParent, "GameTooltipTemplate")
local tooltip_label

local function getCreatureNamebyID(id)
	npc_tooltip:SetOwner(UIParent, "ANCHOR_NONE")
	npc_tooltip:SetHyperlink(("unit:Creature-0-0-0-0-%d"):format(id))
	tooltip_label = _G[ADDON_NAME.."_npcToolTipTextLeft1"]:GetText()
end

function Addon:OnEnter( mapFile, coord )
    -- debug('OnEnter fired for node: '..coord);
    local node = ns.nodes[mapFile][coord];
	local itemDataMissing = false;
    if ( not node ) then return end

    local tooltip = self:GetParent() == WorldMapButton and WorldMapTooltip or GameTooltip

    if ( self:GetCenter() > UIParent:GetCenter() ) then
        tooltip:SetOwner(self, "ANCHOR_LEFT")
    else
        tooltip:SetOwner(self, "ANCHOR_RIGHT")
    end

	local label = "";
	if (node.label) then
		label = node.label
	elseif (node.type == ns.types.RARE or node.type == ns.types.NPC) then
		tooltip_label = nil;
		getCreatureNamebyID(node.id);
		if (tooltip_label) then
			label = tooltip_label
		end
	end

	tooltip:SetText(label);
	if ( Addon.db.profile.show_notes == true and node["note"] and node["note"] ~= nil ) then
		-- note
		tooltip:AddLine( node["note"], nil, nil, nil, true );
	end

    if (	( Addon.db.profile.show_loot == true ) and
			( node["rewards"] ~= nil ) and
			( type(node["rewards"]) == "table" ) ) then
		local ii;
		local loot = node["rewards"];
		for ii = 1, #loot do
            if (ii == 1) then
                -- add a blank line between the name/note and the rewards
                tooltip:AddLine(" ");
            end
			local itemLink;
            local l = loot[ii];
			if ( l.item or l.type == ns.types.ITEM ) then
				local itemID = l.item or l.id
				_, itemLink, _, _, _, _, _, _, _, _ = GetItemInfo( itemID );
				if ( not itemLink ) then
					itemLink = L["Retrieving data ..."];
					itemDataMissing = true;
				end
			end
			-- loot
			if ( l.type == ns.types.TITLE ) then
				tooltip:AddLine( l.title );
			elseif ( l.type == ns.types.MOUNT ) then
				-- check mount known
				local n,_,_,_,_,_,_,_,_,_,c,j=C_MountJournal.GetMountInfoByID( l.id );
				if ( c == true ) then
					tooltip:AddDoubleLine( itemLink, L["(Mount known)"] );
				else
					tooltip:AddDoubleLine( itemLink, L["(Mount missing)"] );
				end
			elseif ( l.type == ns.types.PET ) then
				-- check pet quantity
				local n,m = C_PetJournal.GetNumCollectedInfo( l.id );
				tooltip:AddDoubleLine( itemLink, "(" .. L["Pet"] .. " " .. n .. "/" .. m .. ")" );
			elseif ( l.type == ns.types.TOY ) then
				-- check toy known
				if ( PlayerHasToy( l.item ) == true ) then
					tooltip:AddDoubleLine( itemLink, L["(Toy known)"] );
				else
					tooltip:AddDoubleLine( itemLink, L["(Toy missing)"] );
				end
			elseif ( isCanIMogItloaded == true and l.type == ns.types.TRANSMOG ) then
				-- check transmog known with canimogit
				-- local _,itemLink = GetItemInfo( loot[ii]["itemId"] );
				if ( itemLink ~= L["Retrieving data ..."] ) then
					if ( CanIMogIt:PlayerKnowsTransmog( itemLink ) ) then
						tooltip:AddDoubleLine( itemLink, string.format( L["(itemLinkGreen)"], l.slot ) );
					else
						tooltip:AddDoubleLine( itemLink, string.format( L["(itemLinkRed)"], l.slot ) );
					end
				else
					tooltip:AddDoubleLine( itemLink, "(" .. l.slot .. ")" );
				end
			elseif ( l.type == ns.types.TRANSMOG ) then
				-- show transmog without check
				tooltip:AddDoubleLine( itemLink, l.slot );
            elseif ( l.type == ns.types.ACHIEVE ) then
                -- show achievement criteria item
                local _,achievement,_,completed = GetAchievementInfo(l.id);
                tooltip:AddLine(ACHIEVEMENT_COLOR_CODE..'['..achievement..']|r');
                for i, cid in ipairs(l.criteria) do
                    local criteria,_,critcomp,qty,reqQty = GetAchievementCriteriaInfoByID(l.id, cid);
					if (criteria == '') then
						criteria = qty..'/'..reqQty;
					end
                    if (completed or critcomp) then
                        tooltip:AddLine(criteria..(l.suffix or ''), 0, 1, 0);
                        tooltip:AddTexture('Interface\\AchievementFrame\\UI-Achievement-Criteria-Check', {
                            width=20, height=16, margin={left=10, right=-7}
                        });
                    else
                        tooltip:AddLine("   - "..criteria..(l.suffix or ''), .6, .6, .6);
                    end
                end
			elseif (l.type == ns.types.ITEM and l.quest) then
				local completed = IsQuestFlaggedCompleted(l.quest);
				local status = completed and L['completed'] or L['incomplete'];
				local color = completed and 'FF00FF00' or 'FFFF0000';
				tooltip:AddDoubleLine(itemLink, '(|c'..color..status..'|r)');
			else
				-- default show itemLink
				tooltip:AddDoubleLine( itemLink, "" );
			end
		end
    end

    tooltip:Show();

	if ( itemDataMissing == true ) then
		-- try refreshing if itemlinks are missing
		C_Timer.After( 1, function()
			Addon:Refresh();
		end );
	end
end

local function hideNode(button, mapFile, coord)
	local node = ns.nodes[mapFile][coord];
    if ( node and node["questId"][1] ~= nil) then
        Addon.db.char[mapFile .. "_" .. coord .. "_" .. node["questId"][1]] = true;
    end

    Addon:Refresh()
end

local function ResetDB()
    table.wipe(Addon.db.char)
    Addon:Refresh()
end

local function addtoTomTom(button, mapFile, coord)
	--debug( mapFile );
	local node = ns.nodes[mapFile][coord];
	if ( node and isTomTomloaded == true ) then
		local mapId = HandyNotes:GetMapFiletoMapID( mapFile );
		local x, y = HandyNotes:getXY(  coord );
		local desc = node["label"];

		TomTom:AddWaypoint(14, x, y, {
			title = desc,
			persistent = nil,
			minimap = true,
			world = true
		});
	end
end


local function countTable( t )
	if ( not t ) then return 0; end
	local c = 0;
	for k, v in pairs( t ) do
	   c = c + 1;
	end
	return c;
end

--
--
--	Context menu
--
--

local function generateMenu( button, level )

	local info = {}
    if ( not level ) then return end
    local node = ns.nodes[clickedMapFile][clickedCoord];
	if ( not node ) then return end

    for k in pairs(info) do info[k] = nil end

    if (level == 1) then
        info.isTitle = 1
        info.text = L["context_menu_title"]
        info.notCheckable = 1
        UIDropDownMenu_AddButton(info, level)

        info.disabled = nil
        info.isTitle = nil
        info.notCheckable = 1

		info.disabled = 1
		info.notClickable = 1
        info.text = ""
        UIDropDownMenu_AddButton(info, level)
		info.disabled = nil
		info.notClickable = nil

        if isTomTomloaded == true then
            info.text = L["context_menu_add_tomtom"]
            info.func = addtoTomTom
            info.arg1 = clickedMapFile
            info.arg2 = clickedCoord
            UIDropDownMenu_AddButton(info, level)
        end

        info.text = L["context_menu_hide_node"]
        info.func = hideNode
        info.arg1 = clickedMapFile
        info.arg2 = clickedCoord
        UIDropDownMenu_AddButton(info, level)

        info.text = L["context_menu_restore_hidden_nodes"]
        info.func = ResetDB
        info.arg1 = nil
        info.arg2 = nil
        info.notCheckable = 1
        UIDropDownMenu_AddButton(info, level)

		info.disabled = 1
		info.notClickable = 1
        info.text = ""
        UIDropDownMenu_AddButton(info, level)
		info.disabled = nil
		info.notClickable = nil

        info.text = CLOSE
        info.func = function() CloseDropDownMenus() end
        info.arg1 = nil
        info.arg2 = nil
        info.notCheckable = 1
        UIDropDownMenu_AddButton(info, level)

    end
end

local DropdownMenu = CreateFrame("Frame", ADDON_NAME.."DropdownMenu")
DropdownMenu.displayMode = "MENU"
DropdownMenu.initialize = generateMenu

function Addon:OnClick(button, down, mapFile, coord)
    -- debug('OnClick fired for node: '..coord);
	local node = ns.nodes[mapFile][coord];
	if ( not node ) then return end
    if button == "RightButton" and down then
		-- context menu
        clickedMapFile = mapFile
        clickedCoord = coord
        ToggleDropDownMenu(1, nil, DropdownMenu, self, 0, 0)
	elseif button == "MiddleButton" and down then
		-- create group
	elseif button == "LeftButton" and down then
    end
end

function Addon:OnLeave( mapFile, coord )
    -- debug('OnLeave fired for node: '..coord);
    if self:GetParent() == WorldMapButton then
        WorldMapTooltip:Hide()
    else
        GameTooltip:Hide()
    end
end

-- iterate this until we have all items cache. max 10 iterations
local precacheIteration = 0;
local function cacheItems()
	--debug ("grab items");
	precacheIteration = precacheIteration + 1;
	local failed = 0;
	local total = 0;
	for mapId, mapFile in pairs( ns.nodes ) do
		for coord, node in pairs( ns.nodes[mapId] ) do
			local t, f = updateLoot( node );
			total = total + t;
			failed = failed + f;
			-- preload localized npc names
            if (node.type == ns.types.RARE) then
				getCreatureNamebyID(node.id);
			end
		end
	end
	if ( failed > 0 and precacheIteration < 10 ) then
		debug("Failed: " .. failed .. " / " .. total);
		C_Timer.After(3, function()
			cacheItems();
		end );
	else
		debug("Got all items");
	end
end

function normalizeNodes ()
    -- convert values that support both scalar and vector values to vectors
    -- so they can be iterated over
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
                if (type(reward.criteria) == 'number') then
                    reward.criteria = {reward.criteria};
                end
            end
        end
    end
end

--
--
--	Main
--
--

function Addon:OnInitialize()
    self.db = LibStub("AceDB-3.0"):New(ADDON_NAME..'DB', ns.optionDefaults, "Default");
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "WorldEnter");
end

function Addon:WorldEnter()
    normalizeNodes();
    self:UnregisterEvent("PLAYER_ENTERING_WORLD");
    self:ScheduleTimer("RegisterWithHandyNotes", 5);
	self:ScheduleTimer("LoadCheck", 3);
	C_Timer.After(1, function()
		cacheItems();
	end );
end

function Addon:RegisterWithHandyNotes()
    do
        local currentZone, isMinimap
        local function iter(nodes, precoord)
            if not nodes then return nil end
            local coord, node = next(nodes, precoord)
            while coord do -- Have we reached the end of this zone?
                if node and self:IsNodeEnabled(currentZone, node) then
                    local iconScale = 1;
    				local iconAlpha = 1;
    				local iconPath = ns.icons["default"];
    				if (node.type == ns.types.RARE) then
    					iconScale = self.db.profile.icon_scale_rares;
    					iconAlpha = self.db.profile.icon_alpha_rares;
                        iconPath = ns.icons["skullWhite"];
                        if (not node.allLootKnown and node.quest == nil) then
                            iconPath = ns.icons["skullBlueRedGlow"];
    					elseif (not node.allLootKnown) then
    						iconPath = ns.icons["skullBlue"];
                        elseif (node.quest == nil) then
                            iconPath = ns.icons["skullWhiteRedGlow"];
                        end
    				elseif (node.type == ns.types.TREASURE) then
    					iconScale = self.db.profile.icon_scale_treasures;
    					iconAlpha = self.db.profile.icon_alpha_treasures;
                        iconPath = ns.icons["treasure"];
					elseif (node.type == ns.types.SUPPLY_CHEST) then
						iconScale = self.db.profile.icon_scale_treasures;
    					iconAlpha = self.db.profile.icon_alpha_treasures;
						iconPath = ns.icons["starChest"]
    				elseif (node.type == ns.types.PET) then
    					iconScale = self.db.profile.icon_scale_pets;
    					iconAlpha = self.db.profile.icon_alpha_pets;
                        iconPath = ns.icons["battle_pet"];
    				elseif (node.type == ns.types.CAVE) then
    					iconScale = self.db.profile.icon_scale_caves;
    					iconAlpha = self.db.profile.icon_alpha_caves;
                        iconPath = ns.icons["cave"];
    				end
                    if (node.icon) then
                        iconPath = ns.icons[node.icon] or node.icon;
                    end
					if (iconPath.scale) then
						iconScale = iconScale * iconPath.scale;
					end
                    return coord, nil, iconPath, iconScale, iconAlpha
                    -- local label, icon, _, _, _, scale, alpha = get_point_info(value)
                    -- scale = (scale or 1) * (icon and icon.scale or 1) * ns.db.icon_scale
                    -- return state, nil, icon, scale, ns.db.icon_alpha * alpha
                end
                coord, node = next(nodes, coord) -- Get next node
            end
            return nil, nil, nil, nil
        end
        function Addon:GetNodes2(mapID, minimap)
            debug('Loading nodes for map: '..mapID..' (minimap='..tostring(minimap)..')');
            currentZone = mapID
            isMinimap = minimap
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

function Addon:IsNodeEnabled(mapID, node)
    local profile = self.db.profile;
    local hidden = self.db.char;

	-- All required quest ids must be true
	for i, quest in ipairs(node.requires or {}) do
		if (not IsQuestFlaggedCompleted(quest)) then return false end
	end

    -- Check for zone-specific exclusions
    -- TODO if excluded return false

    -- Check if our type is configured to always display
    if (profile.alwaysshowtreasures and node.type == ns.types.TREASURE) then return true end
    if (profile.alwaysshowrares and node.type == ns.types.RARE) then return true end

    -- If this is a cave, use our configured quest id(s) to check if our parent
    -- nodes should be displayed
    -- TODO return true if at least one parent is true

    -- Check if we've been hidden by the user
    if (node.quest ~= nil and hidden[node.quest]) then return false end
    -- Exclude if we've collected everything and we're hiding "done" nodes
    if (profile.hideKnownLoot and node.allLootKnown and node.type == ns.types.RARE) then return false end

    -- Hide nodes attached the quests we've completed for the day
	for i, quest in ipairs(node.quest or {}) do
		if (IsQuestFlaggedCompleted(quest)) then return false end
	end

    return true
end

function Addon:LoadCheck()

	if (IsAddOnLoaded("TomTom")) then
		isTomTomloaded = true
	end

	if (IsAddOnLoaded("CanIMogIt")) then
		isCanIMogItloaded = true
	end

end
