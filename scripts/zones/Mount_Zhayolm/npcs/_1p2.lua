-----------------------------------
-- Area: Mount Zhayolm
--  NPC: Gates of Halvung
-- !pos West Gate
-----------------------------------
local ID = require("scripts/zones/Mount_Zhayolm/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if player:hasKeyItem(xi.ki.CAST_METAL_PLATE) then
		player:messageSpecial(ID.text.OPEN_GATES, xi.ki.CAST_METAL_PLATE)
		npc:openDoor(15)
	else 
		player:messageSpecial(ID.text.GATES_OF_HALVUNG)
		player:setCharVar("HalvungWest", 1)
	end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity