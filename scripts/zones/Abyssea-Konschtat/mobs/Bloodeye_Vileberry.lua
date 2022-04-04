-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob:  Bloodeye Vileberry (???)
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
	mob:setMod(xi.mod.SILENCERES, 75)
	mob:setMod(xi.mod.REGAIN, 10)
	
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)
	
	player:addTitle(xi.title.BLOODEYE_BANISHER)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity


