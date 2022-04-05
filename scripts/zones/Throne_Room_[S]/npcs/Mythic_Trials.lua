-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Mythic upgrade
--  Type: Quest
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require ("scripts/globals/vrtraMythicTrials")
require("scripts/settings/main")
local entity = {}


entity.onTrigger = function(player)
      
    local menu =
    {
        title = "Would you like to begin the Mythic Trials?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Yes",
                function(playerArg)
                    mythicTrialsTrigger(player,npc) 
                   
                end,
            },
            {
                "No",
                function(playerArg)
                    playerArg:PrintToPlayer("Fine, Maybe some other time.", xi.msg.channel.NS_SAY)
                end,
            },
            {
                "Show me what I've completed",
                function(playerArg)
                   mythicText(player, varType, varName)	
                end,
            },

        },
        onCancelled = function(playerArg)
            playerArg:PrintToPlayer("Teleport Menu Cancelled", xi.msg.channel.NS_SAY)
        end,
        onEnd = function(playerArg)
            -- NOTE: This could be used to release a locked player,
          --  playerArg:PrintToPlayer("Welcome to the Vrtra Custom Zone", xi.msg.channel.NS_SAY)
        end,
    }

    player:customMenu(menu)
end

entity.onTrade = function(player, npc, trade)
      
    local menu =
    {
        title = "Would you like to upgrade your weapon?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Yes",
                function(playerArg)
                    mythicTrialsTrade(player, npc, trade)
                   
                end,
            },
            {
                "No",
                function(playerArg)
                    playerArg:PrintToPlayer("Fine, Maybe some other time.", xi.msg.channel.NS_SAY)
                end,
            },
            {
                "Show me what I've completed",
                function(playerArg)
                   mythicText(player, varType, varName)	
				end,
            },

        },
        onCancelled = function(playerArg)
         --   playerArg:PrintToPlayer("Teleport Menu Cancelled", xi.msg.channel.NS_SAY)
        end,
        onEnd = function(playerArg)
            -- NOTE: This could be used to release a locked player,
          --  playerArg:PrintToPlayer("Welcome to the Vrtra Custom Zone", xi.msg.channel.NS_SAY)
        end,
    }

    player:customMenu(menu)
end


return entity