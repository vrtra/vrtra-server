-----------------------------------
-- Area: Throne Room [S]
-- Name: Ore Door
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}

entity.onTrigger = function(player, npc)
      --player:setPos('5.6', '0', '0.5', '130', '246') -- Port Jeuno
	  --player:PrintToPlayer(string.format("Vrtra: Remember... If you see me outside of here.. I'm not so nice.."), 21)
	-- COMMAND IS NOT CONFIRMED
	npc:openDoor(7)
end
return entity