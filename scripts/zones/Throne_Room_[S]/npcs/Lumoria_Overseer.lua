-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Sea armor augment npc
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/status")
require("scripts/globals/npc_util")


local prize = {
	["AF+1"] = {    
                     15225, -- fighters_mask_+1
                     14473, -- fighters_lorica_+ 1
                     14890, -- fighters_mufflers_+1
                     15561, -- fighters_cuisses_+1
                     15352, -- fighters_calligae_+1
                     15226, -- temple_crown_+1
                     14474, -- temple_cyclas_+1
                     14891, -- temple_gloves_+1
                     15562, -- temple_hose_+1
                     15353, -- temple_gaiters_+1
                     15227, -- healers_cap_+1
                     14475, -- healers_briault_+1
                     14892, -- healers_mitts_+1
                     15563, -- healers_pantaloons_+1
                     15354, -- healers_duckbills_+1
                     15228, -- wizards_petasos_+1
                     14476, -- wizards_coat_+1
                     14893, -- wizards_gloves_+1
                     15564, -- wizards_tonban_+1
                     15355, -- wizards_sabots_+1
                     15229, -- warlocks_chapeau_+1
                     14477, -- warlocks_tabard_+1
                     14894, -- warlocks_gloves_+1
                     15565, -- warlocks_tights_+1
                     15356, -- warlocks_boots_+1
                     15230, -- rogues_bonnet_+1
                     14478, -- rogues_vest_+1
                     14895, -- rogues_armlets_+1
                     15566, -- rogues_culottes_+1
                     15357, -- rogues_poulaines_+1
                     15231, -- gallant_coronet_+1
                     14479, -- gallant_surcoat_+1
                     14896, -- gallant_gauntlets_+1
                     15567, -- gallant_breeches_+1
                     15358, -- gallant_leggings_+1
                     15232, -- chaos_burgeonet_+1
                     14480, -- chaos_cuirass_+1
                     14897, -- chaos_gauntlets_+1
                     15568, -- chaos_flanchard_+1
                     15359, -- chaos_sollerets_+1
                     15233, -- beast_helm_+1
                     14481, -- beast_jackcoat_+1
                     14898, -- beast_gloves_+1
                     15569, -- beast_trousers_+1
                     15360, -- beast_gaiters_+1
                     15234, -- choral_roundlet_+1
                     14482, -- choral_justaucorps_+1
                     14899, -- choral_cuffs_+1
                     15570, -- choral_cannions_+1
                     15361, -- choral_slippers_+1
                     15235, -- hunters_beret_+1
                     14483, -- hunters_jerkin_+1
                     14900, -- hunters_bracers_+1
                     15571, -- hunters_braccae_+1
                     15362, -- hunters_socks_+1
                     15236, -- myochin_kabuto_+1
                     14484, -- myochin_domaru_+1
                     14901, -- myochin_kote_+1
                     15572, -- myochin_haidate_+1
                     15363, -- myochin_sune-ate_+1
                     15237, -- ninja_hatsuburi_+1
                     14485, -- ninja_chainmail_+1
                     14902, -- ninja_tekko_+1
                     15573, -- ninja_hakama_+1
                     15364, -- ninja_kyahan_+1
                     15238, -- drachen_armet_+1
                     14486, -- drachen_mail_+1
                     14903, -- drachen_finger_gauntlets_+1
                     15574, -- drachen_brais_+1
                     15365, -- drachen_greaves_+1
                     15239, -- evokers_horn_+1
                     14487, -- evokers_doublet_+1
                     14904, -- evokers_bracers_+1
                     15575, -- evokers_spats_+1
                     15366, -- evokers_pigaches_+1
                     11464, -- magus_keffiyeh_+1
                     11291, -- magus_jubbah_+1
                     15024, -- magus_bazubands_+1
                     16345, -- magus_shalwar_+1
                     11381, -- magus_charuqs_+1
                     11467, -- corsairs_tricorne_+1
                     11294, -- corsairs_frac_+1
                     15027, -- corsairs_gants_+1
                     16348, -- corsairs_culottes_+1
                     11384, -- corsairs_bottes_+1
                     11470, -- puppetry_taj_+1
                     11297, -- puppetry_tobe_+1
                     15030, -- puppetry_dastanas_+1
                     16351, -- puppetry_churidars_+1
                     11387, -- puppetry_babouches_+1
                     11475, -- dancers_tiara_+1
                     11302, -- dancers_casaque_+1
                     15035, -- dancers_bangles_+1
                     16357, -- dancers_tights_+1
                     11393, -- dancers_toe_shoes_+1
                     11476, -- dancers_tiara_+1
                     11303, -- dancers_casaque_+1
                     15036, -- dancers_bangles_+1
                     16358, -- dancers_tights_+1
                     11394, -- dancers_toe_shoes_+1
                     11477, -- scholars_mortarboard_+1
                     11304, -- scholars_gown_+1
                     15037, -- scholars_bracers_+1
                     16359, -- scholars_pants_+1
                     11395, -- scholars_loafers_+1  
				
	},					
    ["Homam"] = {
					14488, -- Homam Corazza
					15661, -- Homam Gambieras
					15576, -- Homam Cosciales
					14905, -- Homam Manopolas
					15240, -- Homam Zucchetto
					15241, -- Nashira Turban
					15577, -- Nashira Seraweels
					15662, -- Nashira Crackows
					14489, -- Nashira Manteel
					14906, -- Nashira Gages
    
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
		player:delCurrency("ancient_beastcoin",20)
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
		and player:getVar("sea_augment") == 1 
		and player:getCurrency("ancient_beastcoin") > 4 
		then
            rollAugmentedArmor(player, id, tier)
			player:delCurrency("ancient_beastcoin",5)
            break
        end
    end
end



entity.onTrigger = function(player,npc)
    if player:getVar("sea_augment") == 1 then
       player:PrintToPlayer(string.format("Lumoria Overseer :   Whoa whoa hold up, would you like to augment your +1 Artifact or Homam/Nashira Armor?"), 21)
       player:PrintToPlayer(string.format("   Stock up on some Ancient Beastcoins and trade them to Sagheera in Port Jeuno."), 21)
       player:PrintToPlayer(string.format("   Defeat Proto-Omega, Proto-Ultima, or Absolute Virtue, then come back and see me."), 21)	
       player:PrintToPlayer(string.format("   Trade me your item, the augmenting stone, and for 5 Ancient Beastcoins your gear will be augmented!"), 21)	
	else 
	   player:PrintToPlayer(string.format("Lumoria Overseer :  Until you defeat Proto-Omega, Proto-Ultima, or Absolute Virtue, I want nothing to do with ya..."), 21)
	end

end
return entity