-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Mythic Augments
--  Type: Augments
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/npc_util")

local prize = {
    ["Mythic"] = {
	                19078, -- Terpsichore
					19079, -- Tupsimati
					19060, -- Conqueror
					19061, -- Glanzfaust
					19062, -- Yagrush
					19063, -- Laevateinn
					19064, -- Murgleis
					19065, -- Vajra
					19066, -- Burtgang
					19067, -- Liberator
					19068, -- Aymur
					19069, -- Carnwenhan
					19070, -- Gastraphetes
					19071, -- Kogarasumaru
					19072, -- Nagi
					19073, -- Ryunohige
					19074, -- Nirvana
					19075, -- Tizona
					19076, -- Death Penalty
					19077, -- Kenkonken									
	},	
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

entity.rollAugmented = function(player, id, tier)
    local aug1 = 0 local aug2 = 0 local aug3 = 0 local aug4 = 0
    local v1 = 0 local v2 = 0 local v3 = 0 local v4 =0

    if math.random(1, 100) <= tier.aug1 then	
        aug1 = augTable[tier.name][math.random(1, #(augTable[tier.name]))]
        v1 = math.random(1, tier.maxVal)
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

entity.onTrade = function(player, npc, trade)
    local id = getItemId(trade)	
    if id == -1 then return false 
    end

    for k,tier in pairs(augTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 
		and player:getVar("mythic_augment") == 1 
		and player:getCurrency("imperial_standing") > 1999
		then
            rollAugmentedWeapon(player, id, tier)
			player:delCurrency("imperial_standing",2000)
            break
		end

    end

end
entity.onTrigger = function(player,npc)
    if player:getVar("mythic_augment") == 1 then
       player:PrintToPlayer(string.format("Mythic Overseer : Greetings %s!",player:getName()), 21)
	   player:PrintToPlayer(string.format("Mythic Overseer : Would you like to augment your mythic weapon? Trade me the weapon and the stone then!"), 21)
	else
	   player:PrintToPlayer(string.format("Mythic Overseer : Get out of here will ya? Complete your mythic weapon upgrade then come talk to me...geez..!"), 21)
    end
end 

return entity