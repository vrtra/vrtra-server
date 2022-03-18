-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Clothcraft Shop
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraCraft")
require("scripts/settings/main")

local entity = {}

entity.onTrigger = function(player,npc)
    xi.vrtraCraft.craftShop(player,npc)
    player:PrintToPlayer(string.format("   I am also Vrtra's Custom Clothcraft Quest NPC..."), 21)
    player:PrintToPlayer(string.format("   Obtain Clothcrafting level 100 and Way of the Weaver Key Item. Trade me an Aurora Crystal, and I will give you a torque!"), 21)
end

entity.onTrade = function(player, npc, trade)
    if trade:hasItemQty(4244,1) and player:hasKeyItem(xi.ki.WAY_OF_THE_WEAVER) then
        player:tradeComplete()
        player:addItem(10951,1)
	    player:messageSpecial(ID.text.ITEM_OBTAINED,10951)
	end
end

return entity
