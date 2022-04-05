-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Lacovie (???)
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
	mob:setMod(xi.mod.BLINDRES, 20)
	mob:setMod(xi.mod.SILENCERES, 75)
	mob:setMod(xi.mod.STUNRES, 10)
end

entity.onMobFight = function(mob, target)
    if mob:getHPP() < math.random(70,89) and mob:getLocalVar("twohour") == 0 then
        mob:useMobAbility(694)
        mob:setLocalVar("twohour", 1)
    end
    if mob:getHPP() < math.random(40,59) and mob:getLocalVar("twohour") == 1 then
        mob:useMobAbility(694)
        mob:setLocalVar("twohour", 2)
    end
    if mob:getHPP() < math.random(10,29) and mob:getLocalVar("twohour") == 2 then
        mob:useMobAbility(694)
        mob:setLocalVar("twohour", 3)
    end
end

entity.onMobDeath = function(mob,player)
	local drop = 5
    local cruor = math.random(1400,1700)
	
    if (drop > math.random(0,99) and player:hasKeyItem(3096) == false) then
        player:addKeyItem(3096)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED,3096)
        player:addCurrency("Cruor",cruor)
		player:addTitle(xi.title.LACOVIE_CAPSIZER)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
	    player:addCurrency("Cruor",cruor)
		player:addTitle(xi.title.LACOVIE_CAPSIZER)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	end
end
return entity