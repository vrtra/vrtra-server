-----------------------------------
-- Area: Misareaux Coast
--  NPC: Iron Gate
--  Entrance to Sacrarium
-----------------------------------
require("scripts/globals/missions")
local ID = require("scripts/zones/Misareaux_Coast/IDs")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if player:hasCompletedMission(xi.mission.log_id.COP, xi.mission.id.cop.THE_SECRETS_OF_WORSHIP) then
        player:startEvent(502)
    else
        player:messageSpecial(ID.text.DOOR_CLOSED)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 502 and option == 1 then
        player:setPos(-220.075, -15.999, 79.634, 62, 28) -- To Sacrarium {R}
    end
end

return entity
