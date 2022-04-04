-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Briareus  (H-7)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
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

	
end

entity.onMobFight = function(mob, target)

    if (mob:getHPP() < math.random(70,89) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(730)
        mob:setLocalVar("twohour", 1)
    end
    if (mob:getHPP() < math.random(40,59) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(730)
        mob:setLocalVar("twohour", 2)
    end
    if (mob:getHPP() < math.random(10,29) and mob:getLocalVar("twohour") == 2) then
        mob:useMobAbility(730)
        mob:setLocalVar("twohour", 3)
    end
	
end

entity.onMobDisengage = function(mob)

	mob:setLocalVar("twohour", 0)

end

entity.onMobDeath = function(mob,player)
	
	local cruor = math.random(1300,1700)

    if player:hasKeyItem(xi.ki.BLOOD_SMEARED_GIGAS_HELM) == false then
        player:addKeyItem(xi.ki.BLOOD_SMEARED_GIGAS_HELM)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.BLOOD_SMEARED_GIGAS_HELM)
		player:addTitle(xi.title.BRIAREUS_FELLER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addTitle(xi.title.BRIAREUS_FELLER)
		player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)		
end
return entity