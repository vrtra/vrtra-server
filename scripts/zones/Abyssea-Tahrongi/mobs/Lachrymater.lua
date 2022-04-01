-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Lachrymater (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------
local entity = {}-----------------------------------

require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/zones/Abyssea-Tahrongi/IDs")-----------------------------------
-- onMobSpawn
----------------------------------------------------------------------
local entity = {}

entity.onSpawn = function(mob)
    local DayofWeek = VanadielDayElement()
    mob:setSpellList(188 + DayofWeek)
	mob:addMod(xi.mod.SLEEPRES, 75)
	mob:addMod(xi.mod.PARALYZERES, 20)
	mob:addMod(xi.mod.BINDRES, 100)
	mob:addMod(xi.mod.GRAVITYRES, 100)
	mob:addMod(xi.mod.LULLABYRES, 75)
	mob:addMod(xi.mod.SLOWRES, 20)
	mob:addMod(xi.mod.BLINDRES, 20)
	mob:addMod(xi.mod.SILENCERES, 20)
end-----------------------------------
-- onMobFight
-----------------------------------

entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(60,89) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(691)
        mob:setLocalVar("twohour", 1)
    end
    if (mob:getHPP() < math.random(10,39) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(692)
        mob:setLocalVar("twohour", 2)
    end
end
return entity-----------------------------------
-- onMobDeath
-----------------------------------

entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	mob:setLocalVar("twohour", 0)
end