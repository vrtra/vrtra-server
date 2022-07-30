-----------------------------------
<<<<<<< HEAD
-- Area: Abyssea - La Theine
--  Mob: Crepescule Puk
-----------------------------------
mixins = {require("scripts/mixins/families/puk")}
-----------------------------------

local entity = {}

entity.onMobInitialize = function(mob)
    mob:setMod(xi.mod.WIND_ABSORB, 100)
end

entity.onMobFight = function(mob, target)
end

entity.onMobDeath = function(mob,player)
		
		local cruor = math.random(75,125)

		player:addCurrency("Cruor",cruor)
		player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)	

end

return entity
