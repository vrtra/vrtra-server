-----------------------------------
-- Area: Throne Room [S]
-- Name: Fiat Lux
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}

entity.onTrigger = function(player,npc)
   
   player:startEvent(32003)
   return 0
end

return entity