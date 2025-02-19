--  Area: Throne Room [S]
--  NPC:  Veridical Conflux
--  Type: Teleportation
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")

local entity = {}

entity.onTrigger = function(player, npc)
    local menu =
    {
        title = "Vrtra Conflux - Where to?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
            {
                "Bastok",
                function(playerArg)
                    playerArg:setPos(116, 0, -71, 127, 234)
                end,
            },
            {
                "Sandy",
                function(playerArg)
                    playerArg:setPos(130, 0, -3, 160, 231)
                end,
            },
            {
                "Windy",
                function(playerArg)
                    playerArg:setPos(-257, -5, -118, 0, 239)
                end,
            },
            {
                "RuLude Gardens",
                function(playerArg)
                    playerArg:setPos(0, 3, 118, 65, 243)
                end,
            },
            {
                "Whitegate",
                function(playerArg)
                    playerArg:setPos(0, 0, 14, 60, 50)
                end,
            },	
            {
                "Escha",
                function(playerArg)
                    playerArg:setPos(-345, 1, -178, 0, 288)
                end,
            },					
        },
        onCancelled = function(playerArg)
            playerArg:PrintToPlayer("Teleport Menu Cancelled", xi.msg.channel.NS_SAY)
        end,
        onEnd = function(playerArg)
            -- NOTE: This could be used to release a locked player,
            playerArg:PrintToPlayer("Have a safe trip!", xi.msg.channel.NS_SAY)
        end,
    }
    player:customMenu(menu)
end

return entity