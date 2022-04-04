-----------------------------------
-- Area: Appolyon
-- Name: NW Apollyon
-----------------------------------
local ID = require("scripts/zones/Apollyon/IDs")
require("scripts/globals/limbus")
require("scripts/globals/battlefield")
require("scripts/globals/keyitems")
-----------------------------------
local battlefield_object = {}

battlefield_object.onBattlefieldInitialise = function(battlefield)
    -- Decide witch of the 7 Bardhas will open the portal to floor 2.
    battlefield:setLocalVar("randomF1", ID.mob.APOLLYON_NW_MOB[1] + math.random(1, 7))

    battlefield:setLocalVar("loot", 1)
    SetServerVariable("[NW_Apollyon]Time", battlefield:getTimeLimit() / 60)
    xi.limbus.handleDoors(battlefield)
    xi.limbus.setupArmouryCrates(battlefield:getID())
end

battlefield_object.onBattlefieldTick = function(battlefield, tick)
    if battlefield:getRemainingTime() % 60 == 0 then
        SetServerVariable("[NW_Apollyon]Time", battlefield:getRemainingTime() / 60)
    end

    xi.battlefield.onBattlefieldTick(battlefield, tick)
end

battlefield_object.onBattlefieldRegister = function(player, battlefield)
end

battlefield_object.onBattlefieldEnter = function(player, battlefield)
    player:delKeyItem(xi.ki.COSMO_CLEANSE)
    player:delKeyItem(xi.ki.RED_CARD)
    player:setCharVar("Cosmo_Cleanse_TIME", os.time())
end

battlefield_object.onBattlefieldDestroy = function(battlefield)
    xi.limbus.handleDoors(battlefield, true)
    SetServerVariable("[NW_Apollyon]Time", 0)
end

battlefield_object.onBattlefieldLeave = function(player, battlefield, leavecode)
    player:messageSpecial(ID.text.HUM + 1)

    if leavecode == xi.battlefield.leaveCode.WON then
        local _, clearTime, partySize = battlefield:getRecord()
        player:startCutscene(32001, battlefield:getArea(), clearTime, partySize, battlefield:getTimeInside(), 1, battlefield:getLocalVar("[cs]bit"), 0)
    elseif leavecode == xi.battlefield.leaveCode.LOST then
        player:startCutscene(32002)
    end
end

return battlefield_object
