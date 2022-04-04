-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Meanderer
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
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
	mob:setMod(xi.mod.SILENCERES, 100)
	
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(200,300)
	
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end

entity.onMobDespawn = function(mob)

    local DIGESTER_CHANCE = 75
    if (DIGESTER_CHANCE > math.random(0,99)) then
        SpawnMob(16838661)
    end
end
return entity
