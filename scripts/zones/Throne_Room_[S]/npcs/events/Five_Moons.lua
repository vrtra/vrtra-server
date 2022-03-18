-- npcid 17416321
entity.onTrigger = function(player, npc)
   if player:getVar("vrtra_event") == 1 then
	  player:PrintToPlayer(string.format("Five Moons: Dis bitch be crazy mon..."), 21)
	  player:PrintToPlayer(string.format("Five Moons: Me not be touchin dis girl ass I plead the Fizzzith Officer!!"), 21)
      player:setVar("vrtra_event",2)
   elseif player:getVar("vrtra_event") == 6 then
      player:PrintToPlayer(string.format("Five Moons: I've hadda enough of dis foolish pig! DIE!"), 21)
      local X = GetNPCByID(17416321):getXPos()
      local Y = GetNPCByID(17416321):getYPos()
      local Z = GetNPCByID(17416321):getZPos()
	  SpawnMob(17416215):setPos(X,Y,Z)
	  player:setVar("vrtra_event",0)
	  npc:hideNPC(1800)
	end
end