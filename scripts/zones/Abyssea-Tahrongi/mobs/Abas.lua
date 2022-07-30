-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Abas (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require ("scripts/globals/magic")
-----------------------------------
local entity = {}

entity.onSpawn = function(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 20)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 20)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 100)	
	mob:setMod(xi.mod.STUNRES, 90)
end
function onSpellPrecast(mob, spell)
    if spell:getID() == 214 then
        spell:setAoE(xi.magic.aoe.RADIAL)
        spell:setFlag(xi.magic.spellFlag.HIT_ALL)
        spell:setRadius(30)
    end
end

entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity