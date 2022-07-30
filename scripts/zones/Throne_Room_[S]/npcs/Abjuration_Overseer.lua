-----------------------------------
-- fucking abjuration augment bro
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/npc_util")
-----------------------------------

local prize = {




    ["ABJ +1"] = {
                     13935, -- too lazy to comment what is what
                     14388, -- ripped from dsp, had no comments
                     14822, -- all +1 AJB    
                     14304,					 
                     14185,    
                     13924,
                     14371,    
                     14816,
                     14296,    
                     14175,
                     13877,    
                     13788,
                     14007,    
                     14248,
                     14124,    
                     13911,
                     14370,    
                     14061,
                     14283,    
                     14163,
                     13909,    
                     14368,
                     14059, -- blood finger gauntlets  
                     14281,
                     14161,    
                     13928,
                     14379,    
                     14077,
                     14309,    
                     14181,
                     16114,    
                     14574,
                     14996,    
                     15656,
                     15741,    
                     16116,
                     14576,    
                     14998,
                     15658,    
                     15743,
					 12434, -- bubu kabuto
					 12818, -- byakko pants
					 12690, -- seiryu kote
					 12946, -- suzy sune ate
                     					 
	},	             
			  
}

local augTiers = {

    { name = "T1", lv = 80, stone = 8942, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- Mage Augments
    { name = "T2", lv = 80, stone = 8951, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- SMN Pet Augments
    { name = "T3", lv = 80, stone = 8960, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- Healer Augments
    { name = "T4", lv = 80, stone = 8936, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- Ranged Augments 
    { name = "T5", lv = 80, stone = 8945, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- Tank Augments 
	{ name = "T6", lv = 80, stone = 8954, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- DEX Melee Augments
	{ name = "T7", lv = 80, stone = 8963, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- STR Melee Augments
    { name = "T8", lv = 80, stone = 8948, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- BST Pet Augments
	{ name = "T9", lv = 80, stone = 8939, aug1 = 100, aug2 = 100, aug3 = 66, maxVal = 2 }, -- BRD Augments
}

local augTable = {
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
		player:delCP(5000)
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
		and player:getVar("abj_augment") == 1 
		and player:getCP() > 4999
		then
            rollAugmented(player, id, tier)
            break
        end
    end
end

entity.onTrigger = function(player,npc)
    if player:getVar("abj_augment") == 1 then 
	   player:PrintToPlayer("Abjuration Overseer : Trade me your armor and a stone and I'll augment it for ya. You need to defeat Kirin first though!",21)
	   player:PrintToPlayer("   Just warning though, you cannot augment gear with Idle augments! (Leafslit stones)",21)
       player:PrintToPlayer("   It's going to cost ya though. 5,000 Conquest Points to be exact! No excuses! Good luck!",21)
	   player:PrintToPlayer("   Please remember that your armor cannot be augmented with the Idle augments also...",21)
	else
	   player:PrintToPlayer("Abjuration Overseer : I handle the augments for Abjurations. Go kill Kirin and come back to me... So beat it eh?",21)
	end
end

entity.onEventUpdate = function(player,csid,option)
end

entity.onEventFinish = function(player,csid,option)
    
end

return entity