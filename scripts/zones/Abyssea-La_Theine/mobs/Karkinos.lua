-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Karkinos
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/mobs")
require("scripts/globals/keyitems")
-----------------------------------
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
	mob:setMod(xi.mod.REGAIN, 20)
	
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)
	local drop = 5
	
	if (drop > math.random(0,99) and player:hasKeyItem(xi.ki.CRAB_COMPANION) == false then
        player:addKeyItem(xi.ki.CRAB_COMPANION)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED,xi.ki.CRAB_COMPANION)
		player:addTitle(xi.title.KARKINOS_CLAWCRUSHER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addTitle(xi.title.KARKINOS_CLAWCRUSHER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	end
end
return entity