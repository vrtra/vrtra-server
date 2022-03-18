-----------------------------------
-- Area: Throne Room [S]
-- Name: Throne Room
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/bcnm")

    -- events:
    -- 7D00 : BCNM menu (1/1~1/3: The Wyrm God)
    -- 7D03 : run away from BCNM

-----------------------------------
-- onTrade Action
-----------------------------------

entity.onTrade = function(player,npc,trade)

    if (TradeBCNM(player,player:getZoneID(),trade,npc))then
		player:tradeComplete()
        return
    end


end

-----------------------------------
-- onTrigger Action
-----------------------------------

entity.onTrigger = function(player,npc)

    if (EventTriggerBCNM(player,npc))then
        return
    end

end

-----------------------------------
-- onEventUpdate
-----------------------------------

entity.onEventUpdate = function(player,csid,option)
    printf("onUpdate CSID: %u",csid)
    -- printf("onUpdate RESULT: %u",option)

    if (EventUpdateBCNM(player,csid,option))then
        return
    end

end

-----------------------------------
-- onEventFinish Action
-----------------------------------

entity.onEventFinish = function(player,csid,option)
    -- printf("onFinish CSID: %u",csid)
    -- printf("onFinish RESULT: %u",option)

    if (EventFinishBCNM(player,csid,option))then
        return
    end

end

return entity