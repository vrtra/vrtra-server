-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Leathercraft Shop
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraCraft")
require("scripts/settings/main")

local entity = {}

entity.onTrigger = function(player,npc)
    xi.vrtraCraft.craftShop(player,npc)
    player:PrintToPlayer(string.format("   I am also Vrtra's Custom Leatherworking Quest NPC..."), 21)
    player:PrintToPlayer(string.format("   Obtain Leatherworking level 100 and Way of the Tanner Key Item. Trade me a Plasma Crystal, and I will give you a torque!"), 21)
end

entity.onTrade = function(player, npc, trade)
    if trade:hasItemQty(4242,1) and player:hasKeyItem(xi.ki.WAY_OF_THE_TANNER) then
        player:tradeComplete()
        player:addItem(10952,1)
	    player:messageSpecial(ID.text.ITEM_OBTAINED,10952)
	end
end

return entity
