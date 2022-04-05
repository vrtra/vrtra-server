-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Centro
--  Type: The eternally AFK one
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}


entity.onTrigger = function(player)
      
    local menu =
    {
        title = "My name is Centro, The AFK King. Am I AFK?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Yes",
                function(playerArg)
                    playerArg:PrintToPlayer("Of course I am AFK, now slap me!", xi.msg.channel.NS_SAY)
                   
                end,
            },
            {
                "No",
                function(playerArg)
                    playerArg:PrintToPlayer("I AM ALWAYS AFK!", xi.msg.channel.NS_SAY)
                    playerArg:setHP(0)
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

return entity