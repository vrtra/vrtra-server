-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Tefenet (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------
local entity = {}

require("scripts/globals/status")
require("scripts/globals/keyitems")
-----------------------------------
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
	local drop = 5
	
	if (drop > math.random(0,99) and player:hasKeyItem(3092) == false) then
        player:addKeyItem(3092)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED,3092)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	end
end