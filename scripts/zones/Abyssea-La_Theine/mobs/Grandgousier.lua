-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Grandgousier
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

    if player:hasKeyItem(xi.ki.SEVERED_GIGAS_COLLAR) == false then
        player:addKeyItem(xi.ki.SEVERED_GIGAS_COLLAR)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.SEVERED_GIGAS_COLLAR)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    end
	
end
return entity