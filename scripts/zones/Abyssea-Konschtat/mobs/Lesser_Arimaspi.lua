-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Lesser Arimaspi
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
local entity = {}

entity.onMobSpawn = function(mob)

	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 20)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 20)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 10)
	
end

entity.onMobFight = function(mob, target)

    if (mob:getHPP() < math.random(30,60) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(1151)
        mob:setLocalVar("twohour", 1)
    end
end
return entity

entity.onMobDeath = function(mob,player)
		
		local cruor = math.random(75,125)

		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)		
end
return entity
