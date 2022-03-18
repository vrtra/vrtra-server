-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Cooking Shop
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraCraft")
require("scripts/settings/main")

local entity = {}

entity.onTrigger = function(player,npc)
    xi.vrtraCraft.craftShop(player,npc)
    player:PrintToPlayer(string.format("   I am also Vrtra's Custom Cooking Quest NPC..."), 21)
    player:PrintToPlayer(string.format("   Obtain Cooking level 100 and Way of the Culinarian Key Item. Trade me a Torrent Crystal, and I will give you a torque!"), 21)	
end

entity.onTrade = function(player, npc, trade)
    if trade:hasItemQty(4243,1) and player:hasKeyItem(xi.ki.WAY_OF_THE_CULINARIAN) then  
        player:tradeComplete()
        player:addItem(10955,1)
	    player:messageSpecial(ID.text.ITEM_OBTAINED,10955)
	end
end

return entity
