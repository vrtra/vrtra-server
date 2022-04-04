-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob:  Razorback (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob, player)

	local RazorKills = player:getCharVar("razor_kills")
	local cruor = math.random(75,125)
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  	
    
    if player:getEquipID(xi.slot.MAIN) == 19372 and RazorKills < 100 then
        player:setCharVar("razor_kills", RazorKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Razorbacks using the Donto.", RazorKills + 1), 8)
	end
    if RazorKills == 99 then
        player:setCharVar("razor_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Masamune!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity