-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Mythic upgrade
--  Type: Quest
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require ("scripts/globals/vrtraMythicTrials")
require("scripts/settings/main")
local entity = {}
	
entity.onTrigger = function(player,npc)  
    mythicTrialsTrigger(player,npc)        
end

entity.onTrade = function(player, npc, trade)
   mythicTrialsTrade(player,npc,trade)
end

return entity