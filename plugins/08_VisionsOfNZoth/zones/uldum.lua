-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local Clone = ns.Clone

local Node = ns.node.Node
local Cave = ns.node.Cave
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Supply = ns.node.Supply
local TimedEvent = ns.node.TimedEvent
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Toy = ns.reward.Toy

local Path = ns.poi.Path
local POI = ns.poi.POI

local AQR, EMP, AMA = 0, 1, 2 -- assaults

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1527, phased=false })
local nodes = map.nodes

local function GetAssault()
    local textures = C_MapExplorationInfo.GetExploredMapTextures(map.id)
    if textures and textures[1].fileDataIDs[1] == 3165083 then
        ns.DebugMap('Uldum assault: AQR')
        return AQR -- left
    elseif textures and textures[1].fileDataIDs[1] == 3165092 then
        ns.DebugMap('Uldum assault: EMP')
        return EMP -- middle
    elseif textures and textures[1].fileDataIDs[1] == 3165098 then
        ns.DebugMap('Uldum assault: AMA')
        return AMA -- right
    end
end

function map:Prepare()
    Map.Prepare(self)
    self.assault = GetAssault()
    self.phased = self.assault ~= nil
end

function map:IsNodeEnabled(node, coord, minimap)
    local assault = node.assault
    if assault then
        assault = type(assault) == 'number' and {assault} or assault
        for i=1, #assault + 1, 1 do
            if i > #assault then return false end
            if assault[i] == self.assault then break end
        end
    end

    return Map.IsNodeEnabled(self, node, coord, minimap)
end

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', ns.node.Intro)

Intro.note = L["uldum_intro_note"]

function Intro:IsCompleted()
    return map.assault ~= nil
end

function Intro.getters:label()
    return select(2, GetAchievementInfo(14153)) -- Uldum Under Assault
end

-- Network Diagnostics => Surfacing Threats
local Q = Quest({id={58506, 56374, 56209, 56375, 56472, 56376}})

if UnitFactionGroup('player') == 'Alliance' then
    map.intro = Intro({faction='Alliance', rewards={
        Quest({id={58496, 58498, 58502}}), Q
    }})
else
    map.intro = Intro({faction='Horde', rewards={
        Quest({id={58582, 58583}}), Q
    }})
end

nodes[46004300] = map.intro

ns.addon:RegisterEvent('QUEST_WATCH_UPDATE', function (_, index)
    local info = C_QuestLog.GetInfo(index)
    if info and info.questID == 56376 then
        ns.Debug('Uldum assaults unlock detected')
        C_Timer.After(1, function()
            ns.addon:Refresh()
        end)
    end
end)

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[64572623] = Rare({id=157170, quest=57281, assault=AMA, note=L["chamber_of_the_stars"]}) -- Acolyte Taspu
nodes[66817436] = Rare({id=158557, quest=57669, assault=EMP}) -- Actiss the Deceiver
nodes[73805180] = Rare({id=151883, quest=55468, assault=AMA}) -- Anaua
nodes[32426443] = Rare({id=155703, quest=56834}) -- Anq'uri the Titanic
nodes[38732500] = Rare({id=154578, quest=58612, assault=AQR, note=L["aqir_flayer"], pois={
    POI({ -- Aqir Hive Worker
        41202497, 40472249, 39882209, 38942459, 37102236, 36502179, 37782046,
        36761891, 37591749, 36041891, 35691808, 33551946, 32251624, 35031801,
        35292068, 33461670, 35102299, 37981821, 40952468
    }),
    POI({ -- Aqir Reaper
        41863885, 41264078, 41494146, 41104233, 40464372, 40624452, 40834550,
        39984480, 39814467, 39254356, 37994321, 37584213, 39764251, 39333892,
        29816310, 32056727, 32426645, 33646358, 37094853
    })
}}) -- Aqir Flayer
nodes[30595944] = Rare({id=154576, quest=58614, assault=AQR, note=L["aqir_titanus"], pois={
    POI({30266161, 30076533, 31496674, 33356610, 32486946, 34856598}),
    Path({37295892, 36485588, 37285284}),
    Path({38134884, 36535023, 34765141, 32935159}),
    Path({33325836, 33865418}),
    Path({26795106, 27055372, 27025596}),
    Path({28526114, 28975921, 28805676, 28945481}),
    Path({43194180, 42864292, 41284445, 40884731}),
    Path({40864255, 41714037}),
    Path({38314290, 40354482}),
    Path({32994510, 35434436, 36284239}),
    Path({41243247, 40503334, 39233745})
}}) -- Aqir Titanus
nodes[38214521] = Rare({id=162172, quest=58694, assault=AQR, note=L["aqir_warcaster"], pois={
    POI({
        29666397, 30346691, 30396549, 30946805, 31296612, 31316747, 31546811,
        31586663, 31906347, 32256093, 32796516, 32856283, 33046590, 33246733,
        33656812, 33666517, 33976361, 34446875, 34466522, 36844697, 38284543,
        39303882, 39314582, 39754049, 39873790, 39944596, 40033882, 40144315,
        40214146, 40233654, 40264433, 40544320, 40883978, 40894302, 40924132,
        41463988, 41993776, 42913735
    }) -- Aqir Voidcaster
}}) -- Aqir Warcaster
nodes[44854235] = Rare({id=162370, quest=58718, assault={AQR,AMA}}) -- Armagedillo
nodes[65035129] = Rare({id=152757, quest=55710, assault=AMA, note=L["atekhramun"]}) -- Atekhramun
nodes[45605777] = Rare({id=162171, quest=58699, assault=AQR, note=L["chamber_of_the_sun"]..' '..L["dunewalker"]}) -- Captain Dunewalker
nodes[75425216] = Rare({id=157167, quest=57280, assault={AQR,AMA}}) -- Champion Sen-mat
nodes[30854971] = Rare({id=162147, quest=58696, assault=AQR, rewards={
    Mount({id=1319, item=174769}) -- Malevolent Drone
}}) -- Corpse Eater
nodes[49363822] = Rare({id=158594, quest=57672, assault=EMP}) -- Doomsayer Vathiris
nodes[48657067] = Rare({id=158491, quest=57662, assault=EMP, pois={
    Path({53287082, 54066945, 53446815, 49866959, 48097382, 46537211, 46257561, 44217851})
}}) -- Falconer Amenophis
nodes[75056816] = Rare({id=157120, quest=57258, assault={AQR, AMA}}) -- Fangtaker Orsa
nodes[55475169] = Rare({id=158633, quest=57680, assault=EMP, rewards={
    Item({item=175142}), -- All-Seeing Right Eye
    Toy({item=175140}) -- All-Seeing Eye
}, note=L["gaze_of_nzoth"]..' '..L["right_eye"]}) -- Gaze of N'Zoth
nodes[54694317] = Rare({id=158597, quest=57675, assault=EMP}) -- High Executor Yothrim
nodes[47507718] = Rare({id=158528, quest=57664, assault=EMP}) -- High Guard Reshef
nodes[42485873] = Rare({id=162163, quest=58701, assault=AQR, pois={
    Path({42485873, 44396076, 46215988, 46785800, 46465623, 44545616, 43055653, 42485873})
}}) -- High Priest Ytaessis
nodes[80504715] = Rare({id=151995, quest=55502, assault=AMA, pois={
    Path({80504715, 79804519, 77204597})
}}) -- Hik-Ten the Taskmaster
nodes[60033950] = Rare({id=160623, quest=58206, assault=EMP, note=L["hmiasma"]}) -- Hungering Miasma
nodes[19755847] = Rare({id=155531, quest=56823, assault=AQR, note=L["wastewander"], pois={
    POI({
        17896249, 18026020, 18406490, 18966279, 19176080, 19626403, 19696174,
        19976498, 20036084, 20336267, 20686052, 20796452, 21365790, 22056027,
        22086169, 22135658, 22156465, 22656370, 22905737, 22976012, 23205863,
        23246283, 23706188, 24146211, 24316070, 24366309, 24495822, 24616524,
        24806225, 25306412
    }) -- Wastewander Host
}}) -- Infested Wastewander Captain
nodes[73908353] = Rare({id=157134, quest=57259, rewards={
    Mount({id=1314, item=174641}) -- Drake of the Four Winds
}}) -- Ishak of the Four Winds
nodes[77005000] = Rare({id=152431, quest=55629, assault=AMA, note=L["kanebti"]}) -- Kaneb-ti
nodes[71237375] = Rare({id=156655, quest=57433, assault=EMP}) -- Korzaran the Slaughterer
nodes[34681890] = Rare({id=154604, quest=56340, assault=AQR, note=L["chamber_of_the_moon"], rewards={
    Pet({id=2847, item=174475}) -- Rotbreath
}}) -- Lord Aj'qirai
nodes[30476602] = Rare({id=156078, quest=56952, assault=AQR, pois={
    POI({30476602, 32876907, 33696573})
}}) -- Magus Rehleth
nodes[66842035] = Rare({id=157157, quest=57277, assault=AMA}) -- Muminah the Incandescent
nodes[62012454] = Rare({id=152677, quest=55684, assault=AMA}) -- Nebet the Ascended
nodes[35071729] = Rare({id=162196, quest=58681}) -- Obsidian Annihilator
nodes[37505978] = Rare({id=162142, quest=58693, assault=AQR}) -- Qho
nodes[58175712] = Rare({id=156299, quest=57430, assault={AQR, EMP}, pois={
    Path({51055121, 52684913, 54554907, 56165227, 56795451, 58095721, 58536856})
}}) -- R'khuzj the Unfathomable
nodes[28651339] = Rare({id=162173, quest=58864, assault=AQR, pois={
    Path({
        38031012, 36071044, 34261112, 31611053, 29200919, 27930731, 26460550,
        24980615, 24810886, 26881180, 28651339, 28381641, 29341853, 29392137,
        29472409, 29822663, 30342939, 30333188, 30103380
    })
}}) -- R'krox the Runt
nodes[68593204] = Rare({id=157146, quest=57273, assault=AMA, rewards={
    Mount({id=1317, item=174753}) -- Waste Marauder
}}) -- Rotfeaster
nodes[69714215] = Rare({id=152040, quest=55518, assault=AMA}) -- Scoutmaster Moswen
nodes[73536459] = Rare({id=151948, quest=55496, assault=AMA}) -- Senbu the Pridefather
nodes[57003794] = Rare({id=161033, quest=58333, assault=EMP, pois={
    POI({57003794, 52174326})
}})-- Shadowmaw
nodes[58558282] = Rare({id=156654, quest=57432, assault=EMP}) -- Shol'thoss the Doomspeaker
nodes[61297484] = Rare({id=160532, quest=58169, assault={AQR, EMP}}) -- Shoth the Darkened
nodes[21236105] = Rare({id=162140, quest=58697, assault=AQR, rewards={
    Pet({id=2848, item=174476}) -- Aqir Tunneler
}, pois={
    Path({22486168, 21316279, 19896347, 19356128, 20345804, 21435846, 24325860, 24866015, 24406194, 22486168})
}}) -- Skikx'traz
nodes[66676804] = Rare({id=162372, quest=58715, assault={AQR, AMA}, pois={
    POI({58606160, 58038282, 66676804, 70997407})
}}) -- Spirit of Cyrus the Black
nodes[49944011] = Rare({id=162352, quest=58716, assault={AQR, AMA}, note=L["in_water_cave"]}) -- Spirit of Dark Ritualist Zakahn
nodes[52154012] = Cave({parent=nodes[49944011], assault={AQR, AMA}, label=L["spirit_cave"]}) -- Entrance
nodes[78986389] = Rare({id=151878, quest=58613, assault=AMA}) -- Sun King Nahkotep
nodes[84785704] = Rare({id=151897, quest=55479, assault=AMA}) -- Sun Priestess Nubitt
nodes[73347447] = Rare({id=151609, quest=55353, assault=AMA}) -- Sun Prophet Epaphos
nodes[65903522] = Rare({id=152657, quest=55682, assault=AMA, pois={
    Path({68043800, 64873862, 64503660, 65903522, 67003162, 67743515, 68043800})
}}) -- Tat the Bonechewer
nodes[49328235] = Rare({id=158636, quest=57688, assault=EMP, note=L["platform"], rewards={
    Toy({item=169303}) -- Hell-Bent Bracers
}}) -- The Grand Executor
nodes[84324729] = Rare({id=157188, quest=57285, assault=AMA, note=L["tomb_widow"]}) -- The Tomb Widow
nodes[60014937] = Rare({id=158595, quest=57673, assault=EMP}) -- Thoughtstealer Vos
nodes[67486382] = Rare({id=152788, quest=55716, assault=AMA, note=L["uatka"], rewards={
    Item({item=174875}) -- Obelisk of the Sun
}}) -- Uat-ka the Sun's Wrath
nodes[33592569] = Rare({id=162170, quest=58702, assault=AQR}) -- Warcaster Xeshro
nodes[79505217] = Rare({id=151852, quest=55461, assault=AMA, pois={
    Path({77755217, 81265217})
}}) -- Watcher Rehu
nodes[80165708] = Rare({id=157164, quest=57279, assault=AMA}) -- Zealot Tekem
nodes[39694159] = Rare({id=162141, quest=58695, assault=AQR}) -- Zuythiz

-------------------------------------------------------------------------------
------------------------------- NEFERSET RARES --------------------------------
-------------------------------------------------------------------------------

local start = 45009400
local function coord(x, y)
    return start + x*2500000 + y*400
end

local NefRare = Class('NefersetRare', Rare, {
    assault=EMP, note=L["neferset_rare"],
    pois={POI({50007868, 50568833, 55207930})}
})

function NefRare:PrerequisiteCompleted()
    -- Show only if a Summoning Ritual event is active or completed
    for i, quest in ipairs({57359, 57620, 57621}) do
        if C_TaskQuest.GetQuestTimeLeftMinutes(quest) or C_QuestLog.IsQuestFlaggedCompleted(quest) then
            return true
        end
    end
    return false
end

nodes[coord(0, 0)] = NefRare({id=157472, quest=57437}) -- Aphrom the Guise of Madness
nodes[coord(1, 0)] = NefRare({id=157470, quest=57436}) -- R'aas the Anima Devourer
nodes[coord(2, 0)] = NefRare({id=157390, quest=57434}) -- R'oyolok the Reality Eater
nodes[coord(3, 0)] = NefRare({id=157476, quest=57439}) -- Shugshul the Flesh Gorger
nodes[coord(4, 0)] = NefRare({id=157473, quest=57438, rewards={
    Toy({item=174874}) -- Budget K'thir Disguise
}}) -- Yiphrim the Will Ravager
nodes[coord(5, 0)] = NefRare({id=157469, quest=57435}) -- Zoth'rum the Intellect Pillager

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

local AQRChest = Class('AQRChest', Treasure, {
    assault=AQR,
    group=ns.groups.DAILY_CHESTS,
    label=L["infested_cache"]
})

local AQRTR1 = AQRChest({quest=58138, icon='chest_blue'})
local AQRTR2 = AQRChest({quest=58139, icon='chest_purple'})
local AQRTR3 = AQRChest({quest=58140, icon='chest_orange'})
local AQRTR4 = AQRChest({quest=58141, icon='chest_yellow'})
local AQRTR5 = AQRChest({quest=58142, icon='chest_teal'})

-- quest=58138
nodes[43925868] = Clone(AQRTR1, {note=L["chamber_of_the_sun"]})
nodes[44855696] = AQRTR1
nodes[45845698] = Clone(AQRTR1, {note=L["chamber_of_the_sun"]})
nodes[46176156] = AQRTR1
nodes[46525801] = AQRTR1
nodes[50555882] = AQRTR1
nodes[51736032] = AQRTR1
-- quest=58139
nodes[27476410] = AQRTR2
nodes[30526540] = AQRTR2
nodes[31166796] = AQRTR2
nodes[32764770] = AQRTR2
nodes[32976010] = AQRTR2
nodes[33366210] = AQRTR2
nodes[33476998] = AQRTR2
-- quest=58140
nodes[18356130] = AQRTR3
nodes[19836512] = AQRTR3
nodes[20585920] = AQRTR3
nodes[21706436] = AQRTR3
nodes[23406539] = AQRTR3
nodes[23055936] = AQRTR3
nodes[24525507] = AQRTR3
nodes[24606387] = AQRTR3
nodes[26066468] = AQRTR3
-- quest=58141
nodes[36032024] = AQRTR4
nodes[37484577] = AQRTR4
nodes[38774014] = AQRTR4
nodes[39692354] = AQRTR4
nodes[39754504] = AQRTR4
nodes[40244251] = AQRTR4
nodes[40454422] = AQRTR4
nodes[40823893] = AQRTR4
nodes[41604250] = AQRTR4
-- quest=58142
nodes[28030834] = AQRTR5
nodes[30671611] = AQRTR5
nodes[30903046] = AQRTR5
nodes[31303070] = AQRTR5
nodes[31521515] = AQRTR5
nodes[33571901] = AQRTR5
nodes[33953036] = AQRTR5
nodes[35101878] = AQRTR5
nodes[35413157] = AQRTR5
nodes[36871616] = AQRTR5
nodes[41592264] = Clone(AQRTR5, {note=L["chamber_of_the_moon"]})
nodes[45561320] = AQRTR5

nodes[36252324] = Supply({
    quest=58137,
    assault=AQR,
    group=ns.groups.COFFERS,
    label=L["infested_strongbox"],
    note=L["chamber_of_the_moon"]
})

-------------------------------------------------------------------------------

local EMPChest = Class('EMPChest', Treasure, {
    assault=EMP,
    group=ns.groups.DAILY_CHESTS,
    label=L["black_empire_cache"]
})

local EMPTR1 = EMPChest({quest=57623, icon='chest_blue', note=L["single_chest"]})
local EMPTR2 = EMPChest({quest=57624, icon='chest_purple', note=L["single_chest"]})
local EMPTR3 = EMPChest({quest=57625, icon='chest_lime', note=L["in_water"]..' '..L["single_chest"]})
local EMPTR4 = EMPChest({quest=57626, icon='chest_orange'})
local EMPTR5 = EMPChest({quest=57627, icon='chest_yellow'})
local EMPTR6 = EMPChest({quest=57635, icon='chest_teal'})

-- quest=57623
nodes[58361535] = EMPTR1
-- quest=57624
nodes[50793143] = EMPTR2
-- quest=57625
nodes[52705006] = EMPTR3
-- quest=57626
nodes[57808250] = EMPTR4
nodes[57817487] = EMPTR4
nodes[58247282] = EMPTR4
nodes[59226749] = EMPTR4
nodes[59416224] = EMPTR4
nodes[60576213] = EMPTR4
nodes[61778172] = EMPTR4
nodes[62588188] = EMPTR4
nodes[62977610] = EMPTR4
nodes[62996440] = EMPTR4
nodes[64436501] = EMPTR4
nodes[66756810] = EMPTR4
nodes[67547066] = EMPTR4
nodes[70217325] = EMPTR4
-- quest=57627
nodes[59816610] = EMPTR5
nodes[59867422] = EMPTR5
nodes[60246529] = EMPTR5
nodes[60757493] = EMPTR5
nodes[60967000] = EMPTR5
nodes[61206544] = EMPTR5
nodes[61817595] = EMPTR5
nodes[62157346] = EMPTR5
nodes[62737184] = EMPTR5
nodes[62807565] = EMPTR5
nodes[63867065] = EMPTR5
nodes[64607503] = EMPTR5
nodes[65357117] = EMPTR5
nodes[67167394] = EMPTR5
-- quest=57635
nodes[45697961] = EMPTR6
nodes[47507687] = EMPTR6
nodes[49037684] = EMPTR6
nodes[49398584] = EMPTR6
nodes[49807210] = EMPTR6
nodes[50207510] = EMPTR6
nodes[51157388] = EMPTR6
nodes[51207970] = EMPTR6
nodes[51707135] = EMPTR6
nodes[51777298] = EMPTR6
nodes[51897858] = EMPTR6
nodes[52197757] = EMPTR6
nodes[55397860] = EMPTR6
nodes[55658346] = EMPTR6

local EMPCOFF = Supply({
    quest=57628,
    assault=EMP,
    group=ns.groups.COFFERS,
    sublabel=L["cursed_relic"],
    label=L["black_empire_coffer"]
})

nodes[71657334] = EMPCOFF

-------------------------------------------------------------------------------

local AMAChest = Class('AMAChest', Treasure, {
    assault=AMA,
    group=ns.groups.DAILY_CHESTS,
    label=L["amathet_cache"]
})

local AMATR1 = AMAChest({quest=55689, icon='chest_blue'})
local AMATR2 = AMAChest({quest=55690, icon='chest_purple'})
local AMATR3 = AMAChest({quest=55691, icon='chest_orange'})
local AMATR4 = AMAChest({quest=55698, icon='chest_yellow'})
local AMATR5 = AMAChest({quest=55699, icon='chest_teal'})
local AMATR6 = AMAChest({quest=55700, icon='chest_lime'})

-- quest=55689
nodes[78265073] = AMATR1
nodes[80575110] = AMATR1
nodes[80785611] = AMATR1
nodes[81585359] = AMATR1
nodes[84534540] = AMATR1
nodes[84836185] = AMATR1
nodes[84995395] = AMATR1
nodes[85005097] = AMATR1
nodes[85275138] = AMATR1
nodes[85285297] = AMATR1
-- quest=55690
nodes[70325819] = AMATR2
nodes[71226851] = AMATR2
nodes[71305922] = AMATR2
nodes[72216422] = AMATR2
nodes[73117297] = AMATR2
nodes[73707393] = AMATR2
nodes[73987095] = AMATR2
nodes[74206460] = AMATR2
nodes[78286207] = AMATR2
nodes[79166486] = AMATR2
-- quest=55691
nodes[71504750] = AMATR3
nodes[72474857] = AMATR3
nodes[73035386] = AMATR3
nodes[73045143] = AMATR3
nodes[74195187] = AMATR3
nodes[75335579] = AMATR3
nodes[75575372] = AMATR3
nodes[76364879] = AMATR3
nodes[78125302] = AMATR3
-- quest=55698
nodes[71884388] = AMATR4
nodes[72764468] = AMATR4
nodes[72944350] = AMATR4
nodes[73714646] = AMATR4
nodes[74364390] = AMATR4
nodes[75134608] = AMATR4
nodes[76344679] = AMATR4
nodes[77274934] = AMATR4
nodes[77544828] = AMATR4
nodes[79314578] = AMATR4
-- quest=55699 (no blizzard minimap icon for this one?)
nodes[63084970] = AMATR5
nodes[64094488] = AMATR5
nodes[65403796] = AMATR5
nodes[66394350] = AMATR5
nodes[66624829] = AMATR5
nodes[67004050] = AMATR5
nodes[67884158] = AMATR5
nodes[69744236] = AMATR5
nodes[69874163] = AMATR5
-- quest=55700
nodes[60932455] = AMATR6
nodes[61343060] = AMATR6
nodes[62722355] = AMATR6
nodes[63122508] = Clone(AMATR6, {note=L["chamber_of_the_stars"]})
nodes[63532160] = AMATR6
nodes[65543142] = AMATR6
nodes[65882147] = Clone(AMATR6, {note=L["chamber_of_the_stars"]})
nodes[67172800] = Clone(AMATR6, {note=L["chamber_of_the_stars"]})
nodes[68222051] = AMATR6
nodes[68933234] = AMATR6

local AMACOFF = Supply({
    quest=55692,
    assault=AMA,
    group=ns.groups.COFFERS,
    label=L["amathet_reliquary"],
    sublabel=L["tolvir_relic"]
})

nodes[64463415] = Clone(AMACOFF, {note=L["chamber_of_the_stars"]})
nodes[66882414] = AMACOFF
nodes[67464294] = AMACOFF
nodes[73337356] = AMACOFF
nodes[73685054] = AMACOFF
nodes[75914194] = AMACOFF
nodes[83116028] = AMACOFF

-------------------------------------------------------------------------------
-------------------------------- ASSAULT EVENTS -------------------------------
-------------------------------------------------------------------------------

nodes[34392928] = TimedEvent({quest=58679, assault=AQR, note=L["dormant_destroyer"]}) -- Dormant Destroyer
nodes[20765913] = TimedEvent({quest=58676, assault=AQR, note=L["dormant_destroyer"]}) -- Dormant Destroyer
nodes[31365562] = TimedEvent({quest=58667, assault=AQR, note=L["obsidian_extract"]}) -- Obsidian Extraction
nodes[36542060] = TimedEvent({quest=59003, assault=AQR, note=L["chamber_of_the_moon"]..' '..L["combust_cocoon"]}) -- Combustible Cocoons
nodes[37054778] = TimedEvent({quest=58961, assault=AQR, note=L["ambush_settlers"]}) -- Ambushed Settlers
nodes[27765714] = TimedEvent({quest=58974, assault=AQR, note=L["ambush_settlers"]}) -- Ambushed Settlers
nodes[22496418] = TimedEvent({quest=58952, assault=AQR, note=L["purging_flames"]}) -- Purging Flames
nodes[28336559] = TimedEvent({quest=58990, assault=AQR, note=L["titanus_egg"]}) -- Titanus Egg
nodes[46845804] = TimedEvent({quest=58981, assault=AQR, note=L["chamber_of_the_sun"]..' '..L["hardened_hive"]}) -- Hardened Hive
nodes[37136702] = TimedEvent({quest=58662, assault=AQR, note=L["burrowing_terrors"]}) -- Burrowing Terrors
nodes[45134306] = TimedEvent({quest=58661, assault=AQR, note=L["burrowing_terrors"]}) -- Burrowing Terrors
nodes[31614380] = TimedEvent({quest=58660, assault=AQR, note=L["burrowing_terrors"]}) -- Burrowing Terrors

-------------------------------------------------------------------------------

local MAWREWARD = {Achievement({id=14161, criteria=1})}

nodes[46793424] = TimedEvent({quest=58256, assault=EMP, note=L["consuming_maw"], rewards=MAWREWARD}) -- Consuming Maw
nodes[55382132] = TimedEvent({quest=58257, assault=EMP, note=L["consuming_maw"], rewards=MAWREWARD}) -- Consuming Maw
nodes[60154555] = TimedEvent({quest=58216, assault=EMP, note=L["consuming_maw"], rewards=MAWREWARD}) -- Consuming Maw
nodes[62407931] = TimedEvent({quest=58258, assault=EMP, note=L["consuming_maw"], rewards=MAWREWARD}) -- Consuming Maw

nodes[48518489] = TimedEvent({quest=57522, assault=EMP, note=L["call_of_void"]}) -- Call of the Void
nodes[53677575] = TimedEvent({quest=57585, assault=EMP, note=L["call_of_void"]}) -- Call of the Void
nodes[65907284] = TimedEvent({quest=57541, assault=EMP, note=L["call_of_void"]}) -- Call of the Void
nodes[52015072] = TimedEvent({quest=57543, assault=EMP, note=L["executor_nzoth"]}) -- Executor of N'Zoth
nodes[57044951] = TimedEvent({quest=57592, assault=EMP, note=L["executor_nzoth"]}) -- Executor of N'Zoth
nodes[59014663] = TimedEvent({quest=57580, assault=EMP, note=L["executor_nzoth"]}) -- Executor of N'Zoth
nodes[60203789] = TimedEvent({quest=57449, assault=EMP, note=L["executor_nzoth"]}) -- Executor of N'Zoth
nodes[66476806] = TimedEvent({quest=57582, assault=EMP, note=L["executor_nzoth"]}) -- Executor of N'Zoth
nodes[49443920] = TimedEvent({quest=58276, assault=EMP, note=L["in_flames"]}) -- Mar'at In Flames
nodes[50578232] = TimedEvent({quest=58275, assault=EMP, note=L["monstrous_summon"]}) -- Monstrous Summoning
nodes[59767241] = TimedEvent({quest=57429, assault=EMP, note=L["pyre_amalgamated"], rewards={
    Pet({id=2851, item=174478}) -- Wicked Lurker
}}) -- Pyre of the Amalgamated One (also 58330?)
nodes[49997867] = TimedEvent({quest=57620, assault=EMP, note=L["summoning_ritual"]}) -- Summoning Ritual
nodes[50568833] = TimedEvent({quest=57359, assault=EMP, note=L["summoning_ritual"]}) -- Summoning Ritual
nodes[55227932] = TimedEvent({quest=57621, assault=EMP, note=L["summoning_ritual"]}) -- Summoning Ritual
nodes[62037070] = TimedEvent({quest=58271, assault=EMP, note=L["voidflame_ritual"]}) -- Voidflame Ritual

nodes[46243068] = TimedEvent({quest=57586, assault=EMP, pois={
    Path({44272884, 44772860, 45202953, 46012982, 46243068, 47193047, 47773145, 47803309, 47203350})
}}) -- Spirit Drinker
nodes[47174044] = TimedEvent({quest=57456, assault=EMP, pois={
    Path({47944278, 47084245, 47254116, 47053964, 46583882, 46943783})
}}) -- Spirit Drinker
nodes[52733202] = TimedEvent({quest=57587, assault=EMP, pois={
    Path({53993205, 52733202, 51713098, 50903050, 50412889, 49212843, 48162695, 47002657})
}}) -- Spirit Drinker
nodes[58347785] = TimedEvent({quest=57590, assault=EMP, pois={
    Path({58908017, 58347785, 58907588, 58187367, 58687192, 58896905, 58886621})
}}) -- Spirit Drinker
nodes[59022780] = TimedEvent({quest=57588, assault=EMP, pois={
    Path({58102290, 58422547, 59022780, 59602914, 60063133, 60753296, 60453467})
}}) -- Spirit Drinker
nodes[60005506] = TimedEvent({quest=57591, assault=EMP, pois={
    Path({60315245, 59785364, 60005506, 60385696, 60495866})
}}) -- Spirit Drinker
nodes[64066598] = TimedEvent({quest=57589, assault=EMP, pois={
    Path({63356496, 64066598, 65306702, 65436896, 66697001, 67986971, 68547031, 68677190, 69447238, 69867349})
}}) -- Spirit Drinker

-------------------------------------------------------------------------------

nodes[84205548] = TimedEvent({quest=55670, assault=AMA, note=L["raiding_fleet"]}) -- Amathet Raiding Fleet
nodes[76094793] = TimedEvent({quest=57243, assault=AMA, note=L["slave_camp"]}) -- Amathet Slave Camp
nodes[62062069] = TimedEvent({quest=55356, assault=AMA, note=L["beacon_of_sun_king"]}) -- Beacon of the Sun King
nodes[71594586] = TimedEvent({quest=55358, assault=AMA, note=L["beacon_of_sun_king"]}) -- Beacon of the Sun King
nodes[83496186] = TimedEvent({quest=55357, assault=AMA, note=L["beacon_of_sun_king"]}) -- Beacon of the Sun King
nodes[64502932] = TimedEvent({quest=57215, assault=AMA, note=L["engine_of_ascen"]}) -- Engine of Ascension
nodes[64442267] = TimedEvent({quest=55355, assault=AMA, note=L["lightblade_training"]}) -- Lightblade Training Grounds
nodes[64483034] = TimedEvent({quest=55359, assault=AMA, note=L["chamber_of_the_stars"]..' '..L["ritual_ascension"]}) -- Ritual of Ascension
nodes[66515030] = TimedEvent({quest=57235, assault=AMA, note=L["solar_collector"]}) -- Solar Collector
nodes[80256607] = TimedEvent({quest=57234, assault=AMA, note=L["solar_collector"]}) -- Solar Collector
nodes[69905991] = TimedEvent({quest=55360, assault=AMA, note=L["unsealed_tomb"]}) -- The Unsealed Tomb
nodes[61414704] = TimedEvent({quest=55354, assault=AMA, note=L["virnall_front"]}) -- The Vir'nall Front
nodes[65513779] = TimedEvent({quest=57219, assault=AMA, note=L["unearthed_keeper"]}) -- Unearthed Keeper
nodes[71366849] = TimedEvent({quest=57217, assault=AMA, note=L["unearthed_keeper"]}) -- Unearthed Keeper
nodes[78225754] = TimedEvent({quest=57223, assault=AMA, note=L["unearthed_keeper"]}) -- Unearthed Keeper
nodes[82534796] = TimedEvent({quest=57218, assault=AMA, note=L["unearthed_keeper"]}) -- Unearthed Keeper

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[35453159] = PetBattle({id=162465}) -- Aqir Sandcrawler
nodes[57604356] = PetBattle({id=162466}) -- Blotto
nodes[62043188] = PetBattle({id=162458}) -- Retinus the Seeker
nodes[61745440] = PetBattle({id=162461}) -- Whispers

-------------------------------------------------------------------------------
------------------------------- SPRINGFUR ALPACA ------------------------------
-------------------------------------------------------------------------------

local function GetAlpacaStatus ()
    local count = select(4, GetQuestObjectiveInfo(58881, 0, false))
    if count ~= nil then return ns.status.Gray(tostring(count)..'/7') end
end

local Alpaca = Class('Alpaca', NPC, {
    id=162765,
    icon=2916287,
    quest=58879,
    group=ns.groups.ALPACA_ULDUM,
    note=L["friendly_alpaca"],
    pois={POI({
        15006200, 24000900, 27004800, 30002900, 39000800, 41007000, 47004800,
        52001900, 55006900, 62705340, 63011446, 70003900, 76636813
    })},
    rewards={Mount({id=1329, item=174859})} -- Springfur Alpaca
})

local Gersahl = Class('Gersahl', Node, {
    icon=134190,
    group=ns.groups.ALPACA_ULDUM,
    label=L["gersahl"],
    note=L["gersahl_note"],
    pois={POI({
        43802760, 46922961, 49453556, 50504167, 50583294, 53133577, 55484468,
        56114967, 56202550, 56265101, 56691882, 56901740, 57112548, 57235056,
        57281602, 57458491, 57474682, 57741910, 58005169, 58131768, 58202808,
        58967759, 59027433, 59098568, 59266302, 59557986, 59567664, 59628482,
        59805460, 60018165, 60447755, 60627655, 61371430, 64717249, 65167045,
        65427433, 66047881, 66137572, 66217063, 66257753, 66557212, 67377771,
        68097535, 68117202, 68517407, 68947308, 69237501, 71087875, 71657803
    })},
    rewards={Item({item=174858})} -- Gersahl Greens
})

Alpaca.getters.rlabel = GetAlpacaStatus
Gersahl.getters.rlabel = GetAlpacaStatus

nodes[47004800] = Alpaca()
nodes[58005169] = Gersahl()
