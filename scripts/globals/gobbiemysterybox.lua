-----------------------------------
require("scripts/globals/settings")
require("scripts/globals/utils")
-----------------------------------

xi = xi or {}
xi.mystery = xi.mystery or {}

local adoulinOptionOff = 0x80
local pictlogicaOptionOff = 0x100
local wantedOptionOff = 0x1000
local hideOptionFlags = adoulinOptionOff + pictlogicaOptionOff + wantedOptionOff
local costs =
{
    [1] = 10,
    [2] = 10,
    [3] = 10,
    [4] = 10,
    [5] = 10,
    [6] = 50
}
local keyToDial =
{
    [8973] = 6,  -- special dial
    [9217] = 9,  -- abjuration
    [9218] = 10, -- fortune
  --[????] = 11, -- furnishing
    [9274] = 13, -- anniversary
}
local abjurationItems =
{

    6465,6225,6469,4146,6064,5735,5736, -- food

}
local fortuneItems =
{
    5737,5736, -- alexandrite
    1450,1453,1456, -- Dyna 100's
}
local anniversaryItems =
{
    -- TODO: The anniversary item table needs to be populated
    9274 -- just give them back their key until this table can be populated
}
local gobbieJunk =
{
    507,
    508,
    510,
    511,
    566,
    568,
    1239,
    1868,
    2542,
    2543,
    4539,
    4543,
    9777,
    15203,
    18180,
    19220
}
xi.mystery.onTrade = function (player, npc, trade, events)
    if trade:getItemCount() == 1 then
        local tradeID = trade:getItemId(0)
        if keyToDial[tradeID] ~= nil then
            -- TODO: Without campaigns, there's currently no method for obtaining keys
            if player:getFreeSlotsCount() == 0 then
                player:startEvent(events.FULL_INV, tradeID, keyToDial[tradeID])
                return false
            end
            player:setLocalVar("gobbieBoxKey", tradeID)
            player:startEvent(events.KEY_TRADE, tradeID, keyToDial[tradeID])
        else -- trade for points
            -- TODO: Point system needs to be defined
            return false
        end
    else
        return false
    end
end

xi.mystery.onTrigger = function (player, npc, events)
    local event = events
    local playerAgeDays = (os.time() - player:getTimeCreated()) / 86400
    local dailyTallyPoints = player:getCurrency("daily_tally")
    local firstVisit = dailyTallyPoints == -1
    local gobbieBoxUsed = player:getCharVar("gobbieBoxUsed")
    local specialDialUsed = utils.mask.getBit(gobbieBoxUsed, 0) and 1 or 0
    local adoulinDialUsed = utils.mask.getBit(gobbieBoxUsed, 1) and 1 or 0
    local pictlogicaDialUsed = utils.mask.getBit(gobbieBoxUsed, 2) and 1 or 0
    local wantedDialUsed = utils.mask.getBit(gobbieBoxUsed, 3) and 1 or 0
    local holdingItem = player:getCharVar("gobbieBoxHoldingItem")

    if playerAgeDays >= xi.settings.main.GOBBIE_BOX_MIN_AGE and firstVisit then
        player:startEvent(event.INTRO)
    elseif playerAgeDays >= xi.settings.main.GOBBIE_BOX_MIN_AGE then
        if holdingItem ~= 0 then
            player:startEvent(event.HOLDING_ITEM)
        else
            player:startEvent(event.DEFAULT, specialDialUsed, adoulinDialUsed, pictlogicaDialUsed, wantedDialUsed, 0, 0, hideOptionFlags, dailyTallyPoints)
        end
    else
        player:messageSpecial(zones[player:getZoneID()].text.YOU_MUST_WAIT_ANOTHER_N_DAYS, xi.settings.main.GOBBIE_BOX_MIN_AGE - playerAgeDays + 1)
    end
end

xi.mystery.onEventUpdate = function (player, csid, option, events)
    local event = events
    local dailyTallyPoints = player:getCurrency("daily_tally")
    local holdingItem = player:getCharVar("gobbieBoxHoldingItem")
    local gobbieBoxUsed = player:getCharVar("gobbieBoxUsed")
    local specialDialUsed = utils.mask.getBit(gobbieBoxUsed, 0) and 1 or 0
    local adoulinDialUsed = utils.mask.getBit(gobbieBoxUsed, 1) and 1 or 0
    local pictlogicaDialUsed = utils.mask.getBit(gobbieBoxUsed, 2) and 1 or 0
    local wantedDialUsed = utils.mask.getBit(gobbieBoxUsed, 3) and 1 or 0
    local itemID = 0

    if csid == event.KEY_TRADE then
        if option == 1 then
            local keyID = player:getLocalVar("gobbieBoxKey")
            player:setLocalVar("gobbieBoxKey", 0)
            switch (keyToDial[keyID]): caseof
            {
                [6] = function() itemID = SelectDailyItem(player, 6) end,  -- special dial
                [9] = function() -- abjuration
                    itemID = abjurationItems[math.random(1, #abjurationItems)]
                    if player:hasItem(itemID) then
                        itemID = gobbieJunk[math.random(1, #gobbieJunk)]
                    end
                end,
                [10] = function() itemID = fortuneItems[math.random(1, #fortuneItems)] end, -- fortune
              --[??] = function()  end, -- furnishing
                [13] = function()-- anniversary
                    if math.random(1,100) == 1 then -- 1% chance for ANV exclusive item?
                        itemID = anniversaryItems[math.random(1, #anniversaryItems)]
                    else
                        itemID = SelectDailyItem(player, 6)
                    end
                end
            }
            player:setCharVar("gobbieBoxHoldingItem", itemID)
            player:tradeComplete()
            player:updateEvent(itemID, keyToDial[keyID], 3)
        elseif option == 2 then
            if holdingItem > 0 and npcUtil.giveItem(player, holdingItem) then
                player:setCharVar("gobbieBoxHoldingItem", 0)
            end
            player:updateEvent(itemID, 0)
        end
    elseif csid == event.DEFAULT then
        if option == 4 then
            player:updateEvent(SelectDailyItem(player, 6), SelectDailyItem(player, 6), SelectDailyItem(player, 6), 0, 0, 0, 0, dailyTallyPoints) -- peek
        else
            local dial = math.floor(option / 8)
            local option_type = option % 8
            local dial_used = false
            local dial_cost = costs[dial]
            local dial_mask = false
            if dial >= 6 then
                dial_mask = dial - 6
                dial_used = utils.mask.getBit(gobbieBoxUsed, dial_mask)
            end
            switch (option_type): caseof
            {
                [1] = function()
                    if dial_used then
                        player:updateEvent(1, dial, 2) -- already used this dial
                    elseif dailyTallyPoints >= dial_cost then
                        itemID = SelectDailyItem(player, dial)
                        player:setCharVar("gobbieBoxHoldingItem", itemID)
                        player:setCurrency("daily_tally", dailyTallyPoints - dial_cost)
                        if dial_mask then
                            player:setCharVar("gobbieBoxUsed", utils.mask.setBit(gobbieBoxUsed, dial_mask, true))
                        end
                        player:updateEvent(itemID, dial, 0)
                    else
                        player:updateEvent(1, dial, 1) -- not enough points
                    end
                end,
                [2] = function()
                    if player:getFreeSlotsCount() == 0 then
                        player:updateEvent(holdingItem, 0, 0, 1) -- inventory full, exit event
                        player:messageSpecial(zones[player:getZoneID()].text.ITEM_CANNOT_BE_OBTAINED + 2) -- generic "Cannot obtain the item."
                    end
                end,
                [5] = function()
                    if holdingItem > 0 and npcUtil.giveItem(player, holdingItem) then
                        player:setCharVar("gobbieBoxHoldingItem", 0)
                    end
                    player:updateEvent(specialDialUsed, adoulinDialUsed, pictlogicaDialUsed, wantedDialUsed, 0, 0, hideOptionFlags, dailyTallyPoints)
                end,
            }
        end
    end
end

xi.mystery.onEventFinish = function (player, csid, option, events)
    local event = events
    if csid == event.INTRO then
        player:setCurrency("daily_tally", 50)
    elseif csid == event.HOLDING_ITEM then
        if player:getFreeSlotsCount() == 0 then
            player:messageSpecial(zones[player:getZoneID()].text.ITEM_CANNOT_BE_OBTAINED + 2) -- generic "Cannot obtain the item."
        elseif npcUtil.giveItem(player, player:getCharVar("gobbieBoxHoldingItem")) then
            player:setCharVar("gobbieBoxHoldingItem", 0)
        end
    end
end
