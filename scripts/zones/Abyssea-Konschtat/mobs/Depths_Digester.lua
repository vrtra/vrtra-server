-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Depths Digester
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

	local cruor = math.random(400,600)
	
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end

entity.onMobDespawn = function(mob)
    local SATIATOR_CHANCE = 100
    if (SATIATOR_CHANCE > math.random(0,99)) then
        local X = GetMobByID(16838661):getXPos()
        local Y = GetMobByID(16838661):getYPos()
        local Z = GetMobByID(16838661):getZPos()
        
        SpawnMob(16838657):setPos(X,Y,Z)
    end
end
return entity