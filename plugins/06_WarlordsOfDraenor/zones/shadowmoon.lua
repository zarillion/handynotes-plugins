-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 539, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Pathrunner = Rare({
    id = 50883,
    note = L['multiple_spawn_note'],
    rewards = {
        Mount({item = 116773, id = 636}) -- Swift Breezestrider
    }
})

map.nodes[39603660] = Pathrunner
map.nodes[43003220] = Pathrunner
map.nodes[44604380] = Pathrunner
map.nodes[45806820] = Pathrunner
map.nodes[54003040] = Pathrunner
map.nodes[56205240] = Pathrunner

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[50003120] = PetBattle({
    id = 87124,
    rewards = {Achievement({id = 9724, criteria = 27012})}
}) -- Ashlei

-------------------------------------------------------------------------------
------------------------- YOU HAVE BEEN RYLAKINATED! --------------------------
-------------------------------------------------------------------------------

local DarkwingAdolescent = Collectible({
    id = 85357,
    icon = 'peg_rd',
    scale = 1.5,
    group = ns.groups.YOU_HAVE_BEEN_RYLAKINATED,
    rewards = {Achievement({id = 9481})}, -- You Have Been Rylakinated!
    requires = ns.requirement.Item(116978), -- Rylakinator 3000 Power Cell
    note = L['you_have_been_rylakinated_note']
})

map.nodes[64638909] = DarkwingAdolescent
map.nodes[63298531] = DarkwingAdolescent
map.nodes[61958302] = DarkwingAdolescent
map.nodes[61088329] = DarkwingAdolescent
map.nodes[60488325] = DarkwingAdolescent
map.nodes[60088444] = DarkwingAdolescent
map.nodes[59248497] = DarkwingAdolescent
map.nodes[58288479] = DarkwingAdolescent
map.nodes[57968605] = DarkwingAdolescent
map.nodes[57368697] = DarkwingAdolescent
map.nodes[57188886] = DarkwingAdolescent
map.nodes[56558895] = DarkwingAdolescent
map.nodes[56088993] = DarkwingAdolescent

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Collectible({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[41907567] = Voidtalon
map.nodes[43627138] = Voidtalon
map.nodes[48787017] = Voidtalon
map.nodes[50337153] = Voidtalon
map.nodes[51687490] = Voidtalon
map.nodes[46647018] = Voidtalon
