-----------------------------------
-- Zone: Abyssea-Tahrongi
--  NM:  Chloris  
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/globals/titles")
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
end
function OnMobSkillCheck(mob, target)
    if mob:hasStatusEffect(xi.status.REGEN) == true then
       mob:addMod(xi.mod.EVASION_BOOST, 100)
    else 
       mob:delMod(xi.mod.EVASION_BOOST, 100)
    end	   
end
entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(70,89) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(690)
        mob:setLocalVar("twohour", 1)
    
    elseif (mob:getHPP() < math.random(40,59) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(690)
		local reset = math.random(1,100)
		    if reset > 50 then	       
			   mob:resetEnmity(target)
			end
        mob:setLocalVar("twohour", 2)
    
    elseif (mob:getHPP() < math.random(10,29) and mob:getLocalVar("twohour") == 2) then
        mob:useMobAbility(690)
		local reset = math.random(99,100)
		    if reset > 1 then	       
			   mob:resetEnmity(target)
			end
        mob:setLocalVar("twohour", 3)
    end
end
return entity

entity.onMobDeath = function(mob,player)
	local cruor = math.random(1300,1700)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
	player:addTitle(xi.title.CHLORIS_UPROOTER)
    mob:setLocalVar("twohour", 0)
    if (player:hasKeyItem(xi.ki.OVERGROWN_MANDRAGORA_FLOWER) == false) then
        player:addKeyItem(xi.ki.OVERGROWN_MANDRAGORA_FLOWER)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.OVERGROWN_MANDRAGORA_FLOWER)
    end
end
return entity