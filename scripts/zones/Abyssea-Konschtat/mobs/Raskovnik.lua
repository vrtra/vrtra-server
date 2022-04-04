-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Raskovnik
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

entity.onMobDeath = function(mob,player)

	local cruor = math.random(400,600)

    if (player:hasKeyItem(xi.ki.FETID_RAFFLESIA_STALK) == false) then
        player:addKeyItem(xi.ki.FETID_RAFFLESIA_STALK)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.FETID_RAFFLESIA_STALK)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    end
end
return entity
