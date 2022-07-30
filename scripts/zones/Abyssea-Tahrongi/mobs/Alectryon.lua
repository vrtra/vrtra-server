-----------------------------------
-- Zone: Abyssea-Tahrongi
--  NM:  Alectryon  
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
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
	mob:setMod(xi.mod.SILENCERES, 75)
	mob:setMod(xi.mod.STUNRES, 10)
end
function onAdditionalEffect(mob, target, damage)
    return xi.mob.onAddEffect(mob, target, damage, xi.mob.ae.POISON, {power = 150})
end

entity.onMobFight = function(mob, target)
    if target:hasEffect(xi.effect.PETRIFIED) == true 
	and mob:getLocalVar("petri") == 0 then
	   mob:addMod(xi.mod.ATTACK, 150)
	   mob:setLocalVar("petri",1)
	end
end

entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	mob:setLocalVar("petri",0)
	mob:delMod(xi.mod.ATTACK, 150)
    if (player:hasKeyItem(xi.ki.FAT_LINED_COCKATRICE_SKIN) == false) then
        player:addKeyItem(xi.ki.FAT_LINED_COCKATRICE_SKIN)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.FAT_LINED_COCKATRICE_SKIN)
    end
end
return entity