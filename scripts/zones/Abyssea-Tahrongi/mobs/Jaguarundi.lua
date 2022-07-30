-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Jaguarundi (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)

	local cruor = math.random(75,125)
	local JagKills = player:getVar("jag_kills")
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slot.MAIN) == 19382 and JagKills < 100 then
        player:setVar("jag_kills", JagKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Jaguarundi using the Crook.", JagKills + 1), 8)
	end
    if JagKills == 99 then
            player:setVar("jag_finished",1)
            player:PrintToPlayer("You have completed the kill requirements for stage 1 Hvergelmir!", 21)
            player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end  	 
end
return entity