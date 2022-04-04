-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob:  Ypotryll (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob, player)

	local YpotKills = player:getCharVar("ypot_kills")
	local cruor = math.random(75,125)

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slot.MAIN) == 19337 and YpotKills < 100 then
        player:setCharVar("ypot_kills",YpotKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Ypotrylls using the Side-sword.", YpotKills + 1), 8)
	end
    if YpotKills == 99 then
        player:setCharVar("ypot_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Almace!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity