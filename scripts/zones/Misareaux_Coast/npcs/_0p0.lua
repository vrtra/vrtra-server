-----------------------------------
-- Area: Misareaux Coast
--  NPC: Dilapidated Gate (Snowmint Point)
-- !pos 260 9 -435 25
-----------------------------------
local ID = require("scripts/zones/Misareaux_Coast/IDs")
require("scripts/globals/missions")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    local cop = player:getCurrentMission(COP)
    local copStat = player:getCharVar("PromathiaStatus")

    -- A PLACE TO RETURN (PM6-2)
    if (
        cop == xi.mission.id.cop.A_PLACE_TO_RETURN and copStat == 1 and
        player:getCharVar("Warder_Aglaia_KILL") == 1 and
        player:getCharVar("Warder_Euphrosyne_KILL") == 1 and
        player:getCharVar("Warder_Thalia_KILL") == 1
    ) then
        player:startEvent(10)
    elseif (
        cop == xi.mission.id.cop.A_PLACE_TO_RETURN and copStat == 1 and
        not GetMobByID(ID.mob.PM6_2_MOB_OFFSET + 0):isSpawned() and
        not GetMobByID(ID.mob.PM6_2_MOB_OFFSET + 1):isSpawned() and
        not GetMobByID(ID.mob.PM6_2_MOB_OFFSET + 2):isSpawned()
    ) then
        SpawnMob(ID.mob.PM6_2_MOB_OFFSET + 0):updateClaim(player)
        SpawnMob(ID.mob.PM6_2_MOB_OFFSET + 1):updateClaim(player)
        SpawnMob(ID.mob.PM6_2_MOB_OFFSET + 2):updateClaim(player)

    -- DEFAULT DIALOG
    else
        player:messageSpecial(ID.text.SNOWMINT_POINT_LOCKED)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    -- A PLACE TO RETURN (PM6-2)
    if (csid == 10) then
        player:setCharVar("PromathiaStatus", 0)
        player:setCharVar("Warder_Aglaia_KILL", 0)
        player:setCharVar("Warder_Euphrosyne_KILL", 0)
        player:setCharVar("Warder_Thalia_KILL", 0)
        player:completeMission(xi.mission.log_id.COP, xi.mission.id.cop.A_PLACE_TO_RETURN)
        player:addMission(xi.mission.log_id.COP, xi.mission.id.cop.MORE_QUESTIONS_THAN_ANSWERS)
    end
end

return entity
