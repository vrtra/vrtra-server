-----------------------------------
-- Zone: Abyssea-La Theine
--  mob:  Plateau Glider (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-La_Theine/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}


entity.onMobDeath = function(mob, player)

	local GliderKills = player:getCharVar("glider_kills")
	local cruor = math.random(75,125)
	
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    
    if player:getEquipID(SLOT_MAIN) == 19357 and GliderKills < 100 then
        player:setCharVar("glider_kills",player:getCharVar("glider_kills") + 1)
        player:PrintToPlayer(string.format("has defeated %u Plateau Gliders using the Farmhand.", GliderKills + 1), 8)
	end
    if GliderKills == 99 then
        player:setCharVar("glider_finished",1)
        player:PrintToPlayer(string.format("You have completed the kill requirements for stage 1 Redemption!"), 21)
        player:PrintToPlayer(string.format("Please return to the Orange Hat Moogle to receive your reward."), 21)
    end
end

return entity