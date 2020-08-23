-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...

local Class = ns.Class
local isinstance = ns.isinstance

-------------------------------------------------------------------------------
------------------------------------ NODE -------------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all displayed nodes.

    label (string): Tooltip title for this node
    icon (string|table): The icon texture to display
    alpha (float): The default alpha value for this type
    scale (float): The default scale value for this type
    minimap (bool): Should the node be displayed on the minimap
    quest (int|int[]): Quest IDs that cause this node to disappear
    requires (int|int[]): Quest IDs that must be true to appear
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
    for i, key in ipairs{'quest', 'requires'} do
        if type(self[key]) == 'number' then self[key] = {self[key]} end
    end

    if self.minimap == nil then
        self.minimap = true
    end
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

    if not ns.ignore_quests then
        -- All attached quest ids must be false
        for i, quest in ipairs(self.quest or {}) do
            if IsQuestFlaggedCompleted(quest) then return false end
        end

        -- All required quest ids must be true
        for i, quest in ipairs(self.requires or {}) do
            if not IsQuestFlaggedCompleted(quest) then return false end
        end
    end

    return true
end

function Node:prepare ()
    ns.NameResolver:Prepare(self.label)
    if self.note then
        for type, id in self.note:gmatch('{(%l+):(%d+)}') do
            if type == 'npc' then
                ns.NameResolver:Prepare(("unit:Creature-0-0-0-0-%d"):format(id))
            elseif type == 'item' then
                GetItemInfo(id) -- prime item info
            elseif type == 'spell' then
                GetSpellInfo(id) -- prime spell info
            end
        end
    end
end

function Node:render(tooltip)
    -- render the label text and optional top-right text
    tooltip:SetText(ns.NameResolver:Resolve(self.label))
    if self.rlabel then
        local rtext = _G[tooltip:GetName()..'TextRight1']
        rtext:SetTextColor(1, 1, 1)
        rtext:SetText(self.rlabel)
        rtext:Show()
    end

    -- optional text under label, usually used to indicate a oneline
    -- requirement such as a key, item or covenant
    if self.sublabel then
        tooltip:AddLine(self.sublabel, 1, 1, 1)
    end

    -- additional text for the node to describe how to interact with the
    -- object or summon the rare
    if self.note and ns.addon.db.profile.show_notes then
        if self.sublabel then tooltip:AddLine(" ") end
        tooltip:AddLine(self.note:gsub('{(%l+):(%d+)}', function (type, id)
            if type == 'npc' then
                return '|cFFFFFD00'..ns.NameResolver:Resolve(("unit:Creature-0-0-0-0-%d"):format(id))..'|r'
            end
            if type == 'item' then
                local _, link, _, _, _, _, _, _, _, icon = GetItemInfo(id)
                if link and icon then
                    return '|T'..icon..':0:0:1:-1|t '..link
                end
            end
            if type == 'spell' then
                local name, _, icon = GetSpellInfo(id)
                if name and icon then
                    return '|T'..icon..':0:0:1:-1|t |cFF71D5FF|Hspell:'..id..'|h['..name..']|h|r'
                end
            end
            return type..'+'..id
        end), 1, 1, 1, true)
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
    if not ns.ignore_quests then
        -- Timed events that are not active today return nil here
        if not C_TaskQuest.GetQuestTimeLeftMinutes(self.quest[1]) then
            return false
        end
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
        return 2.3
    end
    return 1.5
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
    icon = 'chest_gray',
    scale = 1.3,
    group = 'treasures'
})

function Treasure:enabled (map, coord, minimap)
    local db = ns.addon.db
    if db.profile.always_show_treasures then return true end
    return Node.enabled(self, map, coord, minimap)
end

-------------------------------------------------------------------------------
----------------------------------- SUPPLY ------------------------------------
-------------------------------------------------------------------------------

local Supply = Class('Supply', Treasure, {
    icon = 'star_chest',
    scale = 2
})

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
