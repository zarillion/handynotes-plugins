-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale

local Class = ns.Class
local Group = ns.Group
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local Quest = ns.node.Quest

local Achievement = ns.reward.Achievement
local Pet = ns.reward.Pet

-------------------------------------------------------------------------------

ns.expansion = 8

-------------------------------------------------------------------------------

ns.groups.ASSAULT_EVENT = Group('assault_events', 'peg_yw')
ns.groups.BOW_TO_YOUR_MASTERS = Group('bow_to_your_masters', 1850548, {
    defaults = ns.GROUP_HIDDEN,
    faction = 'Horde'
})
ns.groups.BRUTOSAURS =
    Group('brutosaurs', 1881827, {defaults = ns.GROUP_HIDDEN})
ns.groups.CARVED_IN_STONE = Group('carved_in_stone', 134424,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.CATS_NAZJ = Group('cats_nazj', 454045, {defaults = ns.GROUP_HIDDEN})
ns.groups.FABIOUS = Group('fabious', 2741477, {defaults = ns.GROUP_HIDDEN})
ns.groups.COFFERS = Group('coffers', 'star_chest_g')
ns.groups.DAILY_CHESTS = Group('daily_chests', 'chest_bl',
    {defaults = ns.GROUP_ALPHA75})
ns.groups.CURSED_HUNTER = Group('cursed_hunter', 1027879,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.DRUST_FACTS = Group('drust_facts', 2101971,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.DUNE_RIDER = Group('dune_rider', 134962, {defaults = ns.GROUP_HIDDEN})
ns.groups.EMBER_RELICS = Group('ember_relics', 514016, {
    defaults = ns.GROUP_HIDDEN,
    faction = 'Alliance'
})
ns.groups.GET_HEKD = Group('get_hekd', 1604165, {defaults = ns.GROUP_HIDDEN})
ns.groups.HONEYBACKS = Group('honeybacks', 2066005,
    {defaults = ns.GROUP_HIDDEN, faction = 'Alliance'})
ns.groups.HOPPIN_SAD = Group('hoppin_sad', 804969, {defaults = ns.GROUP_HIDDEN})
ns.groups.LIFE_FINDS_A_WAY = Group('life_finds_a_way', 236192,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.LOCKED_CHEST = Group('locked_chest', 'chest_gy',
    {defaults = ns.GROUP_ALPHA75})
ns.groups.MECH_CHEST = Group('mech_chest', 'chest_rd',
    {defaults = ns.GROUP_ALPHA75})
ns.groups.MISC_NAZJ = Group('misc_nazj', 528288)
ns.groups.MUSHROOM_HARVEST = Group('mushroom_harvest', 1869654,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.PAKU_TOTEMS = Group('paku_totems', 'flight_point_y',
    {defaults = ns.GROUP_HIDDEN, faction = 'Horde'})
ns.groups.PRISMATICS = Group('prismatics', 'crystal_p',
    {defaults = ns.GROUP_HIDDEN})
ns.groups.RECRIG = Group('recrig', 'peg_bl')
ns.groups.SAUSAGE_SAMPLER = Group('sausage_sampler', 133200, {
    defaults = ns.GROUP_HIDDEN,
    faction = 'Alliance'
})
ns.groups.SCAVENGER_OF_THE_SANDS = Group('scavenger_of_the_sands', 135725,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SECRET_SUPPLY = Group('secret_supplies', 'star_chest_b',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.SHANTY_RAID = Group('shanty_raid', 1500866,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SLIMES_NAZJ = Group('slimes_nazj', 132107,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.SUPPLY = Group('supplies', 'star_chest_g',
    {defaults = ns.GROUP_HIDDEN75})
ns.groups.TALES_OF_DE_LOA = Group('tales_of_de_loa', 1875083,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.THREE_SHEETS = Group('three_sheets', 135999,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.TIDESAGE_LEGENDS = Group('tidesage_legends', 1500881,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.UPRIGHT_CITIZENS = Group('upright_citizens', 516667, {
    defaults = ns.GROUP_HIDDEN,
    faction = 'Alliance'
})
ns.groups.VISIONS_BUFFS = Group('visions_buffs', 132183)
ns.groups.VISIONS_CHEST = Group('visions_chest', 'chest_gy')
ns.groups.VISIONS_CRYSTALS = Group('visions_crystals', 'crystal_o')
ns.groups.VISIONS_MAIL = Group('visions_mail', 'envelope')
ns.groups.VISIONS_MISC = Group('visions_misc', 2823166)
ns.groups.SQUIRRELS = Group('squirrels', 237182, {defaults = ns.GROUP_HIDDEN})
ns.groups.BATTLE_SAFARI = Group('battle_safari', 651137,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.MECHA_SAFARI = Group('mecha_safari', 1694136,
    {defaults = ns.GROUP_HIDDEN})
ns.groups.NAZJA_SAFARI = Group('nazja_safari', 2267049,
    {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
---------------------------------- CALLBACKS ----------------------------------
-------------------------------------------------------------------------------

-- Listen for aura applied/removed events so we can refresh when the player
-- enters and exits the alternate future
ns.addon:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED', function()
    local _, e, _, _, _, _, _, _, t, _, _, s = CombatLogGetCurrentEventInfo()
    if (e == 'SPELL_AURA_APPLIED' or e == 'SPELL_AURA_REMOVED') and t ==
        UnitName('player') and s == 296644 then
        C_Timer.After(1, function() ns.addon:Refresh() end)
    end
end)

ns.addon:RegisterEvent('QUEST_ACCEPTED', function(_, _, id)
    if id == 56540 then
        ns.Debug('Vale assaults unlock detected')
        C_Timer.After(1, function() ns.addon:Refresh() end)
    end
end)

ns.addon:RegisterEvent('QUEST_WATCH_UPDATE', function(_, index)
    local info = C_QuestLog.GetInfo(index)
    if info and info.questID == 56376 then
        ns.Debug('Uldum assaults unlock detected')
        C_Timer.After(1, function() ns.addon:Refresh() end)
    end
end)

ns.addon:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED', function(...)
    -- Watch for a spellcast event that signals a ravenous slime was fed
    -- https://www.wowhead.com/spell=293775/schleimphage-feeding-tracker
    local _, source, _, spellID = ...
    if source == 'player' and spellID == 293775 then
        C_Timer.After(1, function() ns.addon:Refresh() end)
    end
end)

-------------------------------------------------------------------------------
-------------------------------- TIMED EVENTS ---------------------------------
-------------------------------------------------------------------------------

local TimedEvent = Class('TimedEvent', Quest, {
    icon = 'peg_yw',
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
------------------------------ WAR SUPPLY CRATES ------------------------------
-------------------------------------------------------------------------------

-- quest = 53640 (50 conquest looted for today)

ns.node.Supply = Class('Supply', Node, {
    icon = 'star_chest_g',
    scale = 1.5,
    label = L['supply_chest'],
    rlabel = ns.GetIconLink('war_mode_swords', 16),
    note = L['supply_chest_note'],
    requires = ns.requirement.WarMode,
    rewards = {Achievement({id = 12572})},
    group = ns.groups.SUPPLY
})

ns.node.SecretSupply = Class('SecretSupply', ns.node.Supply, {
    icon = 'star_chest_b',
    group = ns.groups.SECRET_SUPPLY,
    label = L['secret_supply_chest'],
    note = L['secret_supply_chest_note']
})

ns.node.Coffer = Class('Coffer', Node, {
    icon = 'star_chest_g',
    scale = 1.5,
    group = ns.groups.COFFERS
})

-------------------------------------------------------------------------------
----------------------------- VISIONS ASSAULT MAP -----------------------------
-------------------------------------------------------------------------------

local VisionsMap = Class('VisionsMap', Map)

function VisionsMap:Prepare()
    Map.Prepare(self)
    self.assault = self.GetAssault()
    self.phased = self.assault ~= nil
end

function VisionsMap:CanDisplay(node, coord, minimap)
    local assault = node.assault
    if assault then
        assault = type(assault) == 'number' and {assault} or assault
        for i = 1, #assault + 1, 1 do
            if i > #assault then return false end
            if assault[i] == self.assault then break end
        end
    end

    return Map.CanDisplay(self, node, coord, minimap)
end

ns.VisionsMap = VisionsMap

-------------------------------------------------------------------------------
-------------------------------- WARFRONT MAP ---------------------------------
-------------------------------------------------------------------------------

local WarfrontMap = Class('WarfrontMap', Map)

function WarfrontMap:CanDisplay(node, coord, minimap)
    -- Disable nodes that are not available when the other faction controls
    if node.controllingFaction then
        local state = C_ContributionCollector.GetState(self.collector)
        local faction = (state == 1 or state == 2) and 'Alliance' or 'Horde'
        if faction ~= node.controllingFaction then return false end
    end
    return Map.CanDisplay(self, node, coord, minimap)
end

ns.WarfrontMap = WarfrontMap

-------------------------------------------------------------------------------
------------------- TO ALL THE SQUIRRELS I SET SAIL TO SEE --------------------
-------------------------------------------------------------------------------

local Squirrel = Class('Squirrel', Collectible, {
    group = ns.groups.SQUIRRELS,
    icon = 237182,
    note = L['squirrels_note']
})

ns.node.Squirrel = Squirrel

-------------------------------------------------------------------------------
------------------------------------ SAFARI -----------------------------------
-------------------------------------------------------------------------------

local Battle_Safari = Class('Battle_Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.BATTLE_SAFARI})
local Nazja_Safari = Class('Nazja_Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.NAZJA_SAFARI})
local Mecha_Safari = Class('Mecha_Safari', Collectible,
    {icon = 'paw_g', group = ns.groups.MECHA_SAFARI})

ns.node.Safari = {
    BarrierHermit = Class('BarrierHermit', Battle_Safari, {
        id = 143044,
        rewards = {
            Achievement({id = 12930, criteria = 41286, oneline = false}),
            Pet({id = 2385})
        }
    }),
    BloodfeverTarantula = Class('BloodfeverTarantula', Battle_Safari, {
        id = 143047,
        rewards = {
            Achievement({id = 12930, criteria = 41288, oneline = false}),
            Pet({id = 2388})
        }
    }),
    Boghopper = Class('Boghopper', Battle_Safari, {
        id = 143055,
        rewards = {
            Achievement({id = 12930, criteria = 41297, oneline = false}),
            Pet({id = 2398})
        }
    }),
    CoastalBounder = Class('CoastalBounder', Battle_Safari, {
        id = 143057,
        rewards = {
            Achievement({id = 12930, criteria = 41299, oneline = false}),
            Pet({id = 2400})
        }
    }),
    CoastalScuttler = Class('CoastalScuttler', Battle_Safari, {
        id = 143045,
        rewards = {
            Achievement({id = 12930, criteria = 41287, oneline = false}),
            Pet({id = 2386})
        }
    }),
    ElusiveSkimmer = Class('ElusiveSkimmer', Battle_Safari, {
        id = 143048,
        rewards = {
            Achievement({id = 12930, criteria = 41290, oneline = false}),
            Pet({id = 2389})
        }
    }),
    FreshwaterCrawler = Class('FreshwaterCrawler', Battle_Safari, {
        id = 143033,
        rewards = {
            Achievement({id = 12930, criteria = 41275, oneline = false}),
            Pet({id = 2374})
        }
    }),
    GiantWoodworm = Class('GiantWoodworm', Battle_Safari, {
        id = 143042,
        rewards = {
            Achievement({id = 12930, criteria = 41284, oneline = false}),
            Pet({id = 2383})
        }
    }),
    GluttedBleeder = Class('GluttedBleeder', Battle_Safari, {
        id = 143053,
        rewards = {
            Achievement({id = 12930, criteria = 41295, oneline = false}),
            Pet({id = 2395})
        }
    }),
    GoldenBeetle = Class('GoldenBeetle', Battle_Safari, {
        id = 143046,
        rewards = {
            Achievement({id = 12930, criteria = 41289, oneline = false}),
            Pet({id = 2387})
        }
    }),
    HermitCrab = Class('HermitCrab', Battle_Safari, {
        id = 143056,
        rewards = {
            Achievement({id = 12930, criteria = 41298, oneline = false}),
            Pet({id = 2399})
        }
    }),
    HoneyBee = Class('HoneyBee', Battle_Safari, {
        id = 143038,
        rewards = {
            Achievement({id = 12930, criteria = 41280, oneline = false}),
            Pet({id = 2379})
        }
    }),
    InlandCroaker = Class('InlandCroaker', Battle_Safari, {
        id = 143041,
        rewards = {
            Achievement({id = 12930, criteria = 41283, oneline = false}),
            Pet({id = 2382})
        }
    }),
    LeafyFlutterwing = Class('LeafyFlutterwing', Battle_Safari, {
        id = 143049,
        rewards = {
            Achievement({id = 12930, criteria = 41291, oneline = false}),
            Pet({id = 2390})
        }
    }),
    ParasiticBoarfly = Class('ParasiticBoarfly', Battle_Safari, {
        id = 143039,
        rewards = {
            Achievement({id = 12930, criteria = 41281, oneline = false}),
            Pet({id = 2380})
        }
    }),
    ReturnedHatchling = Class('ReturnedHatchling', Battle_Safari, {
        id = 143052,
        rewards = {
            Achievement({id = 12930, criteria = 41294, oneline = false}),
            Pet({id = 2394})
        }
    }),
    RiverFrog = Class('RiverFrog', Battle_Safari, {
        id = 143032,
        rewards = {
            Achievement({id = 12930, criteria = 41274, oneline = false}),
            Pet({id = 2373})
        }
    }),
    RiverOtter = Class('RiverOtter', Battle_Safari, {
        id = 143037,
        rewards = {
            Achievement({id = 12930, criteria = 41279, oneline = false}),
            Pet({id = 2378})
        }
    }),
    SandybackCrawler = Class('SandybackCrawler', Battle_Safari, {
        id = 143036,
        rewards = {
            Achievement({id = 12930, criteria = 41278, oneline = false}),
            Pet({id = 2377})
        }
    }),
    ShackCrab = Class('ShackCrab', Battle_Safari, {
        id = 143040,
        rewards = {
            Achievement({id = 12930, criteria = 41282, oneline = false}),
            Pet({id = 2381})
        }
    }),
    ShadowbackCrawler = Class('ShadowbackCrawler', Battle_Safari, {
        id = 143031,
        rewards = {
            Achievement({id = 12930, criteria = 41273, oneline = false}),
            Pet({id = 2372})
        }
    }),
    ShoreButterfly = Class('ShoreButterfly', Battle_Safari, {
        id = 143043,
        rewards = {
            Achievement({id = 12930, criteria = 41285, oneline = false}),
            Pet({id = 2384})
        }
    }),
    SpectralRaven = Class('SpectralRaven', Battle_Safari, {
        id = 143054,
        rewards = {
            Achievement({id = 12930, criteria = 41296, oneline = false}),
            Pet({id = 2397})
        }
    }),
    StickyOozeling = Class('StickyOozeling', Battle_Safari, {
        id = 143051,
        rewards = {
            Achievement({id = 12930, criteria = 41293, oneline = false}),
            Pet({id = 2393})
        }
    }),
    ValeMarmot = Class('ValeMarmot', Battle_Safari, {
        id = 143034,
        rewards = {
            Achievement({id = 12930, criteria = 41276, oneline = false}),
            Pet({id = 2375})
        }
    }),
    ValleyChicken = Class('ValleyChicken', Battle_Safari, {
        id = 143035,
        rewards = {
            Achievement({id = 12930, criteria = 41277, oneline = false}),
            Pet({id = 2376})
        }
    }),
    YoungSandSifter = Class('YoungSandSifter', Battle_Safari, {
        id = 143050,
        rewards = {
            Achievement({id = 12930, criteria = 41292, oneline = false}),
            Pet({id = 2392})
        }
    }),
    AbyssalSlitherling = Class('AbyssalSlitherling', Nazja_Safari, {
        id = 154814,
        rewards = {
            Achievement({id = 13694, criteria = 45594, oneline = false}),
            Pet({id = 2678})
        }
    }),
    Bloodseeker = Class('Bloodseeker', Nazja_Safari, {
        id = 154714,
        rewards = {
            Achievement({id = 13694, criteria = 45601, oneline = false}),
            Pet({id = 2652})
        }
    }),
    ChitterspineSkitterling = Class('ChitterspineSkitterling', Nazja_Safari, {
        id = 154706,
        rewards = {
            Achievement({id = 13694, criteria = 45595, oneline = false}),
            Pet({id = 2648})
        }
    }),
    DeeptideFingerling = Class('DeeptideFingerling', Nazja_Safari, {
        id = 154712,
        rewards = {
            Achievement({id = 13694, criteria = 45596, oneline = false}),
            Pet({id = 2651})
        }
    }),
    GlimmershellScuttler = Class('GlimmershellScuttler', Nazja_Safari, {
        id = 154704,
        rewards = {
            Achievement({id = 13694, criteria = 45598, oneline = false}),
            Pet({id = 2647})
        }
    }),
    GreatSeaAlbatross = Class('GreatSeaAlbatross', Nazja_Safari, {
        id = 154710,
        rewards = {
            Achievement({id = 13694, criteria = 45600, oneline = false}),
            Pet({id = 2650})
        }
    }),
    HissingChitterspine = Class('HissingChitterspine', Nazja_Safari, {
        id = 154708,
        rewards = {
            Achievement({id = 13694, criteria = 45599, oneline = false}),
            Pet({id = 2649})
        }
    }),
    MuckSlug = Class('MuckSlug', Nazja_Safari, {
        id = 154724,
        rewards = {
            Achievement({id = 13694, criteria = 45592, oneline = false}),
            Pet({id = 2660})
        }
    }),
    SandclawPincher = Class('SandclawPincher', Nazja_Safari, {
        id = 154697,
        rewards = {
            Achievement({id = 13694, criteria = 45597, oneline = false}),
            Pet({id = 2645})
        }
    }),
    SandclawSunshell = Class('SandclawSunshell', Nazja_Safari, {
        id = 154702,
        rewards = {
            Achievement({id = 13694, criteria = 45593, oneline = false}),
            Pet({id = 2646})
        }
    }),
    SpireshellSnail = Class('SpireshellSnail', Nazja_Safari, {
        id = 154716,
        rewards = {
            Achievement({id = 13694, criteria = 45591, oneline = false}),
            Pet({id = 2653})
        }
    }),
    DuskytoothSnooter = Class('DuskytoothSnooter', Mecha_Safari, {
        id = 154769,
        note = L['mechagon_snooter_note'],
        rewards = {
            Achievement({id = 13693, criteria = 45584, oneline = false}),
            Pet({id = 2662})
        }
    }),
    ExperimentalRoach = Class('ExperimentalRoach', Mecha_Safari, {
        id = 154773,
        rewards = {
            Achievement({id = 13693, criteria = 45588, oneline = false}),
            Pet({id = 2664})
        }
    }),
    FleetingFrog = Class('FleetingFrog', Mecha_Safari, {
        id = 154775,
        rewards = {
            Achievement({id = 13693, criteria = 45580, oneline = false}),
            Pet({id = 2665})
        }
    }),
    JunkheapRoach = Class('JunkheapRoach', Mecha_Safari, {
        id = 154771,
        rewards = {
            Achievement({id = 13693, criteria = 45579, oneline = false}),
            Pet({id = 2663})
        }
    }),
    MalfunctioningMicrobot = Class('MalfunctioningMicrobot', Mecha_Safari, {
        id = 154798,
        note = L['mechagon_explode_note'],
        rewards = {
            Achievement({id = 13693, criteria = 45590, oneline = false}),
            Pet({id = 2676})
        }
    }),
    MechagonMarmot = Class('MechagonMarmot', Mecha_Safari, {
        id = 154785,
        rewards = {
            Achievement({id = 13693, criteria = 45581, oneline = false}),
            Pet({id = 2670})
        }
    }),
    MotorizedCroaker = Class('MotorizedCroaker', Mecha_Safari, {
        id = 154779,
        note = L['mechagon_explode_note'],
        rewards = {
            Achievement({id = 13693, criteria = 45582, oneline = false}),
            Pet({id = 2667})
        }
    }),
    RustboltClucker = Class('RustboltClucker', Mecha_Safari, {
        id = 154783,
        rewards = {
            Achievement({id = 13693, criteria = 45585, oneline = false}),
            Pet({id = 2669})
        }
    }),
    RustyrootSnooter = Class('RustyrootSnooter', Mecha_Safari, {
        id = 154767,
        note = L['mechagon_snooter_note'],
        rewards = {
            Achievement({id = 13693, criteria = 45586, oneline = false}),
            Pet({id = 2661})
        }
    }),
    ScrapyardTunneler = Class('ScrapyardTunneler', Mecha_Safari, {
        id = 154791,
        note = L['battlepet_secondary_only_note'] .. '\n\n' ..
            L['mechagon_explode_note'],
        rewards = {
            Achievement({id = 13693, criteria = 45583, oneline = false}),
            Pet({id = 2673})
        }
    }),
    Specimen97 = Class('Specimen97', Mecha_Safari, {
        id = 154787,
        rewards = {
            Achievement({id = 13693, criteria = 45589, oneline = false}),
            Pet({id = 2671})
        }
    }),
    YellowJunkhopper = Class('YellowJunkhopper', Mecha_Safari, {
        id = 154777,
        rewards = {
            Achievement({id = 13693, criteria = 45587, oneline = false}),
            Pet({id = 2666})
        }
    }),
    SlitheringBrownscale = Class('SlitheringBrownscale',
        Collectible({icon = 'paw_g'}), {
            id = 97542,
            rewards = {
                Achievement({id = 11233, criteria = 33119, oneline = false}),
                Pet({id = 1736})
            }
        })
}
