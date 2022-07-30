-- global vrtra quest lua
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/settings/main")
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
local spell_table = {

159,97,296,220,254,169,258,154,230,249,245,144,189,239,149,261,238,199,
164,236,184,225,235,247,264,160,240,174,263,170,251,273,179,155,231,194,
190,262,259,150,221,200,252,165,185,206,161,208,175,210,171,241,212,274,
146,191,151,201,166,186,162,176,172,181,157,147,196,152,167,195,180,250,237,334,337,276,
1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20,21,23,24,28,29,30,33,38,39,43,214,156,145,
45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,214,
74,75,76,77,78,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,98,99,100,101,102,103,104,44,
105,106,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,204,253,
127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,318,317,
149,150,151,152,154,155,156,157,159,160,161,162,163,164,165,166,167,169,170,171,172,173,174,
175,176,179,180,181,184,185,186,189,190,191,194,195,196,199,200,201,204,206,208,210,320,319,
212,214,216,220,221,225,230,231,235,236,237,238,239,240,241,242,245,246,247,248,249,250,321,
251,252,253,254,258,259,260,261,262,263,264,266,267,268,269,270,271,272,273,274,275,324,323,
277,278,279,280,281,282,283,284,285,287,288,289,290,291,292,293,294,295,312,313,314,315,316,
332,333,335,336,338,339,341,344,345,347,348,350,353,354,368,369,370,371,372,373,374,376,326,
378,379,380,381,382,383,386,387,389,390,391,392,393,394,395,396,397,399,400,401,402,403,404,
405,406,408,409,410,412,414,415,419,420,421,422,424,425,426,427,428,429,430,431,432,329,327,
433,434,435,436,437,438,439,440,441,442,443,444,445,454,455,456,457,458,459,460,461,843,330,
462,463,464,465,466,467,477,845,841,205,207,209,211,213,215,25,232,79,80,107,322,325,328,331
}
function vrtraAddSpells(player, npc)
    local has_all_spells = true
        for i = 1, #spell_table, 1 do
        if player:hasSpell(spell_table[i]) == false then
            has_all_spells = false
        end
    end
    if has_all_spells then
        player:PrintToPlayer(string.format("Vrtra : You have all spells already, get out of here!"), 21)
    elseif has_all_spells == false then
        for i = 1, #spell_table, 1 do
            player:addSpell(spell_table[i], true, true)
        end
        printf("completing trade")
        player:tradeComplete()
        player:PrintToPlayer(string.format("Vrtra : You now have all spells learned! Zone to see them in your spell list."), 21)
    end

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
