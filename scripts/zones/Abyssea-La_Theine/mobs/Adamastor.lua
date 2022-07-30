-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Adamastor  
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
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

    if player:hasKeyItem(xi.ki.DENTED_GIGAS_SHIELD) == false then
        player:addKeyItem(xi.ki.DENTED_GIGAS_SHIELD)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.DENTED_GIGAS_SHIELD)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addCurrency("Cruor",cruor)
	   player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)	
	end
end
return entity