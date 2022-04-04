-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Kukulkan
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/globals/titles")
require("scripts/globals/mobs")

local entity = {}

function onMobInitialize(mob)
	mob:setMobMod(xi.mobMod.ADD_EFFECT, 1) 
-- OnAdditionalEffect
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

	
end

entity.onMobFight = function(mob)
	
end

function onAdditionalEffect(mob, target, damage)

    return xi.mob.onAddEffect(mob, target, damage, xi.mob.ae.POISON, {chance = 100, power = math.random(20, 100)})	

end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)

    if (player:hasKeyItem(xi.ki.VENOMOUS_PEISTE_CLAW) == false) then
        player:addKeyItem(xi.ki.VENOMOUS_PEISTE_CLAW)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.VENOMOUS_PEISTE_CLAW)
		player:addTitle(xi.title.KUKULKAN_DEFANGER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addTitle(xi.title.KUKULKAN_DEFANGER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    end
end
return entity
