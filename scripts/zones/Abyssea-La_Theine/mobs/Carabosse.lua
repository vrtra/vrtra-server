-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Carabosse
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/globals/titles")
require("scripts/globals/mobs")
require("scripts/globals/magic")
-----------------------------------
local entity = {}


function onMobInitialize(mob)
	-- Cara starts the fight with no spells and only starts casting following Benediction and low defense
    mob:addMod(xi.mod.DEF, 100)
	mob:addMod(xi.mod.INT, 25)
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
	mob:setMod(xi.mod.REGAIN, 10)
    mob:setMobMod(xi.mobMod.DRAW_IN, 1)

end

entity.onMobFight = function(mob, target)
	-- Triggers Benediction between 60% and 40% HP, and changes spell list and skill list, and also gains a ton of defense
    if  mob:getHPP() < math.random(40,60) and mob:getLocalVar("twohour") == 0 then
        mob:useMobAbility(689)
        mob:setLocalVar("twohour", 1)
	end
	
	if  mob:getLocalVar("twohour") == 1 then
        mob:setMobMod(xi.mobMod.SKILL_LIST, 813)
        mob:setMod(xi.mod.DEF, 250)
        mob:setMod(xi.modMod.MAGIC_COOL, 40)
    end

end

function onMobDisengage(mob)
	-- reset variables and skills/spells back to default when deaggroed/party wipes
	mob:setLocalVar("twohour", 0)

end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)

    if player:hasKeyItem(xi.ki.GLITTERING_PIXIE_CHOKER) == false then
        player:addKeyItem(xi.ki.GLITTERING_PIXIE_CHOKER)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.GLITTERING_PIXIE_CHOKER)
		player:addTitle(xi.title.CARABOSSE_QUASHER)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	else
		player:addTitle(xi.title.CARABOSSE_QUASHER)
		player:addCurrency("Cruor",cruor)
	   player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)	
	end
end
return entity