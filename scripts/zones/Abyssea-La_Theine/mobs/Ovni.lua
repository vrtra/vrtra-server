-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Ovni
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/mobs")
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
	mob:setMod(xi.mod.REGAIN, 10)
    mob:hideName(true)
    mob:untargetable(true)
    mob:AnimationSub(5)
    mob:wait(2000)
	
end
entity.onMobInitialize = function(mob)
    mob:setMobMod(xi.mobMod.DRAW_IN, 1)
end
entity.onMobEngaged = function(mob,target)

    mob:hideName(false)
    mob:untargetable(false)
    mob:AnimationSub(6)
    mob:wait(2000)
	
end

entity.onMobDisengage = function(mob)

    mob:hideName(true)
    mob:untargetable(true)
    mob:AnimationSub(5)
	mob:setLocalVar("invincible", 0)
	
end

entity.onMobFight = function(mob,target)

    if (mob:getHPP() < math.random(70,89) and mob:getLocalVar("invincible") == 0) then
        mob:useMobAbility(694)
        mob:setLocalVar("invincible", 1)
    end
    if (mob:getHPP() < math.random(40,59) and mob:getLocalVar("invincible") == 1) then
        mob:useMobAbility(694)
        mob:setLocalVar("invincible", 2)
    end
    if (mob:getHPP() < math.random(10,29) and mob:getLocalVar("invincible") == 2) then
        mob:useMobAbility(694)
        mob:setLocalVar("invincible", 3)
    end
	
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)
	
	player:addTitle(xi.title.OVNI_OBLITERATOR)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)	
end
return entity
