-----------------------------------
-- Zone: Abyssea-La Theine
--  mob:  Crapaudy  (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player)

    local CrapaudyKills = player:getCharVar("crapaudy_kills")
	local cruor = math.random(75,125)

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
 
    if player:getEquipID(xi.slot.MAIN) == 19332 and CrapaudyKills < 100 then
        player:setCharVar("crapaudy_kills", CrapaudyKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Crapaudys using the Peeler.", CrapaudyKills + 1), 8)
	end
    if CrapaudyKills == 99 then
        player:setCharVar("crapaudy_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Twashtar!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity