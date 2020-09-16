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
    sublabel (string): Oneline string to display under label
    group (string): Options group for this node (display, scale, alpha)
    icon (string|table): The icon texture to display
    alpha (float): The default alpha value for this type
    scale (float): The default scale value for this type
    minimap (bool): Should the node be displayed on the minimap
    quest (int|int[]): Quest IDs that cause this node to disappear
    questAny (boolean): Hide node if *any* quests are true (default *all*)
    questCount (boolean): Display completed quest count as rlabel
    questDeps (int|int[]): Quest IDs that must be true to appear
    requires (str): Requirement to interact or unlock (sets sublabel)
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
    for i, key in ipairs{'quest', 'questDeps'} do
        if type(self[key]) == 'number' then self[key] = {self[key]} end
    end

    if self.minimap == nil then
        self.minimap = true
    end
end

--[[
The requires attribute is used to indicate some sort of requirement to
interact with this node. It is often an item, spell or currency.
--]]

function Node.setters:requires (requirement)
    self.sublabel = ns.color.Red(L["Requires"]..' '..requirement)
end

--[[
Return the associated texture, scale and alpha value to pass to HandyNotes
for this node.
--]]

function Node:display (map)
    local profile = ns.addon.db.profile

    local icon = self.icon
    if type(icon) == 'string' then
        icon = ns.icons[self.icon] or ns.icons.default
    end

    local mapid = map.parents[self.group] or map.id
    local s_opt = 'icon_scale_'..self.group
    local a_opt = 'icon_alpha_'..self.group
    local scale = self.scale * (profile[s_opt] or profile[s_opt..'_'..mapid] or 1)
    local alpha = self.alpha * (profile[a_opt] or profile[a_opt..'_'..mapid] or 1)

    return icon, scale, alpha
end

--[[
Return the "collected" status of this node. A node is collected if all
associated rewards have been obtained (achievements, toys, pets, mounts).
--]]

function Node:collected ()
    if not self.rewards then return true end
    for i, reward in ipairs(self.rewards) do
        if not reward:obtained() then return false end
    end
    return true
end

--[[
Return true if this node should be displayed.
--]]

function Node:enabled ()
    local db = ns.addon.db

    -- Check prerequisites
    if not self:prerequisite() then return false end

    -- Check completed state
    if not db.profile.show_completed_nodes then
        if self:completed() then return false end
    end

    return true
end

--[[
Return the prerequisite state of this node. A node has its prerequisites met if
all quests defined in the `questDeps` attribute are completed. This method can
be overridden to check for other prerequisite criteria.
--]]

function Node:prerequisite ()
    -- Prerequisite not met if any dependent quest ids are false
    if not self.questDeps then return true end
    for i, quest in ipairs(self.questDeps) do
        if not C_QuestLog.IsQuestFlaggedCompleted(quest) then return false end
    end
    return true
end

--[[
Return the "completed" state of this node. A node is completed if any or all
associated quests have been completed. The behavior of any vs all is switched
with the `questAny` attribute. This method can also be overridden to check for
some other form of completion, such as an achievement criteria.

This method is *not* called if the "Show completed" setting is enabled.
--]]

function Node:completed ()
    if self.quest and self.questAny then
        -- Completed if *any* attached quest ids are true
        for i, quest in ipairs(self.quest) do
            if C_QuestLog.IsQuestFlaggedCompleted(quest) then return true end
        end
    elseif self.quest then
        -- Completed only if *all* attached quest ids are true
        for i, quest in ipairs(self.quest) do
            if not C_QuestLog.IsQuestFlaggedCompleted(quest) then return false end
        end
        return true
    end
    return false
end

--[[
Prepare this node for display by fetching localization information for anything
referenced in the text attributes of this node. This method is called when a
world map containing this node is opened.
--]]

function Node:prepare ()
    ns.NameResolver:Prepare(self.label)
    ns.prepareLinks(self.sublabel)
    ns.prepareLinks(self.note)
end

--[[
Render this node onto the given tooltip. Many features are optional depending
on the attributes set on this specific node, such as setting an `rlabel` or
`sublabel` value.
--]]

function Node:render(tooltip)
    -- render the label text with NPC names resolved
    tooltip:SetText(ns.NameResolver:Resolve(self.label))

    local rlabel = self.rlabel or ''

    if self.questCount and self.quest and #self.quest then
        -- set rlabel to a (completed / total) display for quest ids
        local count = 0
        for i, quest in ipairs(self.quest) do
            if C_QuestLog.IsQuestFlaggedCompleted(quest) then
                count = count + 1
            end
        end
        local color = (count == #self.quest) and ns.status.Green or ns.status.Gray
        rlabel = rlabel..' '..color(tostring(count)..'/'..#self.quest)
    end

    if self.pois then
        -- add an rlabel hint to use left-mouse to focus the node
        local focus = ns.icons.left_mouse:link(12)..ns.status.Gray(L["focus"])
        rlabel = (#rlabel > 0) and focus..' '..rlabel or focus
    end

    -- render top-right label text
    if #rlabel > 0 then
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
    if self.rewards and ns.addon.db.profile.show_loot then
        local firstAchieve, firstOther = true, true
        for i, reward in ipairs(self.rewards) do

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

function Cave:enabled ()
    local function hasEnabledParent ()
        for i, parent in ipairs(self.parent) do
            if parent:enabled() then
                return true
            end
        end
        return false
    end

    -- Check if all our parents are hidden
    if not hasEnabledParent() then return false end

    return Node.enabled(self)
end

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', Node, {
    group = 'intro',
    icon = 'quest_yellow',
    scale = 3
})

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
PetBattle.scale = 1.2
PetBattle.group = "pet_battles"

-------------------------------------------------------------------------------
------------------------------------ QUEST ------------------------------------
-------------------------------------------------------------------------------

local Quest = Class('Quest', Node, { note=AVAILABLE_QUEST })

local QUEST_IDS = {}

function Quest:init ()
    Node.init(self)
    C_QuestLog.GetTitleForQuestID(self.quest[1]) -- fetch info from server

    for i, id in ipairs(self.quest) do
        QUEST_IDS[id] = true
    end
end

function Quest.getters:group ()
    return self.daily and 'daily_quests' or 'quests'
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
------------------------------------ RARE -------------------------------------
-------------------------------------------------------------------------------

local Rare = Class('Rare', NPC)

Rare.group = "rares"

function Rare.getters:icon ()
    if self._focus then
        return self:collected() and 'skull_white_green_glow' or 'skull_blue_green_glow'
    end
    if ns.addon.db.profile.development and not self.quest then
        return self:collected() and 'skull_white_red_glow' or 'skull_blue_red_glow'
    end
    return self:collected() and 'skull_white' or 'skull_blue'
end

function Rare.getters:scale ()
    if self._focus or (ns.addon.db.profile.development and not self.quest) then
        return 2.0
    end
    return 1.2
end

function Rare:enabled ()
    local hide_done_rares = ns.addon.db.profile.hide_done_rare
    if hide_done_rares and self:collected() then return false end
    return NPC.enabled(self)
end

-------------------------------------------------------------------------------
---------------------------------- TREASURE -----------------------------------
-------------------------------------------------------------------------------

local Treasure = Class('Treasure', Node, {
    scale = 1.3,
    group = 'treasures'
})

function Treasure.getters:icon ()
    return self._focus and 'chest_gray_green_glow' or 'chest_gray'
end

function Treasure.getters:label ()
    if not self.rewards then return UNKNOWN end
    for i, reward in ipairs(self.rewards) do
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
    icon = 'star_chest',
    group = 'supplies',
    scale = 2
})

-------------------------------------------------------------------------------

ns.node = {
    Node=Node,
    Cave=Cave,
    Intro=Intro,
    NPC=NPC,
    PetBattle=PetBattle,
    Quest=Quest,
    Rare=Rare,
    Supply=Supply,
    Treasure=Treasure
}
