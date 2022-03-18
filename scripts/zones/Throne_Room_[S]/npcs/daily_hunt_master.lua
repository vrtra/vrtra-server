local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/settings/main")
require("scripts/globals/vrtraHunts")
require("scripts/globals/msg")
require("scripts/globals/mobs")
require("scripts/globals/status")
require("scripts/globals/keyitems")


entity.onTrade = function(player, npc, trade)
   local complete = player:getVar("Huntday_Active")
   local dayPoints = player:getVar("Hunt_DayPoints")
	
	if trade:hasItemQty(65535,1) then 
	   if dayPoints > 0 and complete == 1 then
		player:setVar("Huntday_Active", 0)
		player:setVar("Hunt_day",0)
		player:setVar("Huntday_Target",0)
		player:setVar("Hunt_DayPoints",(dayPoints - 1))
		player:PrintToPlayer(string.format("Daily Hunt Master : Daily Hunt reset. You now have %s Daily Hunt Points", player:getVar("Hunt_DayPoints")), 21)
	    else 
	        player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to reset your hunt"), 21)		
		end
	elseif trade:hasItemQty(65535,2) then
	  if dayPoints > 9 then
	    player:addKeyItem(xi.ki.RED_CRAB_COMPANION)
	    player:tradeComplete()
		player:setVar("Hunt_DayPoints",(dayPoints - 10))
	    player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.RED_CRAB_COMPANION)
        player:PrintToPlayer("Daily Hunt Master : Congrats on your new mount! 10 Daily Hunt Points have been deducted.", 21)
	    else 
	        player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to obtain a mount."), 21)	
        end			
	elseif trade:hasItemQty(65535,3) then
	  if dayPoints > 9 then
	    player:addKeyItem(xi.ki.CRAWLER_COMPANION)
	    player:tradeComplete()  
		player:setVar("Hunt_DayPoints",(dayPoints - 10))
	    player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.CRAWLER_COMPANION)
        player:PrintToPlayer("Daily Hunt Master : Congrats on your new mount! 10 Daily Hunt Points have been deducted.", 21)
	    else 
	        player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to obtain a mount."), 21)
        end			
	elseif trade:hasItemQty(65535,4) then
	  if dayPoints > 9 then
	    player:addKeyItem(xi.ki.BEETLE_COMPANION)
	    player:tradeComplete()  
		player:setVar("Hunt_DayPoints",(dayPoints - 10))
	    player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.BEETLE_COMPANION)
        player:PrintToPlayer("Daily Hunt Master : Congrats on your new mount! 10 Daily Hunt Points have been deducted.", 21)
	    else 
	        player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to obtain a mount."), 21)
        end			
	elseif trade:hasItemQty(65535,5) then -- levitus
	  if dayPoints > 19 then
	    player:addKeyItem(3095)
	    player:tradeComplete()  
		player:setVar("Hunt_DayPoints",(dayPoints - 20))
	    player:messageSpecial(ID.text.KEYITEM_OBTAINED, 3095)
        player:PrintToPlayer("Daily Hunt Master : Congrats on your new mount! 20 Daily Hunt Points have been deducted.", 21)
	    else 
	        player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to obtain a mount."), 21)
        end			
	elseif trade:hasItemQty(65535,6) then -- raaz
	  if dayPoints > 19 then
	    player:addKeyItem(3094)
	    player:tradeComplete()  
		player:setVar("Hunt_DayPoints",(dayPoints - 20))
	    player:messageSpecial(ID.text.KEYITEM_OBTAINED, 3094)
        player:PrintToPlayer("Daily Hunt Master : Congrats on your new mount! 20 Daily Hunt Points have been deducted.", 21)
	    else 
	        player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to obtain a mount."), 21)
		end
    end		
end


entity.onTrigger = function(player,npc)
	
	-- daily Settings --
	local daytarget = dailyhunt[math.random(1,#dailyhunt)]
	local realday = tonumber(os.date("%j"))
	local wtarg = GetMobByID(player:getVar("Huntday_Target"))

	-- Set Random daily Reward for player --
	local daily_reward = reward_table_daily[math.random(1,#reward_table_daily)]

	-- daily Vars and NPC interactions --
	if player:getMainLvl() > 19 then
	if (realday ~= player:getVar("Hunt_day") and player:getVar("Huntday_Active") == 0) then
		player:setVar("Huntday_Active", 1)
		player:setVar("Hunt_day",realday)
		player:setVar("Huntday_Target",daytarget)
		player:PrintToPlayer(string.format("Daily Hunt Master : I am in charge of all your hunting activities!"), 21)
		player:PrintToPlayer(string.format("   All you gotta do is hunt the targets I set you. Easy peasy, right?"), 21)
		player:PrintToPlayer(string.format("   I see you do not have a daily hunt currently active, so allow me to give you one!"), 21)
		player:PrintToPlayer(string.format("   Speak to me again to learn your target!"), 21)
	end	
		
	if player:getVar("Huntday_Completed") == 0 and player:getVar("Huntday_Active") == 1 then
		   player:PrintToPlayer(string.format("Daily Hunt Master : Your daily Hunt target is %s", wtarg:getName()), 21)
		   player:PrintToPlayer(string.format("   If you would like to reset your Daily Hunt Target, trade me 1 gil and have at least 1 Daily Hunt Point."), 21)
			
	end		
	if
		(realday == player:getVar("Hunt_day") and player:getVar("Huntday_Active") == 0) then
			player:PrintToPlayer(string.format("Daily Hunt Master : You've already completed your daily hunt! Come back next day, hehehe!"), 21)
			player:PrintToPlayer(string.format("   Hunts reset everyday at 12am CST"), 21)
			player:PrintToPlayer(string.format("   Would you like to spend some of your Daily Hunt Points?"), 21)
			player:PrintToPlayer(string.format("   Trade me 2 gil for the Red Crab Mount, 3 gil for the Crawler Mount or 4 gil for the Beetle Mount."), 21)
			player:PrintToPlayer(string.format("   These will cost you 10 Daily Hunt Points each..."), 21)
			player:PrintToPlayer(string.format("   Want more?..."), 21)
			player:PrintToPlayer(string.format("   Okay then... Trade me 5 gil for the Levitus Mount! Or 6 gil for the Raaz Mount!I"), 21)
			player:PrintToPlayer(string.format("   These are super rare so it will cost ya 20 Daily Hunt Points though!"), 21)
	end		
	if player:getVar("Huntday_Completed") == 1 then
		if player:getFreeSlotsCount() >= 1 then
			
			   
		player:setVar("Hunt_DayPoints",(player:getVar("Hunt_DayPoints") + 1))
		player:setVar("Huntday_Active", 0)
		player:setVar("Huntday_Completed",0)
		player:setVar("Huntday_Target", 0)
		player:PrintToPlayer(string.format("Daily Hunt Master : Well done, heh! You took that monster down with exceptional skill."), 21)
		player:PrintToPlayer(string.format("   I'll add this one to your total number of kills and give you some points, yeah?"), 21)
		player:PrintToPlayer(string.format("   Says here you now currently have %s Hunt Points.", player:getVar("Hunt_DayPoints")), 21)
		-- Deliver daily Reward --
	
			if player:hasItem(daily_reward) then
				player:addGil(50000)
				player:messageSpecial(ID.text.GIL_OBTAINED,50000)
				player:addExp(1000)
			else 
				player:addItem(daily_reward)
				player:addExp(1000)
				player:messageSpecial(ID.text.ITEM_OBTAINED,daily_reward)
			end
		else
			player:PrintToPlayer(string.format("Daily Hunt Master : You need to sort your inventory before accepting the reward!"), 21)
		end
    end
    else
        player:PrintToPlayer(string.format("Daily Hunt Master: I am in charge of all your hunting activities!"), 21)
		player:PrintToPlayer(string.format("   All you gotta do is hunt the targets I set you. Easy peasy, right?"), 21)
		player:PrintToPlayer(string.format("   You what, you're still a rookie adventurer?!"), 21)
		player:PrintToPlayer(string.format("   Clear off! Come back to me when you're strong enough to take on the big boys!"), 21)
    end
end

return entity