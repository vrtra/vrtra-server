-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Ruminator
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/mobs")
-----------------------------------
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
	mob:setMod(xi.mod.REGAIN, 20)
	
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
	
end

function onMobDisengage(mob)

	mob:setLocalVar("twohour", 0)

end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)

	player:addTitle(xi.title.RUMINATOR_CONFOUNDER)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)		
end
return entity
