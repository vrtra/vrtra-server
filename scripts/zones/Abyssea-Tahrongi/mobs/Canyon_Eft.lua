-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Canton Eft (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob,player,isKiller)

	local cruor = math.random(75,125)
	local CanyonKills = player:getVar("canyon_kills")
 
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor) 
	
    if player:getEquipID(xi.slot.RANGED) == 19387 and (CanyonKills < 100) then
        player:setVar("canyon_kills",player:getVar("canyon_kills") + 1)
        player:PrintToPlayer(string.format("has defeated %u Canyon Efts using the Sparrow.", CanyonKills + 1), 8)
	end
    if CanyonKills == 99 then
        player:setVar("canyon_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Gandiva!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity
