-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Pustule
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
local entity = {}

entity.onMobSpawn = function(mob)

	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 40)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 40)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 10)
	mob:setMod(xi.mod.STUNRES, 100)
	
end

entity.onMobDeath = function(mob,player)
    mob:setLocalVar('pustule',0)				
end
return entity