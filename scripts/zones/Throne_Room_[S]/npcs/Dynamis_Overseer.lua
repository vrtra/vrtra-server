-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Dynamis Gear Augmenter NPC
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/npc_util")



local prize = {
    ["AF2+1"] = {
                       15245, -- warriors_mask_+1
                       14500, -- warriors_lorica_+1
                       14909, -- warriors_mufflers_+1
                       15580, -- warriors_cuisses_+1
                       15665, -- warriors_calligae_+1
                       15246, -- melee_crown_+1
                       14501, -- melee_cyclas_+1
                       14910, -- melee_gloves_+1
                       15581, -- melee_hose_+1
                       15666, -- melee_gaiters_+1
                       15247, -- clerics_cap_+1
                       14502, -- clerics_briault_+1
                       14911, -- clerics_mitts_+1
                       15582, -- clerics_pantaloons_+1
                       15667, -- clerics_duckbills_+1
                       15248, -- sorcerers_petasos_+1
                       14503, -- sorcerers_coat_+1
                       14912, -- sorcerers_gloves_+1
                       15583, -- sorcerers_tonban_+1
                       15668, -- sorcerers_sabots_+1
                       15249, -- duelists_chapeau_+1
                       14504, -- duelists_tabard_+1
                       14913, -- duelists_gloves_+1
                       15584, -- duelists_tights_+1
                       15669, -- duelists_boots_+1
                       15250, -- assassins_bonnet_+1
                       14505, -- assassins_vest_+1
                       14914, -- assassins_armlets_+1
                       15585, -- assassins_culottes_+1
                       15670, -- assassins_poulaines_+1
                       15251, -- valor_coronet_+1
                       14506, -- valor_surcoat_+1
                       14915, -- valor_gauntlets_+1
                       15586, -- valor_breeches_+1
                       15671, -- valor_leggings_+1
                       15252, -- abyss_burgeonet_+1
                       14507, -- abyss_cuirass_+1
                       14916, -- abyss_gauntlets_+1
                       15587, -- abyss_flanchard_+1
                       15672, -- abyss_sollerets_+1
                       15253, -- monster_helm_+1
                       14508, -- monster_jackcoat_+1
                       14917, -- monster_gloves_+1
                       15588, -- monster_trousers_+1
                       15673, -- monster_gaiters_+1
                       15254, -- bards_roundlet_+1
                       14509, -- bards_justaucorps_+1
                       14918, -- bards_cuffs_+1
                       15589, -- bards_cannions_+1
                       15674, -- bards_slippers_+1
                       15255, -- scouts_beret_+1
                       14510, -- scouts_jerkin_+1
                       14919, -- scouts_bracers_+1
                       15590, -- scouts_braccae_+1
                       15675, -- scouts_socks_+1
                       15256, -- saotome_kabuto_+1
                       14511, -- saotome_domaru_+1
                       14920, -- saotome_kote_+1
                       15591, -- saotome_haidate_+1
                       15676, -- saotome_sune-ate_+1
                       15257, -- koga_hatsuburi_+1
                       14512, -- koga_chainmail_+1
                       14921, -- koga_tekko_+1
                       15592, -- koga_hakama_+1
                       15677, -- koga_kyahan_+1
                       15258, -- wyrm_armet_+1
                       14513, -- wyrm_mail_+1
                       14922, -- wyrm_finger_gauntlets_+1
                       15593, -- wyrm_brais_+1
                       15678, -- wyrm_greaves_+1
                       15259, -- summoners_horn_+1
                       14514, -- summoners_doublet_+1
                       14923, -- summoners_bracers_+1
                       15594, -- summoners_spats_+1
                       15679, -- summoners_pigaches_+1
                       11466, -- mirage_keffiyeh_+1
                       11293, -- mirage_jubbah_+1
                       15026, -- mirage_bazubands_+1
                       16347, -- mirage_shalwar_+1
                       11383, -- mirage_charuqs_+1
                       11469, -- commodore_tricorne_+1
                       11296, -- commodore_frac_+1
                       15029, -- commodore_gants_+1
                       16350, -- commodore_culottes_+1
                       11386, -- commodore_bottes_+1
                       11472, -- pantin_taj_+1
                       11299, -- pantin_tobe_+1
                       15032, -- pantin_dastanas_+1
                       16353, -- pantin_churidars_+1
                       11389, -- pantin_babouches_+1
                       11479, -- etoile_tiara_+1
                       11306, -- etoile_casaque_+1
                       15039, -- etoile_bangles_+1
                       16361, -- etoile_tights_+1
                       11397, -- etoile_toe_shoes_+1
                       11481, -- argute_mortarboard_+1
                       11308, -- argute_gown_+1
                       15041, -- argute_bracers_+1
                       16363, -- argute_pants_+1
                       11399, -- argute_loafers_+1
	},
}
local augTiers = {
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
        player:tradeComplete()
		player:delCurrency("voidstones",3)
		player:delCurrency("bayld",3)
		player:delCurrency("jetton",3)
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
    local id       = getItemId(trade)
    local count    = trade:getItemCount()
    local silver   = player:getCurrency("voidstones")
	local hundred  = player:getCurrency("bayld")
	local jade     = player:getCurrency("jetton") 
    local total    = player:getCurrency("voidstones") + count
    local total1 = player:getCurrency("bayld") + count
    local total2 = player:getCurrency("jetton") + count	
	
	
    if trade:hasItemQty(1453, count) 
        and total < 500 then 
            player:addCurrency("voidstones", count)
            player:tradeComplete()
			player:PrintToPlayer("You have stored ".. count .." M. Silverpieces", 21)
        
    elseif trade:hasItemQty(1456, count) 
        and total1 < 500 then 
            player:addCurrency("bayld", count)
            player:tradeComplete()
			player:PrintToPlayer("You have stored ".. count .." 100 Byne bills", 21)
        
    elseif trade:hasItemQty(1450, count) 
        and total2 < 500 then 
            player:addCurrency("jetton", count)
            player:tradeComplete()
			player:PrintToPlayer("You have stored ".. count .." L. Jadeshells", 21)
			

	elseif trade:hasItemQty(65535,1) and silver > 100 and player:getFreeSlotsCount() >=5 then
		    player:PrintToPlayer("Dynamis Overseer: I'm Sorry, you currently have more than 100 M. Silverpieces stored with me.", 21)
			player:PrintToPlayer("Dynamis Overseer: If you trade me 2 gil i can return 99 M. Silverpieces to you.", 21)
    elseif trade:hasItemQty(65535,2) and silver > 100 and player:getFreeSlotsCount() >=5  then
		    player:delCurrency("voidstones",99)
			player:addItem(1453,99)
			player:PrintToPlayer("Dynamis Overseer: You have recieved 99 M. Silverpieces back", 21)
	elseif trade:hasItemQty(65535,1) and silver < 100 and player:getFreeSlotsCount() >=5  then 
            player:delCurrency("voidstones", silver)		   
	        player:addItem(1453, silver)
			player:PrintToPlayer("Dynamis Overseer: You have recieved "..silver.." M. Silverpieces back", 21)	      	       
	elseif trade:hasItemQty(65535,3) and hundred > 100 and player:getFreeSlotsCount() >=5  then
		    player:PrintToPlayer("Dynamis Overseer: I'm Sorry, you currently have more than 100 Byne Bills stored with me.", 21)
			player:PrintToPlayer("Dynamis Overseer: If you trade me 4 gil i can return 99 100 Byne Bills to you.", 21)
    elseif trade:hasItemQty(65535,4) and hundred > 100 and player:getFreeSlotsCount() >=5  then
		    player:delCurrency("bayld",99)
			player:addItem(1456,99)
			player:PrintToPlayer("Dynamis Overseer: You have recieved 99 100 Byne Bills back", 21)
	elseif trade:hasItemQty(65535,1) and hundred < 100 and player:getFreeSlotsCount() >=5  then 
            player:delCurrency("bayld", hundred)		   
	        player:addItem(1456, hundred)
			player:PrintToPlayer("Dynamis Overseer: You have recieved "..hundred.." 100 Byne Bills back", 21)
	elseif trade:hasItemQty(65535,5) and jade > 100 and player:getFreeSlotsCount() >=5  then
		    player:PrintToPlayer("Dynamis Overseer: I'm Sorry, you currently have more than 100 L. Jadeshells stored with me.", 21)
			player:PrintToPlayer("Dynamis Overseer: If you trade me 6 gil i can return 99 L. Jadeshells to you.", 21)
    elseif trade:hasItemQty(65535,6) and jade > 100 and player:getFreeSlotsCount() >=5  then
		    player:delCurrency("voidstones",99)
			player:addItem(1450,99)
			player:PrintToPlayer("Dynamis Overseer: You have recieved 99 L. Jadeshells back", 21)
	elseif trade:hasItemQty(65535,1) and jade < 100 and player:getFreeSlotsCount() >=5  then 
            player:delCurrency("voidstones", jade)		   
	        player:addItem(1450, jade)
			player:PrintToPlayer("Dynamis Overseer: You have recieved "..jade.." Jadeshells back", 21)
    else
	    player:PrintToPlayer("Your storage is at max capacity or your inventory is full. If you're augmenting ignore this message.", 21)  	       
    end	 
	 
	if id == -1 then 
	return false 
    end
        for k,tier in pairs(augTiers) do
            if npcUtil.tradeHas(trade, {id, tier.stone})
		    and trade:getItemCount() == 2 
		    and player:getVar("dynamis_augment") == 1 
		    and silver > 2 and hundred > 2 and jade > 2
		    then
            rollAugmented(player, id, tier)
            break
            end
 	    end	
		
end

entity.onTrigger = function(player,npc)
    local silvers = player:getCurrency("voidstones")
	local hundred = player:getCurrency("bayld")
	local jade    = player:getCurrency("jetton")
	
	if player:getVar("dynamis_augment") == 1 then
	    player:PrintToPlayer(string.format("Dynamis Overseer : Hey there, wanna augment your +1 Relic gear?  Trade me a stone and your armor and I can do that."), 21)
		player:PrintToPlayer(string.format("   However you must defeat the fearsome Dynamis Lord before you can augment with me!"), 21)
		player:PrintToPlayer(string.format("   Annnd, it will cost you 3 M. Silverpieces, 3 100 Byne Bills and 3 L. Jadeshells per roll!"), 21)
		player:PrintToPlayer(string.format("   I can store your dynamis currency also up to 500 pieces of each one hundred piece!"), 21)
		player:PrintToPlayer(string.format("   If you want the currency back just trade me 1 gil for M. Silverpieces, 3 gil for 100 Bynes or 5 gil for L. Jadeshells."), 21)
		player:PrintToPlayer(string.format("   Sigh... I understand as much as I would like to keep your currency, you may need it back for other uses."), 21)
		player:PrintToPlayer(string.format("   So just make sure to read carefully and good luck augmenting!"), 21)	
		player:PrintToPlayer(string.format("   To see how much currency you have stored use the command !points."), 21)
    else   
	    player:PrintToPlayer(string.format("Dynamis Overseer : Hey there, wanna augment your +1 Relic gear? Kill Dynamis Lord and come back to me then!"), 21)
    end
end

return entity