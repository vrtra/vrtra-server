-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Mythic upgrade global
--  Type: Quest
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/status")
require("scripts/settings/main")
local entity = {}


jobtable =
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
}

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
}

	
					
function mythicTrialsTrigger(player, npc)  

	local mythWeapon  = jobtable[player:getMainJob()]

    if mythWeapon 
		and player:getVar('Gurfurlur') == 1
	    and player:getVar('Medusa') == 1
	    and player:getVar('Gulool') == 1
		and player:getVar('Khimaira') == 1
		and player:getVar('Hydra') == 1
		and player:getVar('Cerberus') == 1

		then
			player:addItem(mythWeapon)
			player:messageSpecial(ID.text.ITEM_OBTAINED,mythWeapon) 
		    player:setVar('Gurfurlur',0) 
	        player:setVar('Medusa',0) 
	        player:setVar('Gulool',0) 
		    player:setVar('Khimaira',0) 
		    player:setVar('Hydra',0) 
		    player:setVar('Cerberus',0)				
            player:PrintToPlayer(string.format("Trial Overseer : Congratulations, now the real task begins!"), 21)

	else 
	    player:PrintToPlayer(string.format("Trial Overseer : I am the Vrtra Custom Trials NPC. Please refer to the Vrtra Wikia *Custom Quests* for more information."), 21)  
		player:PrintToPlayer(string.format("Trial Overseer : To upgrade your level 80 Mythic Weapon, Collect your KSNM kills and trade me your weapon."), 21)

    end            
        
end

function mythicTrialsTrade(player, npc, trade)
  
	local    mythTable = weaponTable[player:getMainJob()]
	local   baseWeapon = mythTable[1]
	local rewardWeapon = mythTable[2]
	local   tradeCount = trade:getItemCount()
	local  mythicTable = wepTable[player:getMainJob()]
	local      bWeapon = mythicTable[1]
	local    rewWeapon = mythicTable[2]

	
            if trade:hasItemQty(baseWeapon,1) and trade:hasItemQty(2571,1) and trade:hasItemQty(2489,1) and tradeCount == 3
	            and player:getVar('salvage_augment') == 1
	            and player:getVar('Sarameya') == 1
	            and player:getVar('Tyger') == 1
	            and player:getVar('Tinnin') == 1
				and player:getVar('PW') == 1
            then
					player:tradeComplete()
					player:addItem(rewardWeapon)
					player:messageSpecial(ID.text.ITEM_OBTAINED,rewardWeapon)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Stage 2 Mythic Weapon!"), 21)
					player:setVar('Tyger',0)
					player:setVar('Sarameya',0)
					player:setVar('Tinnin',0)
					player:setVar('PW',0)	
                    
			
            elseif trade:hasItemQty(bWeapon,1) and tradeCount == 1
			   	    and player:getVar('Odin') == 1
	                and player:getCurrency("shining_star") > 9998 

			then
			    	player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Completed Mythic Weapon!"), 21)
					player:PrintToPlayer(string.format("Trial Overseer : Speak to Zalsuhm in Lower Jeuno for details of upgrade your weapon to 80."), 21)
					player:tradeComplete()
					player:addItem(rewWeapon)
					player:setVar('mythic_augment',1)
					player:setVar('mythic_complete',1)
					player:messageSpecial(ID.text.ITEM_OBTAINED,rewWeapon)
					player:setVar('Odin',0)
			        player:delCurrency("shining_star",9999)
			    else
                    player:PrintToPlayer(string.format("Trial Overseer : You do not have the required NM's killed."), 21)
                end
end

return entity