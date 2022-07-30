-- npc id 17416206
entity.onTrigger = function(player, npc)
    if player:getVar("vrtra_event") == 2 then
   	  player:PrintToPlayer(string.format("P.C. Haudrale: REEROOREEROOREEROO!!"), 21)
	  player:PrintToPlayer(string.format(""), 21)
	  player:PrintToPlayer(string.format("P.C. Haudrale: You got a fuckin problem bro?! Cause its not Bruce fuckin Jenner! Its Caitlyn, and shes a fuckin stunning and brave woman!"), 21)
	  player:setVar("vrtra_event",3)
	elseif player:getVar("vrtra_event") == 4 then
	  player:PrintToPlayer(string.format("P.C. Haudrale: Watch your micro-aggressions, bro!"), 21)
	  player:setVar("vrtra_event",5)
	  npc:hideNPC(1800)
	end
end

