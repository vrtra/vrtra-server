-- global vrtra quest lua
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/settings/main")
local entity = {}
require("scripts/globals/status")

function vrtraDialog(player,npc)  
		player:PrintToPlayer(string.format("Vrtra : RaaawRRRR!"), 21)
		player:PrintToPlayer(string.format("   Welcome to Vrtra, %s!",player:getName()), 21)
		player:PrintToPlayer(string.format("   I guard this realm! Trade me 10,000 Gil to learn all spells, open all outposts and unlock advanced jobs."), 21)
		player:PrintToPlayer(string.format("   I am surrounded by my minions, who are tasked to aid you with different quests and needs!"), 21)
		player:PrintToPlayer(string.format("   To your left, you will see all of Vrtra's Custom NPCs for Quests and Battles. Speak to them for more information!"), 21)
		player:PrintToPlayer(string.format("   And to your right, we have the custom NPCs for crafting materials and synthesis support."), 21)
		player:PrintToPlayer(string.format("   The big ogre in front of me acts as our local Moogle. He functions just like the Moogle in your Mog House!"), 21)
		player:PrintToPlayer(string.format("   Lastly, speak to the conflux ahead of me to the west to teleport to your home nation or your last location."), 21)
		player:PrintToPlayer(string.format("   If you have any questions just ask for one of Vrtra's administators or join our Discord server!"), 21)
		player:PrintToPlayer(string.format("   In addition, all information can be found on our Vrtra Wikia page!"), 21)
		player:PrintToPlayer(string.format("   Be warned adventurer, if we meet in the open world, I am not nearly as friendly as I am now!"), 21)
		player:PrintToPlayer(string.format("   RaaaaaaaaaaaaaaawRRRRRRRRR!!!!"), 21)
end


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