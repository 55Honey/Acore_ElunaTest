--
-- Created by IntelliJ IDEA.
-- User: Silvia
-- Date: 29/10/2021
-- Time: 20:36
-- To change this template use File | Settings | File Templates.
-- Originally created by Honey for Azerothcore
-- requires ElunaLua module


-- Test Eluna hooks in Azerothcore
------------------------------------------------------------------------------------------------
-- ADMIN GUIDE:  -  compile the core with ElunaLua module
--               -  add this script to ../lua_scripts/
------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------
-- PLAYEREVENTS
------------------------------------------------------------------------------------------------

PLAYER_EVENT_ON_CHARACTER_CREATE = 1        --(event, player)
PLAYER_EVENT_ON_CHARACTER_DELETE = 2        --(event, guid)
PLAYER_EVENT_ON_LOGIN = 3                   --(event, player)
PLAYER_EVENT_ON_LOGOUT = 4                  --(event, player)
PLAYER_EVENT_ON_SPELL_CAST = 5              --(event, player, spell, skipCheck)
PLAYER_EVENT_ON_KILL_PLAYER = 6             --(event, killer, killed)
PLAYER_EVENT_ON_KILL_CREATURE = 7           --(event, killer, killed)
PLAYER_EVENT_ON_KILLED_BY_CREATURE = 8      --(event, killer, killed)
PLAYER_EVENT_ON_DUEL_REQUEST = 9            --(event, target, challenger)
PLAYER_EVENT_ON_DUEL_START = 10             --(event, player1, player2)
PLAYER_EVENT_ON_DUEL_END = 11               --(event, winner, loser, type)
PLAYER_EVENT_ON_GIVE_XP = 12                --(event, player, amount, victim) - Can return new XP amount
PLAYER_EVENT_ON_LEVEL_CHANGE = 13           --(event, player, oldLevel)
PLAYER_EVENT_ON_MONEY_CHANGE = 14           --(event, player, amount) - Can return new money amount
PLAYER_EVENT_ON_REPUTATION_CHANGE = 15      --(event, player, factionId, standing, incremental) - Can return new standing
PLAYER_EVENT_ON_TALENTS_CHANGE = 16         --(event, player, points)
PLAYER_EVENT_ON_TALENTS_RESET = 17          --(event, player, noCost)
PLAYER_EVENT_ON_CHAT = 18                   --(event, player, msg, Type, lang) - Can return false, newMessage
PLAYER_EVENT_ON_WHISPER = 19                --(event, player, msg, Type, lang, receiver) - Can return false, newMessage
PLAYER_EVENT_ON_GROUP_CHAT = 20             --(event, player, msg, Type, lang, group) - Can return false, newMessage
PLAYER_EVENT_ON_GUILD_CHAT = 21             --(event, player, msg, Type, lang, guild) - Can return false, newMessage
PLAYER_EVENT_ON_CHANNEL_CHAT = 22           --(event, player, msg, Type, lang, channel) - Can return false, newMessage
PLAYER_EVENT_ON_EMOTE = 23                  --(event, player, emote) - Not triggered on any known emote
PLAYER_EVENT_ON_TEXT_EMOTE = 24             --(event, player, textEmote, emoteNum, guid)
PLAYER_EVENT_ON_SAVE = 25                   --(event, player)
PLAYER_EVENT_ON_BIND_TO_INSTANCE = 26       --(event, player, difficulty, mapid, permanent)
PLAYER_EVENT_ON_UPDATE_ZONE = 27            --(event, player, newZone, newArea)
PLAYER_EVENT_ON_MAP_CHANGE = 28             --(event, player)
-- Custom
PLAYER_EVENT_ON_EQUIP = 29                  --(event, player, item, bag, slot)
PLAYER_EVENT_ON_FIRST_LOGIN = 30            --(event, player)
PLAYER_EVENT_ON_CAN_USE_ITEM = 31           --(event, player, itemEntry) - Can return InventoryResult enum value
PLAYER_EVENT_ON_LOOT_ITEM = 32              --(event, player, item, count)
PLAYER_EVENT_ON_ENTER_COMBAT = 33           --(event, player, enemy)
PLAYER_EVENT_ON_LEAVE_COMBAT = 34           --(event, player)
PLAYER_EVENT_ON_REPOP = 35                  --(event, player)
PLAYER_EVENT_ON_RESURRECT = 36              --(event, player)
PLAYER_EVENT_ON_LOOT_MONEY = 37             --(event, player, amount)
PLAYER_EVENT_ON_QUEST_ABANDON = 38          --(event, player, questId)
PLAYER_EVENT_ON_LEARN_TALENTS = 39          --(event, player, talentId, talentRank, spellid)
-- UNUSED                     = 40          --(event, player)
-- UNUSED                     = 41          --(event, player)
PLAYER_EVENT_ON_COMMAND = 42                --(event, player, command) - player is nil if command used from console. Can return false
PLAYER_EVENT_ON_PET_SPAWNED = 43            --(event, player, pet)


local playerFunctionTested = {}
local status_EVENT = {}
local n

--init all functions untested
for n = 1,43,1 do
    playerFunctionTested[n] = 0
    status_EVENT[n] = nil
end
--hardcoded marking as done what doesn't exist
playerFunctionTested[40] = 1
playerFunctionTested[41] = 1


local function function_PLAYER_EVENT_ON_CHARACTER_CREATE(event, player)
    playerFunctionTested[1] = 1
    print('PLAYER_EVENT_ON_CHARACTER_CREATE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_CHARACTER_DELETE(event, guid)
    playerFunctionTested[2] = 1
    print('PLAYER_EVENT_ON_CHARACTER_DELETE has fired:')
    print('event: '..event..'  playername: '..guid())
end

local function function_PLAYER_EVENT_ON_LOGIN(event, player)
    playerFunctionTested[3] = 1
    print('PLAYER_EVENT_ON_LOGIN has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_LOGOUT(event, player)
    playerFunctionTested[4] = 1
    print('PLAYER_EVENT_ON_LOGOUT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_SPELL_CAST(event, player, spell, skipCheck)
    playerFunctionTested[5] = 1
    print('PLAYER_EVENT_ON_SPELL_CAST has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_KILL_PLAYER(event, killer, killed)
    playerFunctionTested[6] = 1
    print('PLAYER_EVENT_ON_KILL_PLAYER has fired:')
    print('event: '..event..'  killer: '..killer:GetName()..'  killed: '..killed:GetName())
end

local function function_PLAYER_EVENT_ON_KILL_CREATURE(event, killer, killed)
    playerFunctionTested[7] = 1
    print('PLAYER_EVENT_ON_KILL_CREATURE has fired:')
    print('event: '..event..'  killer: '..killer:GetName()..'  killed: '..killed:GetName())
end

local function function_PLAYER_EVENT_ON_KILLED_BY_CREATURE(event, killer, killed)
    playerFunctionTested[8] = 1
    print('PLAYER_EVENT_ON_KILLED_BY_CREATURE has fired:')
    print('event: '..event..'  killer: '..killer:GetName()..'  killed: '..killed:GetName())
end

local function function_PLAYER_EVENT_ON_DUEL_REQUEST(event, target, challenger)
    playerFunctionTested[9] = 1
    print('PLAYER_EVENT_ON_DUEL_REQUEST has fired:')
    print('event: '..event..'  target: '..target:GetName()..'  challenger: '..challenegr:GetName())
end

local function function_PLAYER_EVENT_ON_DUEL_START(event, player1, player2)
    playerFunctionTested[10] = 1
    print('PLAYER_EVENT_ON_DUEL_START has fired:')
    print('event: '..event..'  player1: '..player1:GetName()..'  player2: '..player2:GetName())
end

local function function_PLAYER_EVENT_ON_DUEL_END(event, winner, loser, type)
    playerFunctionTested[11] = 1
    print('PLAYER_EVENT_ON_DUEL_END has fired:')
    print('event: '..event..'  winnder: '..winner:GetName()..'  loser: '..loser:GetName()..'  type: '..type)
end

local function function_PLAYER_EVENT_ON_GIVE_XP(event, player, amount, victim) -- Can return new XP amount
    playerFunctionTested[12] = 1
    print('PLAYER_EVENT_ON_GIVE_XP has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    print('amount: '..amount..'  killed: '..victim:GetName())
    print('Overriding xp amount to 123')
    return 123
end

local function function_PLAYER_EVENT_ON_LEVEL_CHANGE(event, player, oldLevel)
    playerFunctionTested[13] = 1
    print('PLAYER_EVENT_ON_LEVEL_CHANGE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    print('oldLevel: '..oldLevel)
end

local function function_PLAYER_EVENT_ON_MONEY_CHANGE(event, player, amount) -- Can return new money amount
    playerFunctionTested[14] = 1
    print('PLAYER_EVENT_ON_MONEY_CHANGE has fired:')
    print('event: '..event..'  playername: '..player:GetName()..'  amount: '..amount)
    print('Overriding money amount to 1g23s45c')
    return 12345
end

local function function_PLAYER_EVENT_ON_REPUTATION_CHANGE(event, player, factionId, standing, incremental) -- Can return new standing
    playerFunctionTested[15] = 1
    print('PLAYER_EVENT_ON_REPUTATION_CHANGE has fired:')
    print('event: '..event..'  playername: '..player:GetName()..'  factionId: '..factionId..'  standing: '..standing..'  incremental: '..incremental)
    print('Overriding standing to 50')
    return 50
end

local function function_PLAYER_EVENT_ON_TALENTS_CHANGE(event, player, points)
    playerFunctionTested[16] = 1
    print('PLAYER_EVENT_ON_TALENTS_CHANGE has fired:')
    print('event: '..event..'  playername: '..player:GetName()..'  points: '..points)
end

local function function_PLAYER_EVENT_ON_TALENTS_RESET(event, player, noCost)
    playerFunctionTested[17] = 1
    print('PLAYER_EVENT_ON_TALENTS_RESET has fired:')
    print('event: '..event..'  playername: '..player:GetName()..'  noCost: '..noCost)
end

local function function_PLAYER_EVENT_ON_CHAT(event, player, msg, Type, lang) -- Can return false, newMessage
    print('PLAYER_EVENT_ON_CHAT has fired:')
    print('event: '..event..'  playername: '..player:GetName()..'  msg: '..msg..'  Type: '..Type..'  lang: '..lang)
    if status_EVENT[18] == nil then
        status_EVENT[18] = 1
        print('1st test: return false')
        return false
    else
        if status_EVENT[18] == 1 then
            status_EVENT[18] = status_EVENT[18] + 1
            print('1st test: return false')
            return false
        elseif status_EVENT[18] == 2 then
            status_EVENT[18] = status_EVENT[18] + 1
            playerFunctionTested[18] = 1
            print('2nd test: return "Testmessage"')
            return 'Testmessage'
        end
    end
end

local function function_PLAYER_EVENT_ON_WHISPER(event, player, msg, Type, lang, receiver) -- Can return false, newMessage
    print('PLAYER_EVENT_ON_WHISPER has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    if status_EVENT[19] == nil then
        status_EVENT[19] = 1
        print('1st test: return false')
        return false
    else
        if status_EVENT[19] == 1 then
            status_EVENT[19] = status_EVENT[19] + 1
            print('1st test: return false')
            return false
        elseif status_EVENT[19] == 2 then
            status_EVENT[19] = status_EVENT[19] + 1
            playerFunctionTested[19] = 1
            print('2nd test: return "Testmessage"')
            return 'Testmessage'
        end
    end
end

local function function_PLAYER_EVENT_ON_GROUP_CHAT(event, player, msg, Type, lang, group) -- Can return false, newMessage
    print('PLAYER_EVENT_ON_GROUP_CHAT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    if status_EVENT[20] == nil then
        status_EVENT[20] = 1
        print('1st test: return false')
        return false
    else
        if status_EVENT[20] == 1 then
            status_EVENT[20] = status_EVENT[20] + 1
            print('1st test: return false')
            return false
        elseif status_EVENT[20] == 2 then
            status_EVENT[20] = status_EVENT[20] + 1
            playerFunctionTested[20] = 1
            print('2nd test: return "Testmessage"')
            return 'Testmessage'
        end
    end
end

local function function_PLAYER_EVENT_ON_GUILD_CHAT(event, player, msg, Type, lang, guild) -- Can return false, newMessage
    print('PLAYER_EVENT_ON_GUILD_CHAT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    if status_EVENT[21] == nil then
        status_EVENT[21] = 1
        print('1st test: return false')
        return false
    else
        if status_EVENT[21] == 1 then
            status_EVENT[21] = status_EVENT[21] + 1
            print('1st test: return false')
            return false
        elseif status_EVENT[21] == 2 then
            status_EVENT[21] = status_EVENT[21] + 1
            playerFunctionTested[21] = 1
            print('2nd test: return "Testmessage"')
            return 'Testmessage'
        end
    end
end

local function function_PLAYER_EVENT_ON_CHANNEL_CHAT(event, player, msg, Type, lang, channel) -- Can return false, newMessage
    print('PLAYER_EVENT_ON_CHANNEL_CHAT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    if status_EVENT[22] == nil then
        status_EVENT[22] = 1
        print('1st test: return false')
        return false
    else
        if status_EVENT[22] == 1 then
            status_EVENT[22] = status_EVENT[22] + 1
            print('1st test: return false')
            return false
        elseif status_EVENT[22] == 2 then
            status_EVENT[22] = status_EVENT[22] + 1
            playerFunctionTested[22] = 1
            print('2nd test: return "Testmessage"')
            return 'Testmessage'
        end
    end
end

local function function_PLAYER_EVENT_ON_EMOTE(event, player, emote) -- Not triggered on any known emote
    playerFunctionTested[23] = 1
    print('PLAYER_EVENT_ON_EMOTE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_TEXT_EMOTE(event, player, textEmote, emoteNum, guid)
    playerFunctionTested[24] = 1
    print('PLAYER_EVENT_ON_TEXT_EMOTE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_SAVE(event, player)
    playerFunctionTested[25] = 1
    print('PLAYER_EVENT_ON_SAVE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_BIND_TO_INSTANCE(event, player, difficulty, mapid, permanent)
    playerFunctionTested[26] = 1
    print('PLAYER_EVENT_ON_BIND_TO_INSTANCE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_UPDATE_ZONE(event, player, newZone, newArea)
    playerFunctionTested[27] = 1
    print('PLAYER_EVENT_ON_UPDATE_ZONE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_MAP_CHANGE(event, player)
    playerFunctionTested[28] = 1
    print('PLAYER_EVENT_ON_MAP_CHANGE has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_EQUIP(event, player, item, bag, slot)
    playerFunctionTested[29] = 1
    print('PLAYER_EVENT_ON_EQUIP has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_FIRST_LOGIN(event, player)
    playerFunctionTested[30] = 1
    print('PLAYER_EVENT_ON_FIRST_LOGIN has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_CAN_USE_ITEM(event, player, itemEntry) -- Can return InventoryResult enum value
    playerFunctionTested[31] = 1
    print('PLAYER_EVENT_ON_CAN_USE_ITEM has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_LOOT_ITEM(event, player, item, count)
    playerFunctionTested[32] = 1
    print('PLAYER_EVENT_ON_LOOT_ITEM has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_ENTER_COMBAT(event, player, enemy)
    playerFunctionTested[33] = 1
    print('PLAYER_EVENT_ON_ENTER_COMBAT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_LEAVE_COMBAT(event, player)
    playerFunctionTested[34] = 1
    print('PLAYER_EVENT_ON_LEAVE_COMBAT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_REPOP(event, player)
    print('PLAYER_EVENT_ON_REPOP has fired:')
    print('event: '..event..'  playername: '..player:GetName())
    playerFunctionTested[35] = 1
end

local function function_PLAYER_EVENT_ON_RESURRECT(event, player)
    playerFunctionTested[36] = 1
    print('PLAYER_EVENT_ON_RESURRECT has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_LOOT_MONEY(event, player, amount)
    playerFunctionTested[37] = 1
    print('PLAYER_EVENT_ON_LOOT_MONEY has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_QUEST_ABANDON(event, player, questId)
    playerFunctionTested[38] = 1
    print('PLAYER_EVENT_ON_QUEST_ABANDON has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_LEARN_TALENTS(event, player, talentId, talentRank, spellid)
    playerFunctionTested[39] = 1
    print('PLAYER_EVENT_ON_LEARN_TALENTS has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end

local function function_PLAYER_EVENT_ON_COMMAND(event, player, command) -- player is nil if command used from console. Can return false
    print('PLAYER_EVENT_ON_COMMAND has fired:')
    if player == nil then
        print('event: '..event..'  playername: Console')
    else
        print('event: '..event..'  playername: '..player:GetName())
    end
    print('command: '..command)
    if command == "resetluatest" then
        for n = 1,43,1 do
            playerFunctionTested[n] = 0
            status_EVENT[n] = nil
        end

        --hardcoded marking as done what doesn't exist
        playerFunctionTested[40] = 1
        playerFunctionTested[41] = 1
        playerFunctionTested[42] = 1
        return false

    elseif command == "playertest" then
        local todoString = ''
        for n = 1,43,1 do
            if playerFunctionTested[n] == 0 then
                if todoString == '' then
                    todoString = 'Remaining player events: '..n
                else
                    todoString = todoString..', '..n
                end
            end
        end

        if player == nil then
            print(todoString)
        else
            player:SendBroadcastMessage(todoString)
        end
        playerFunctionTested[42] = 1
        return false
    end

    playerFunctionTested[42] = 1
end

local function function_PLAYER_EVENT_ON_PET_SPAWNED(event, player, pet)
    playerFunctionTested[43] = 1
    print('PLAYER_EVENT_ON_PET_SPAWNED has fired:')
    print('event: '..event..'  playername: '..player:GetName())
end


RegisterPlayerEvent(PLAYER_EVENT_ON_CHARACTER_CREATE, function_PLAYER_EVENT_ON_CHARACTER_CREATE)
RegisterPlayerEvent(PLAYER_EVENT_ON_CHARACTER_DELETE, function_PLAYER_EVENT_ON_CHARACTER_DELETE)
RegisterPlayerEvent(PLAYER_EVENT_ON_LOGIN, function_PLAYER_EVENT_ON_LOGIN)
RegisterPlayerEvent(PLAYER_EVENT_ON_LOGOUT, function_PLAYER_EVENT_ON_LOGOUT)
RegisterPlayerEvent(PLAYER_EVENT_ON_SPELL_CAST, function_PLAYER_EVENT_ON_SPELL_CAST)
RegisterPlayerEvent(PLAYER_EVENT_ON_KILL_PLAYER, function_PLAYER_EVENT_ON_KILL_PLAYER)
RegisterPlayerEvent(PLAYER_EVENT_ON_KILL_CREATURE, function_PLAYER_EVENT_ON_KILL_CREATURE)
RegisterPlayerEvent(PLAYER_EVENT_ON_KILLED_BY_CREATURE, function_PLAYER_EVENT_ON_KILLED_BY_CREATURE)
RegisterPlayerEvent(PLAYER_EVENT_ON_DUEL_REQUEST, function_PLAYER_EVENT_ON_DUEL_REQUEST)
RegisterPlayerEvent(PLAYER_EVENT_ON_DUEL_START, function_PLAYER_EVENT_ON_DUEL_START)
RegisterPlayerEvent(PLAYER_EVENT_ON_DUEL_END, function_PLAYER_EVENT_ON_DUEL_END)
RegisterPlayerEvent(PLAYER_EVENT_ON_GIVE_XP, function_PLAYER_EVENT_ON_GIVE_XP)
RegisterPlayerEvent(PLAYER_EVENT_ON_LEVEL_CHANGE, function_PLAYER_EVENT_ON_LEVEL_CHANGE)
RegisterPlayerEvent(PLAYER_EVENT_ON_MONEY_CHANGE, function_PLAYER_EVENT_ON_MONEY_CHANGE)
RegisterPlayerEvent(PLAYER_EVENT_ON_REPUTATION_CHANGE, function_PLAYER_EVENT_ON_REPUTATION_CHANGE)
RegisterPlayerEvent(PLAYER_EVENT_ON_TALENTS_CHANGE, function_PLAYER_EVENT_ON_TALENTS_CHANGE)
RegisterPlayerEvent(PLAYER_EVENT_ON_TALENTS_RESET, function_PLAYER_EVENT_ON_TALENTS_RESET)
RegisterPlayerEvent(PLAYER_EVENT_ON_CHAT, function_PLAYER_EVENT_ON_CHAT)
RegisterPlayerEvent(PLAYER_EVENT_ON_WHISPER, function_PLAYER_EVENT_ON_WHISPER)
RegisterPlayerEvent(PLAYER_EVENT_ON_GROUP_CHAT, function_PLAYER_EVENT_ON_GROUP_CHAT)
RegisterPlayerEvent(PLAYER_EVENT_ON_GUILD_CHAT, function_PLAYER_EVENT_ON_GUILD_CHAT)
RegisterPlayerEvent(PLAYER_EVENT_ON_CHANNEL_CHAT, function_PLAYER_EVENT_ON_CHANNEL_CHAT)
RegisterPlayerEvent(PLAYER_EVENT_ON_EMOTE, function_PLAYER_EVENT_ON_EMOTE)
RegisterPlayerEvent(PLAYER_EVENT_ON_TEXT_EMOTE, function_PLAYER_EVENT_ON_TEXT_EMOTE)
RegisterPlayerEvent(PLAYER_EVENT_ON_SAVE, function_PLAYER_EVENT_ON_SAVE)
RegisterPlayerEvent(PLAYER_EVENT_ON_BIND_TO_INSTANCE, function_PLAYER_EVENT_ON_BIND_TO_INSTANCE)
RegisterPlayerEvent(PLAYER_EVENT_ON_UPDATE_ZONE, function_PLAYER_EVENT_ON_UPDATE_ZONE)
RegisterPlayerEvent(PLAYER_EVENT_ON_MAP_CHANGE, function_PLAYER_EVENT_ON_MAP_CHANGE)
RegisterPlayerEvent(PLAYER_EVENT_ON_EQUIP, function_PLAYER_EVENT_ON_EQUIP)
RegisterPlayerEvent(PLAYER_EVENT_ON_FIRST_LOGIN, function_PLAYER_EVENT_ON_FIRST_LOGIN)
RegisterPlayerEvent(PLAYER_EVENT_ON_CAN_USE_ITEM, function_PLAYER_EVENT_ON_CAN_USE_ITEM)
RegisterPlayerEvent(PLAYER_EVENT_ON_LOOT_ITEM, function_PLAYER_EVENT_ON_LOOT_ITEM)
RegisterPlayerEvent(PLAYER_EVENT_ON_ENTER_COMBAT, function_PLAYER_EVENT_ON_ENTER_COMBAT)
RegisterPlayerEvent(PLAYER_EVENT_ON_LEAVE_COMBAT, function_PLAYER_EVENT_ON_LEAVE_COMBAT)
RegisterPlayerEvent(PLAYER_EVENT_ON_REPOP, function_PLAYER_EVENT_ON_REPOP)
RegisterPlayerEvent(PLAYER_EVENT_ON_RESURRECT, function_PLAYER_EVENT_ON_RESURRECT)
RegisterPlayerEvent(PLAYER_EVENT_ON_LOOT_MONEY, function_PLAYER_EVENT_ON_LOOT_MONEY)
RegisterPlayerEvent(PLAYER_EVENT_ON_QUEST_ABANDON, function_PLAYER_EVENT_ON_QUEST_ABANDON)
RegisterPlayerEvent(PLAYER_EVENT_ON_LEARN_TALENTS, function_PLAYER_EVENT_ON_LEARN_TALENTS)
RegisterPlayerEvent(PLAYER_EVENT_ON_COMMAND, function_PLAYER_EVENT_ON_COMMAND)
RegisterPlayerEvent(PLAYER_EVENT_ON_PET_SPAWNED, function_PLAYER_EVENT_ON_PET_SPAWNED)


------------------------------------------------------------------------------------------------
-- CREATURE GOSSIP EVENTS
------------------------------------------------------------------------------------------------

local GOSSIP_EVENT_ON_HELLO = 1
local GOSSIP_EVENT_ON_SELECT = 2
local OPTION_ICON_CHAT = 0

local function GossipTestHello(event, player, object)
    print('GOSSIP_EVENT_ON_HELLO fired')
    print('event: '..event..'  playername: '..player:GetName())
    player:GossipMenuAddItem(OPTION_ICON_CHAT, "Test", 1199000, 0)
    player:GossipSendMenu(1, object, 0)
end

local function GossipTestSelect(event, player, object, sender, intid, code, menu_id)
    print('GOSSIP_EVENT_ON_SELECT fired')
    print('event: '..event..'  playername: '..player:GetName()..'   intid: '..intid)
end


RegisterCreatureGossipEvent(1199000, GOSSIP_EVENT_ON_SELECT, GossipTestSelect)
RegisterCreatureGossipEvent(1199000, GOSSIP_EVENT_ON_HELLO, GossipTestHello)


------------------------------------------------------------------------------------------------
-- CREATURE EVENTS
------------------------------------------------------------------------------------------------

local function CreatureOnEnterCombat(event, creature, target)
    print('CreatureOnEnterCombat fired (1)')
    print('event: '..event..'  creature: '..creature:GetName())
end

local function CreatureOnLeaveCombat(event, creature)
    print('CreatureOnLeaveCombat fired (2)')
    print('event: '..event..'  creature: '..creature:GetName())
end

local function CreatureOnDied(event, creature)
    print('CreatureOnDied fired (4)')
    print('event: '..event..'  creature: '..creature:GetName())
end

RegisterCreatureEvent(299, 1, CreatureOnEnterCombat)
RegisterCreatureEvent(299, 2, CreatureOnLeaveCombat)
RegisterCreatureEvent(299, 4, CreatureOnDied)
