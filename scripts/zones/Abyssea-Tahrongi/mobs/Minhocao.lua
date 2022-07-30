-----------------------------------
-- Zone: Abyssea-Tahrongi
--  NM:  Minhocao  
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/keyitems")
require("scripts/globals/status")
-----------------------------------
local entity = {}
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
end
entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    if (player:hasKeyItem(xi.ki.SODDEN_SANDWORM_HUSK) == false) then
        player:addKeyItem(xi.ki.SODDEN_SANDWORM_HUSK)
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.SODDEN_SANDWORM_HUSK)
    end
end
return entity