-----------------------------------
-- Area: Throne Room S
-- NPC:  Armoury Crate
-------------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/bcnm")

entity.onTrade = function(player,npc,trade)
end

entity.onTrigger = function(player,npc)
    player:getBCNMloot()
end

entity.onEventUpdate = function(player,csid,option)
end

-----------------------------------
-- onEventFinish Action
-----------------------------------

entity.onEventFinish = function(player,csid,option)
end
return entity