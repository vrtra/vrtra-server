-----------------------------------
-- Area: Alzadaal Undersea Ruins
-- Door: Gilded Gateway (Arrapago)
-- !pos -580 0 -159 72
-----------------------------------
require("scripts/globals/zone")
require("scripts/globals/utils/salvage")
local ID = require("scripts/zones/Alzadaal_Undersea_Ruins/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player,npc,trade)
end

entity.onTrigger = function(player,npc)
    salvageUtil.onSalvageTrigger(player, npc, 408, 8)
end

entity.onEventUpdate = function(player,csid,option,target)
    salvageUtil.onSalvageUpdate(player, csid, option, target, 7399, xi.zone.ARRAPAGO_REMNANTS)
end

entity.onEventFinish = function(player,csid,option,target)
    if csid == 408 and option == 4 then
        player:setPos(0, 0, 0, 0, xi.zone.ARRAPAGO_REMNANTS)
    end
end

entity.onInstanceCreated = function(player,target,instance)
    salvageUtil.onInstanceCreated(player, target, instance, 411, 8)
end

return entity