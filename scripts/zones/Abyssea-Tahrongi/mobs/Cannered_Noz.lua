-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Cannered Noz (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
local entity = {}

entity.onSpawn = function(mob)
	mob:setMod(dsp.mod.SLEEPRES, 100)
	mob:setMod(dsp.mod.PARALYZERES, 5)
	mob:setMod(dsp.mod.BINDRES, 100)
	mob:setMod(dsp.mod.LULLABYRES, 100)
	mob:setMod(dsp.mod.GRAVITYRES, 100)
	mob:setMod(dsp.mod.SLOWRES, 20)
	mob:setMod(dsp.mod.BLINDRES, 20)
	mob:setMod(dsp.mod.SILENCERES, 100)
	mob:setMod(dsp.mod.STUNRES, 10)
	mob:setMod(dsp.mod.MDEF, 200)
	mob:setMod(dsp.mod.FASTCAST, 30)
    mob:setMobMod(dsp.mobMod.SPELL_LIST, 184)
end


entity.onMobFight = function(mob, target)
    local reraises = mob:getLocalVar("CORPSELIGHT_RERAISES")	
    if (reraises == 3) then 
       mob:setMobMod(dsp.mobMod.SPELL_LIST, 402)
    elseif (reraises == 7) then 
        mob:setMobMod(dsp.mobMod.SPELL_LIST, 403)
	end

	if (reraises > 0) then 
    mob:setLocalVar("CORPSELIGHT_RERAISES",player:getVar("CORPSELIGHT_RERAISES") + 1)
	mob:setMod(dsp.mod.UDMGPHYS, 20)
	end	
end 	
function onMobDeath(mob,player)
	local cruor = math.random(400,600)	
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	mob:setLocalVar("CORPSELIGHT_RERAISES",0)	
end

return entity
 
