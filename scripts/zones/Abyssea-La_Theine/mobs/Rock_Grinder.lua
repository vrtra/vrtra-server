-----------------------------------
-- Zone: Abyssea-La Theine
--  mob:  Rock Grinder (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player)

    local WormKills = player:getCharVar("worm_kills")
	local cruor = math.random(75,125)

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor) 
 
    if player:getEquipID(xi.slot.MAIN) == 19327 and player:getCharVar("worm_kills") < 100 then
        player:setCharVar("worm_kills", WormKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Rock Grinders using the Pugilists.", WormKills + 1), 8)
    end
    if player:getCharVar("worm_kills") == 99 then
        player:setCharVar("worms_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Verethragna!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end	
end
return entity