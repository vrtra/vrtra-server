-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob:  Gneiss Leech (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob, player)

	local GneissKills = player:getCharVar("gneiss_kills")
	local cruor = math.random(75,125)
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slotMAIN) == 19342 and GneissKills < 100 then
        player:setCharVar("gneiss_kills", GneissKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Gneiss Leeches using the Break Blade.", GneissKills + 1), 8)
	end
    if GneissKills == 99 then
        player:setCharVar("gneiss_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Caladbolg!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end	
end
return entity 