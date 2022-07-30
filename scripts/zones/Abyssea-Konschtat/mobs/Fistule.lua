-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Fistule
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
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
	mob:setMod(xi.mod.STUNRES, 100)
	mob:setMod(xi.mod.REGAIN, 10)
	mob:setMobMod(xi.mobMod.DRAW_IN, 1)
	
end

function onMobEngaged(mob,target)
  
end

entity.onMobFight = function(mob, target)

	if mob:getHPP() <= 83 then 
            SpawnMob(16838914):updateEnmity(target)
			SpawnMob(16838915):updateEnmity(target)
	elseif mob:getHPP() <= 66 then 
            SpawnMob(16838916):updateEnmity(target)
			SpawnMob(16838917):updateEnmity(target)
	elseif mob:getHPP() <= 49 then 
            SpawnMob(16838918):updateEnmity(target)
			SpawnMob(16838919):updateEnmity(target)
	elseif mob:getHPP() <= 33 then 
            SpawnMob(16838920):updateEnmity(target)
			SpawnMob(16838921):updateEnmity(target)
    elseif mob:getHPP() <= 16 then 
            SpawnMob(16838922):updateEnmity(target)
			SpawnMob(16838923):updateEnmity(target)
    end

end

function onMobDisengage(mob)



end

entity.onMobDeath = function(mob,player)
    DespawnMob(16838914)
    DespawnMob(16838915)
    DespawnMob(16838916)
    DespawnMob(16838917)
    DespawnMob(16838918)
    DespawnMob(16838919)
    DespawnMob(16838920)
    DespawnMob(16838921)
    DespawnMob(16838922)
    DespawnMob(16838923)
    DespawnMob(16838924)
    DespawnMob(16838925)
    DespawnMob(16838926)
    DespawnMob(16838927)
	local cruor = math.random(1300,1700)

    if (player:hasKeyItem(xi.ki.TURBID_SLIME_OIL) == false) then
        player:addKeyItem(xi.ki.TURBID_SLIME_OIL)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.TURBID_SLIME_OIL)
		player:addTitle(xi.title.FISTULE_DRAINER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addTitle(xi.title.FISTULE_DRAINER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    end
end
return entity
