-----------------------------------
-- Area: Hazhalm Testing Grounds
-- Name: The Rider Cometh
-----------------------------------
local ID = require("scripts/zones/Hazhalm_Testing_Grounds/IDs");
require("scripts/globals/keyitems");
require("scripts/globals/missions");
require("scripts/globals/quests");
require("scripts/globals/titles");


function onBcnmRegister(player,instance)
end;


function onBcnmEnter(player,instance)
end;



function onBcnmLeave(player,instance,leavecode)

    if (leavecode == 2) then 
        player:startEvent(0x7d01,1,1,1,instance:getTimeInside(),1,1,0);
    elseif (leavecode == 4) then
        player:startEvent(0x7d02);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)

    if (EventUpdateBCNM(player,csid,option)) then
        return;
    end
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)

    if (EventFinishBCNM(player,csid,option)) then
        return;
    end
end;
