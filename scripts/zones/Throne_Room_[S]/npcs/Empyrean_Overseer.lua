-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Empy Weapon augment NPC 
--  Type: Quest
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/npc_util")

local prize = {


					
    ["Empy"] = 	{   
	                19397, -- Verethragna 
					19398, -- Twashtar
					19399, -- Almace
					19400, -- Caladbolg
					19401, -- Farsha
					19402, -- Ukonvasara
					19403, -- Redemption
					19404, -- Rhongomiant
					19405, -- Kannagi
					19406, -- Masamune
					19407, -- Gambanteinn
					19408, -- Hvergelmir
					19410, -- Armageddon
					19409, -- Gandiva
					18574, -- Daurdabla
					16192, -- Ochain
					},


					
					
		  
}

local augTiers = {
    { name = "T1", lv = 80, stone = 8933, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 0 }, -- Idle Augments
    { name = "T2", lv = 80, stone = 8942, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- Mage Augments
    { name = "T3", lv = 80, stone = 8951, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- SMN Pet Augments
    { name = "T4", lv = 80, stone = 8960, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- Healer Augments
    { name = "T5", lv = 80, stone = 8936, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- Ranged Augments 
    { name = "T6", lv = 80, stone = 8945, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 4 }, -- Tank Augments 
	{ name = "T7", lv = 80, stone = 8954, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- DEX Melee Augments
	{ name = "T8", lv = 80, stone = 8963, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- STR Melee Augments
    { name = "T9", lv = 80, stone = 8948, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- BST Pet Augments
	{ name = "T10", lv = 80, stone = 8939, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 1 }, -- BRD Augments

}

local augTable = {
["T1"] = {351, 49, 796, 137, 138, 140, 31, 1158, 40, 52, 51, 54, 55,
},
["T2"] = {516, 35, 133, 335, 334, 292, 40, 140, 343, 362, 80, 70, 
},
["T3"] = {321, 320, 109, 108, 107, 106, 112, 104, 105, 366, 369,
},
["T4"] = {517, 351, 140, 329, 323, 796, 40, 351, 371,
},
["T5"] = {515, 29, 27, 142, 211, 338, 326, 327, 328, 41, 212, 69, 
},
["T6"] = {514, 39, 79, 796, 31, 356, 363, 49, 134, 54, 56, 55, 1158, 37, 81,
},
["T7"] = {513, 41, 328, 144, 327, 142, 326, 195, 146, 49, 354, 68, 143, 79,
},
["T8"] = {512, 41, 328, 144, 327, 142, 326, 49, 354, 68, 143, 79,
},
["T9"] = {518, 109, 108, 107, 106, 112, 104, 105, 
},
["T10"] = {518, 322, 337, 35, 49, 40, 79, 31, 9, 1384 
}  
}

entity.rollAugmented = function(player, id, tier)
    local aug1 = 0 local aug2 = 0 local aug3 = 0 local aug4 = 0
    local v1 = 0 local v2 = 0 local v3 = 0 local v4 =0
	
    if math.random(1, 100) <= tier.aug1 then
        aug1 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v1 = math.random(0, tier.maxVal)
    end    
	if math.random(1, 100) <= tier.aug2 then
        aug2 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v2 = math.random(0, tier.maxVal)
        if aug2 == aug1 then
    repeat
        aug2 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        print(string.format("Rerolled aug2"))
    until( aug2 ~= aug1)
        end
    end
	if math.random(1, 100) <= tier.aug3 then
        aug3 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v3 = math.random(0, tier.maxVal)
        if aug3 == aug2 or aug3 == aug1 then
    repeat
        aug3 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        print(string.format("Rerolled aug3"))
    until( aug3 ~= aug2 and aug3 ~= aug1)
        end
    end	
	
    if (player:getFreeSlotsCount() >= 1) then
        player:delItem(id, 1)
		player:delCurrency("cruor",5000)
        player:tradeComplete()
        player:addItem(id, 1, aug1, v1, aug2, v2, aug3, v3, aug4, v4)
        print(string.format("prize id: %d, x1, aug1: %d / %d, aug2: %d / %d, aug3: %d / %d, aug4: %d / %d", id, aug1, v1, aug2, v2, aug3, v3, aug4, v4))
        player:messageSpecial(zones[player:getZoneID()].text.ITEM_OBTAINED, id)
    else
        player:messageBasic(xi.msg.basic.FULL_INVENTORY)
    end
end

entity.getItemId = function(trade)
    for k,set in pairs(prize) do
        for l,id in pairs(set) do
            if npcUtil.tradeHas(trade, id) then
                return id
            end
        end
    end

    return -1
end

entity.onTrade = function(player,npc,trade)
    local id = getItemId(trade)
    if id == -1 then return false end

    for k,tier in pairs(augTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 
		and player:getVar("empy_augment") == 1 
		and player:getCurrency("cruor") > 4999 
		then
            rollAugmented(player, id, tier)
            break
        end
    end
end

entity.onTrigger = function(player,npc)
    if player:getVar("empy_augment") == 1 then
	   player:PrintToPlayer(string.format("Empyrean Overseer : Soooo you defeated Shinryu did ya?"), 21)
	   player:PrintToPlayer(string.format("   Trade me your weapon and a stone and i'll augment it for ya."), 21)
	   player:PrintToPlayer(string.format("   It's going to cost ya tho, 5000 cruor! No excuses! Good luck!") ,21)
	   player:PrintToPlayer(string.format("   If you haven't deafeated Shinryu, speak to Prishe in the Vrtra Custom BCNM zone."), 21)
	else
	   player:PrintToPlayer(string.format("Empyrean Overseer : Get lost eh? Complete your empy and kill Shinryu if you wanna know what I'm about ya punk!"), 21)
	end
end

entity.onEventUpdate = function(player,csid,option)
end

entity.onEventFinish = function(player,csid,option)
    
end
return entity