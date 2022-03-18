-- global vrtra quest lua
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/settings/main")
local entity = {}
require("scripts/globals/status")




function vrtraQuestTrigger(player, npc)
    local pNation = player:getNation()

    if GetNPCByID(17416339) then
	    if pNation == xi.nation.WINDURST then 
	       player:PrintToPlayer(string.format("Quest Giver: : Greetings %s! There is a powerful Crawler in East Sarutabaruta that I am looking for. ",player:getName()), 21)
	       player:PrintToPlayer(string.format("Quest Giver: : Hunt him down and find some clues and it may have a reward for you!  "), 21)
		   player:setVar('nexusWindy',2)
	    elseif pNation == xi.nation.BASTOK then
	       player:PrintToPlayer(string.format("Quest Giver: : Greetings %s! There is a powerful Lizard in South Gustaberg that I am looking for. ",player:getName()), 21)
	       player:PrintToPlayer(string.format("Quest Giver: : Hunt him down and find some clues and it may have a reward for you!  "), 21)
	       player:setVar('nexusBastok',2)
	    elseif pNation == xi.nation.SANDORIA then
	       player:PrintToPlayer(string.format("Quest Giver: : Greetings %s! There is a powerful Cabbit in West Ronafure that I am looking for. ",player:getName()), 21)
	       player:PrintToPlayer(string.format("Quest Giver: : Hunt him down and find some clues and it may have a reward for you!  "), 21)
		   player:setVar('nexusSandy',2)
        end
	end
end 
return entity