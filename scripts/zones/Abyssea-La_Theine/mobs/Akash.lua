-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Akash
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
-----------------------------------
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

    if mob:getHPP() < math.random(15,30) and mob:getLocalVar("searinglight") == 0 then
        mob:useMobAbility(912)
        mob:setLocalVar("searinglight", 1)
    end

end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1800,2200)

	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	
end
return entity
