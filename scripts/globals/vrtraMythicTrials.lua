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

function mythicText(player, varType, varName)	
          player:PrintToPlayer(string.format("---Stage One---"), 21)
          player:PrintToPlayer(string.format("Kill status - Gurfurlur the Menacing: %d", player:getCharVar("Gurfurlur")), 21)  
          player:PrintToPlayer(string.format("Kill status - Cerberus: %d", player:getCharVar("Cerberus")), 21)  
	      player:PrintToPlayer(string.format("Kill status - Hydra: %d", player:getCharVar("Hydra")), 21)  
	      player:PrintToPlayer(string.format("Kill status - Khimaira: %d", player:getCharVar("Khimaira")), 21)  
	      player:PrintToPlayer(string.format("Kill status - Medusa: %d", player:getCharVar("Medusa")), 21)  
          player:PrintToPlayer(string.format("---Stage Two---"), 21)
          player:PrintToPlayer(string.format("Kill status - Sarameya: %d", player:getCharVar("Sarameya")), 21)  
	      player:PrintToPlayer(string.format("Kill status - Tyger: %d", player:getCharVar("Tyger")), 21)  
	      player:PrintToPlayer(string.format("Kill status - Tinnin: %d", player:getCharVar("Tinnin")), 21)  
	      player:PrintToPlayer(string.format("Kill status - PW: %d", player:getCharVar("PW")), 21)  	  
          player:PrintToPlayer(string.format("---Stage Three---"), 21)
	      player:PrintToPlayer(string.format("Kill status - Odin: %d", player:getCharVar("Odin")), 21)  
		  player:PrintToPlayer(string.format("Amount of Alexandrite: %d", player:getCurrency("shining_star")), 21)    
end
					
function mythicTrialsTrigger(player, npc)  

	local mythWeapon  = jobtable[player:getMainJob()]

    if mythWeapon 
		and player:getCharVar('Gurfurlur') == 1
	    and player:getCharVar('Medusa') == 1
	    and player:getCharVar('Gulool') == 1
		and player:getCharVar('Khimaira') == 1
		and player:getCharVar('Hydra') == 1
		and player:getCharVar('Cerberus') == 1

		then
			player:addItem(mythWeapon)
			player:messageSpecial(ID.text.ITEM_OBTAINED,mythWeapon) 
		    player:setCharVar('Gurfurlur',0) 
	        player:setCharVar('Medusa',0) 
	        player:setCharVar('Gulool',0) 
		    player:setCharVar('Khimaira',0) 
		    player:setCharVar('Hydra',0) 
		    player:setCharVar('Cerberus',0)				
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
	            and player:getCharVar('Sarameya') == 1
	            and player:getCharVar('Tyger') == 1
	            and player:getCharVar('Tinnin') == 1
				and player:getCharVar('PW') == 1
            then
					player:tradeComplete()
					player:addItem(rewardWeapon)
					player:messageSpecial(ID.text.ITEM_OBTAINED,rewardWeapon)
					player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Stage 2 Mythic Weapon!"), 21)
					player:setCharVar('Tyger',0)
					player:setCharVar('Sarameya',0)
					player:setCharVar('Tinnin',0)
					player:setCharVar('PW',0)	
                    
			
            elseif trade:hasItemQty(bWeapon,1) and tradeCount == 1
			   	    and player:getCharVar('Odin') == 1
	                and player:getCurrency("shining_star") > 9998 

			then
			    	player:PrintToPlayer(string.format("Trial Overseer : Congratulations on your Completed Mythic Weapon!"), 21)
					player:PrintToPlayer(string.format("Trial Overseer : Speak to Zalsuhm in Lower Jeuno for details of upgrade your weapon to 80."), 21)
					player:tradeComplete()
					player:addItem(rewWeapon)
					player:setCharVar('mythic_augment',1)
					player:setCharVar('mythic_complete',1)
					player:messageSpecial(ID.text.ITEM_OBTAINED,rewWeapon)
					player:setCharVar('Odin',0)
			        player:delCurrency("shining_star",9999)
			    else
                    player:PrintToPlayer(string.format("Trial Overseer : You do not have the required NM's killed."), 21)
                end
end

return entity