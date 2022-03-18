---------------------------------------------------------------------------------------------------
-- Crystal NPC
-- auth: Wadski
-- desc: Sells Crystals
---------------------------------------------------------------------------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraCraft")
require("scripts/settings/main")

local entity = {}

entity.onTrigger = function(player,npc)
    xi.vrtraCraft.craftShop(player,npc)
end

entity.onTrade = function(player, npc, trade)
    xi.vrtraCraft.craftTrade(player,npc,trade) 
end

return entity
