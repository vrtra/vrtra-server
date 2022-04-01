-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Nematocera (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)

	local cruor = math.random(75,125)
	local NemaKills = player:getVar("nema_kills")
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slot.MAIN) == 19377 and NemaKills < 100 then
        player:setVar("nema_kills", NemaKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Nematocera using the Stenz.", NemaKills + 1), 8)
	end
    if NemaKills == 99 then
        player:setVar("nema_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Gambanteinn!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end	   	 
end
