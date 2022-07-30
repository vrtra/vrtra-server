-----------------------------------
-- Zone: Abyssea-La Theine
--  mob:  Great Wasp (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player)

    local WaspKills = player:getCharVar("wasp_kills")
	local cruor = math.random(75,125)

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slot.MAIN) == 19352 and WaspKills < 100 then
        player:setCharVar("wasp_kills", WaspKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Great Wasps using the Lumberjack.", WaspKills + 1), 8)
	end
    if WaspKills == 99 then
        player:setCharVar("wasp_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Ukonvasara!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end	
end
return entity