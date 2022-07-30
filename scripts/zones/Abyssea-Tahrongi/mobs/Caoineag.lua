-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Caoineag (???)
----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
local entity = {}

entity.onMobDeath = function(mob,player)
	local cruor = math.random(75,125)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)	
end
return entity