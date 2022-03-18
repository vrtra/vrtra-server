-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Nexus Cape Quest
--  Type: Quest NPC
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/vrtraQuests")
require("scripts/settings/main")
require("scripts/globals/status")
local entity = {}

entity.onTrigger = function(player, npc) 
  vrtraQuestTrigger(player, npc)
end 

return entity