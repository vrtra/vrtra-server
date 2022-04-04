-----------------------------------
-- Zone: Abyssea-La Theine
--  NM:  Hadhayosh
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
    mob:setMobMod(xi.mobMod.DRAW_IN, 1)
    mob:setMobMod(xi.mobMod.MAGIC_COOL, 60)	
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
	mob:setMod(xi.mod.STUNRES, 10)
	mob:setMod(xi.mod.REGAIN, 10)
	
end

function onSpellPrecast(mob, spell)

    if spell:getID() == 218 then
        spell:setAoE(xi.magic.aoe.RADIAL)
        spell:setFlag(xi.magic.spellFlag.HIT_ALL)
        spell:setRadius(30)
        spell:setAnimation(280)
        spell:setMPCost(1)
    end
	
end

entity.onMobDeath = function(mob,player)
	
	local cruor = math.random(1300,1700)

	player:addTitle(xi.title.HADHAYOSH_HALTERER)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	
end
return entity