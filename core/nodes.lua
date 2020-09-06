-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local isinstance = ns.isinstance

-------------------------------------------------------------------------------
------------------------------------ NODE -------------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all displayed nodes.

    label (string): Tooltip title for this node
    sublabel (strint): Oneline string to display under label
    icon (string|table): The icon texture to display
    alpha (float): The default alpha value for this type
    scale (float): The default scale value for this type
    minimap (bool): Should the node be displayed on the minimap
    quest (int|int[]): Quest IDs that cause this node to disappear
    questdeps (int|int[]): Quest IDs that must be true to appear
    questCount (boolean): Display completed quest count as rlabel
    requires (str): Requirement to interact or unlock
    rewards (Reward[]): Array of rewards for this node

--]]

local Node = Class('Node')

Node.label = UNKNOWN
Node.minimap = true
Node.alpha = 1
Node.scale = 1
Node.icon = "default"
Node.group = "other"

function Node:init ()
    -- normalize quest ids as tables instead of single values
    for i, key in ipairs{'quest', 'questdeps'} do
        if type(self[key]) == 'number' then self[key] = {self[key]} end
    end

    if self.minimap == nil then
        self.minimap = true
    end
end

function Node.setters:requires (requirement)
    self.sublabel = ns.color.Red(L["Requires"]..' '..requirement)
end

function Node:display ()
    local db = ns.addon.db
    local icon = self.icon
    if type(icon) == 'string' then
        icon = ns.icons[self.icon] or ns.icons.default
    end
    local scale = self.scale * (db.profile['icon_scale_'..self.group] or 1)
    local alpha = self.alpha * (db.profile['icon_alpha_'..self.group] or 1)
    return icon, scale, alpha
end

function Node:done ()
    for i, reward in ipairs(self.rewards or {}) do
        if not reward:obtained() then return false end
    end
    return true
end

function Node:enabled (map, coord, minimap)
    local db = ns.addon.db

    -- Minimap may be disabled for this node
    if not self.minimap and minimap then return false end

    -- Node may be faction restricted
    if self.faction and self.faction ~= ns.faction then return false end

    -- Disable if all attached quest ids are true
    if self.quest then
        local count = 0
        for i, quest in ipairs(self.quest) do
            if C_QuestLog.IsQuestFlaggedCompleted(quest) then
                count = count + 1
            end
        end
        if count == #self.quest then return false end
    end

    -- Disable if any dependent quest ids are false
    for i, quest in ipairs(self.questdeps or {}) do
        if not C_QuestLog.IsQuestFlaggedCompleted(quest) then return false end
    end

    return true
end

function Node:prepare ()
    ns.NameResolver:Prepare(self.label)
    ns.prepareLinks(self.sublabel)
    ns.prepareLinks(self.note)
end

function Node:render(tooltip)
    -- render the label text with NPC names resolved
    tooltip:SetText(ns.NameResolver:Resolve(self.label))

    local rlabel = self.rlabel

    if not rlabel and self.questCount and #(self.quest or {}) then
        -- set rlabel to a (completed / total) display for quest ids
        local count = 0
        for i, quest in ipairs(self.quest) do
            if C_QuestLog.IsQuestFlaggedCompleted(quest) then
                count = count + 1
            end
        end
        local color = (count == #self.quest) and ns.status.Green or ns.status.Gray
        rlabel = color(tostring(count)..'/'..#self.quest)
    end

    if not rlabel and self.pois then
        -- add an rlabel hint to use left-mouse to focus the node
        rlabel = ns.icons.left_mouse:link(12)..ns.status.Gray(L["focus"])
    end

    -- render top-right label text
    if rlabel then
        local rtext = _G[tooltip:GetName()..'TextRight1']
        rtext:SetTextColor(1, 1, 1)
        rtext:SetText(rlabel)
        rtext:Show()
    end

    -- optional text under label, usually used to indicate a oneline
    -- requirement such as a key, item or covenant
    if self.sublabel then
        tooltip:AddLine(ns.renderLinks(self.sublabel, true), 1, 1, 1)
    end

    -- additional text for the node to describe how to interact with the
    -- object or summon the rare
    if self.note and ns.addon.db.profile.show_notes then
        if self.sublabel then tooltip:AddLine(" ") end
        tooltip:AddLine(ns.renderLinks(self.note), 1, 1, 1, true)
    end

    -- all rewards (achievements, pets, mounts, toys, quests) that can be
    -- collected or completed from this node
    if ns.addon.db.profile.show_loot then
        local firstAchieve, firstOther = true, true
        for i, reward in ipairs(self.rewards or {}) do

            -- Add a blank line between achievements and other rewards
            local isAchieve = ns.isinstance(reward, ns.reward.Achievement)
            if isAchieve and firstAchieve then
                tooltip:AddLine(" ")
                firstAchieve = false
            elseif not isAchieve and firstOther then
                tooltip:AddLine(" ")
                firstOther = false
            end

            reward:render(tooltip)
        end
    end
end

-------------------------------------------------------------------------------
------------------------------------ CAVE -------------------------------------
-------------------------------------------------------------------------------

local Cave = Class('Cave', Node)

Cave.icon = "door_down"
Cave.scale = 1.2
Cave.group = "caves"

function Cave:init ()
    Node.init(self)

    if self.parent == nil then
        error('One or more parent nodes are required for Cave nodes')
    elseif isinstance(self.parent, Node) then
        -- normalize parent nodes as tables instead of single values
        self.parent = {self.parent}
    end
end

function Cave:enabled (map, coord, minimap)
    if not Node.enabled(self, map, coord, minimap) then return false end

    local function hasEnabledParent ()
        for i, parent in ipairs(self.parent or {}) do
            if parent:enabled(map, coord, minimap) then
                return true
            end
        end
        return false
    end

    -- Check if all our parents are hidden
    if not hasEnabledParent() then return false end

    return true
end

-------------------------------------------------------------------------------
------------------------------------- NPC -------------------------------------
-------------------------------------------------------------------------------

local NPC = Class('NPC', Node)

function NPC:init ()
    Node.init(self)
    if not self.id then error('id required for NPC nodes') end
end

function NPC.getters:label ()
    return ("unit:Creature-0-0-0-0-%d"):format(self.id)
end

-------------------------------------------------------------------------------
---------------------------------- PETBATTLE ----------------------------------
-------------------------------------------------------------------------------

local PetBattle = Class('PetBattle', NPC)

PetBattle.icon = "paw_yellow"
PetBattle.group = "pet_battles"

-------------------------------------------------------------------------------
------------------------------------ QUEST ------------------------------------
-------------------------------------------------------------------------------

local Quest = Class('Quest', Node, {note=AVAILABLE_QUEST})
local QUEST_IDS = {}

function Quest:init ()
    Node.init(self)
    C_QuestLog.GetTitleForQuestID(self.quest[1]) -- fetch info from server

    for i, id in ipairs(self.quest) do
        QUEST_IDS[id] = true
    end
end

function Quest.getters:icon ()
    return self.daily and 'quest_blue' or 'quest_yellow'
end

function Quest.getters:label ()
    return C_QuestLog.GetTitleForQuestID(self.quest[1])
end

-- When a quest node is turned in, force a refresh. Not all quests give loot.
ns.addon:RegisterEvent('QUEST_TURNED_IN', function (_, id)
    if QUEST_IDS[id] then
        C_Timer.After(1, function() ns.addon:Refresh() end)
    end
end)

-------------------------------------------------------------------------------
-------------------------------- TIMED EVENT --------------------------------
-------------------------------------------------------------------------------

local TimedEvent = Class('TimedEvent', Quest, {scale=2, note=''})

TimedEvent.group = "assaultevents"

function TimedEvent.getters:icon ()
    -- Override icon getter to be a simple yellow peg
    return 'peg_yellow'
end

function TimedEvent:enabled (map, coord, minimap)
    -- Timed events that are not active today return nil here
    if not C_TaskQuest.GetQuestTimeLeftMinutes(self.quest[1]) then
        return false
    end
    return Quest.enabled(self, map, coord, minimap)
end

-------------------------------------------------------------------------------
------------------------------------ RARE -------------------------------------
-------------------------------------------------------------------------------

local Rare = Class('Rare', NPC)

Rare.group = "rares"

function Rare.getters:icon ()
    if self._focus then
        return self:done() and 'skull_white_green_glow' or 'skull_blue_green_glow'
    end
    if ns.addon.db.profile.development and not self.quest then
        return self:done() and 'skull_white_red_glow' or 'skull_blue_red_glow'
    end
    return self:done() and 'skull_white' or 'skull_blue'
end

function Rare.getters:scale ()
    if self._focus or (ns.addon.db.profile.development and not self.quest) then
        return 2.0
    end
    return 1.2
end

function Rare:enabled (map, coord, minimap)
    local db = ns.addon.db
    if db.profile.hide_done_rare and self:done() then return false end
    if db.profile.always_show_rares then return true end
    return NPC.enabled(self, map, coord, minimap)
end

-------------------------------------------------------------------------------
---------------------------------- TREASURE -----------------------------------
-------------------------------------------------------------------------------

local Treasure = Class('Treasure', Node, {
    scale = 1.3,
    group = 'treasures'
})

function Treasure.getters:icon ()
    if self._focus then
        return 'chest_gray_green_glow'
    end
        return 'chest_gray'
end

function Treasure:enabled (map, coord, minimap)
    local db = ns.addon.db
    if db.profile.always_show_treasures then return true end
    return Node.enabled(self, map, coord, minimap)
end

function Treasure.getters:label ()
    for i, reward in ipairs(self.rewards or {}) do
        if isinstance(reward, ns.reward.Achievement) then
            return GetAchievementCriteriaInfoByID(reward.id, reward.criteria[1].id)
        end
    end
    return UNKNOWN
end

-------------------------------------------------------------------------------
----------------------------------- SUPPLY ------------------------------------
-------------------------------------------------------------------------------

local Supply = Class('Supply', Treasure, {
    scale = 2
})

function Supply.getters:icon ()
    return 'star_chest'
end

-------------------------------------------------------------------------------

ns.node = {
    Node=Node,
    Cave=Cave,
    NPC=NPC,
    PetBattle=PetBattle,
    Quest=Quest,
    Rare=Rare,
    Supply=Supply,
    TimedEvent=TimedEvent,
    Treasure=Treasure
}
