-----------------------------------
-- Area: Port Bastok
--  NPC: Curio Vendor Moogle
--  Shop NPC
-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/keyitems")
require("scripts/globals/shop")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:startEvent(9601)
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 9601 then
        if option >= 1 and option <= 6 then
            local stock = xi.shop.curioVendorMoogleStock[option]
            xi.shop.curioVendorMoogle(player, stock)
        end
    end
end
return entity
