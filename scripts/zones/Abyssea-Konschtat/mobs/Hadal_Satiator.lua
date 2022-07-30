-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Hadal Satiator
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/mobs")
local entity = {}

function onMobInitialize(mob)
    mob:setMobMod(xi.mobMod.DRAW_IN, 1)
end

entity.onMobSpawn = function(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 40)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 40)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 10)
	mob:setMod(xi.mod.REGAIN, 20)	
end

function onMobEngaged(mob,target)
        local X = GetMobByID(16838657):getXPos()
        local Y = GetMobByID(16838657):getYPos()
        local Z = GetMobByID(16838657):getZPos()
        
        SpawnMob(16838658):setPos(X,Y,Z)
        SpawnMob(16838659):setPos(X-2,Y,Z-2)
        SpawnMob(16838660):setPos(X-4,Y,Z-4)
        GetMobByID(16838658):updateEnmity(target)
        GetMobByID(16838659):updateEnmity(target)
        GetMobByID(16838660):updateEnmity(target)		
end

entity.onMobDeath = function(mob,player)
	local cruor = math.random(1300,1700)

	player:addTitle(xi.title.SATIATOR_DEPRIVER)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	DespawnMob(16838658)
    DespawnMob(16838659)
    DespawnMob(16838660)
end
return entity