-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Veridical Conflux
--  Type: Teleportation
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}

entity.onTrigger = function(player, teleport)

      player:PrintToPlayer(string.format("Veridical Conflux : ....Please Wait....."), 21)
      player:PrintToPlayer(string.format("   ....."), 21)
      player:PrintToPlayer(string.format("   ....Processing......"), 21)
      player:PrintToPlayer(string.format("   ...."), 21)
      player:PrintToPlayer(string.format("   ..Hello!.. I can.. take.. you.. to... your.. home.... nation!.."), 21)
      player:PrintToPlayer(string.format("   ........or another destination!"), 21)
      player:PrintToPlayer(string.format("While standing next to the conflux type one of the following commands to teleport"), 21)
      player:PrintToPlayer(string.format("!teleport bastok, !teleport sandy, !teleport windy, !teleport rulude, !teleport ghelsba or !teleport bcnm"), 21)

end
return entity