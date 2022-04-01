-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Pachypodium (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)

	local cruor = math.random(75,125)
	local PachyKills = player:getVar("pachy_kills")
	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor) 
    
    if player:hasItem(18573) and PachyKills < 100 then
        player:setVar("pachy_kills", PachyKills + 1)
        player:PrintToPlayer(string.format("has defeated %u Pachypodium using the Pyf Harp.", PachyKills + 1), 8)
	end
    if PachyKills == 99 then
        player:setVar("pachy_finished",1)
        player:PrintToPlayer("You have completed the kill requirements for stage 1 Daurdabla!", 21)
        player:PrintToPlayer("Please return to the Orange Hat Moogle to receive your reward.", 21)
    end	 
end
