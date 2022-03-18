-----------------------------------
-- Area: Upper Jeuno
--  NPC: Hunt Master
-- Used in Daily Hunts
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
---
require("scripts/settings/main")
require("scripts/globals/vrtraHunts")
require("scripts/globals/msg")
require("scripts/globals/mobs")
require("scripts/globals/status")
require("scripts/globals/npc_util")

local prize = {
					
    ["rewards"] = 	{  

                                    
                                     17108,        -- Healing Staffe
                                     18018,        -- Sirocco Kukri
                                     16885,        -- Gae Bolg
                                     16555,        -- Ridill
                                     17652,        -- Joyeuse
                                     17653,        -- Hrotti
                                     18019,        -- X's Knife								 
                                     17793,        -- Senjuinrikio
                                     17451,        -- Morgenstern
                                     17699,        -- Dissector
                                     17827,        -- Michishiba
                                     17944,        -- Retributor
                                     18097,        -- Gondo-Shizunori
                                     18217,        -- Rampager
                                     17589,        -- Thyrsusstab
                                     18053,        -- Gravedigger
                                     18005,        -- Heart Snatcher
                                     17207,        -- Expunger
                                     17275,        -- Coffinmaker
                                     18425,        -- Perdu Blade
                                     18717,        -- Perdu Bow
                                     18718,        -- Perdu Crossbow
                                     17741,        -- Perdu Hanger
                                     18943,        -- Perdu Sickle
                                     18588,        -- Perdu Staff
                                     16602,        -- Perdu Sword
                                     18491,        -- Perdu Voulge
                                     18850,        -- Perdu Wand
									 17829,        -- hagun
									 17790,        -- unji				 	
						},
}

local augTiers = {
    { name = "T1", lv = 80, stone = 860, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- str/dex attack // behemoth hide
    { name = "T2", lv = 80, stone = 836, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- int/mnd macc // damascene cloth
}

local augTable = {
["T1"] = {512, 513, 25, 26 },
["T2"] = {516, 517, 35, 36 }
}

entity.rollAugmented = function(player, id, tier)
    local aug1 = 0 local aug2 = 0 local aug3 = 0 
    local v1 = 0 local v2 = 0 local v3 = 0 
	
    if math.random(1, 100) <= tier.aug1 then
        aug1 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v1 = math.random(1, tier.maxVal)
    end    
	if math.random(1, 100) <= tier.aug2 then
        aug2 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v2 = math.random(1, tier.maxVal)
        if aug2 == aug1 then
    repeat
        aug2 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        print(string.format("Rerolled aug2"))
    until( aug2 ~= aug1)
        end
    end
	if math.random(1, 100) <= tier.aug3 then
        aug3 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v3 = math.random(1, tier.maxVal)
        if aug3 == aug2 or aug3 == aug1 then
    repeat
        aug3 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        print(string.format("Rerolled aug3"))
    until( aug3 ~= aug2 and aug3 ~= aug1)
        end
    end	
	
    local weekPoints = player:getVar("Hunt_WeekPoints")
	
    if (player:getFreeSlotsCount() >= 1) then
        player:delItem(id, 1)
		player:tradeComplete()
		player:setVar("Hunt_WeekPoints",(weekPoints - 2))	
        player:addItem(id, 1, aug1, v1, aug2, v2, aug3, v3)
        player:messageSpecial(ID.text.ITEM_OBTAINED, id)
    else
        player:messageBasic(xi.msg.basic.FULL_INVENTORY)
    end
end

entity.getItemId = function(trade)
    for k,set in pairs(prize) do
        for l,id in pairs(set) do
            if npcUtil.tradeHas(trade, id) then
                return id
            end
        end
    end

    return -1
end

entity.onTrade = function(player, npc, trade)
    local complete = player:getVar("HuntWeek_Active")
    local weekPoints = player:getVar("Hunt_WeekPoints")
   
	if trade:hasItemQty(65535,1) and weekPoints > 4 and complete == 1 then 
		player:setVar("HuntWeek_Active", 0)
		player:setVar("Hunt_Week",0)
		player:setVar("HuntWeek_Target",0)
		player:setVar("Hunt_WeekPoints",(weekPoints - 5))
		player:PrintToPlayer(string.format("Hunt Master: Weekly Hunt reset. You now have %s Weekly Hunt Points", player:getVar("Hunt_WeekPoints")), 21)  
	else 
	    player:PrintToPlayer(string.format("Daily Hunt Master : You do not have enough Daily Hunt Points to purchase that item."), 21)
	end

    local id = getItemId(trade)
    if id == -1 then return false end

    for k,tier in pairs(augTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 
		and player:getVar("Hunt_WeekPoints") > 1
		then
            rollAugmented(player, id, tier)
            break
        end
    end
end

entity.onTrigger = function(player,npc)
	
	-- Weekly Settings --
	local weektarget = weekhunt[math.random(1,#weekhunt)]
	local realweek = tonumber(os.date("%W"))
	local wtarg = GetMobByID(player:getVar("HuntWeek_Target"))

	-- Set Random Weekly Reward for player --
	local weekly_reward = reward_table_weekly[math.random(1,#reward_table_weekly)]

	-- Weekly Vars and NPC interactions --
	if player:getMainLvl() > 45 then
	if (realweek ~= player:getVar("Hunt_Week") and player:getVar("HuntWeek_Active") == 0) then
		player:setVar("HuntWeek_Active", 1)
		player:setVar("Hunt_Week",realweek)
		player:setVar("HuntWeek_Target",weektarget)
		player:PrintToPlayer(string.format("Hunt Master: I am in charge of all your hunting activities!"), 21)
		player:PrintToPlayer(string.format("Hunt Master: All you gotta do is hunt the targets I set you. Easy peasy, right?"), 21)
		player:PrintToPlayer(string.format("Hunt Master: I see you do not have a weekly hunt currently active, so allow me to give you one!"), 21)
		player:PrintToPlayer(string.format("Hunt Master: Speak to me again to learn your target!"), 21)
	end	
		
	if
	player:getVar("HuntWeek_Completed") == 0 then
		if player:getVar("HuntWeek_Active") == 1 then
		   player:PrintToPlayer(string.format("Hunt Master: Your Weekly Hunt target is %s", wtarg:getName()), 21)
		end	
	end		
	if
		(realweek == player:getVar("Hunt_Week") and player:getVar("HuntWeek_Active") == 0) then
			player:PrintToPlayer(string.format("Hunt Master: You've already completed your weekly hunt! Come back next week!"), 21)
			player:PrintToPlayer(string.format("Hunt Master: Hunts reset Monday 12am CST"), 21)
			player:PrintToPlayer(string.format("Hunt Master: You can augment your Hunt Rewards for 2 Weekly Hunt Points."), 21)
			player:PrintToPlayer(string.format("Hunt Master: Trade me one of your rewards plus a Behemoth Hide for str/dex+2 attack +2 augments."), 21)
			player:PrintToPlayer(string.format("Hunt Master: Or trade me one of your hunt rewards and a Damascene Cloth for int/mnd +2 magic acc +2 augments."), 21)

			
	end
	
	if player:getVar("HuntWeek_Completed") == 1 then
		if player:getFreeSlotsCount() >= 1 then		   
		   player:setVar("Hunt_WeekPoints",(player:getVar("Hunt_WeekPoints") + 1))
		   player:setVar("HuntWeek_Active", 0)
		   player:setVar("HuntWeek_Completed",0)
		   player:setVar("HuntWeek_Target", 0)
		   player:PrintToPlayer(string.format("Hunt Master: Well done, heh! You took that monster down with great skill!"), 21)
		   player:PrintToPlayer(string.format("Hunt Master: I'll add this one to your total number of kills and give you some points, yeah?"), 21)
		   player:PrintToPlayer(string.format("Hunt Master: Says here you now currently have %s Hunt Points.", player:getVar("Hunt_WeekPoints")), 21)
	       player:PrintToPlayer(string.format("Hunt Master: You can augment your Hunt Rewards for 5 Weekly Hunt Points."), 21)
	       player:PrintToPlayer(string.format("Hunt Master: Trade me one of your rewards plus a Behemoth Hide for str/dex+2 attack +2 augments."), 21)
		   player:PrintToPlayer(string.format("Hunt Master: Or trade me one of your hunt rewards and a Damascene Cloth for int/mnd +2 magic acc +2 augments."), 21)
		-- Deliver Weekly Reward --
	
			if player:hasItem(weekly_reward) then
				player:addGil(100000)
				player:messageSpecial(ID.text.GIL_OBTAINED,100000)
				player:addExp(4000)
			else 
				player:addItem(weekly_reward)
				player:addExp(4000)
				player:messageSpecial(ID.text.ITEM_OBTAINED,weekly_reward)
			end
		else
			player:PrintToPlayer(string.format("Hunt Master: You need to sort your inventory before accepting the reward, heh!"), 21)
		end
    end
    else
        player:PrintToPlayer(string.format("Hunt Master: I am in charge of all your hunting activities!"), 21)
		player:PrintToPlayer(string.format("Hunt Master: All you gotta do is hunt the targets I set you. Easy peasy, right?"), 21)
		player:PrintToPlayer(string.format("Hunt Master: You what, you're still a rookie adventurer?!"), 21)
		player:PrintToPlayer(string.format("Hunt Master: Clear off! Come back to me when you're strong enough to take on the big boys!"), 21)
    end
end

return entity