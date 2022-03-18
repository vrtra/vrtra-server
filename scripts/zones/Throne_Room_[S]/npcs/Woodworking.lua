-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Woodworking  Shop
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraCraft")
require("scripts/settings/main")

local entity = {}

entity.onTrigger = function(player,npc)
    xi.vrtraCraft.craftShop(player,npc)
    player:PrintToPlayer(string.format("   I am also Vrtra's Custom Woodworking Quest NPC..."), 21)
    player:PrintToPlayer(string.format("   Obtain Woodworking level 100 and Way of the Carpenter Key Item. Trade me a Terra Crystal, and I will give you a torque!"), 21)
end

entity.onTrade = function(player, npc, trade)
    if trade:hasItemQty(4241,1) and player:hasKeyItem(xi.ki.WAY_OF_THE_CARPENTER) then   
        player:tradeComplete()
        player:addItem(10948,1)
	    player:messageSpecial(ID.text.ITEM_OBTAINED,10948)
	end
end

return entity
