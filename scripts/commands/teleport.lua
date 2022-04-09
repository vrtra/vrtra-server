---------------------------------------------------------------------------------------------------
-- func: teleport conflux
-- auth: wadski
-- desc: teleports a player to a destination
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ss"
};

function onTrigger(player, teleport)
    local menu =
    {
        title = "Vrtra Custom Teleports - Where to?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Vrtra Custom Zone",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Vrtra Custom Zone Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(88.1, -5.75, 0, 130, 156)
                end,
            },		
            {
                "Bastok",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Bastok Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(116, 0, -71, 127, 234)
                end,
            },
            {
                "Sandy",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Sandy Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(130, 0, -3, 160, 231)
                end,
            },
            {
                "Windy",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Windy Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(-257, -5, -118, 0, 239)
                end,
            },
            {
                "RuLude Gardens",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Ru'Lude Gardens Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(0, 3, 118, 65, 243)
                end,
            },
            {
                "Whitegate",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Whitegate Processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(0, 0, 14, 60, 50)
                end,
            },			
        },
        onCancelled = function(playerArg)
            playerArg:PrintToPlayer("Teleport Menu Cancelled", xi.msg.channel.NS_SAY)
        end,
        onEnd = function(playerArg)
          --  playerArg:PrintToPlayer("Welcome to the Vrtra Custom Zone", xi.msg.channel.NS_SAY)
        end,
    }
    player:customMenu(menu)
end

