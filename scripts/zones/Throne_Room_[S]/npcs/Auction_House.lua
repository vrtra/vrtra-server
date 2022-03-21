-----------------------------------
--  Area: Throne Room [S]
--  NPC:  N/A (currently unused)
--  Type: Waste of space
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}


entity.onTrigger = function(player,npc)
     player:sendMenu(3)
end

return entity