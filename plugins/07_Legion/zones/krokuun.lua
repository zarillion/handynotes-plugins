-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Treasure = ns.node.Treasure
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Section = ns.reward.Section
local Toy = ns.reward.Toy

local POI = ns.poi.POI

-------------------------------------------------------------------------------

local map = Map({id = 830, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

map.nodes[33307620] = Rare({
    id = 122912,
    rewards = {Achievement({id = 12078, criteria = 37644})}
}) -- Commander Sathrenael

map.nodes[38305980] = Rare({
    id = 122911,
    rewards = {Achievement({id = 12078, criteria = 37643})}
}) -- Commander Vecaya

map.nodes[40704340] = Rare({
    id = 125824,
    rewards = {Achievement({id = 12078, criteria = 37646})},
    pois = {POI({50201710})}
}) -- Khazaduum

map.nodes[42406990] = Rare({
    id = 125820,
    rewards = {Achievement({id = 12078, criteria = 37650})}
}) -- Imp Mother Laglath

map.nodes[45305890] = Rare({
    id = 124775,
    rewards = {Achievement({id = 12078, criteria = 37642})}
}) -- Commander Endaxis

map.nodes[52803110] = Rare({
    id = 123464,
    rewards = {
        Achievement({id = 12078, criteria = 37641}), Toy({item = 153124}) -- Spire of Spite
    }
}) -- Sister Subversia

map.nodes[54708120] = Rare({
    id = 123689,
    rewards = {Achievement({id = 12078, criteria = 37655})}
}) -- Talestra the Vile

map.nodes[58407610] = Rare({
    id = 120393,
    rewards = {Achievement({id = 12078, criteria = 37659})}
}) -- Siegemaster Voraan

map.nodes[60901960] = Rare({
    id = 125388,
    rewards = {Achievement({id = 12078, criteria = 37652})}
}) -- Vagath the Betrayed

map.nodes[69405740] = Rare({
    id = 124804,
    rewards = {Achievement({id = 12078, criteria = 37653})},
    pois = {POI({69305940})}
}) -- Tereck the Selector

map.nodes[70108140] = Rare({
    id = 125479,
    rewards = {Achievement({id = 12078, criteria = 37651})}
}) -- Tar Spitter

map.nodes[70503370] = Rare({
    id = 126419,
    note = L['drops_fel_spotted_egg'],
    rewards = {
        Achievement({id = 12078, criteria = 37645}),
        Section(L['fel_spotted_egg_contains']),
        Mount({item = 152840, id = 976}), -- Scintillating Mana Ray
        Mount({item = 152841, id = 975}), -- Felglow Mana Ray
        Mount({item = 152842, id = 974}), -- Vibrant Mana Ray
        Mount({item = 152843, id = 906}), -- Darkspore Mana Ray
        Pet({item = 153054, id = 2118}), -- Docile Skyfin
        Pet({item = 153055, id = 2119}) -- Fel-Afflicted Skyfin
    }
}) -- Naroua

-------------------------------------------------------------------------------
---------------------------------- TREASURES ----------------------------------
-------------------------------------------------------------------------------

map.nodes[51307620] = Treasure({
    requires = ns.requirement.Quest(47994), -- Forming a Bond (Lightforged Warframe)
    note = L['lightforged_warframe_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37592})}
}) -- Krokul Emergency Cache

map.nodes[48505890] = Treasure({
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37594})}
}) -- Lost Krokul Chest

map.nodes[62803760] = Treasure({
    requires = ns.requirement.Quest(47287), -- The Vindicaar Matrix Core (Light's Judgement)
    note = L['lights_judgement_treasure_note'],
    rewards = {Achievement({id = 12074, criteria = 37593})}
}) -- Legion Tower Chest

map.nodes[55907410] = Treasure({
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {Achievement({id = 12074, criteria = 37959})}
}) -- Precious Augari Keepsakes

map.nodes[75106980] = Treasure({
    requires = ns.requirement.Quest(48107), -- The Sigil of Awakening (Shroud of Arcane Echoes)
    note = L['shroud_of_arcane_echoes_treasures_note'],
    rewards = {Achievement({id = 12074, criteria = 37958})}
}) -- Long-Lost Augari Treasure
