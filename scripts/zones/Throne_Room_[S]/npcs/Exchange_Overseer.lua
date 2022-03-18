-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Ahriman
--  Type: Dynamis Exchange NPC
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/settings/main")
local entity = {}


entity.onTrigger = function(player,npc)

	player:PrintToPlayer(string.format("Dark Ahriman : Hello %s!",player:getName()), 21)
	player:PrintToPlayer(string.format("   I am the Dark Ahriman, the keeper of the currencies."), 21)
	player:PrintToPlayer(string.format("   My Goblin minions in our Beastmen strongholds decided to go on strike, so I am here to serve you in all your currency needs."), 21)
	player:PrintToPlayer(string.format("   Trade me any amount of Whiteshells, Jadeshells, or Stripeshells less than 100 to receive the Bronzepiece equivalents."), 21)
	player:PrintToPlayer(string.format("   Trade me any amount of Bronzepieces, Silverpieces, or Goldpieces less than 100 to receive the Byne equivalents."), 21)
	player:PrintToPlayer(string.format("   Trade me any amount of 1 Bynes, 100 Bynes, or 10,000 Bynes less than 100 to receive the Whiteshell equivalents."), 21)
	player:PrintToPlayer(string.format("   I will also convert a hundred singles to a 100 piece, or a hundred 100 pieces to a 10,000 piece."), 21)
	player:PrintToPlayer(string.format("   Lastly, I can also split 100 pieces and 10,000 pieces down, into 100 singles or a hundred 100 pieces respectively."), 21)
	player:PrintToPlayer(string.format("   Trade me a 100 piece to receive 100 singles back, or trade me a 10,000 piece to receive a hundred 100 pieces."), 21)
	player:PrintToPlayer(string.format("   ***WARNING*** Do not trade more than one type of currency in a single trade, or I might decide to keep it.  No refunds!"), 21)
	player:PrintToPlayer(string.format("   Be sure to give those Goblin slackers a slap if you spot them hiding out in their strongholds.  The Dark Ahriman demands it!"), 21)
	player:PrintToPlayer(string.format("   Oh! One more thing! I can take gil for Currency! If you're one of those lazy people... Suckers!"), 21)
	player:PrintToPlayer(string.format("   Trade me 500,001 Gil for 20k CP, 500,002 Gil for 10k ISP or 500,003 Gil for 10k Cruor!"), 21)
    player:PrintToPlayer(string.format("   Trade me all 8 Sea Gorgets or Obis to recieve the Fotia Gorget or the Hachirin-no-obi!",player:getName()), 21)
end

entity.onTrade = function(player,npc,trade)

    local count = trade:getItemCount()
	
    if npcUtil.tradeHas(trade, 15438, 15439, 15440, 15437, 15441, 15442, 15435, 15436) then -- obi
	   player:addItem(28419,1)
	   player:tradeComplete()
	   player:messageSpecial(ID.text.ITEM_OBTAINED,28419)
	elseif npcUtil.tradeHas(trade, 15495, 15496, 15497, 15498, 15499, 15500, 15501, 15502) then -- gorget 
	   player:addItem(27510,1)
	   player:tradeComplete()
	   player:messageSpecial(ID.text.ITEM_OBTAINED,27510)
	
	-- CONVERTS 10K TO HUNDREDS
	-- Converts 1 Stripeshell to 100 Jadeshells
	elseif (trade:hasItemQty(1451,1) and trade:getItemCount() == 1) then
		if (player:getFreeSlotsCount() >= 2) then
			player:tradeComplete()
			player:addItem(1450,99)
			player:addItem(1450,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1450)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 1 Goldpiece to 100 Silverpieces
	elseif (trade:hasItemQty(1454,1) and trade:getItemCount() == 1) then
		if (player:getFreeSlotsCount() >= 2) then
			player:tradeComplete()
			player:addItem(1453,99)
			player:addItem(1453,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1453)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 1 100 Byne to 100 1 Bynes
	elseif (trade:hasItemQty(1457,1) and trade:getItemCount() == 1) then
		if (player:getFreeSlotsCount() >= 2) then
			player:tradeComplete()
			player:addItem(1456,99)
			player:addItem(1456,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1456)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- CONVERTS HUNDREDS TO SINGLES
	-- Converts 1 Jadeshell to 100 Whiteshells
	elseif (trade:hasItemQty(1450,1) and trade:getItemCount() == 1) then
		if (player:getFreeSlotsCount() >= 2) then
			player:tradeComplete()
			player:addItem(1449,99)
			player:addItem(1449,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1449)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 1 Silverpiece to 100 Bronzepieces
	elseif (trade:hasItemQty(1453,1) and trade:getItemCount() == 1) then
		if (player:getFreeSlotsCount() >= 2) then
			player:tradeComplete()
			player:addItem(1452,99)
			player:addItem(1452,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1452)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 1 100 Byne to 100 1 Bynes
	elseif (trade:hasItemQty(1456,1) and trade:getItemCount() == 1) then
		if (player:getFreeSlotsCount() >= 2) then
			player:tradeComplete()
			player:addItem(1455,99)
			player:addItem(1455,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1455)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- CONVERTS SINGLES TO HUNDREDS
	-- Converts 100 Whiteshells to 1 Jadeshells
	elseif (trade:hasItemQty(1449,100) and trade:getItemCount() == 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1450,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1450)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 100 Bronzepiece to 1 Silverpiece
	elseif (trade:hasItemQty(1452,100) and trade:getItemCount() == 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1453,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1453)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 100 1 Bynes to 1 100 Byne
	elseif (trade:hasItemQty(1455,100) and trade:getItemCount() == 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1456,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1456)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- CONVERTS HUNDREDS TO 10K
	-- Converts 100 Jadeshells to 1 Stripeshell
	elseif (trade:hasItemQty(1450,100) and trade:getItemCount() == 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1451,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1451)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 100 Silverpieces to 1 Goldpiece
	elseif (trade:hasItemQty(1453,100) and trade:getItemCount() == 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1454,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1454)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts 100 100 Bynes to 1 10,000 Byne
	elseif (trade:hasItemQty(1456,100) and trade:getItemCount() == 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1457,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1457)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)
		end
	-- Converts Whiteshells into Bronzepieces
	elseif (trade:hasItemQty(1449,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1452,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1452)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts Bronzepieces into Bynes
	elseif (trade:hasItemQty(1452,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1455,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1455)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts Bynes into Whiteshells
	elseif (trade:hasItemQty(1455,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1449,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1449)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts Jadeshells into Silverpieces
	elseif (trade:hasItemQty(1450,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1453,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1453)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts Silverpieces into 100 Bynes
	elseif (trade:hasItemQty(1453,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1456,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1456)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts 100 Bynes into Jadeshells
	elseif (trade:hasItemQty(1456,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1450,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1450)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end	
	-- Converts Stripeshells into Goldpieces
	elseif (trade:hasItemQty(1451,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1454,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1454)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts Goldpieces into 10,000 Bynes
	elseif (trade:hasItemQty(1454,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1457,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1457)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end
	-- Converts 10,000 Bynes into Stripeshells
	elseif (trade:hasItemQty(1457,count) and trade:getItemCount() < 100) then
		if (player:getFreeSlotsCount() >= 1) then
			player:tradeComplete()
			player:addItem(1451,count)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1451)
		else
			player:PrintToPlayer(string.format("Dark Ahriman : Your inventory is full!  Please free up open slots and try again."), 21)	
		end		
	elseif (trade:hasItemQty(2955,20) and trade:getItemCount() == 10) then   -- 20 kc for themis orb
		if (player:getFreeSlotsCount() >= 1 and player:hasItem(1553) == false) then   -- checks to make sure player has free inventory and does not already have orb
			player:tradeComplete()
			player:addItem(1553,1)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1553)
		else
			player:PrintToPlayer(string.format("Orb Overseer : Are you blind?!? You already possess a Themis Orb! Don't be a greedalox!"), 21)
		end
	elseif (trade:hasItemQty(2956,10) and trade:getItemCount() == 1) then -- 10 hkc for themis orb
		if (player:getFreeSlotsCount() >= 1) then   
			player:tradeComplete()
			player:addItem(1553,10)
			player:messageSpecial(ID.text.ITEM_OBTAINED,1553)
		else
			player:PrintToPlayer(string.format("Orb Overseer : You have traded the incorrect number of items or your inventory is full.  Please try again."), 21)
	    end
	elseif trade:hasItemQty(65535,500001) then
            player:addCP(20000)
			player:tradeComplete()
			player:PrintToPlayer(string.format("Dark Ahriman : 20k CP is yours! Thanks sucker!"), 21)
 	elseif trade:hasItemQty(65535,500002) then
	        player:tradeComplete()
            player:addCurrency("imperial_standing",10000)	
			player:PrintToPlayer(string.format("Dark Ahriman : 10k ISP is yours! Thanks Sucker!"), 21)
	elseif trade:hasItemQty(65535,500003) then
	        player:tradeComplete()
            player:addCurrency("cruor",10000)
			player:PrintToPlayer(string.format("Dark Ahriman : 10k Cruor is yours! Thanks sucker!"), 21)
	end
end
return entity