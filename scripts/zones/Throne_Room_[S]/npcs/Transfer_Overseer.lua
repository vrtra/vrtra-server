-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Transfer Overseer
--  Type: Transfer NPC
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require("scripts/globals/player")

job_table =
{
    -- armor claim slips
	[xi.job.WAR] = 861,
	[xi.job.MNK] = 862,
	[xi.job.WHM] = 863,
	[xi.job.BLM] = 864,
	[xi.job.RDM] = 865,
	[xi.job.THF] = 866,
	[xi.job.PLD] = 867,
	[xi.job.DRK] = 868,
	[xi.job.BST] = 869,
	[xi.job.BRD] = 870,
	[xi.job.RNG] = 871,
	[xi.job.SAM] = 872,
	[xi.job.NIN] = 873,
	[xi.job.DRG] = 874,
	[xi.job.SMN] = 875,
	[xi.job.BLU] = 1054,
	[xi.job.COR] = 1055,
 	[xi.job.PUP] = 1056,
	[xi.job.DNC] = 1057,
	[xi.job.SCH] = 1058,
	
}

entity.onTrade = function(player,npc,trade)
     
	local job = job_table[player:getMainJob()]
	local transfer = player:getVar("TransferNeeded")
	
	if job and transfer == 1 and trade:hasItemQty(2559,1) and trade:getItemCount() == 1 then 
	    player:levelCap(80)
		player:setLevel(80)
		player:setsLevel(40)
		player:setMerits(30)
		player:addKeyItem(job)
		player:messageSpecial(ID.text.KEYITEM_OBTAINED,job)
		player:PrintToPlayer(string.format("Transfer Overseer : Now you are ready to face all kinds of adventures!"), 21)
		player:PrintToPlayer(string.format("    Please go speak to Vrtra for more information!"), 21)
		player:PrintToPlayer(string.format("    You can turn that armor claim slip in at any Armor Depository."), 21)
		player:PrintToPlayer(string.format("    I gave you 30 merits also to spend how you like. Good luck!"), 21)
    end
		if player:getNation() == xi.nation.WINDURST then 
	       player:setRank(6)
		   player:setVar("WINDY_RANK",1)
		elseif player:getNation() == xi.nation.SANDORIA then 
	       player:setRank(6)
		   player:setVar("SANDY_RANK",1)
		elseif player:getNation() == xi.nation.BASTOK then 
	       player:setRank(6)
		   player:setVar("BASTOK_RANK",1)
		end	
end

entity.onTrigger = function(player)

	local transfer = player:getVar("TransferNeeded")
	
	if transfer == 1 then
        player:PrintToPlayer(string.format("Transfer Overseer : Well well well, look what the Eft dragged in."), 21)
	    player:PrintToPlayer(string.format("   I've been expecting you, %s.  I'd like to formally welcome you to Vrtra!",player:getName()), 21)
	    player:PrintToPlayer(string.format("   If you're here to complete your transfer, you came to the right place!"), 21)
	    player:PrintToPlayer(string.format("   Be sure that you are on the job and sub job that you want to play and have boosted."), 21)
		player:PrintToPlayer(string.format("   Sadly, I can not let you transfer PUP as you need to do the quests to open the job."), 21) 
	    player:PrintToPlayer(string.format("   You can switch jobs over at the Shadow Lord Moogle right here in this zone."), 21)
        player:PrintToPlayer(string.format("   When ready, trade that fancy Mog Bonanaza Marble you received to me and we'll get started."), 21)
    else
		player:PrintToPlayer(string.format("Transfer Overseer : Hello there.  I do not believe we have any business to conduct at this time."), 21)
    end
	
end

return entity