-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Cuelebre (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
-----------------------------------
local entity = {}

entity.onSpawn = function(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 20)
	mob:setMod(xi.mod.BINDRES, 40)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 30)
	mob:setMod(xi.mod.SLOWRES, 20)
	mob:setMod(xi.mod.BLINDRES, 20)
	mob:setMod(xi.mod.SILENCERES, 100)
	mob:setMod(xi.mod.STUNRES, 10)
    mob:AnimationSub(5) --spawns in flight
    mob:wait(2000)
end


function onMobEngaged(mob, target)
    mob:SetMobSkillAttack(731)
    mob:AnimationSub(1)
    mob:addStatusEffectEx(xi.effect.TOO_HIGH, 0, 1, 0, 0)
    mob:wait(2000)
end


function onMobDisengage(mob)
    mob:SetMobSkillAttack(731)
    mob:AnimationSub(5)
end

entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(70,89) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(688)
        mob:setLocalVar("twohour", 1)
    end
    if (mob:getHPP() < math.random(40,59) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(688)
        mob:setLocalVar("twohour", 2)
    end
    if (mob:getHPP() < math.random(10,29) and mob:getLocalVar("twohour") == 2) then
        mob:useMobAbility(688)
        mob:setLocalVar("twohour", 3)
    end
--	if mob:AnimationSub() == 1 then
--	mob:SetMobSkillAttack(731) -- earth based basic attack
--	end 
end


entity.onMobDeath = function(mob,player)
	local cruor = math.random(1300,1600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity