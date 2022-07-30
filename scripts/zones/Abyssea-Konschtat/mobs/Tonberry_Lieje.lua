-----------------------------------
-- Zone: Abyssea-Konschtat
--  NM:  Tonberry Lieje
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
require("scripts/globals/status")
require("scripts/globals/keyitems")
require("scripts/globals/mobs")
local entity = {}

entity.onMobSpawn = function(mob)

	mob:addMod(xi.mod.SLEEPRES, 100)
	mob:addMod(xi.mod.PARALYZERES, 10)
	mob:addMod(xi.mod.BINDRES, 20)
	mob:addMod(xi.mod.LULLABYRES, 100)
	mob:addMod(xi.mod.GRAVITYRES, 20)
	mob:addMod(xi.mod.SLOWRES, 10)
	mob:addMod(xi.mod.BLINDRES, 10)
	mob:addMod(xi.mod.SILENCERES, 10)
	
end
function onMobInitialize(mob)
    mob:addStatusEffectEx(xi.effect.BLAZE_SPIKES,0,30,0,5)
end

entity.onMobFight = function(mob, target)
    if mob:getHPP() >= 50 then
        mob:setSpellList(173)
    elseif mob:getHPP() <= 50 then
	    mob:setSpellList(401)
	end
	if mob:getLocalVar("words_of_bane") == 1 and mob:getHPP() > 50 then -- local var is from globals/mobskills/words_of_bane	
        mob:setMod(xi.mobMod.UFASTCAST, 150)	
	    mob:castSpell(204) -- insta cast flare
		mob:setLocalVar("words_of_bane",0)
		mob:delMod(xi.mobMod.UFASTCAST, 150)
	elseif mob:getLocalVar('words_of_bane') == 1 and mob:getHPP() < 50 then
	    mob:setMod(xi.mobMod.UFASTCAST, 150)
	    mob:castSpell(205) -- insta cast flare II
		mob:setLocalVar("words_of_bane",0)
		mob:delMod(xi.mobMod.UFASTCAST, 150)
    end	
end

function onSpellPrecast(mob, spell)
    if (spell:getID() == 204) and (mob:getHPP() < 50) then -- flare turns to aoe 
        spell:setAoE(SPELLAOE_RADIAL)
        spell:setFlag(SPELLFLAG_HIT_ALL)
        spell:setRadius(30)
        spell:setMPCost(1)    
	end	

end

function onMobDisengage(mob)
	if (mob:getHPP() >= 50) then
        mob:setSpellList(173)
		mob:setLocalVar("words_of_bane",0)
    end
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)

    if (player:hasKeyItem(xi.ki.TWISTED_TONBERRY_CROWN) == false) then
        player:addKeyItem(xi.ki.TWISTED_TONBERRY_CROWN)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.TWISTED_TONBERRY_CROWN)
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)		
	else
		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    end
end

entity.onMobDespawn = function(mob)
        mob:setLocalVar("words_of_bane",0)    
        mob:setSpellList(173)
end

return entity