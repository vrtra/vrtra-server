-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Bhumi (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------
local entity = {}

entity.onSpawn = function(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 85)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 85)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 100)	
	mob:setMod(xi.mod.POISONRES, 90)
end


entity.onMobDeath = function(mob,player)
	local cruor = math.random(1800,2200)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity
