-----------------------------------
-- Zone: Abyssea-Tahrongi
--  NM:  Glavoid  
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
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
	mob:setMod(xi.modREGAIN, 20)
	mob:setMod(MOD_REGAIN, 20)
end

entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(70,89) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(695)
        mob:setLocalVar("twohour", 1)
    end
    if (mob:getHPP() < math.random(40,59) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(695)
        mob:setLocalVar("twohour", 2)
    end
    if (mob:getHPP() < math.random(10,29) and mob:getLocalVar("twohour") == 2) then
        mob:useMobAbility(695)
        mob:setLocalVar("twohour", 3)
    end
end

entity.onMobDeath = function(mob,player)
	local cruor = math.random(1300,1700)
    player:addCurrency("Cruor",cruor)
	player:addTitle(xi.title.GLAVOID_STAMPEDER)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    if (player:hasKeyItem(xi.ki.CHIPPED_SANDWORM_TOOTH) == false) then
        player:addKeyItem(xi.ki.CHIPPED_SANDWORM_TOOTH)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.CHIPPED_SANDWORM_TOOTH)
    end
end
return entity