-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Centro
--  Type: The eternally AFK one
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}


entity.onTrigger = function(player,npc)
    
	player:PrintToPlayer(string.format("Centro : AFK"), 21)
	
end

return entity