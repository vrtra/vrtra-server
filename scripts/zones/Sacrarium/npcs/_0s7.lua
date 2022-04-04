-----------------------------------
-- Area: Sacrarium
--  NPC: _0s7 (Wooden Gate)
-- !pos 213.375 -3.500 -20.000 28
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    if npc:getAnimation() == 9 then
        npc:openDoor()
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
