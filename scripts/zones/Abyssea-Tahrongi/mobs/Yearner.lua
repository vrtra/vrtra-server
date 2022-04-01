-----------------------------------
-- Zone: Abyssea-Tahrongi
--  NM:  Yearner
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
----------------------------------
local entity = {}

entity.onSpawn = function(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 20)
	mob:setMod(xi.mod.BINDRES, 75)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 350)
	mob:setMod(xi.mod.SLOWRES, 20)
	mob:setMod(xi.mod.BLINDRES, 20)
	mob:setMod(xi.mod.BLINDRES, 20)
	mob:setMod(xi.mod.SILENCERES, 75)
	mob:setMod(xi.mod.STUNRES, 10)
end

entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity

entity.onMobDespawn = function(mob, player)
	local USURPER_CHANCE = 100
    if (USURPER_CHANCE > math.random(0,99)) then
        local X = GetMobByID(16961910):getXPos()
        local Y = GetMobByID(16961910):getYPos()
        local Z = GetMobByID(16961910):getZPos()
		
        SpawnMob(16961909):setPos(X,Y,Z)
    end
end
return entity