-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Relic Overseer (75 -> 80)
--  Type: Quest
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/keyitems")
require("scripts/globals/status")

local prize = {
    ["Relic"] = {
	                18313, -- kikoku	
					18331, -- claustrum
					18295, -- bravura
					18271, -- mandau
					16195, -- aegis
					18301, -- gungir
					18307, -- apocalypse
					18265, -- spharai
					18277, -- excalibur
					18283, -- ragnarok
					18289, -- guttler
                    18319, -- amano
					18325, -- mjollnir
					18337, -- annihilator
					18349, -- yoichi
					18577, -- ghorn
	                },
}

local augWeaponTable = {
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
local augWeaponTiers = {
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

relic80 = {
	   
    [xi.job.NIN] = {18313}, -- kikoku	
	[xi.job.BLM] = {18331}, -- claustrum
	[xi.job.WAR] = {18295}, -- bravura
	[xi.job.THF] = {18271}, -- mandau
	[xi.job.PLD] = {16195}, -- aegis
	[xi.job.DRG] = {18301}, -- gungir
	[xi.job.DRK] = {18307}, -- apocalypse
	[xi.job.MNK] = {18265}, -- spharai
	[xi.job.RDM] = {18277}, -- excalibur
	[xi.job.BST] = {18289}, -- guttler
    [xi.job.SAM] = {18319}, -- amano
	[xi.job.WHM] = {18325}, -- mjollnir
	[xi.job.RNG] = {18337}, -- annihilator
	[xi.job.BRD] = {18577}  -- ghorn
} 
local relicTable = {
    [xi.job.NIN]   = {18312 , 18313}, -- kikoku	
	[xi.job.BLM]   = {18330 , 18331}, -- claustrum
	[xi.job.WAR]   = {18294 , 18295}, -- bravura
	[xi.job.THF]   = {18270 , 18271}, -- mandau
	[xi.job.PLD]   = {15070 , 16195}, -- aegis
	[xi.job.DRG]   = {18300 , 18301}, -- gungnir
	[xi.job.DRK]   = {18306 , 18307}, -- apocalypse
	[xi.job.MNK]   = {18264 , 18265}, -- spharai
	[xi.job.RDM]   = {18276 , 18277}, -- excalibur
	[xi.job.BST]   = {18288 , 18289}, -- guttler
    [xi.job.SAM]   = {18318 , 18319}, -- amano
	[xi.job.WHM]   = {18324 , 18325}, -- mjollnir
	[xi.job.RNG]   = {18336 , 18337}, -- annihilator
	[xi.job.BRD]   = {18342 , 18577}, -- ghorn

}
relic75 = {
	   
    [xi.job.NIN] = {18312}, -- kikoku	
	[xi.job.BLM] = {18330}, -- claustrum
	[xi.job.WAR] = {18294}, -- bravura
	[xi.job.THF] = {18270}, -- mandau
	[xi.job.PLD] = {15070}, -- aegis
	[xi.job.DRG] = {18300}, -- gungir
	[xi.job.DRK] = {18306}, -- apocalypse
	[xi.job.MNK] = {18264}, -- spharai
	[xi.job.RDM] = {18276}, -- excalibur
	[xi.job.BST] = {18288}, -- guttler
    [xi.job.SAM] = {18318}, -- amano
	[xi.job.WHM] = {18324}, -- mjollnir
	[xi.job.RNG] = {18336}, -- annihilator
	[xi.job.BRD] = {18342}  -- ghorn
} 

function rollAugmentedWeapon(player, id, tier)
    local aug1 = 0 local aug2 = 0 local aug3 = 0 local aug4 = 0
    local v1 = 0 local v2 = 0 local v3 = 0 local v4 =0

    if math.random(1, 100) <= tier.aug1 then	
        aug1 = augWeaponTable[tier.name][math.random(1, #(augWeaponTable[tier.name]))]
        v1 = math.random(1, tier.maxVal)
    end    
	if math.random(1, 100) <= tier.aug2 then
        aug2 = augWeaponTable[tier.name][math.random(1, #(augWeaponTable[tier.name]))]
        v2 = math.random(0, tier.maxVal)
        if aug2 == aug1 then
    repeat
        aug2 = augWeaponTable[tier.name][math.random(1, #(augWeaponTable[tier.name]))]
        print(string.format("Rerolled aug2"))
    until( aug2 ~= aug1)
        end
    end
	if math.random(1, 100) <= tier.aug3 then
        aug3 = augWeaponTable[tier.name][math.random(1, #(augWeaponTable[tier.name]))]
        v3 = math.random(0, tier.maxVal)
        if aug3 == aug2 or aug3 == aug1 then
    repeat
        aug3 = augWeaponTable[tier.name][math.random(1, #(augWeaponTable[tier.name]))]
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
    local   id = getItemId(trade)	
    if id == -1 then return false 
    end
   
    for k,tier in pairs(augWeaponTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 
		and player:getVar("relic_augment") == 1 
		and player:getCP() > 4999
		then
            rollAugmentedWeapon(player, id, tier)
			player:delCP(5000)
            break
		end

    end

end

entity.onTrigger = function(player,npc) 

	local weaponTable = relicTable[player:getMainJob()]
	local baseWeapon = weaponTable[1]
	local rewardWeapon = weaponTable[2]
        
    for i = xi.inv.INVENTORY, xi.inv.WARDROBE4 do 
        if (player:hasItem(baseWeapon, i)) and
		    player:getVar("Chlevnik") == 1 and 
	        player:getVar("Tartaruga") == 1 and 
	        player:getVar("Wyrm") == 1 then
            player:delItem(baseWeapon, 1, i)
            print(string.format("Base Weapon Deleted"))
		    player:addItem(rewardWeapon)
		    player:messageSpecial(ID.text.ITEM_OBTAINED,rewardWeapon)
		    player:setVar("relic_augment",1)
	        player:setVar("Chlevnik",0) 
	        player:setVar("Tartaruga",0) 
	        player:setVar("Wyrm",0)
		    player:PrintToPlayer(string.format("Relic Overseer : Congratulations on your Level 80 Relic weapon!"), 21)
		elseif player:hasItem(18348) and -- Yoichinoyumi
		    player:getVar("Chlevnik") == 1 and 
	        player:getVar("Tartaruga") == 1 and 
	        player:getVar("Wyrm") == 1 then
		    player:delItem(18348,1)
		    player:addItem(18349)
		    player:messageSpecial(ID.text.ITEM_OBTAINED,18349)
	        player:setVar("Chlevnik",0) 
	        player:setVar("Tartaruga",0) 
	        player:setVar("Wyrm",0)
		    player:PrintToPlayer(string.format("Relic Uprader : Congratulations on your Level 80 Relic weapon!"), 21)
		elseif player:hasItem(18282) and  -- ragnarok
		    player:getVar("Chlevnik") == 1 and 
	        player:getVar("Tartaruga") == 1 and 
	        player:getVar("Wyrm") == 1 then
		    player:delItem(18283,1)
		    player:addItem(18283)
		    player:messageSpecial(ID.text.ITEM_OBTAINED,18283)
		    player:setVar("relic_augment",1)
	        player:setVar("Chlevnik",0) 
	        player:setVar("Tartaruga",0) 
	        player:setVar("Wyrm",0)
		    player:PrintToPlayer(string.format("Relic Uprader : Congratulations on your Level 80 Relic weapon!"), 21)
            break
        end
	end
        if (i == xi.inv.WARDROBE4) then
            print(string.format("No Item Found"))
	    elseif player:hasItem(relicW) and player:getVar("relic_augment") == 0 then
	           player:setVar("relic_augment",1)
	           player:PrintToPlayer(string.format("Relic Overseer : Congratulations, you may now augment your Relic Weapon!"), 21)	        
	    elseif player:hasItem(18349) and player:getVar("relic_augment") == 0 then -- yoichi
	           player:setVar("relic_augment",1)
	           player:PrintToPlayer(string.format("Relic Overseer : Congratulations, you may now augment your Relic Weapon!"), 21)
	    elseif player:hasItem(18283) and player:getVar("relic_augment") == 0 then -- ragnarok
	           player:setVar("relic_augment",1)
	           player:PrintToPlayer(string.format("Relic Overseer : Congratulations, you may now augment your Relic Weapon!"), 21)		
	    else
	           player:PrintToPlayer(string.format("Relic Overseer : Greetings %s!",player:getName()), 21)
               player:PrintToPlayer(string.format("   I am tasked with the duty of upgrading your Relic weapon from level 75 to level 80."), 21)
	           player:PrintToPlayer(string.format("   Defeat the three KS99 bosses, then come back and speak to me for your Level 80 Relic Weapon"), 21)
	           player:PrintToPlayer(string.format("   You must be on the job associated with the weapon i.e. for Aegis you must be on PLD or Excalibur you must be on RDM."), 21)
	           player:PrintToPlayer(string.format("   Yoichi or Ragnarok does not require you to be on a specific job, there is no level requirement either."), 21)
	           player:PrintToPlayer(string.format("   What's that? You want to augment your Relic weapon too?? Trade me your level 80 weapon and the stone then!"), 21)
		end
end  
return entity