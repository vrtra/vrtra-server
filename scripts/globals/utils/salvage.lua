-----------------------------------
-- Salvage Utilities
-- desc: Common functionality for Salvage
-- Notes: needs correct csid for align to enter in scripts
-----------------------------------
require("scripts/globals/items")
require("scripts/globals/keyitems")
require("scripts/globals/status")
require("scripts/globals/zone")
-----------------------------------
salvageUtil = {}
-----------------------------------

function salvageUtil.onSalvageTrigger(player, npc, CSID, indexID)
    if player:hasKeyItem(xi.ki.REMNANTS_PERMIT) or player:getGMLevel() > 0  or IsTestServer() then
        local mask = -2
        if player:getMainLvl() >= 96 then
            mask = -14
        elseif player:getMainLvl() >= 65 then
            mask = -6
        end

        player:startEvent(CSID, 0, mask, 0, 0, indexID)
    else
        player:messageText(player, zones[player:getZoneID()].text.NOTHING_HAPPENS)
    end
end

function salvageUtil.onSalvageUpdate(player, csid, option, target, shiftID, zoneID)
    local instanceid = bit.rshift(option, 19) + shiftID

    local align = player:getAlliance()

    if player:getGMLevel() == 0 and player:getPartySize() < 6 and not IsTestServer() then
        player:messageSpecial(zones[player:getZoneID()].text.PARTY_MIN_REQS, 3)
        player:instanceEntry(target,1)
        return
    end

    if player:getGMLevel() == 0 and not IsTestServer() then
        for i, players in ipairs(align) do
            if not players:hasKeyItem(xi.ki.REMNANTS_PERMIT) then
                player:messageText(player, zones[player:getZoneID()].text.MEMBER_NO_REQS, false)
                player:instanceEntry(target, 1)
                return
            elseif players:getZoneID() ~= player:getZoneID() or players:checkDistance(player) > 50 then
                player:messageText(player, zones[player:getZoneID()].text.MEMBER_TOO_FAR, false)
                player:instanceEntry(target, 1)
                return
            elseif (players:checkImbuedItems()) then
                player:messageText(player, zones[player:getZoneID()].text.MEMBER_IMBUED_ITEM, false)
                player:instanceEntry(target, 1)
                return
            end
        end
    end

    player:createInstance(instanceid, zoneID)
end

function salvageUtil.onInstanceCreated(player, target, instance, endID, destinationID)
    if instance then
        player:setInstance(instance)
        player:instanceEntry(target, 4)
        player:delKeyItem(xi.ki.REMNANTS_PERMIT)
        player:setLocalVar("Area", destinationID)

        local align = player:getAlliance()
        local initiator = player:getID()
        local Pzone = player:getZoneID()

        if align ~= nil then
            for i, players in ipairs(align) do
                if players:getID() ~= initiator and players:getZoneID() == Pzone then
                    players:setLocalVar("Area", destinationID)
                    players:setInstance(instance)
                    players:startEvent(endID, destinationID)
                    players:delKeyItem(xi.ki.REMNANTS_PERMIT)
                end
            end
        end
    else
        player:messageText(player, zones[player:getZoneID()].text.CANNOT_ENTER, false)
        player:instanceEntry(target, 3)
    end
end

function salvageUtil.afterInstanceRegister(player, textTable, fireFlies)
    local instance = player:getInstance()

    player:messageSpecial(textTable.TIME_TO_COMPLETE, instance:getTimeLimit())
    player:messageSpecial(textTable.SALVAGE_START, 1)
    player:addStatusEffectEx(xi.effect.ENCUMBRANCE_I, xi.effect.ENCUMBRANCE_I, 0xFFFF, 0, 6000)
    player:addStatusEffectEx(xi.effect.OBLIVISCENCE, xi.effect.OBLIVISCENCE, 1, 0, 6000)
    player:addStatusEffectEx(xi.effect.OMERTA, xi.effect.OMERTA, 0x3F, 0, 6000)
    player:addStatusEffectEx(xi.effect.IMPAIRMENT, xi.effect.IMPAIRMENT, 3, 0, 6000)
    player:addStatusEffectEx(xi.effect.DEBILITATION, xi.effect.DEBILITATION, 0x1FF, 0, 6000)
    player:addTempItem(fireFlies)
    player:messageSpecial(textTable.TEMP_ITEM, fireFlies)

    for i = xi.slot.MAIN, xi.slot.BACK do
        player:unequipItem(i)
    end
end

function salvageUtil.onDoorOpen(npc, stage, progress)
    local instance = npc:getInstance()
    if stage ~= nil then
        instance:setStage(stage)
    end
    if progress ~= nil then
        instance:setProgress(progress)
    end
    npc:setAnimation(8)
    npc:untargetable(true)
end

function salvageUtil.doorsUntargetable(npc, indexID)
    local instance = npc:getInstance()

    if type(indexID) == "table" then
        for i,v in pairs(indexID) do
            local door = instance:getEntity(bit.band(v, 0xFFF), xi.objType.NPC)
            door:untargetable(true)
        end
    else
        local door = instance:getEntity(bit.band(indexID, 0xFFF), xi.objType.NPC)
        door:untargetable(true)
    end
end

function salvageUtil.sealDoors(entity, indexID)
    local instance = entity:getInstance()

    if type(indexID) == "table" then
        for i,v in pairs(indexID) do
            local door = instance:getEntity(bit.band(v, 0xFFF), xi.objType.NPC)
            door:setLocalVar("unSealed", 0)
        end
    else
        local door = instance:getEntity(bit.band(indexID, 0xFFF), xi.objType.NPC)
        door:setLocalVar("unSealed", 0)
    end
end

function salvageUtil.unsealDoors(entity, indexID)
    local instance = entity:getInstance()

    if type(indexID) == "table" then
        for i,v in pairs(indexID) do
            local door = instance:getEntity(bit.band(v, 0xFFF), xi.objType.NPC)
            door:setLocalVar("unSealed", 1)
        end
    else
        local door = instance:getEntity(bit.band(indexID, 0xFFF), xi.objType.NPC)
        door:setLocalVar("unSealed", 1)
    end
end

function salvageUtil.onTriggerCrate(player, npc)
    if npc:getLocalVar("open") == 0 then
        local instance = npc:getInstance()
        local FIRST = {xi.items.CUMULUS_CELL, xi.items.UNDULATUS_CELL, xi.items.HUMILUS_CELL, xi.items.SPISSATUS_CELL}
        local SECOND =
        {
            xi.items.CASTELLANUS_CELL, xi.items.RADIATUS_CELL, xi.items.STRATUS_CELL, xi.items.CIRROCUMULUS_CELL,
            xi.items.VIRGA_CELL, xi.items.PANNUS_CELL, xi.items.FRACTUS_CELL, xi.items.CONGESTUS_CELL, xi.items.NIMBUS_CELL,
            xi.items.VELUM_CELL, xi.items.PILEUS_CELL, xi.items.MEDIOCRIS_CELL
        }

        player:addTreasure(xi.items.INCUS_CELL, npc)
        player:addTreasure(xi.items.INCUS_CELL, npc)
        player:addTreasure(xi.items.DUPLICATUS_CELL, npc)
        player:addTreasure(xi.items.PRAECIPITATIO_CELL, npc)
        player:addTreasure(xi.items.OPACUS_CELL, npc)
        player:addTreasure(FIRST[math.random(#FIRST)], npc)
        player:addTreasure(FIRST[math.random(#FIRST)], npc)
        player:addTreasure(SECOND[math.random(#SECOND)], npc)
        player:addTreasure(SECOND[math.random(#SECOND)], npc)

        if math.random(1,2) == 1 then
            player:addTreasure(xi.items.PRAECIPITATIO_CELL, npc)
        else
            player:addTreasure(xi.items.OPACUS_CELL, npc)
        end

        npc:entityAnimationPacket("open")
        npc:setLocalVar("open", 1)
        npc:timer(15000, function(npc) npc:entityAnimationPacket("kesu") end)
        npc:timer(16000, function(npc) npc:setStatus(xi.status.DISAPPEAR) end)
    end
end

function salvageUtil.handleSocketCells(mob, player)
    local amount = mob:getLocalVar("Qnt") * 2

    while amount > 0 do
        player:addTreasure(mob:getLocalVar("Cell"), mob)
        amount = amount - 1
    end
end

function salvageUtil.spawnStage(entity)
    local ID = require("scripts/zones/"..entity:getZoneName().."/IDs")
    local instance = entity:getInstance()
    local mobs = ID.mob[instance:getStage()][instance:getProgress()].STAGE_START

    for _, enemies in pairs(mobs) do
        if type(enemies) == "table" then
            for _, groups in pairs(enemies) do
                SpawnMob(groups, instance)
                instance:getEntity(bit.band(groups, 0xFFF), xi.objType.MOB):setLocalVar("spawned", 1)
            end
        else
            SpawnMob(enemies, instance)
            instance:getEntity(bit.band(enemies, 0xFFF), xi.objType.MOB):setLocalVar("spawned", 1)
        end
    end
end

function salvageUtil.spawnGroup(entity, groupID)
    local instance = entity:getInstance()

    for _, enemies in pairs(groupID) do
        if type(enemies) == "table" then
            for _, groups in pairs(enemies) do
                SpawnMob(groups, instance)
                instance:getEntity(bit.band(groups, 0xFFF), xi.objType.MOB):setLocalVar("spawned", 1)
            end
        else
            SpawnMob(enemies, instance)
            instance:getEntity(bit.band(enemies, 0xFFF), xi.objType.MOB):setLocalVar("spawned", 1)
        end
    end
end

function salvageUtil.deSpawnStage(entity)
    local instance = entity:getInstance()
    local mobs = instance:getMobs()

    for _,enemy in pairs(mobs) do
        local mobID = enemy:getID()
        DespawnMob(mobID, instance)
    end
end

function salvageUtil.spawnTempChest(mob, params)
    local ID = require("scripts/zones/"..mob:getZoneName().."/IDs")
    local instance = mob:getInstance()

    for _, casketID in ipairs(ID.npc[0].TEMP_ITEMS_BOX) do
        local casket = instance:getEntity(bit.band(casketID, 0xFFF), xi.objType.NPC)
        if casket:getStatus() == xi.status.DISAPPEAR then
            local pos = mob:getPos()
            casket:setPos(pos.x, pos.y, pos.z, pos.rot)
            casket:resetLocalVars()
            casket:setStatus(xi.status.NORMAL)
            if params.itemID_1 ~= nil then
                casket:setLocalVar("itemID_1", params.itemID_1)
                casket:setLocalVar("itemAmount_1", params.itemAmount_1)
            end
            break
        end
    end
end

function salvageUtil.tempBoxTrigger(player, npc)
    if npc:getLocalVar("itemsPicked") == 0 then
        npc:setLocalVar("itemsPicked", 1)
        npc:entityAnimationPacket("open")
        npc:AnimationSub(13)
        salvageUtil.tempBoxPickItems(npc)
    end

    player:startEvent(2, {[0] = (npc:getLocalVar("itemID_1") + (npc:getLocalVar("itemAmount_1") * 65536)),
    [1] = (npc:getLocalVar("itemID_2") + (npc:getLocalVar("itemAmount_2") * 65536)),
    [2] = (npc:getLocalVar("itemID_3") + (npc:getLocalVar("itemAmount_3") * 65536))})
end

function salvageUtil.tempBoxPickItems(npc)
    local tempBoxItems =
    {
        [1] = {itemID = xi.items.BOTTLE_OF_BARBARIANS_DRINK, amount = math.random(1,3)},
        [2] = {itemID = xi.items.BOTTLE_OF_FIGHTERS_DRINK,   amount = math.random(1,3)},
        [3] = {itemID = xi.items.BOTTLE_OF_ORACLES_DRINK,    amount = math.random(1,3)},
        [4] = {itemID = xi.items.BOTTLE_OF_ASSASSINS_DRINK,  amount = math.random(1,3)},
        [5] = {itemID = xi.items.BOTTLE_OF_SPYS_DRINK,       amount = math.random(1,3)},
        [6] = {itemID = xi.items.BOTTLE_OF_BRAVERS_DRINK,    amount = math.random(1,3)},
        [7] = {itemID = xi.items.BOTTLE_OF_SOLDIERS_DRINK,   amount = math.random(1,3)},
        [8] = {itemID = xi.items.BOTTLE_OF_CHAMPIONS_DRINK,  amount = math.random(1,3)},
        [9] = {itemID = xi.items.BOTTLE_OF_MONARCHS_DRINK,   amount = math.random(1,3)},
        [10] = {itemID = xi.items.BOTTLE_OF_GNOSTICS_DRINK,  amount = math.random(1,3)},
        [11] = {itemID = xi.items.BOTTLE_OF_CLERICS_DRINK,   amount = math.random(1,3)},
        [12] = {itemID = xi.items.BOTTLE_OF_SHEPHERDS_DRINK, amount = math.random(1,3)},
        [13] = {itemID = xi.items.BOTTLE_OF_SPRINTERS_DRINK, amount = math.random(1,3)},
        [14] = {itemID = xi.items.FLASK_OF_STRANGE_MILK,     amount = math.random(1,5)},
        [15] = {itemID = xi.itemsBOTTLE_OF_STRANGE_JUICE,    amount = math.random(1,5)},
        [16] = {itemID = xi.items.BOTTLE_OF_FANATICS_DRINK,  amount = 1},
        [17] = {itemID = xi.items.BOTTLE_OF_FOOLS_DRINK,     amount = 1},
        [18] = {itemID = xi.items.DUSTY_WING,                amount = 1},
        [19] = {itemID = xi.items.BOTTLE_OF_VICARS_DRINK,    amount = math.random(1,3)},
        [20] = {itemID = xi.items.DUSTY_POTION,              amount = math.random(1,10)},
        [21] = {itemID = xi.items.DUSTY_ETHER,               amount= math.random(1,10)},
        [22] = {itemID = xi.items.DUSTY_ELIXIR,              amount = 1}
    }
    local random = math.random(1,#tempBoxItems)
    local item = tempBoxItems[random]
    local item2_random = math.random(1,10) > 4
    local item3_random = math.random(1,10) > 8

    if npc:getLocalVar("itemID_1") == 0 then
        npc:setLocalVar("itemID_1", item.itemID)
        npc:setLocalVar("itemAmount_1", item.amount)
        table.remove(tempBoxItems, random)
    end

    if item2_random then
        random = math.random(1,#tempBoxItems)
        local item = tempBoxItems[random]

        npc:setLocalVar("itemID_2", item.itemID)
        npc:setLocalVar("itemAmount_2", item.amount)
        table.remove(tempBoxItems, random)
    end
    if item2_random and item3_random then
        random = math.random(1,#tempBoxItems)
        local item = tempBoxItems[random]

        npc:setLocalVar("itemID_3", item.itemID)
        npc:setLocalVar("itemAmount_3", item.amount)
        table.remove(tempBoxItems, random)
    end
end

function salvageUtil.tempBoxFinish(player, csid, option, npc)
    local ID = require("scripts/zones/"..player:getZoneName().."/IDs")

    if csid == 2 then
        local item_1 = npc:getLocalVar("itemID_1")
        local item_2 = npc:getLocalVar("itemID_2")
        local item_3 = npc:getLocalVar("itemID_3")
        if option == 1 and item_1 > 0 then
            if not player:hasItem(item_1, xi.inventoryLocation.TEMPITEMS) then
                player:addTempItem(item_1)
                player:messageSpecial(ID.text.TEMP_ITEM, item_1)
                npc:setLocalVar("itemAmount_1", npc:getLocalVar("itemAmount_1") - 1)
            else
                player:messageSpecial(ID.text.HAVE_TEMP_ITEM)
            end
        elseif option == 2 and item_2 > 0 then
            if not player:hasItem(item_2, xi.inventoryLocation.TEMPITEMS) then
                player:addTempItem(item_2)
                player:messageSpecial(ID.text.TEMP_ITEM, item_2)
                npc:setLocalVar("itemAmount_2", npc:getLocalVar("itemAmount_2") - 1)
            else
                player:messageSpecial(ID.text.HAVE_TEMP_ITEM)
            end
        elseif option == 3 and item_3 > 0 then
            if not player:hasItem(item_3, xi.inventoryLocation.TEMPITEMS) then
                player:addTempItem(item_3)
                player:messageSpecial(ID.text.TEMP_ITEM, item_3)
                npc:setLocalVar("itemAmount_3", npc:getLocalVar("itemAmount_3") - 1)
            else
                player:messageSpecial(ID.text.HAVE_TEMP_ITEM)
            end
        end
        if npc:getLocalVar("itemAmount_1") == 0 and npc:getLocalVar("itemAmount_2") == 0 and npc:getLocalVar("itemAmount_3") == 0 then
            npc:queue(10000, function(npc) npc:entityAnimationPacket("kesu") end)
            npc:queue(12000, function(npc) npc:setStatus(xi.status.DISAPPEAR) npc:AnimationSub(8) end)
        end
    end
end

function salvageUtil.resetTempBoxes(entity)
    local ID = require("scripts/zones/"..entity:getZoneName().."/IDs")
    local instance = entity:getInstance()

    for _, casketID in ipairs(ID.npc[0].TEMP_ITEMS_BOX) do
        local casket = instance:getEntity(bit.band(casketID, 0xFFF), xi.objType.NPC)
        if casket:getStatus() == xi.status.NORMAL then
            casket:setStatus(xi.status.DISAPPEAR)
            casket:resetLocalVars()
            casket:AnimationSub(8)
        end
    end
end

function salvageUtil.groupKilled(entity, indexID)
    local ID = require("scripts/zones/"..entity:getZoneName().."/IDs")
    local instance = entity:getInstance()

    for _, mobID in pairs(indexID) do
        local mobs = instance:getEntity(bit.band(mobID, 0xFFF), xi.objType.MOB)
        if mobs:getLocalVar("spawned") == 0 then
            return false
        elseif mobs:isAlive() then
            return false
        end
    end
    return true
end

function salvageUtil.removedPathos(entity)
    local count = 0
    local instance = entity:getInstance()
    local Chars = instance:getChars()

    for i, players in pairs(Chars) do
        if not players:hasStatusEffect(xi.effect.ENCUMBRANCE_I) and not players:hasStatusEffect(xi.effect.OBLIVISCENCE) and
            not players:hasStatusEffect(xi.effect.OMERTA) and not players:hasStatusEffect(xi.effect.IMPAIRMENT) and
            not players:hasStatusEffect(xi.effect.DEBILITATION) then
                count = count + 1
        end
    end

    return count
end

function salvageUtil.teleportGroup(entity)
    local instance = entity:getInstance()
    local chars = instance:getChars()

    for _, players in pairs(chars) do
        if players:getID() ~= entity:getID() then
            players:startCutscene(4)
            players:timer(4000, function(entity)
                entity:setPos(pos.x, pos.y, pos.z, pos.rot)
            end)
        end
        players:setHP(players:getMaxHP())
        players:setMP(players:getMaxMP())
        if players:getPet() then
            local pet = players:getPet()
            pet:setHP(pet:getMaxHP())
            pet:setMP(pet:getMaxMP())
        end
    end
end
