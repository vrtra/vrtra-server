-- Global Augment NPC
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/status")
require("scripts/globals/npc_util")

require("scripts/settings/main")
local entity = {}

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
["T1"] = {516, 35, 133, 335, 334, 292, 40, 140, 362, 80, 11,
},
["T2"] = {321, 320, 109, 108, 107, 106, 112, 104, 105, 366, 369, 11,
},
["T3"] = {517, 351, 140, 329, 323, 796, 40, 351, 11,
},
["T4"] = {515, 29, 27, 142, 211, 326, 327, 328, 41, 212, 69, 
},
["T5"] = {514, 39, 79, 796, 31, 356, 363, 134, 54, 56, 55, 61, 37, 81, 3,
},
["T6"] = {513, 41, 328, 144, 327, 326, 195, 354, 68, 79,
},
["T7"] = {512, 41, 328, 144, 327, 326,  354, 68, 143, 79,
},
["T8"] = {518, 109, 108, 107, 106, 112, 104, 105, 79, 31, 9,
},
["T9"] = {518, 322, 337, 35, 40, 79, 31, 9, 1384, 11 
}  
}
local augWeaponTable = {
["T1"] = {351, 49, 796, 137, 138, 140, 31, 61, 40, 52, 51, 54, 55, 3, 11,
},
["T2"] = {516, 35, 133, 335, 334, 292, 40, 140, 343, 362, 80, 70, 131, 11,
},
["T3"] = {321, 320, 109, 108, 107, 106, 112, 104, 105, 366, 369, 11,
},
["T4"] = {517, 351, 140, 329, 323, 796, 40, 351, 371,  11,
},
["T5"] = {515, 29, 27, 142, 211, 338, 326, 327, 328, 41, 212, 69, 
},
["T6"] = {514, 39, 79, 796, 31, 356, 363, 49, 134, 54, 56, 55, 61, 37, 81, 3,
},
["T7"] = {513, 41, 328, 144, 327, 142, 326, 195, 146, 49, 354, 68, 143, 79,
},
["T8"] = {512, 41, 328, 144, 327, 142, 326, 49, 354, 68, 143, 79,
},
["T9"] = {518, 109, 108, 107, 106, 112, 104, 105, 
},
["T10"] = {518, 322, 337, 35, 49, 40, 79, 31, 9, 1384, 11
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
function rollAugmentedArmor(player, id, tier)
    local aug1 = 0; local aug2 = 0; local aug3 = 0; local aug4 = 0;
    local v1 = 0; local v2 = 0; local v3 = 0; local v4 =0;

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
        player:tradeComplete();
        player:addItem(id, 1, aug1, v1, aug2, v2, aug3, v3, aug4, v4);
        print(string.format("prize id: %d, x1, aug1: %d / %d, aug2: %d / %d, aug3: %d / %d, aug4: %d / %d", id, aug1, v1, aug2, v2, aug3, v3, aug4, v4))
        player:messageSpecial(zones[player:getZoneID()].text.ITEM_OBTAINED, id)
    else
        player:messageBasic(xi.msg.basic.FULL_INVENTORY)
    end
end
function rollAugmentedWeapon(player, id, tier)
    local aug1 = 0; local aug2 = 0; local aug3 = 0; local aug4 = 0;
    local v1 = 0; local v2 = 0; local v3 = 0; local v4 =0;

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
        player:tradeComplete();
        player:addItem(id, 1, aug1, v1, aug2, v2, aug3, v3, aug4, v4);
        print(string.format("prize id: %d, x1, aug1: %d / %d, aug2: %d / %d, aug3: %d / %d, aug4: %d / %d", id, aug1, v1, aug2, v2, aug3, v3, aug4, v4))
        player:messageSpecial(zones[player:getZoneID()].text.ITEM_OBTAINED, id)
    else
        player:messageBasic(xi.msg.basic.FULL_INVENTORY)
    end
end
function getItemId(trade)
    for k,set in pairs(prize) do
        for l,id in pairs(set) do
            if npcUtil.tradeHas(trade, id) then
                return id
            end
        end
    end

    return -1
end
function dynaAugmentTrade(player,npc,trade)
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
		    player:PrintToPlayer("Dynamis Overseer : I'm sorry, you currently have more than 100 Montiont Silverpieces stored with me.", 21)
			player:PrintToPlayer("   If you trade me 2 gil, I can return 99 Montiont Silverpieces to you.", 21)
    elseif trade:hasItemQty(65535,2) and silver > 100 and player:getFreeSlotsCount() >=5  then
		    player:delCurrency("voidstones",99)
			player:addItem(1453,99)
			player:PrintToPlayer("Dynamis Overseer : You have received 99 Montiont Silverpieces back.", 21)
	elseif trade:hasItemQty(65535,1) and silver < 100 and player:getFreeSlotsCount() >=5  then 
            player:delCurrency("voidstones", silver)		   
	        player:addItem(1453, silver)
			player:PrintToPlayer("Dynamis Overseer : You have received "..silver.." M. Silverpieces back", 21)	      	       
	elseif trade:hasItemQty(65535,3) and hundred > 100 and player:getFreeSlotsCount() >=5  then
		    player:PrintToPlayer("Dynamis Overseer : I'm sorry, you currently have more than 100 One Hundred Byne Bills stored with me.", 21)
			player:PrintToPlayer("   If you trade me 4 gil, I can return 99 One Hundred Byne Bills to you.", 21)
    elseif trade:hasItemQty(65535,4) and hundred > 100 and player:getFreeSlotsCount() >=5  then
		    player:delCurrency("bayld",99)
			player:addItem(1456,99)
			player:PrintToPlayer("Dynamis Overseer : You have received 99 One Hundred Byne Bills back.", 21)
	elseif trade:hasItemQty(65535,1) and hundred < 100 and player:getFreeSlotsCount() >=5  then 
            player:delCurrency("bayld", hundred)		   
	        player:addItem(1456, hundred)
			player:PrintToPlayer("Dynamis Overseer : You have received "..hundred.." One Hundred Byne Bills back.", 21)
	elseif trade:hasItemQty(65535,5) and jade > 100 and player:getFreeSlotsCount() >=5  then
		    player:PrintToPlayer("Dynamis Overseer : I'm sorry, you currently have more than 100 Lungo-Nango Jadeshells stored with me.", 21)
			player:PrintToPlayer("   If you trade me 6 gil, I can return 99 Lungo-Nango Jadeshells to you.", 21)
    elseif trade:hasItemQty(65535,6) and jade > 100 and player:getFreeSlotsCount() >=5  then
		    player:delCurrency("voidstones",99)
			player:addItem(1450,99)
			player:PrintToPlayer("Dynamis Overseer : You have received 99 Lungo-Nango Jadeshells back.", 21)
	elseif trade:hasItemQty(65535,1) and jade < 100 and player:getFreeSlotsCount() >=5  then 
            player:delCurrency("voidstones", jade)		   
	        player:addItem(1450, jade)
			player:PrintToPlayer("Dynamis Overseer : You have received "..jade.." Lungo-Nango Jadeshells back.", 21)
    else
	    player:PrintToPlayer("Dynamis Overseer : Your storage is at max capacity or your inventory is full. If you're augmenting, ignore this message.", 21)  	       
    end	 
	 
	if id == -1 then 
	return false 
    end
        for k,tier in pairs(augArmorTiers) do
            if npcUtil.tradeHas(trade, {id, tier.stone})
		    and trade:getItemCount() == 2 
		    and player:getVar("dynamis_augment") == 1 
		    and silver > 2 and hundred > 2 and jade > 2
		    then
            rollAugmentedArmor(player, id, tier)
		    player:delCurrency("voidstones",3)
		    player:delCurrency("bayld",3)
		    player:delCurrency("jetton",3)
            break
			end
  	    end	
		
end
function dynaAugmentTrigger(player,npc)
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
function lumoriaAugmentTrade(player,npc,trade)
   local id = getItemId(trade)
    if id == -1 then return false end

    for k,tier in pairs(augArmorTiers) do
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
function lumoriaAugmentTrigger(player,npc)	
    if player:getVar("sea_augment") == 1 then
       player:PrintToPlayer(string.format("Lumoria Overseer :   Whoa whoa hold up, would you like to augment your +1 Artifact or Homam/Nashira Armor?"), 21)
       player:PrintToPlayer(string.format("   Stock up on some Ancient Beastcoins and trade them to Sagheera in Port Jeuno."), 21)
       player:PrintToPlayer(string.format("   Defeat Proto-Omega, Proto-Ultima, or Absolute Virtue, then come back and see me."), 21)	
       player:PrintToPlayer(string.format("   Trade me your item, the augmenting stone, and for 5 Ancient Beastcoins your gear will be augmented!"), 21)	
	else 
	   player:PrintToPlayer(string.format("Lumoria Overseer :  Until you defeat Proto-Omega, Proto-Ultima, or Absolute Virtue, I want nothing to do with ya..."), 21)
	end
end
function abjurationAugmentTrade(player,npc,trade)
    local id = getItemId(trade)
    if id == -1 then return false end

    for k,tier in pairs(augArmorTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 
		and player:getVar("abj_augment") == 1 
		and player:getCP() > 4999
		then
            rollAugmentedArmor(player, id, tier)
			player:delCP(5000)
            break
        end
    end
end
function abjurationAugmentTrigger(player,npc)  
    if player:getVar("abj_augment") == 1 then 
	   player:PrintToPlayer("Abjuration Overseer : Trade me your armor and a stone and I'll augment it for ya. You need to defeat Kirin first though!",21);
	   player:PrintToPlayer("   Just warning though, you cannot augment gear with Idle augments! (Leafslit stones)",21)
       player:PrintToPlayer("   It's going to cost ya though. 5,000 Conquest Points to be exact! No excuses! Good luck!",21);
	   player:PrintToPlayer("   Please remember that your armor cannot be augmented with the Idle augments also...",21)
	else
	   player:PrintToPlayer("Abjuration Overseer : I handle the augments for Abjurations. Go kill Kirin and come back to me... So beat it eh?",21);
	end
end
function empyTrade(player,npc,trade)
    local id = getItemId(trade)
    if id == -1 then return false end

    for k,tier in pairs(augWeaponTiers) do
        if npcUtil.tradeHas(trade, {id, tier.stone}) 
		and trade:getItemCount() == 2 
		and player:getVar("empy_augment") == 1 
		and player:getCurrency("cruor") > 4999 
		then
            rollAugmentedWeapon(player, id, tier)
			player:delCurrency("cruor",5000)
            break
        end
    end
end
function empyTrigger(player,npc)
    if player:getVar("empy_augment") == 1 then
	   player:PrintToPlayer(string.format("Empyrean Overseer : Soooo you defeated Shinryu did ya?"), 21)
	   player:PrintToPlayer(string.format("   Trade me your weapon and a stone and i'll augment it for ya."), 21)
	   player:PrintToPlayer(string.format("   It's going to cost ya tho, 5000 cruor! No excuses! Good luck!") ,21)
	   player:PrintToPlayer(string.format("   If you haven't deafeated Shinryu, speak to Prishe in the Vrtra Custom BCNM zone."), 21)
	else
	   player:PrintToPlayer(string.format("Empyrean Overseer : Get lost eh? Complete your empy and kill Shinryu if you wanna know what I'm about ya punk!"), 21)
	end
end
function relicTrade(player, npc, trade)
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
function relicTrigger(player,npc)
    player:PrintToPlayer(string.format("Relic Overseer : Greetings %s!",player:getName()), 21)
    player:PrintToPlayer(string.format("   I am tasked with the duty of upgrading your Relic weapon from level 75 to level 80."), 21)
	player:PrintToPlayer(string.format("   Defeat the three KS99 bosses, then come back and speak to me for your Level 80 Relic Weapon"), 21)
	player:PrintToPlayer(string.format("   You must be on the job associated with the weapon i.e. for Aegis you must be on PLD or Excalibur you must be on RDM."), 21)
	player:PrintToPlayer(string.format("   Yoichi or Ragnarok does not require you to be on a specific job, there is no level requirement either."), 21)
	player:PrintToPlayer(string.format("   What's that? You want to augment your Relic weapon too?? Trade me your level 80 weapon and the stone then!"), 21)
end  
function mythicAugmentTrade(player, npc, trade)
    local id = getItemId(trade)	
    if id == -1 then return false 
    end

    for k,tier in pairs(augWeaponTiers) do
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
function mythicAugmentTrigger(player,npc)
    if player:getVar("mythic_augment") == 1 then
       player:PrintToPlayer(string.format("Mythic Overseer : Greetings %s!",player:getName()), 21)
	   player:PrintToPlayer(string.format("Mythic Overseer : Would you like to augment your mythic weapon? Trade me the weapon and the stone then!"), 21)
	else
	   player:PrintToPlayer(string.format("Mythic Overseer : Get out of here will ya? Complete your mythic weapon upgrade then come talk to me...geez..!"), 21)
    end
end 
function salvageTrade(player,npc,trade)
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


function salvageTrigger(player,npc)
    player:PrintToPlayer(string.format("Salvage Overseer : Hello there.  To upgrade your Salvage armor, speak to Ghanraam in Aht Urghan Whitegate."), 21)
	if player:getVar("armored") == 1 and player:getVar("battleclad") == 1
    and player:getVar("longarmed") == 1 and player:getVar("longbowed") == 1 then
	   player:setVar("salvage_augment",1)
	   player:PrintToPlayer(string.format("Salvage Overseer : You may augment your salvage gear now!"), 21)
	end
end
return entity