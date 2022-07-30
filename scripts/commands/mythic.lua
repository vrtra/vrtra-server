---------------------------------------------------------------------------------------------------
-- func: checkplayervar <varType> <varName>
-- desc: checks player or server variable and returns result value.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ss"
}

function onTrigger(player, varType, varName)	
          player:PrintToPlayer(string.format("To check if your Mythic kill is completed, 0 = Not Killed, 1 = Killed"), 21)
          player:PrintToPlayer(string.format("---Stage One---"), 21)
          player:PrintToPlayer(string.format("Kill status - Gurfurlur the Menacing: %d", player:getCharVar("Gurfurlur")), 21)  
		  player:PrintToPlayer(string.format("Kill status - Gulool: %d", player:getCharVar("Gulool")), 21)  
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

