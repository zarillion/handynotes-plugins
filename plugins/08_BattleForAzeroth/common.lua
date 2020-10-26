-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local _, ns = ...

local Class = ns.Class
local Group = ns.Group
local Map = ns.Map
local Quest = ns.node.Quest

-------------------------------------------------------------------------------

ns.expansion = 8

-------------------------------------------------------------------------------

ns.groups.ASSAULT_EVENT = Group('assault_events', 'peg_wy')
ns.groups.DAILY_CHESTS = Group('daily_chests', 'chest_bl', {defaults=ns.GROUP_ALPHA75})
ns.groups.DUNE_RIDER = Group('dune_rider', 134962, {defaults=ns.GROUP_HIDDEN})
ns.groups.COFFERS = Group('coffers', 'star_chest_g')
ns.groups.HONEYBACKS = Group('honeybacks', 2066005, {defaults=ns.GROUP_HIDDEN, faction='Alliance'})
ns.groups.HOPPIN_SAD = Group('hoppin_sad', 804969, {defaults=ns.GROUP_HIDDEN})
ns.groups.MUSHROOM_HARVEST = Group('mushroom_harvest', 1869654, {defaults=ns.GROUP_HIDDEN})
ns.groups.PAKU_TOTEMS = Group('paku_totems', 'flight_point', {defaults=ns.GROUP_HIDDEN, faction='Horde'})
ns.groups.TIDESAGE_LEGENDS = Group('tidesage_legends', 1500881, {defaults=ns.GROUP_HIDDEN})
ns.groups.VISIONS_BUFFS = Group('visions_buffs', 132183)
ns.groups.VISIONS_CRYSTALS = Group('visions_crystals', 'crystal_o')
ns.groups.VISIONS_MAIL = Group('visions_mail', 'envelope')
ns.groups.VISIONS_MISC = Group('visions_misc', 2823166)
ns.groups.VISIONS_CHEST = Group('visions_chest', 'chest_gy')

-------------------------------------------------------------------------------
-------------------------------- TIMED EVENTS ---------------------------------
-------------------------------------------------------------------------------

local TimedEvent = Class('TimedEvent', Quest, {
    icon = "peg_wy",
    scale = 2,
    group = ns.groups.ASSAULT_EVENT,
    note = ''
})

function TimedEvent:PrerequisiteCompleted()
    -- Timed events that are not active today return nil here
    return C_TaskQuest.GetQuestTimeLeftMinutes(self.quest[1])
end

ns.node.TimedEvent = TimedEvent

-------------------------------------------------------------------------------
-------------------------------- WARFRONT MAP ---------------------------------
-------------------------------------------------------------------------------

local WarfrontMap = Class('WarfrontMap', Map)

function WarfrontMap:IsNodeEnabled(node, coord, minimap)
    -- Disable nodes that are not available when the other faction controls
    if node.controllingFaction then
        local state = C_ContributionCollector.GetState(self.collector)
        local faction = (state == 1 or state == 2) and 'Alliance' or 'Horde'
        if faction ~= node.controllingFaction then return false end
    end
    return Map.IsNodeEnabled(self, node, coord, minimap)
end

ns.WarfrontMap = WarfrontMap