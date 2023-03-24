-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Map = ns.Map
local Class = ns.Class
local L = ns.locale

local Collectible = ns.node.Collectible

local Achievement = ns.reward.Achievement

-------------------------------------------------------------------------------

local map = Map({id = 646, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

-- https://wowwiki-archive.fandom.com/wiki/Broken_Shore/Rare_mobs

-- map.nodes[02000200] = Rare({
--     id = 120675,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11841, criteria = 36672}) - Naxt Victim
--     }
-- }) -- An'thyna

-- map.nodes[04000200] = Rare({
--     id = 121092,
--     quest = nil,
--     rewards = {}
-- }) -- Anomalous Observer

-- map.nodes[60006200] = Rare({
--     id = 121124,
--     quest = nil,
--     rewards = {}
-- }) -- Apocron

-- map.nodes[51907820] = Rare({
--     id = 121016,
--     quest = nil,
--     rewards = {}
-- }) -- Aqueux

-- map.nodes[06000200] = Rare({
--     id = 121049,
--     quest = nil,
--     rewards = {}
-- }) -- Baleful Knight-Captain

-- map.nodes[39602890] = Rare({
--     id = 121029,
--     quest = nil,
--     rewards = {}
-- }) -- Brood Mother Nix

-- map.nodes[78003900] = Rare({
--     id = 121046,
--     quest = nil,
--     rewards = {}
-- }) -- Brother Badatin

-- map.nodes[59002800] = Rare({
--     id = 117239,
--     quest = nil,
--     rewards = {}
-- }) -- Brutallus

-- map.nodes[60005300] = Rare({
--     id = 116953,
--     quest = nil,
--     rewards = {}
-- }) -- Corrupted Bonebreaker

-- map.nodes[08000200] = Rare({
--     id = 121090,
--     quest = nil,
--     rewards = {}
-- }) -- Demented Shivarra

-- map.nodes[10000200] = Rare({
--     id = 121073,
--     quest = nil,
--     rewards = {}
-- }) -- Deranged Succubus

-- map.nodes[49003800] = Rare({
--     id = 117136,
--     quest = nil,
--     rewards = {}
-- }) -- Doombringer Zar'thoz

-- map.nodes[57803010] = Rare({
--     id = 117095,
--     quest = nil,
--     rewards = {}
-- }) -- Dreadblade Annihilator

-- map.nodes[41007900] = Rare({
--     id = 118993,
--     quest = nil,
--     rewards = {}
-- }) -- Dreadeye

-- map.nodes[78102790] = Rare({
--     id = 121134,
--     quest = nil,
--     rewards = {}
-- }) -- Duke Sithizi

-- map.nodes[51004500] = Rare({
--     id = 117086,
--     quest = nil,
--     rewards = {}
-- }) -- Emberfire

-- map.nodes[67003500] = Rare({
--     id = 116166,
--     quest = nil,
--     rewards = {}
-- }) -- Eye of Gurgh

-- map.nodes[12000200] = Rare({
--     id = 120681,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11841, criteria = 36673}) - Naxt Victim
--     }
-- }) -- Fel Obliterator

-- map.nodes[58304960] = Rare({
--     id = 117093,
--     quest = nil,
--     rewards = {}
-- }) -- Felbringer Xar'thok

-- map.nodes[88302980] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Felcaller Zelthae

-- map.nodes[39004200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Felmaw Emberfiend

-- map.nodes[39506000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Flllurlokkr

-- map.nodes[14000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11841, criteria = 36671}) - Naxt Victim
--     }
-- }) -- Force-Commander Xillious

-- map.nodes[77802390] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Grossir

-- map.nodes[16000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11841, criteria = 36674}) - Naxt Victim
--     }
-- }) -- Illisthyndria

-- map.nodes[61004400] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Imp Mother Bruva

-- map.nodes[61103950] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Inquisitor Chillbane

-- map.nodes[41001600] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Lady Eldrathe

-- map.nodes[18000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Lambent Felhunter

-- map.nodes[45005130] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Lord Hel'Nurath

-- map.nodes[20000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Malformed Terrorguard

-- map.nodes[56002730] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Malgrazoth

-- map.nodes[60002700] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Malificus

-- map.nodes[42004200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Malorus the Soulkeeper

-- map.nodes[55305670] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Potionmaster Gloop

-- map.nodes[22000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Ruinous Overfiend

-- map.nodes[65003000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Salethan the Broodwalker

-- map.nodes[89603360] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Si'vash

-- map.nodes[24000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11841, criteria = 36670}) - Naxt Victim
--     }
-- }) -- Skulguloth

-- map.nodes[32006000] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Somber Dawn

-- map.nodes[26000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {
--         Achievement({id = 11841, criteria = 36669}) - Naxt Victim
--     }
-- }) -- Than'otalion

-- map.nodes[28000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Unstable Abyssal

-- map.nodes[30000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Volatile Imp

-- map.nodes[32000200] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Warped Voidlord

-- map.nodes[49204840] = Rare({
--     id = nil,
--     quest = nil,
--     rewards = {}
-- }) -- Xorogun the Flamecarver

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

-- https://www.wowhead.com/guide/comprehensive-broken-shore-guide-5001#treasures

-- local HiddenWyrmtongueCache = ns.node.Node({
--     label = L['hidden_wyrmtongue_cache'],
--     icon = 'chest_gy',
--     rewards = {
--         Currency({id = 1226}), -- Nethershard
--         Currency({id = 1342}), -- Legionfall War Supplies
--         Currency({id = 1220}) -- Order Resources
--     }
-- })

-- map.nodes[28306040] = HiddenWyrmtongueCache
-- map.nodes[29406010] = HiddenWyrmtongueCache
-- map.nodes[30106690] = HiddenWyrmtongueCache
-- map.nodes[30705780] = HiddenWyrmtongueCache
-- map.nodes[30903320] = HiddenWyrmtongueCache
-- map.nodes[31004960] = HiddenWyrmtongueCache
-- map.nodes[31103210] = HiddenWyrmtongueCache
-- map.nodes[32903220] = HiddenWyrmtongueCache
-- map.nodes[33805400] = HiddenWyrmtongueCache
-- map.nodes[36602430] = HiddenWyrmtongueCache
-- map.nodes[36807170] = HiddenWyrmtongueCache
-- map.nodes[37806130] = HiddenWyrmtongueCache
-- map.nodes[37904290] = HiddenWyrmtongueCache
-- map.nodes[38603460] = HiddenWyrmtongueCache
-- map.nodes[39005830] = HiddenWyrmtongueCache
-- map.nodes[40106110] = HiddenWyrmtongueCache
-- map.nodes[40607290] = HiddenWyrmtongueCache
-- map.nodes[41205120] = HiddenWyrmtongueCache
-- map.nodes[41303650] = HiddenWyrmtongueCache
-- map.nodes[41403640] = HiddenWyrmtongueCache
-- map.nodes[41503650] = HiddenWyrmtongueCache
-- map.nodes[41603460] = HiddenWyrmtongueCache
-- map.nodes[42001580] = HiddenWyrmtongueCache
-- map.nodes[42006710] = HiddenWyrmtongueCache
-- map.nodes[42104280] = HiddenWyrmtongueCache
-- map.nodes[42906200] = HiddenWyrmtongueCache
-- map.nodes[43202640] = HiddenWyrmtongueCache
-- map.nodes[43402660] = HiddenWyrmtongueCache
-- map.nodes[43404690] = HiddenWyrmtongueCache
-- map.nodes[43505220] = HiddenWyrmtongueCache
-- map.nodes[44603340] = HiddenWyrmtongueCache
-- map.nodes[44603350] = HiddenWyrmtongueCache
-- map.nodes[45704680] = HiddenWyrmtongueCache
-- map.nodes[45906380] = HiddenWyrmtongueCache
-- map.nodes[46104330] = HiddenWyrmtongueCache
-- map.nodes[46104350] = HiddenWyrmtongueCache
-- map.nodes[46205060] = HiddenWyrmtongueCache
-- map.nodes[47306700] = HiddenWyrmtongueCache
-- map.nodes[47404670] = HiddenWyrmtongueCache
-- map.nodes[47504680] = HiddenWyrmtongueCache
-- map.nodes[47603470] = HiddenWyrmtongueCache
-- map.nodes[48203420] = HiddenWyrmtongueCache
-- map.nodes[48303690] = HiddenWyrmtongueCache
-- map.nodes[49001870] = HiddenWyrmtongueCache
-- map.nodes[49804640] = HiddenWyrmtongueCache
-- map.nodes[49804650] = HiddenWyrmtongueCache
-- map.nodes[50404990] = HiddenWyrmtongueCache
-- map.nodes[50805970] = HiddenWyrmtongueCache
-- map.nodes[51707050] = HiddenWyrmtongueCache
-- map.nodes[51907700] = HiddenWyrmtongueCache
-- map.nodes[52004160] = HiddenWyrmtongueCache
-- map.nodes[52104140] = HiddenWyrmtongueCache
-- map.nodes[52302990] = HiddenWyrmtongueCache
-- map.nodes[52405940] = HiddenWyrmtongueCache
-- map.nodes[52405950] = HiddenWyrmtongueCache
-- map.nodes[52505970] = HiddenWyrmtongueCache
-- map.nodes[52605940] = HiddenWyrmtongueCache
-- map.nodes[53008180] = HiddenWyrmtongueCache
-- map.nodes[53401940] = HiddenWyrmtongueCache
-- map.nodes[53602790] = HiddenWyrmtongueCache
-- map.nodes[53604560] = HiddenWyrmtongueCache
-- map.nodes[54607400] = HiddenWyrmtongueCache
-- map.nodes[56306510] = HiddenWyrmtongueCache
-- map.nodes[57001400] = HiddenWyrmtongueCache
-- map.nodes[57005680] = HiddenWyrmtongueCache
-- map.nodes[57305300] = HiddenWyrmtongueCache
-- map.nodes[57404360] = HiddenWyrmtongueCache
-- map.nodes[58003110] = HiddenWyrmtongueCache
-- map.nodes[58005600] = HiddenWyrmtongueCache
-- map.nodes[58105890] = HiddenWyrmtongueCache
-- map.nodes[60702830] = HiddenWyrmtongueCache
-- map.nodes[60901170] = HiddenWyrmtongueCache
-- map.nodes[60905840] = HiddenWyrmtongueCache
-- map.nodes[61005850] = HiddenWyrmtongueCache
-- map.nodes[61404290] = HiddenWyrmtongueCache
-- map.nodes[61405000] = HiddenWyrmtongueCache
-- map.nodes[61504290] = HiddenWyrmtongueCache
-- map.nodes[61903140] = HiddenWyrmtongueCache
-- map.nodes[61903150] = HiddenWyrmtongueCache
-- map.nodes[62003910] = HiddenWyrmtongueCache
-- map.nodes[62505500] = HiddenWyrmtongueCache
-- map.nodes[62905260] = HiddenWyrmtongueCache
-- map.nodes[63002480] = HiddenWyrmtongueCache
-- map.nodes[63305170] = HiddenWyrmtongueCache
-- map.nodes[63903080] = HiddenWyrmtongueCache
-- map.nodes[64201800] = HiddenWyrmtongueCache
-- map.nodes[64704540] = HiddenWyrmtongueCache
-- map.nodes[64704550] = HiddenWyrmtongueCache
-- map.nodes[67904210] = HiddenWyrmtongueCache
-- map.nodes[68401980] = HiddenWyrmtongueCache
-- map.nodes[69403800] = HiddenWyrmtongueCache
-- map.nodes[69503800] = HiddenWyrmtongueCache
-- map.nodes[70101900] = HiddenWyrmtongueCache
-- map.nodes[70703190] = HiddenWyrmtongueCache
-- map.nodes[71704150] = HiddenWyrmtongueCache
-- map.nodes[72004070] = HiddenWyrmtongueCache
-- map.nodes[72803830] = HiddenWyrmtongueCache
-- map.nodes[73703640] = HiddenWyrmtongueCache
-- map.nodes[73803650] = HiddenWyrmtongueCache
-- map.nodes[74702980] = HiddenWyrmtongueCache
-- map.nodes[75903600] = HiddenWyrmtongueCache
-- map.nodes[79003730] = HiddenWyrmtongueCache
-- map.nodes[82203130] = HiddenWyrmtongueCache
-- map.nodes[82404600] = HiddenWyrmtongueCache
-- map.nodes[82504600] = HiddenWyrmtongueCache
-- map.nodes[85405400] = HiddenWyrmtongueCache
-- map.nodes[85505410] = HiddenWyrmtongueCache
-- map.nodes[85802990] = HiddenWyrmtongueCache

-------------------------------------------------------------------------------
-------------------------- BRINGING HOME THE BEACON ---------------------------
-------------------------------------------------------------------------------

local Sentinax = Class('Sentinax', Collectible, {
    icon = 133267,
    requires = ns.requirement.Quest(46935), -- The Shadow of the Sentinax
    group = ns.groups.BRINGING_HOME_THE_BEACON,
    note = L['bringing_home_the_beacon_note']
})

-- areaPOI is in place for (possibly) altering The Sentinax tooltip on hover

map.nodes[43434092] = Sentinax({
    areaPOI = 5252,
    rewards = {Achievement({id = 11802, criteria = 36652})}
}) -- Shadow Fracture

map.nodes[50584415] = Sentinax({
    areaPOI = 5254,
    rewards = {Achievement({id = 11802, criteria = 36661})}
}) -- Soul Ruin

map.nodes[44384828] = Sentinax({
    areaPOI = 5255,
    rewards = {Achievement({id = 11802, criteria = 36662})}
}) -- Dark Stockade

map.nodes[53186450] = Sentinax({
    areaPOI = 5256,
    rewards = {Achievement({id = 11802, criteria = 36663})}
}) -- Coast of Anguish

map.nodes[57414520] = Sentinax({
    areaPOI = 5257,
    rewards = {Achievement({id = 11802, criteria = 36664})}
}) -- Garrison of the Fel

map.nodes[82514655] = Sentinax({
    areaPOI = 5258,
    rewards = {Achievement({id = 11802, criteria = 36665})}
}) -- Felfire Pass

map.nodes[80352715] = Sentinax({
    areaPOI = 5259,
    rewards = {Achievement({id = 11802, criteria = 36666})}
}) -- Felrage Strand

map.nodes[53091437] = Sentinax({
    areaPOI = 5260,
    rewards = {Achievement({id = 11802, criteria = 36667})}
}) -- Crescent Ruins

map.nodes[37382506] = Sentinax({
    areaPOI = 5261,
    rewards = {Achievement({id = 11802, criteria = 36668})}
}) -- The Creeping Grotto
