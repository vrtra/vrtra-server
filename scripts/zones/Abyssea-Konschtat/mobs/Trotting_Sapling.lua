-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob:  Trotting Sapling (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
local entity = {}

entity.onMobDeath = function(mob, player)

	local TrottKills = player:getCharVar("trott_kills")
	local cruor = math.random(75,125)

    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor) 
    
    if player:getEquipID(xi.slot.RANGED) == 19392 and TrottKills < 100 then
        player:setCharVar("trott_kills", TrottKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Trotting Saplings using the Thunderstick.", TrottKills + 1), 8)
    end
    if TrottKills == 99 then
        player:setCharVar("trott_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Armageddon!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end
end
return entity