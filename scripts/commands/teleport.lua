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
                "My Home Point",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to your Home Point processing", xi.msg.channel.NS_SAY)
                    playerArg:warp()
                end,
            },	
            {
                "Vrtra Custom zone",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Vrtra Custom zone processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(88.1, -5.75, 0, 130, 156)
                end,
            },		
            {
                "Bastok Mines",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Bastok Mines processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(116, 0, -71, 127, 234)
                end,
            },
            {
                "Northern San d'Oria",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Northern San d'Oria processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(130, 0, -3, 160, 231)
                end,
            },
            {
                "Port Windurst",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Port Windurst processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(-257, -5, -118, 0, 239)
                end,
            },
            {
                "Ru'Lude Gardens",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Ru'Lude Gardens processing", xi.msg.channel.NS_SAY)
                    playerArg:setPos(0, 3, 118, 65, 243)
                end,
            },
            {
                "Whitegate",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to Aht Urhgan Whitegate processing", xi.msg.channel.NS_SAY)
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

