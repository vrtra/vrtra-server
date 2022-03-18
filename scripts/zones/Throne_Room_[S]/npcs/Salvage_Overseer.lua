-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Salvage augment npc
--  Type: Quest
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/npc_util")

local prize = {
    ["Salvage"] = 		{
					14546, -- Ares' Cuirass
					15625, -- Ares' Flanchard
					14961, -- Ares's Gauntlets
					15711, -- Ares' Sollerets
					16084, -- Ares's Mask
					14562, -- Morrigan's Robe
					14977, -- Morrigan's Cuffs
					15641, -- Morrigan's Slops
					15727, -- Morrigan's Pigaches
					16100, -- Morrigan's Coronal
				    14550, -- skadi body
					14554, -- usukane body
					14558, -- marduk body
					16088, -- skadi head
					16092, -- usukane head
					16096, -- marduk head
					14965, -- skadi gloves
					14969, -- usukane gloves
					14973, -- marduk gloves
					15715, -- skadi feet
					15719, -- usukane feet
					15723, -- marduk feet
					15633, -- usukane legs
					15629, -- skadi legs
					15637, -- marduk legs

					
					},					
} 

local augArmorTable = {
["T1"] = {516, 35, 133, 335, 334, 292, 40, 140, 362, 80, 70, 
},
["T2"] = {321, 320, 109, 108, 107, 106, 112, 104, 105, 366, 369,
},
["T3"] = {517, 351, 140, 329, 323, 796, 40, 351,
},
["T4"] = {515, 29, 27, 142, 211, 326, 327, 328, 41, 212, 69, 
},
["T5"] = {514, 39, 79, 796, 31, 356, 363, 134, 54, 56, 55, 1158, 37, 81,
},
["T6"] = {513, 41, 328, 144, 327, 326, 195, 354, 68, 79,
},
["T7"] = {512, 41, 328, 144, 327, 326,  354, 68, 143, 79,
},
["T8"] = {518, 109, 108, 107, 106, 112, 104, 105, 79, 31, 9,
},
["T9"] = {518, 322, 337, 35, 40, 79, 31, 9, 1384 
}  
}

local augArmorTiers = {
    { name = "T1", lv = 80, stone = 8942, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- Mage Augments
    { name = "T2", lv = 80, stone = 8951, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- SMN Pet Augments
    { name = "T3", lv = 80, stone = 8960, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- Healer Augments
    { name = "T4", lv = 80, stone = 8936, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- Ranged Augments 
    { name = "T5", lv = 80, stone = 8945, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- Tank Augments 
	{ name = "T6", lv = 80, stone = 8954, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- DEX Melee Augments
	{ name = "T7", lv = 80, stone = 8963, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- STR Melee Augments
    { name = "T8", lv = 80, stone = 8948, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- BST Pet Augments
	{ name = "T9", lv = 80, stone = 8939, aug1 = 100, aug2 = 100, aug3 = 100, maxVal = 2 }, -- BRD Augments
}

function rollAugmentedArmor(player, id, tier)
    local aug1 = 0 local aug2 = 0 local aug3 = 0 local aug4 = 0
    local v1 = 0 local v2 = 0 local v3 = 0 local v4 =0

    if math.random(1, 100) <= tier.aug1 then
        aug1 = augArmorTable[tier.name][math.random(1, #(augArmorTable[tier.name]))]
        v1 = math.random(0, tier.maxVal)
    end    
	if math.random(1, 100) <= tier.aug2 then
        aug2 = augArmorTable[tier.name][math.random(1, #(augArmorTable[tier.name]))]
        v2 = math.random(0, tier.maxVal)
        if aug2 == aug1 then
    repeat
        aug2 = augArmorTable[tier.name][math.random(1, #(augArmorTable[tier.name]))]
        print(string.format("Rerolled aug2"))
    until( aug2 ~= aug1)
        end
    end
	if math.random(1, 100) <= tier.aug3 then
        aug3 = augArmorTable[tier.name][math.random(1, #(augArmorTable[tier.name]))]
        v3 = math.random(0, tier.maxVal)
        if aug3 == aug2 or aug3 == aug1 then
    repeat
        aug3 = augArmorTable[tier.name][math.random(1, #(augArmorTable[tier.name]))]
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

entity.onTrade = function(player,npc,trade)
    local id = getItemId(trade)
   if id == -1 then return false end

    for k,tier in pairs(augArmorTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 and player:getVar("salvage_augment") == 1 
		and player:getCurrency("shining_star") > 99 -- alex
		then
            rollAugmentedArmor(player, id, tier)
			player:delCurrency("shining_star",100)
            break
		end
    end

end

entity.onTrigger = function(player,npc)
   
	if player:getVar("salvage_augment",1) then
	   player:PrintToPlayer(string.format("Salvage Overseer : Trade me your armor, your stone and have at least 100 Alexandrite stored with Papparoon to augment."), 21)
	else
	   player:PrintToPlayer(string.format("Salvage Overseer : Hello there.  To upgrade your Salvage armor, speak to Ghanraam in Aht Urghan Whitegate."), 21)
	end
end

return entity