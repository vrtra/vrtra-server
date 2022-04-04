-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Arimaspi
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
require("scripts/globals/keyitems")
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

function onMobEngaged(mob, target)
    
    SpawnMob(16838994):updateEnmity(target)
    SpawnMob(16838995):updateEnmity(target)
    SpawnMob(16838996):updateEnmity(target)

end


entity.onMobDeath = function(mob,player)

	local cruor = math.random(400,600)

    if (player:hasKeyItem(xi.ki.MUCID_AHRIMAN_EYEBALL) == false) then
        player:addKeyItem(xi.ki.MUCID_AHRIMAN_EYEBALL)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.MUCID_AHRIMAN_EYEBALL)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
		DespawnMob(16838994)
        DespawnMob(16838995)
        DespawnMob(16838996)
	else
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
		DespawnMob(16838994)
        DespawnMob(16838995)
        DespawnMob(16838996)
    end
end
return entity
