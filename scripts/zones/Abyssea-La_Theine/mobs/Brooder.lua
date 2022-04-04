-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Brooder
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

entity.onMobDeath = function(mob,player)

	local cruor = math.random(400,600)

	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	
end


entity.onMobDespawn = function(mob,player)

	local RUMINATOR_CHANCE = 100
    if  RUMINATOR_CHANCE > math.random(0,99) then
        local X = GetMobByID(17318427):getXPos()
        local Y = GetMobByID(17318427):getYPos()
        local Z = GetMobByID(17318427):getZPos()
		
        SpawnMob(17318426):setPos(X,Y,Z)
		player:PrintToPlayer(string.format("The Ruminator appears out of nowhere!"), 21)
    else
		player:PrintToPlayer(string.format("It does not appear that the Ruminator wishes to come out and play today...."), 21)
	end
	
end
return entity