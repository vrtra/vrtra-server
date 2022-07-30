-----------------------------------
-- Zone: Abyssea-La Theine
--  mob:  Angler Tiger (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player)

    local AnglerKills = player:getCharVar("angler_kills")
	local cruor = math.random(75,125)
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)  
    
    if player:getEquipID(xi.slot.MAIN) == 19362 and AnglerKills < 100 then
        player:setCharVar("angler_kills", AnglerKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Angler Tigers using the Ranseur.", AnglerKills + 1), 8)
	end
    if AnglerKills == 99 then
        player:setCharVar("angler_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Rhongomiant!", 21)
        player:PrintToPlayer(s"Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity