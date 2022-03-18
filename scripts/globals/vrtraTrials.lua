-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Mythic upgrade
--  Type: Quest
-----------------------------------
require("scripts/globals/status")
require("scripts/settings/main")
local entity = {}
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
job_table =
{

	[xi.job.WAR] = 18492,
	[xi.job.MNK] = 18753,
	[xi.job.WHM] = 18851,
	[xi.job.BLM] = 18589,
	[xi.job.RDM] = 17742,
	[xi.job.THF] = 18003,
	[xi.job.PLD] = 17744,
	[xi.job.DRK] = 18944,
	[xi.job.BST] = 17956,
	[xi.job.BRD] = 18034,
	[xi.job.RNG] = 18719,
	[xi.job.SAM] = 18443,
	[xi.job.NIN] = 18426,
	[xi.job.DRG] = 18120,
	[xi.job.SMN] = 18590,
	[xi.job.BLU] = 17743,
	[xi.job.COR] = 18720,
	[xi.job.PUP] = 18754,
	[xi.job.DNC] = 19102,
	[xi.job.SCH] = 18592,
	
};

weaponTable =
	{          --|BASEID,REWARDID|--
	[xi.job.WAR] = {18492 , 18971},
	[xi.job.MNK] = {18753 , 18972},
	[xi.job.WHM] = {18851 , 18973},
	[xi.job.BLM] = {18589 , 18974},
	[xi.job.RDM] = {17742 , 18975},
	[xi.job.THF] = {18003 , 18976},
	[xi.job.PLD] = {17744 , 18977},
	[xi.job.DRK] = {18944 , 18978},
	[xi.job.BST] = {17956 , 18979},
	[xi.job.BRD] = {18034 , 18980},
	[xi.job.RNG] = {18719 , 18981},
	[xi.job.SAM] = {18443 , 18982},
	[xi.job.NIN] = {18426 , 18983},
	[xi.job.DRG] = {18120 , 18984},
	[xi.job.SMN] = {18590 , 18985},
	[xi.job.BLU] = {17743 , 18986},
	[xi.job.COR] = {18720 , 18987},
	[xi.job.PUP] = {18754 , 18988},
	[xi.job.DNC] = {19102 , 18969},
	[xi.job.SCH] = {18592 , 18970},	
};

wepTable =
	{          --|BASEID,REWARDID|--
	[xi.job.WAR] = {18971 , 18991},
	[xi.job.MNK] = {18972 , 18992},
	[xi.job.WHM] = {18973 , 18993},
	[xi.job.BLM] = {18974 , 18994},
	[xi.job.RDM] = {18975 , 18995},
	[xi.job.THF] = {18976 , 18996},
	[xi.job.PLD] = {18977 , 18997},
	[xi.job.DRK] = {18978 , 18998},
	[xi.job.BST] = {18979 , 18999},
	[xi.job.BRD] = {18980 , 19000},
	[xi.job.RNG] = {18981 , 19001},
	[xi.job.SAM] = {18982 , 19002},
	[xi.job.NIN] = {18983 , 19003},
	[xi.job.DRG] = {18984 , 19004},
	[xi.job.SMN] = {18985 , 19005},
	[xi.job.BLU] = {18986 , 19006},
	[xi.job.COR] = {18987 , 19007},
	[xi.job.PUP] = {18988 , 19008},
	[xi.job.DNC] = {18969 , 18989},
	[xi.job.SCH] = {18970 , 18990},	
};
wTable =
	{          --|BASEID,REWARDID|--
	[xi.job.WAR] = {18991 , 19060},
	[xi.job.MNK] = {18992 , 19061},
	[xi.job.WHM] = {18993 , 19062},
	[xi.job.BLM] = {18994 , 19063},
	[xi.job.RDM] = {18995 , 19064},
	[xi.job.THF] = {18996 , 19065},
	[xi.job.PLD] = {18997 , 19066},
	[xi.job.DRK] = {18998 , 19067},
	[xi.job.BST] = {18999 , 19068},
	[xi.job.BRD] = {19000 , 19069},
	[xi.job.RNG] = {19001 , 19070},
	[xi.job.SAM] = {19002 , 19071},
	[xi.job.NIN] = {19003 , 19072},
	[xi.job.DRG] = {19004 , 19073},
	[xi.job.SMN] = {19005 , 19074},
	[xi.job.BLU] = {19006 , 19075},
	[xi.job.COR] = {19007 , 19076},
	[xi.job.PUP] = {19008 , 19077},
	[xi.job.DNC] = {18989 , 19078},
	[xi.job.SCH] = {18970 , 19079},	
	}
relicTable = { 	     --base/reward--
    [xi.job.NIN] = {18312 , 18313}, -- kikoku	
	[xi.job.BLM] = {18330 , 18331}, -- claustrum
	[xi.job.WAR] = {18294 , 18295}, -- bravura
	[xi.job.THF] = {18270 , 18271}, -- mandau
	[xi.job.PLD] = {15070 , 16195}, -- aegis
	[xi.job.DRG] = {18300 , 18301}, -- gungnir
	[xi.job.DRK] = {18306 , 18307}, -- apocalypse
	[xi.job.MNK] = {18264 , 18265}, -- spharai
	[xi.job.RDM] = {18276 , 18277}, -- excalibur
	[xi.job.BST] = {18288 , 18289}, -- guttler
    [xi.job.SAM] = {18318 , 18319}, -- amano
	[xi.job.WHM] = {18324 , 18325}, -- mjollnir
	[xi.job.RNG] = {18336 , 18337}, -- annihilator
	[xi.job.BRD] = {18342 , 18577}  -- ghorn
}	
relic = {
	   
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
function mythicTrigger(player,npc)  
    
	local   mythWeapon = job_table[player:getMainJob()]

    if mythWeapon 
		and player:getVar('Gurfurlur') == 1
	    and player:getVar('Medusa') == 1
	    and player:getVar('Gulool') == 1
	    and player:getVar('Overlord') == 1
	    and player:getVar('Tzee') == 1
	    and player:getVar('ZaDha') == 1
	    and player:getVar('Cirrate') == 1
	    and player:getVar('Antaeus') == 1
	    and player:getVar('Apocalyptic') == 1
	    and player:getVar('Diabolos') == 1
	    and player:getVar('Kirin') == 1
	then
	    player:addItem(mythWeapon)
		player:messageSpecial(ID.text.ITEM_OBTAINED,mythWeapon) 
		player:setVar('Gurfurlur',0)
		player:setVar('Medusa',0)
		player:setVar('Gulool',0)
		player:setVar('Tzee',0)
		player:setVar('ZaDha',0)
		player:setVar('Cirrate',0)
		player:setVar('Antaeus',0)
		player:setVar('Apocalyptic',0)
		player:setVar('Diabolos',0)	
        player:setVar('Kirin',0)					
        player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Stage 1 Mythic Weapon! Now the real task begins!"), 21)
    else
	    player:PrintToPlayer(string.format("Trial Overseer : I am the Vrtra Custom Trials NPC. Please refer to the Vrtra Wikia *Custom Quests* for more information."), 21)  
		player:PrintToPlayer(string.format("Trial Overseer : To upgrade your level 80 Mythic or Relic Weapon, Collect your KSNM kills and trade me your weapon."), 21)
		player:PrintToPlayer(string.format("Trial Overseer : Besides Ragnarok and Yoichinoyumi, you must be on the correct job to trade the Relic Weapons,"), 21)
		player:PrintToPlayer(string.format("Trial Overseer : I.E. BLM = Claustrum, THF = Mandau. Your level does not matter."), 21)
	end      
       
end
function vrtraTrade(player,npc,trade)
  
	local      mythTable = weaponTable[player:getMainJob()]
	local     baseWeapon = mythTable[1]
	local   rewardWeapon = mythTable[2]
	local     tradeCount = trade:getItemCount()
	local    mythicTable = wepTable[player:getMainJob()]
	local        bWeapon = mythicTable[1]
	local      rewWeapon = mythicTable[2]
	local       relTable = relicTable[player:getMainJob()]
	local      relicBase = relTable[1]
	local    relicReward = relTable[2]

	
        if trade:hasItemQty(baseWeapon,1) and trade:hasItemQty(2571,1) and trade:hasItemQty(2489,1) and tradeCount == 3
	            and player:getVar('Cerberus') == 1
	            and player:getVar('Hydra') == 1
	            and player:getVar('Khimaira') == 1
	            and player:getVar('Vrtra') == 1
	            and player:getVar('AV') == 1 
            then
					player:tradeComplete()
					player:addItem(rewardWeapon)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Stage 2 Mythic Weapon!"), 21)
					player:messageSpecial(ID.text.ITEM_OBTAINED,rewardWeapon)
					player:setVar('Cerberus',0)
					player:setVar('Hydra',0)
					player:setVar('Khimaira',0)
					player:setVar('Vrtra',0)
					player:setVar('AV',0)
			
        elseif trade:hasItemQty(bWeapon,1) 
			        and tradeCount == 1
			   	    and player:getVar('Tyger') == 1
	                and player:getVar('Sarameya') == 1
	                and player:getVar('Tinnin') == 1
	                and player:getVar('PW') == 1
			then
			    	player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Mythic Weapon!"), 21)
					player:tradeComplete()
					player:addItem(rewWeapon)
					player:messageSpecial(ID.text.ITEM_OBTAINED,rewWeapon)
					player:setVar('Tyger',0)
					player:setVar('Sarameya',0)
					player:setVar('Tinnin',0)
					player:setVar('PW',0)
					
        elseif trade:hasItemQty(basWeapon,1) 
			        and tradeCount == 1
		            and player:getVar("Chlevnik") == 1
	                and player:getVar("Tartaruga") == 1 
	                and player:getVar("Wyrm") == 1 
			then
					player:tradeComplete()
		            player:addItem(rewWeapon)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Level 80 Mythic Weapon!"), 21)
		            player:messageSpecial(ID.text.ITEM_OBTAINED,rewWeapon)
		            player:setVar("mythic_augment",1)
	                player:setVar("Chlevnik",0) 
	                player:setVar("Tartaruga",0) 
	                player:setVar("Wyrm",0)
					
        elseif trade:hasItemQty(relicBase,1) 
		            and tradeCount == 1
		            and player:getVar("Chlevnik") == 1
	                and player:getVar("Tartaruga") == 1 
	                and player:getVar("Wyrm") == 1 
			then
					player:tradeComplete()
		            player:addItem(relicReward)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Level 80 Relic Weapon!"), 21)
		            player:messageSpecial(ID.text.ITEM_OBTAINED,relicReward)
		            player:setVar("mythic_augment",1)
	                player:setVar("Chlevnik",0) 
	                player:setVar("Tartaruga",0) 
	                player:setVar("Wyrm",0)
					
		elseif trade:hasItemQty(18348,1)  -- Yoichinoyumi
		            and tradeCount == 1
		            and player:getVar("Chlevnik") == 1
	                and player:getVar("Tartaruga") == 1 
	                and player:getVar("Wyrm") == 1 
			then
					player:tradeComplete()
		            player:addItem(18349)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Level 80 Relic Weapon!"), 21)
		            player:messageSpecial(ID.text.ITEM_OBTAINED,18349)
		            player:setVar("mythic_augment",1)
	                player:setVar("Chlevnik",0) 
	                player:setVar("Tartaruga",0) 
	                player:setVar("Wyrm",0)
					
		elseif trade:hasItemQty(18282,1)   -- ragnarok
		            and tradeCount == 1
		            and player:getVar("Chlevnik") == 1
	                and player:getVar("Tartaruga") == 1 
	                and player:getVar("Wyrm") == 1 
			then
					player:tradeComplete()
		            player:addItem(18283)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Level 80 Relic Weapon!"), 21)
		            player:messageSpecial(ID.text.ITEM_OBTAINED,18283)
		            player:setVar("mythic_augment",1)
	                player:setVar("Chlevnik",0) 
	                player:setVar("Tartaruga",0) 
	                player:setVar("Wyrm",0)
        end

end

return entity