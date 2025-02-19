-----------------------------------
-- Zone: Abyssea-Konschtat
--  mob: Eccentric Eve  (???)
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

entity.onMobDeath = function(mob,player)
	
	local cruor = math.random(1300,1700)
	local drop = 5
    
    if (drop > math.random(0,99) and player:hasKeyItem(xi.ki.MORBOL_COMPANION) == false) then
        player:addKeyItem(xi.ki.MORBOL_COMPANION)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.MORBOL_COMPANION)
	end
	
	player:addTitle(xi.title.ECCENTRICITY_EXPUNGER)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity


