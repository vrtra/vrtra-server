---------------------------------------------------------------------------------------------------
-- func:  !vrtra
-- auth: <Unknown> :: Modded by Wadski
-- desc: Sets the players position to specific location vrtra zone.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
      
    local menu =
    {
        title = "Teleport to the Vrtra Custom Zone?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Yes",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Vrtra Custom Zone Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(88.1, -5.75, 0, 130, 156)
                end,
            },
            {
                "No",
                function(playerArg)
                    playerArg:PrintToPlayer("Maybe another time!", xi.msg.channel.NS_SAY)
                    playerArg:independentAnimation(playerArg, 251, 4) -- Hearts
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

