-----------------------------------
--  Area: Throne Room [S]
--  NPC:  N/A (currently unused)
--  Type: Waste of space
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}


entity.onTrigger = function(player,currency,amount,npc)
  
  	local realday = tonumber(os.date("%j")) -- Gets Integer Value for Day of the Year (Jan 01 = Day 1)
	
		-- login Tiers
	local dailylogin = 	{'6465', '6225', '6469', '4146', '1450', '1453', '1456', '6064', '5735', '5736'} -- +1 Foods
	
	-- Set login ranges per Login Tier
	local login = dailylogin[math.random(1,8,#dailylogin)]
	
	if (realday ~= player:getVar("Dailylogin_Time") and (player:getFreeSlotsCount() >= 1)) then --24 hours have passed, flag a new reward
          
		player:addCurrency("LEGION_POINT",1)
		player:PrintToPlayer("Ig-Alima : Gobbie goodies, once per day! What's in the box, no one can say!",21)
		player:PrintToPlayer("   Enjoy your goodies, come back tomorrow for more gobbie goodies!",21)
		player:setVar("Dailylogin_Time",tonumber(os.date("%j")))
		player:addItem(login)
		player:messageSpecial(ID.text.ITEM_OBTAINED,login)
		player:addExp(2000)
		
	elseif
		player:getFreeSlotsCount() == 0 then
		player:PrintToPlayer("Ig-Alima : Oh my....it appears that your inventory is full.  Please free up at least one slot and try again.",21)
	elseif
		realday == player:getVar("Dailylogin_Time") then
		player:PrintToPlayer("Ig-Alima : Don't be a greedy guts, come back tomorrow for more gobbie goodies!",21)
	end

end

return entity