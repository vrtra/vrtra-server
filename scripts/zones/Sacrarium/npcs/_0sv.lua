-----------------------------------
-- Area: Sacrarium
--  NPC: _0sv (Switch)
-- Notes: Opens _0sw (Reliquiarium Gate)
-- !pos 23.447 -1.563 50.941 28
-----------------------------------
local entity = {}

entity.onTrigger = function(player, npc)
    local DoorID = npc:getID() + 1
    local DoorA = GetNPCByID(DoorID):getAnimation()

    if player:getZPos() < 52 then
        if DoorA == 8 then
            npc:openDoor(15)
        end
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
end

return entity
