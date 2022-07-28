-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local L = ns.locale
local Map = ns.Map

local Collectible = ns.node.Collectible
local Node = ns.node.Node
local PetBattle = ns.node.PetBattle
local Rare = ns.node.Rare

local Achievement = ns.reward.Achievement
local Mount = ns.reward.Mount

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

local map = Map({id = 525, settings = true})

-------------------------------------------------------------------------------
------------------------------------ RARES ------------------------------------
-------------------------------------------------------------------------------

local Gorok = Rare({
    id = 50992,
    note = L['multiple_spawn_note'],
    rewards = {
        Mount({item = 116674, id = 627}) -- Great Greytusk
    }
}) -- Gorok

map.nodes[63407940] = Gorok
map.nodes[22806640] = Gorok
map.nodes[64805300] = Gorok
map.nodes[51805060] = Gorok
map.nodes[58001840] = Gorok

map.nodes[13205060] = Rare({
    id = 81001,
    rewards = {
        Mount({item = 116794, id = 657}) -- Garn Nighthowl
    }
}) -- Nok-Karosh

-------------------------------------------------------------------------------
--------------------------------- BATTLE PETS ---------------------------------
-------------------------------------------------------------------------------

map.nodes[68606460] = PetBattle({
    id = 87122,
    rewards = {Achievement({id = 9724, criteria = 27013})}
}) -- Gargra

-------------------------------------------------------------------------------
----------------------------- WRITING IN THE SNOW -----------------------------
-------------------------------------------------------------------------------

local TatteredJournalPage = Collectible({
    id = 82833,
    icon = 133680,
    group = ns.groups.WRITING_IN_THE_SNOW,
    note = L['multiple_spawn_note'],
    rewards = {
        Achievement({id = 9531, faction = 'Horde'}), -- Writing in the Snow
        Achievement({id = 9530, faction = 'Alliance'}) -- Writing in the Snow
    }
})

map.nodes[40011102] = TatteredJournalPage
map.nodes[40041171] = TatteredJournalPage
map.nodes[44301471] = TatteredJournalPage
map.nodes[44841402] = TatteredJournalPage
map.nodes[44851401] = TatteredJournalPage
map.nodes[46011701] = TatteredJournalPage
map.nodes[46411589] = TatteredJournalPage
map.nodes[47891895] = TatteredJournalPage
map.nodes[48541459] = TatteredJournalPage

-------------------------------------------------------------------------------
------------------------------ BREAKER OF CHAINS ------------------------------
-------------------------------------------------------------------------------

local Slave = Class('Slave', Collectible, {
    scale = 1.1,
    group = ns.groups.BREAKER_OF_CHAINS,
    rewards = {
        Achievement({
            id = 9533,
            criteria = ({id = 1, qty = true, suffix = L['slaves_freed']}) -- Breaker of Chains
        })
    }
})

local FrozenSlave = Slave({label = L['frozen_slave_label'], icon = 'peg_bl'})

map.nodes[37801840] = FrozenSlave
map.nodes[37801860] = FrozenSlave
map.nodes[40001360] = FrozenSlave
map.nodes[40402120] = FrozenSlave
map.nodes[40801940] = FrozenSlave
map.nodes[40801960] = FrozenSlave
map.nodes[41002120] = FrozenSlave
map.nodes[43202020] = FrozenSlave
map.nodes[43402160] = FrozenSlave

local PrisonerCage = Slave({
    label = L['prisoner_cage_label'],
    icon = 'peg_yw',
    requires = ns.requirement.Quest(35637)
})

map.nodes[47361305] = PrisonerCage
map.nodes[50211534] = PrisonerCage
map.nodes[49861564] = PrisonerCage
map.nodes[38141875] = PrisonerCage
map.nodes[46211211] = PrisonerCage
map.nodes[44210905] = PrisonerCage
map.nodes[42720941] = PrisonerCage
map.nodes[41331249] = PrisonerCage
map.nodes[40901168] = PrisonerCage
map.nodes[39931658] = PrisonerCage
map.nodes[37491793] = PrisonerCage

-------------------------------------------------------------------------------
------------------------- DELECTABLE OGRE DELICACIES --------------------------
-------------------------------------------------------------------------------

local Delicacy = Collectible({
    label = L['delectable_ogre_delicacies_label'],
    note = L['delectable_ogre_delicacies_note'],
    icon = 'peg_gn',
    scale = 1.5,
    group = ns.groups.DELECTABLE_OGRE_DELICACIES,
    requires = ns.requirement.Quest(35637),
    rewards = {
        Achievement({id = 9534}) -- Delectable Ogre Delicacies
    }
})

map.nodes[44211505] = Delicacy
map.nodes[39521979] = Delicacy
map.nodes[48491561] = Delicacy
map.nodes[39931260] = Delicacy
map.nodes[41131370] = Delicacy
map.nodes[49771390] = Delicacy
map.nodes[45281156] = Delicacy
map.nodes[38231920] = Delicacy
map.nodes[37691664] = Delicacy

-------------------------------------------------------------------------------
---------------------------------- VOIDTALON ----------------------------------
-------------------------------------------------------------------------------

local Voidtalon = Node({
    icon = 1094600,
    label = L['edge_of_reality'],
    note = L['edge_of_reality_note'],
    rewards = {
        Mount({id = 682, item = 121815}) -- Voidtalon of the Dark Star
    }
})

map.nodes[51101986] = Voidtalon
map.nodes[52401818] = Voidtalon
map.nodes[53801732] = Voidtalon
map.nodes[48002740] = Voidtalon
