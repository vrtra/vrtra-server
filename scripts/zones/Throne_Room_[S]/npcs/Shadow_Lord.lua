-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Shadow Lord
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/moghouse")


entity.onTrigger = function(player,npc)

    player:PrintToPlayer(string.format("Shadow Lord : %s, I am the Vrtra Moogle... Well, I ate a Moogle.. Now I guess I have to take over his duties..",player:getName()), 21)	
    player:sendMenu(1)

end

return entity
