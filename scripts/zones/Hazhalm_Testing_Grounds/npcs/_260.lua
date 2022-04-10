-----------------------------------
-- Area: Hazhalm Testing Grounds
--  NPC: Entry Gate (TOAU-36)
-----------------------------------
require("scripts/globals/status")
local entity = {}


entity.onTrigger = function(player, npc, npcid)
    local menu =
    {
        title = "Choose your Battlefield",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Odin",
                function(playerArg)
                    if GetMobByID(17097716):isEngaged() == false and
					   playerArg:getMainLvl() > 79 and 
					   playerArg:getCharVar("Odin_Ready") == 1 and 
					   playerArg:getCurrentMission(TOAU) == xi.mission.id.toau.ETERNAL_MERCENARY then
                       playerArg:setPos(419.768, -215.244, 20.258, 145.000)
	                else
	                   player:PrintToPlayer(string.format("Odin is spawned or You don't meet the requirements to enter. Wait for him to despawn or die before you enter!"), 21)
	                end
                   
                end,
            },
            {
                "Alexander",
                function(playerArg)
                    playerArg:PrintToPlayer("Not Implemented", xi.msg.channel.NS_SAY)
                end,
            },
            {
                "Nothing",
                function(playerArg)
                    playerArg:PrintToPlayer("Maybe next time?", xi.msg.channel.NS_SAY)
                    
                end,
            },

        },
        onCancelled = function(playerArg)
          --  playerArg:PrintToPlayer("Teleport Menu Cancelled", xi.msg.channel.NS_SAY)
        end,
        onEnd = function(playerArg)
            -- NOTE: This could be used to release a locked player,
          --  playerArg:PrintToPlayer("Welcome to the Vrtra Custom Zone", xi.msg.channel.NS_SAY)
        end,
    }

    player:customMenu(menu)
end

return entity
