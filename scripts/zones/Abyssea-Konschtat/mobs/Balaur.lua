-----------------------------------
-- Area: Abyssea - Konschtat (15)
--   NM: Balaur
-- TODO: When its HP is under 50%, Balaur has a chance to gain
-- a spikes effect after using Breath attacks (matches element of breath)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

function onMobInitialize(mob)

    mob:setMobMod(xi.mobMod.SKILL_LIST, 790)	
	
end

entity.onMobSpawn = function(mob)

	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 20)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 20)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 100)
	
end

entity.onMobFight = function(mob, target)

    -- Uses different upgraded breath attack starting at 50% hp.
    if mob:getHPP() <= 50 then
        mob:setMobMod(xi.mobMod.SKILL_LIST, 791)
    else
        -- I'm assuming that if it heals up, it goes back to the other skill list.
        mob:setMobMod(xi.mobMod.SKILL_LIST, 790)
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(400,600)
	
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity
