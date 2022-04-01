-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Halimede (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
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
end



entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(25,35) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(692)
        mob:setLocalVar("twohour", 1)
    end
end
return entity
function onMonsterMagicPrepare(caster, target)
local spellList =  
    {       
        [1] = 356, 
        [2] = 226, 
        [3] = 214,
        [4] = 206, 
        [5] = 201, 
        [6] = 181, 
    }
    local spell = spellList[math.random(1,6)]
    if (caster:hasStatusEffect(xi.effect.CHAINSPELL)) then	
	    mob:resetEnmity(target)   
	return spell
	end
end
entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity