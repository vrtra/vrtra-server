-- npcid 17416207
entity.onTrigger = function(player, npc)
    if player:getVar("vrtra_event") == 0 then
 	  player:PrintToPlayer(string.format("Lilisette: WHAT THE FUCK GET YOUR DIRTY GALKA HANDS OFF ME!!!"), 21)
	  player:PrintToPlayer(string.format("Lilisette: RAAAAAAAAAAAAPE!"), 21)
	  player:PrintToPlayer(string.format("Lilisette: #metoo"), 21)
	  player:setVar("vrtra_event",1)
	elseif player:getVar("vrtra_event") == 3 then
	  player:PrintToPlayer(string.format("Lilisette: Disgusting PIGS! I'm out of here! At least the cop was nice! :( "), 21)
	  player:setVar("vrtra_event",6)
	  npc:hideNPC(1800)
	end
end