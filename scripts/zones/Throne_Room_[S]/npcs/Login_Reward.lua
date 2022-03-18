-----------------------------------
-- Area: Lower Jeuno
--  NPC: Treasure Coffer
-- Type: Add-on NPC
-- !pos 41.169 3.899 -51.005 245
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/keyitems")


entity.onTrade = function(player,npc,trade)

if (trade:hasItemQty(65535,1) and player:getCurrency('legion_point') > 1) then
      player:addItem(1875,2) 
	  player:delCurrency('legion_point',1)
	  player:tradeComplete()
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1875)
	  player:PrintToPlayer(string.format("1 Log-In Point deducted."), 21)
elseif(trade:hasItemQty(65535,2) and player:getCurrency('legion_point') > 4) then
      player:addItem(1450,1)
	  player:delCurrency('legion_point',5)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1450)
	  player:PrintToPlayer(string.format("5 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,3) and player:getCurrency('legion_point') > 4) then
      player:addItem(1453,1)
	  player:delCurrency('legion_point',5)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1453)
	  player:PrintToPlayer(string.format("5 Log-In Points deducted."), 21)	
elseif(trade:hasItemQty(65535,4) and player:getCurrency('legion_point') > 4) then
      player:addItem(1456,1)
	  player:delCurrency('legion_point',5)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1456)
	  player:PrintToPlayer(string.format("5 Log-In Points deducted."), 21)	  
elseif(trade:hasItemQty(65535,5) and player:getCurrency('legion_point') > 4) then
      player:addItem(3339,1)
	  player:delCurrency('legion_point',5)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,3339)
	  player:PrintToPlayer(string.format("5 Log-In Points deducted."), 21)		  
elseif(trade:hasItemQty(65535,6) and player:getCurrency('legion_point') > 4) then
      player:addItem(3341,1)
	  player:delCurrency('legion_point',5)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,3341)
	  player:PrintToPlayer(string.format("5 Log-In Points deducted."), 21)	
elseif(trade:hasItemQty(65535,7) and player:getCurrency('legion_point') > 4) then
      player:addItem(3343,1)
	  player:delCurrency('legion_point',5)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,3343)
	  player:PrintToPlayer(string.format("5 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,8) and player:getCurrency('legion_point') > 9) then
      player:addItem(1130,1)
	  player:delCurrency('legion_point',10)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1130)
	  player:PrintToPlayer(string.format("10 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,9) and player:getCurrency('legion_point') > 9) then
      player:addItem(3340,1)
	  player:delCurrency('legion_point',10)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,3340)
	  player:PrintToPlayer(string.format("10 Log-In Points deducted."), 21)	
elseif(trade:hasItemQty(65535,10) and player:getCurrency('legion_point') > 9) then
      player:addItem(3342,1)
	  player:delCurrency('legion_point',10)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,3342)
	  player:PrintToPlayer(string.format("10 Log-In Points deducted."), 21)	 
elseif(trade:hasItemQty(65535,11) and player:getCurrency('legion_point') > 9) then
      player:addItem(3344,1)
	  player:delCurrency('legion_point',10)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,3344)
	  player:PrintToPlayer(string.format("10 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,12) and player:getCurrency('legion_point') > 19) then
      player:addItem(1553,1)
	  player:delCurrency('legion_point',20)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1553)
	  player:PrintToPlayer(string.format("20 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,13) and player:getCurrency('legion_point') > 14) then
      player:addItem(1556,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1556)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,14) and player:getCurrency('legion_point') > 14) then
      player:addItem(1557,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1557)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,15) and player:getCurrency('legion_point') > 14) then
      player:addItem(1558,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1558)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,16) and player:getCurrency('legion_point') > 14) then
      player:addItem(1559,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1559)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,17) and player:getCurrency('legion_point') > 14) then
      player:addItem(1560,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1560)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,18) and player:getCurrency('legion_point') > 14) then
      player:addItem(1561,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1561)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,19) and player:getCurrency('legion_point') > 14) then
      player:addItem(1562,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1562)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,20) and player:getCurrency('legion_point') > 14) then
      player:addItem(1563,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1563)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,21) and player:getCurrency('legion_point') > 14) then
      player:addItem(1564,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1564)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,22) and player:getCurrency('legion_point') > 14) then
      player:addItem(1565,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1565)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,23) and player:getCurrency('legion_point') > 14) then
      player:addItem(1566,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1566)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,24) and player:getCurrency('legion_point') > 14) then
      player:addItem(1567,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1567)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,25) and player:getCurrency('legion_point') > 14) then
      player:addItem(1568,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1568)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,26) and player:getCurrency('legion_point') > 14) then
      player:addItem(1569,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1569)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,27) and player:getCurrency('legion_point') > 14) then
      player:addItem(1570,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1570)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,28) and player:getCurrency('legion_point') > 14) then
      player:addItem(1821,1)
	  player:delCurrency('legion_point',15)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1821)
	  player:PrintToPlayer(string.format("15 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,29) and player:getCurrency('legion_point') > 29) then
      player:addItem(1571,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1571)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,30) and player:getCurrency('legion_point') > 29) then
      player:addItem(1572,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1572)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,31) and player:getCurrency('legion_point') > 29) then
      player:addItem(1573,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1573)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,32) and player:getCurrency('legion_point') > 29) then
      player:addItem(1574,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1574)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,33) and player:getCurrency('legion_point') > 29) then
      player:addItem(1575,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1575)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,34) and player:getCurrency('legion_point') > 29) then
      player:addItem(1576,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1576)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,35) and player:getCurrency('legion_point') > 29) then
      player:addItem(1577,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1577)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,36) and player:getCurrency('legion_point') > 29) then
      player:addItem(1578,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1578)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,37) and player:getCurrency('legion_point') > 29) then
      player:addItem(1579,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1579)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,38) and player:getCurrency('legion_point') > 29) then
      player:addItem(1580,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1580)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,39) and player:getCurrency('legion_point') > 29) then
      player:addItem(1581,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1581)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,40) and player:getCurrency('legion_point') > 29) then
      player:addItem(1582,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1582)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,41) and player:getCurrency('legion_point') > 29) then
      player:addItem(1583,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1583)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,42) and player:getCurrency('legion_point') > 29) then
      player:addItem(1584,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1584)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,43) and player:getCurrency('legion_point') > 29) then
      player:addItem(1585,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1585)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,44) and player:getCurrency('legion_point') > 29) then
      player:addItem(1822,1)
	  player:delCurrency('legion_point',30)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.ITEM_OBTAINED,1822)
	  player:PrintToPlayer(string.format("30 Log-In Points deducted."), 21)
elseif(trade:hasItemQty(65535,45) and player:getCurrency('legion_point') > 19) and player:hasKeyItem(xi.ki.OMEGA_COMPANION) == false then
      player:addKeyItem(xi.ki.OMEGA_COMPANION)
	  player:delCurrency('legion_point',20)
	  player:tradeComplete()  
	  player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.OMEGA_COMPANION)
	  player:PrintToPlayer(string.format("20 Log-In Points deducted."), 21)
	  else 
	  player:PrintToPlayer(string.format("You have the Omega Mount already man..."), 21)
end
end


entity.onTrigger = function(player,npc)
   
       player:PrintToPlayer(string.format("Hello Adventurer! You're probably wondering why Ig-Alima is giving you Log-In Points?!"), 21)
       player:PrintToPlayer(string.format("   Well... They are to be spent here! To check your Points, just write !Points"), 21)
       player:PrintToPlayer(string.format("   Below is the list of items i sell for your Log-In Points."), 21)
       player:PrintToPlayer(string.format("   1 Log-In Point = 2 Ancient Beastcoins. 5 Log-In Points can get you a 100 Dyna peice or a NQ Zilart king pop"), 21)
       player:PrintToPlayer(string.format("   10 Points can get you a Moon Orb (Up In Arms BCNM) or a HQ Zilart king pop."), 21)
       player:PrintToPlayer(string.format("   15 Points can get you an attestion of your choice."), 21)
	   player:PrintToPlayer(string.format("   20 Points will get you an awesome Omega mount!"), 21)	
       player:PrintToPlayer(string.format("   And lastly 30 Points can get you a fragment for the weapon of your choice."), 21)
       player:PrintToPlayer(string.format("   Please refer to https://vrtra.fandom.com/wiki/Daily_Log-In_Points for more information on how to obtain what item."), 21)
 
end
return entity