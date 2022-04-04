-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob:  Ab'xzomit (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob,player)

	local AbxKills = player:getCharVar("abx_kills")
	local cruor = math.random(75,125)

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
	if player:getEquipID(xi.slot.MAIN) == 19367 and AbxKills < 100 then
        player:setCharVar("abx_kills", AbxKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Ab'Xzomits using the Kibashiri.", AbxKills + 1), 8)
	end
	if AbxKills == 99 then
        player:setCharVar("abx_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Kannagi!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
	end
end
return entity