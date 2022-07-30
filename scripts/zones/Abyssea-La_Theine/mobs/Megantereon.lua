-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Megantereon
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}


function onMobInitialize(mob)

    mob:setMobMod(xi.mobMod.ADD_EFFECT, 1)
	
end

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

function onAdditionalEffect(mob, target, damage)

    return xi.mob.onAddEffect(mob, target, damage, xi.mob.ae.STUN, {chance = 40, power = 10})
	
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(400,600)
	local drop = 5
    
    if  drop > math.random(0,99) and player:hasKeyItem(xi.ki.TIGER_COMPANION) == false then
        player:addKeyItem(xi.ki.TIGER_COMPANION)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.TIGER_COMPANION)
	end
	
    if player:hasKeyItem(xi.ki.BLOODIED_SABER_TOOTH) == false then
        player:addKeyItem(xi.ki.BLOODIED_SABER_TOOTH)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.BLOODIED_SABER_TOOTH)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addCurrency("Cruor",cruor)
	   player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)	
	end
end
return entity