-----------------------------------
-- Ancient Flames Beckon
-- Spire of Mea mission battlefield
-----------------------------------
local ID = require("scripts/zones/Spire_of_Mea/IDs")
require("scripts/globals/battlefield")
require("scripts/globals/teleports")
require("scripts/globals/keyitems")
require("scripts/globals/missions")
require("scripts/globals/status")
require('scripts/missions/cop/helpers')
-----------------------------------
local battlefield_object = {}

battlefield_object.onBattlefieldTick = function(battlefield, tick)
    xi.battlefield.onBattlefieldTick(battlefield, tick)
end

battlefield_object.onBattlefieldRegister = function(player, battlefield)
end

battlefield_object.onBattlefieldEnter = function(player, battlefield)
end

battlefield_object.onBattlefieldLeave = function(player, battlefield, leavecode)
    if leavecode == xi.battlefield.leaveCode.WON then
        local _, clearTime, partySize = battlefield:getRecord()
        local arg8 = xi.cop.helpers.numPromyvionCompleted(player, xi.cop.helpers.promyvionCrags.MEA) + 1
        local copMission = player:getCurrentMission(xi.mission.log_id.COP)
        local promyvionId = (player:getZoneID() - 17) / 2

        if
            (copMission == xi.mission.id.cop.BELOW_THE_ARKS or
            copMission == xi.mission.id.cop.THE_MOTHERCRYSTALS) and
            not player:hasKeyItem(xi.ki.LIGHT_OF_HOLLA + promyvionId)
        then
            player:setLocalVar('newPromy', 1)
        end

        player:startEvent(32001, battlefield:getArea(), clearTime, partySize, battlefield:getTimeInside(), 0, battlefield:getLocalVar("[cs]bit"), 0, arg8)
    elseif leavecode == xi.battlefield.leaveCode.LOST then
        player:startEvent(32002)
    end
end

battlefield_object.onEventUpdate = function(player, csid, option)
end

battlefield_object.onEventFinish = function(player, csid, option)
    if csid == 32001 then
    
        if player:getCurrentMission(COP) == xi.mission.id.cop.THE_MOTHERCRYSTALS then
    
            if player:hasKeyItem(xi.ki.LIGHT_OF_HOLLA) and player:hasKeyItem(xi.ki.LIGHT_OF_DEM) then
                player:addExp(1500)
                player:addKeyItem(xi.ki.LIGHT_OF_MEA)
                player:messageSpecial(ID.text.CANT_REMEMBER,xi.ki.LIGHT_OF_MEA)
                player:completeMission(COP,xi.mission.id.cop.THE_MOTHERCRYSTALS)
                player:setCharVar("PromathiaStatus",0)
                player:addMission(COP,xi.mission.id.cop.AN_INVITATION_WEST)
                player:addStatusEffectEx(xi.effect.TELEPORT,0,xi.teleport.id.LUFAISE,0,1)
            elseif not player:hasKeyItem(xi.ki.LIGHT_OF_MEA) then
                player:setCharVar("cspromy3",1)
                player:addKeyItem(xi.ki.LIGHT_OF_MEA)
                player:addExp(1500)
                player:messageSpecial(ID.text.CANT_REMEMBER,xi.ki.LIGHT_OF_MEA)
                player:addStatusEffectEx(xi.effect.TELEPORT,0,xi.teleport.id.EXITPROMMEA,0,1)
            end
        
        elseif (player:getCurrentMission(COP) == xi.mission.id.cop.BELOW_THE_ARKS) then
            player:addExp(1500)
            player:completeMission(COP,xi.mission.id.cop.BELOW_THE_ARKS)
            player:addMission(COP,xi.mission.id.cop.THE_MOTHERCRYSTALS)
            player:setCharVar("cspromy2",1)
            player:setCharVar("PromathiaStatus",0)
            player:addKeyItem(xi.ki.LIGHT_OF_MEA)
            player:messageSpecial(ID.text.CANT_REMEMBER,xi.ki.LIGHT_OF_MEA)
            player:addStatusEffectEx(xi.effect.TELEPORT,0,xi.teleport.id.EXITPROMMEA,0,1)
        else
            player:addExp(1500)
            player:addStatusEffectEx(xi.effect.TELEPORT,0,xi.teleport.id.EXITPROMMEA,0,1)
        end
    end

end

return battlefield_object
