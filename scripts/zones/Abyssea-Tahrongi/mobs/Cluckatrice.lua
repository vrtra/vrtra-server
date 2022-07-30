-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Cluckatrice (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
	local cruor = math.random(75,125)	
	local CluckKills = player:getVar("cluck_kills")
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slot.MAIN) == 19347 and CluckKills < 100 then
        player:setVar("cluck_kills", CluckKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Cluckatrice using the Chopper.", CluckKills + 1), 8)
	end
    if CluckKills == 99 then
        player:setVar("cluck_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Farsha!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity