-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------

local ADDON_NAME, ns = ...
local L = ns.locale
local Class = ns.Class
local Map = ns.Map
local isinstance = ns.isinstance

local Node = ns.node.Node
local Cave = ns.node.Cave
local NPC = ns.node.NPC
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare
local Supply = ns.node.Supply
local Treasure = ns.node.Treasure

local Achievement = ns.reward.Achievement
local Item = ns.reward.Item
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Quest = ns.reward.Quest
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local Path = ns.poi.Path
local POI = ns.poi.POI

local options = ns.options.args.VisibilityGroup.args
local defaults = ns.optionDefaults.profile

local AQR, EMP, AMA = 0, 1, 2 -- assaults

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({ id=1527, phased=false })
local nodes = map.nodes

local function GetAssault ()
    local textures = C_MapExplorationInfo.GetExploredMapTextures(map.id)
    if textures and textures[1].fileDataIDs[1] == 3165083 then
        ns.debug('Uldum assault: AQR')
        return AQR -- left
    elseif textures and textures[1].fileDataIDs[1] == 3165092 then
        ns.debug('Uldum assault: EMP')
        return EMP -- middle
    elseif textures and textures[1].fileDataIDs[1] == 3165098 then
        ns.debug('Uldum assault: AMA')
        return AME -- right
    end
end

function map:prepare ()
    self.assault = GetAssault()
    self.phased = self.assault ~= nil
end

function map:enabled (node, coord, minimap)
    if not Map.enabled(self, node, coord, minimap) then return false end

    if node == map.intro then return true end

    local assault = node.assault
    if assault then
        assault = type(assault) == 'number' and {assault} or assault
        for i=1, #assault + 1, 1 do
            if i > #assault then return false end
            if assault[i] == self.assault then break end
        end
    end

    return true
end

-------------------------------------------------------------------------------
----------------------------------- OPTIONS -----------------------------------
-------------------------------------------------------------------------------

defaults['pet_uldum'] = true

options.groupUldum = {
    type = "header",
    name = L["uldum"],
    order = 10,
};

options.petUldum = {
    type = "toggle",
    arg = "pet_uldum",
    name = L["options_toggle_battle_pets"],
    desc = L["options_toggle_battle_pets_desc"],
    order = 11,
    width = "normal",
};

-------------------------------------------------------------------------------
------------------------------------ INTRO ------------------------------------
-------------------------------------------------------------------------------

local Intro = Class('Intro', Node)

Intro.note = L["uldum_intro_note"]
Intro.icon = 'quest_yellow'
Intro.scale = 3

function Intro:enabled ()
    if not Node.enabled(self) then return false end
    return map.assault == nil
end

function Intro.getters:label ()
    return select(2, GetAchievementInfo(14153)) -- Uldum Under Assault
end

-- Where the Heart is => Surfacing Threats
local Q = Quest({id={58583, 58506, 56374, 56209, 56375, 56472, 56376}})

if UnitFactionGroup('player') == 'Alliance' then
    map.intro = Intro({faction='Alliance', rewards={
        Quest({id={58496, 58498}}), Q
    }})
else
    map.intro = Intro({faction='Horde', rewards={
        Quest({id={58582}}), Q
    }})
end

nodes[46004300] = map.intro

ns.addon:RegisterEvent('QUEST_WATCH_UPDATE', function (_, index)
    local _, _, _, _, _, _, _, questID = GetQuestLogTitle(index)
    if questID == 56376 then
        ns.debug('Uldum assaults unlock detected')
        C_Timer.After(1, function()
            ns.addon:Refresh()
        end)
    end
end)

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

nodes[66817436] = Rare({id=158557, quest=57669}) -- Actiss the Deceiver
-- nodes[] = Rare({id=157593, quest=nil, rewards={
--     Pet({id=2851, item=174478}) -- Wicked Lurker
-- }}) -- Amalgamation of Flesh
nodes[32426443] = Rare({id=155703, quest=56834}) -- Anq'uri the Titanic
nodes[69714973] = Rare({id=151883, quest=55468, pois={
    Path({68645049, 69714973, 70955041, 71425210, 71005388, 69855463, 68695394, 68225217, 68645049})
}}) -- Anaua
nodes[38732500] = Rare({id=154578, quest=58612, note=L["aqir_flayer"], pois={
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
nodes[31245691] = Rare({id=154576, quest=58614, note=L["aqir_titanus"], pois={
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
nodes[45605777] = Rare({id=162171, quest=58699, note=L["chamber_of_the_sun"]}) -- Captain Dunewalker
nodes[30854971] = Rare({id=162147, quest=58696, rewards={
    Mount({id=1319, item=174769}) -- Malevolent Drone
}}) -- Corpse Eater
nodes[49363822] = Rare({id=158594, quest=57672}) -- Doomsayer Vathiris
nodes[48657067] = Rare({id=158491, quest=nil, note=L["falconer"]}) -- Falconer Amenophis
nodes[75056816] = Rare({id=157120, quest=57258}) -- Fangtaker Orsa
nodes[21405794] = Rare({id=155531, quest=56823}) -- Infested Wastewander Captain (shares a spawn with Wastewander Hosts?)
nodes[54694317] = Rare({id=158597, quest=57675}) -- High Executor Yothrim
nodes[42485873] = Rare({id=162163, quest=58701, pois={
    Path({42485873, 44396076, 46215988, 46785800, 46465623, 44545616, 43055653, 42485873})
}}) -- High Priest Ytaessis
nodes[80504715] = Rare({id=151995, quest=55502, pois={
    Path({80504715, 79804519, 77204597})
}}) -- Hik-Ten the Taskmaster
nodes[60033950] = Rare({id=160623, quest=58206}) -- Hungering Miasma
nodes[73908353] = Rare({id=157134, quest=57259, rewards={
    Mount({id=1314, item=174641}) -- Drake of the Four Winds
}}) -- Ishak of the Four Winds
nodes[71237375] = Rare({id=156655, quest=nil}) -- Korzaran the Slaughterer
nodes[34681890] = Rare({id=154604, quest=56340, note=L["chamber_of_the_moon"], rewards={
    Pet({id=2847, item=174475}) -- Rotbreath
}}) -- Lord Aj'qirai
nodes[30476602] = Rare({id=156078, quest=56952}) -- Magus Rehleth
nodes[62012454] = Rare({id=152677, quest=nil}) -- Nebet the Ascended
nodes[35071729] = Rare({id=162196, quest=58681}) -- Obsidian Annihilator
nodes[37505978] = Rare({id=162142, quest=58693}) -- Qho
nodes[58175712] = Rare({id=156299, quest=57430, pois={
    Path({51055121, 52684913, 54554907, 56165227, 56795451, 58095721, 58536856})
}}) -- R'khuzj the Unfathomable
nodes[24980615] = Rare({id=162173, quest=58864, pois={
    Path({38031012, 31611053, 26460550, 24980615, 24810886, 28651339, 30103380})
}}) -- R'krox the runt
nodes[68593204] = Rare({id=157146, quest=nil, rewards={
    Mount({id=1317, item=174753}) -- Waste Marauder
}}) -- Rotfeaster
nodes[69714215] = Rare({id=152040, quest=55518}) -- Scoutmaster Moswen
nodes[73536459] = Rare({id=151948, quest=55496}) -- Senbu the Pridefather
nodes[57003794] = Rare({id=161033, quest=58333}) -- Shadowmaw
nodes[58558282] = Rare({id=156654, quest=nil}) -- Shol'thoss the Doomspeaker
nodes[61297484] = Rare({id=160532, quest=58169}) -- Shoth the Darkened
nodes[21236105] = Rare({id=162140, quest=58697, rewards={
    Pet({id=2848, item=174476}) -- Aqir Tunneler
}, pois={
    Path({22486168, 21316279, 19896347, 19356128, 20345804, 21435846, 24325860, 24866015, 24406194, 22486168})
}}) -- Skikx'traz
nodes[66676804] = Rare({id=162372, quest=58715, pois={
    POI({66676804, 70997407})
}}) -- Spirit of Cyrus the Black
nodes[49944011] = Rare({id=162352, quest=58716, note=L["in_water_cave"]}) -- Spirit of Dark Ritualist Zakahn
nodes[52154012] = Cave({parent=nodes[49944011], label=L["spirit_cave"]}) -- Entrance
nodes[78986389] = Rare({id=151878, quest=58613}) -- Sun King Nahkotep
nodes[84785704] = Rare({id=151897, quest=55479}) -- Sun Priestess Nubitt
nodes[73347447] = Rare({id=151609, quest=55353}) -- Sun Prophet Epaphos
nodes[67713350] = Rare({id=152657, quest=55682, note="check path"}) -- Tat the Bonechewer
nodes[49328235] = Rare({id=158636, quest=nil, note=L["gexec"], rewards={
    Toy({item=169303}) -- Hell-Bent Bracers
}}) -- The Grand Executor
nodes[33592569] = Rare({id=162170, quest=58702}) -- Warcaster Xeshro
nodes[79505217] = Rare({id=151852, quest=55461, pois={
    Path({77755217, 81265217})
}}) -- Watcher Rehu
-- nodes[] = Rare({id=157473, quest=nil, rewards={
--     Toy({item=174874}) -- Budget K'thir Disguise
-- }}) -- Yiphrim the Will Ravager
nodes[80165708] = Rare({id=157164, quest=57279}) -- Zealot Tekem
nodes[39694159] = Rare({id=162141, quest=58695}) -- Zuythiz

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

nodes[45845698] = Treasure({quest=58138, assault=AQR, label=L["infested_cache"], note=L["chamber_of_the_sun"]})
nodes[33366210] = Treasure({quest=58139, assault=AQR, label=L["infested_cache"]})
nodes[32764770] = Treasure({quest=58139, assault=AQR, label=L["infested_cache"]})
nodes[19836512] = Treasure({quest=58140, assault=AQR, label=L["infested_cache"]})
nodes[36032024] = Treasure({quest=58141, assault=AQR, label=L["infested_cache"]})
nodes[37484577] = Treasure({quest=58141, assault=AQR, label=L["infested_cache"]})
nodes[30671611] = Treasure({quest=58142, assault=AQR, label=L["infested_cache"]})
nodes[28030834] = Treasure({quest=58142, assault=AQR, label=L["infested_cache"]})
nodes[36252324] = Supply({quest=nil, assault=AQR, label=L["infested_strongbox"], note=L["chamber_of_the_moon"]})

nodes[58361535] = Treasure({quest=57623, assault=EMP, label=L["black_empire_cache"]})
nodes[50793143] = Treasure({quest=57624, assault=EMP, label=L["black_empire_cache"]})
nodes[59226749] = Treasure({quest=57626, assault=EMP, label=L["black_empire_cache"]})
nodes[62977610] = Treasure({quest=57626, assault=EMP, label=L["black_empire_cache"]})
nodes[60757493] = Treasure({quest=57627, assault=EMP, label=L["black_empire_cache"]})
nodes[71657334] = Supply({quest=nil, assault=EMP, label=L["black_empire_coffer"]})

nodes[84534540] = Treasure({quest=55689, assault=AMA, label=L["amathet_cache"]})
nodes[72216422] = Treasure({quest=55690, assault=AMA, label=L["amathet_cache"]})
nodes[78286207] = Treasure({quest=55690, assault=AMA, label=L["amathet_cache"]})
nodes[75575372] = Treasure({quest=55691, assault=AMA, label=L["amathet_cache"]})
nodes[79314578] = Treasure({quest=55698, assault=AMA, label=L["amathet_cache"]})
nodes[64094488] = Treasure({quest=55699, assault=AMA, label=L["amathet_cache"]})
nodes[67172800] = Treasure({quest=55700, assault=AMA, label=L["amathet_cache"], note=L["chamber_of_the_stars"]})

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

nodes[35453159] = PetBattle({id=162465}) -- Aqir Sandcrawler
nodes[57604356] = PetBattle({id=162466}) -- Blotto
nodes[62043188] = PetBattle({id=162458}) -- Retinus the Seeker
nodes[61745440] = PetBattle({id=162461}) -- Whispers

-------------------------------------------------------------------------------

ns.maps[map.id] = map
