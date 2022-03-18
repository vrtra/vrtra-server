-- npcid 17416320 how to test a zone to show all menus for the bcnms
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require ("scripts/globals/msg")


entity.onTrigger = function(player,npc)

	local menuTest = 0xFFFFFFFF


	player:startEvent(32000, 0, 0, 0, menuTest, 0, 0, 0)
end

return entity