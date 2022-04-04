-----------------------------------
-- Zone: Abyssea-La Theine
--  mob:  Bathyal_Gigas  (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}


entity.onMobDeath = function(mob,player)
		
		local cruor = math.random(75,125)

		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)		
end
return entity
