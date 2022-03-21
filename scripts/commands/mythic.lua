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
          player:PrintToPlayer(string.format("Kill status - Gurfurlur the Menacing: %d", player:getVar("Gurfurlur")), 21)

	      player:PrintToPlayer(string.format("Kill status - Medusa: %d", player:getVar("Medusa")), 21)

	      player:PrintToPlayer(string.format("Kill status - Gulool Ja Ja: %d", player:getVar("Gulool")), 21)

	      player:PrintToPlayer(string.format("Kill status - Overlord Bakgodek: %d", player:getVar("Overlord")), 21)

	      player:PrintToPlayer(string.format("Kill status - Tzee Xicu the Manifest: %d", player:getVar("Tzee")), 21)

	      player:PrintToPlayer(string.format("Kill status - Za'Dha Adamantking: %d", player:getVar("ZaDha")), 21)

	      player:PrintToPlayer(string.format("Kill status - Cirrate Christelle: %d", player:getVar("Cirrate")), 21)

	      player:PrintToPlayer(string.format("Kill status - Antaeus: %d", player:getVar("Antaeus")), 21)

	      player:PrintToPlayer(string.format("Kill status - Apocalyptic Beast: %d", player:getVar("Apocalyptic")), 21)

	      player:PrintToPlayer(string.format("Kill status - Diabolos Heart: %d", player:getVar("Diabolos")), 21)

	      player:PrintToPlayer(string.format("Kill status - Kirin: %d", player:getVar("Kirin")), 21)
          player:PrintToPlayer(string.format("---Stage Two---"), 21)
          player:PrintToPlayer(string.format("Kill status - Cerberus: %d", player:getVar("Cerberus")), 21)

	      player:PrintToPlayer(string.format("Kill status - Hydra: %d", player:getVar("Hydra")), 21)

	      player:PrintToPlayer(string.format("Kill status - Khimaira: %d", player:getVar("Khimaira")), 21)

	      player:PrintToPlayer(string.format("Kill status - Vrtra: %d", player:getVar("Vrtra")), 21)

	      player:PrintToPlayer(string.format("Kill status - Absolute Virtue: %d", player:getVar("AV")), 21)
          player:PrintToPlayer(string.format("---Stage Three---"), 21)
	      player:PrintToPlayer(string.format("Kill status - Tyger: %d", player:getVar("Tyger")), 21)

	      player:PrintToPlayer(string.format("Kill status - Sarameya: %d", player:getVar("Sarameya")), 21)

	      player:PrintToPlayer(string.format("Kill status - Tinnin: %d", player:getVar("Tinnin")), 21)

	      player:PrintToPlayer(string.format("Kill status - Pandemonium Warden: %d", player:getVar("PW")), 21)

	      player:PrintToPlayer(string.format("BCNM UPGRADES FOR RELIC AND MYTHIC LEVEL 80 QUEST"), 21)

	      player:PrintToPlayer(string.format("Kill status - Chlevnik: %d", player:getVar("Chlevnik")), 21)		  

	      player:PrintToPlayer(string.format("Kill status - Tartaruga Gigante: %d", player:getVar("Tartaruga")), 21)		  

	      player:PrintToPlayer(string.format("Kill status - Wyrm: %d", player:getVar("Wyrm")), 21)		  
 end

