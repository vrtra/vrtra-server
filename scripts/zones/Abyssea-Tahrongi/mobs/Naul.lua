-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Naul (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)

	local cruor = math.random(75,125)
	local NaulKills = player:getVar("naul_kills")

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
 
    if player:getEquipID(xi.slot.SUB) == 16191 and (NaulKills < 100) then
        player:setVar("naul_kills", NaulKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Nauls using the Utilis Shield.", NaulKills + 1), 8)
	end
    if NaulKills == 99 then
        player:setVar("naul_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Ochain!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end	   	 
end
return entity