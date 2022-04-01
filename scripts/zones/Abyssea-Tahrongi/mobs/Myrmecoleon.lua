-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Myrmecoleon (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
mixins = {require("scripts/mixins/families/antlion_ambush")}
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
--    mob:hideName(true)
--    mob:untargetable(true)
--    mob:AnimationSub(0)
--    mob:wait(2000)
end

--function onMobDisengage(mob)
--    mob:hideName(true)
--    mob:untargetable(true)
--    mob:AnimationSub(0)
--end

entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:addTitle(xi.title.MYRMECOLEON_TAMER)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity