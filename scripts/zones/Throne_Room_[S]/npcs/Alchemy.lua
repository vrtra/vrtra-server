-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Alchemy Shop
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraCraft")
require("scripts/settings/main")

local entity = {}

entity.onTrigger = function(player,npc)
    xi.vrtraCraft.craftShop(player,npc)
    player:PrintToPlayer(string.format("   I am also Vrtra's Custom Alchemist Quest NPC..."), 21)
    player:PrintToPlayer(string.format("   Obtain Alchemy level 100 and the Way of the Alchemist Key Item. Trade me a Twilight Crystal, and I will give you a Torque!"), 21)
end

entity.onTrade = function(player, npc, trade)
    if trade:hasItemQty(4245,1) and player:hasKeyItem(xi.ki.WAY_OF_THE_ALCHEMIST) then   
        player:tradeComplete()
        player:addItem(10954,1)
	    player:messageSpecial(ID.text.ITEM_OBTAINED,10954)
	end 
end

return entity

