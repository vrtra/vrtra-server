-----------------------------------
-- Zone: Abyssea-Tahrongi
--  NM:  Chukwa  
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
-----------------------------------
local entity = {}

entity.onSpawn = function(mob)
    mob:AnimationSub(1)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 20)
	mob:setMod(xi.mod.BINDRES, 40)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 30)
	mob:setMod(xi.mod.SLOWRES, 20)
	mob:setMod(xi.mod.BLINDRES, 20)
	mob:setMod(xi.mod.SILENCERES, 100)
	mob:setMod(xi.mod.STUNRES, 100)
end


function OnMobSkillCheck(mob, target)
    if mob:hasStatusEffect(xi.effect.MIGHTY_STRIKES) == true then
	   mob:AnimationSub(0)
	else 
	   mob:AnimationSub(1)
	end
end
entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(70,89) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(688)
        mob:setLocalVar("twohour", 1)   
    elseif (mob:getHPP() < math.random(40,59) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(688)
        mob:setLocalVar("twohour", 2)   
    elseif (mob:getHPP() < math.random(10,29) and mob:getLocalVar("twohour") == 2) then
        mob:useMobAbility(688)
        mob:setLocalVar("twohour", 3)
    end
    if mob:AnimationSub() == 1  then
       mob:setMod(xi.mod.REGEN, 10)
	   mob:setMod(xi.mod.UPHYSDMG, 90)
    end
end
return entity


entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	
    if (player:hasKeyItem(xi.ki.MOSSY_ADAMANTOISE_SHELL) == false) then
        player:addKeyItem(xi.ki.MOSSY_ADAMANTOISE_SHELL)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.MOSSY_ADAMANTOISE_SHELL)
    end
end
return entity