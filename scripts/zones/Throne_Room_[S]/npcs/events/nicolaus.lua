-- npcid 17416320
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}
require ("scripts/globals/vrtraTrials")
entity.onTrade = function(player, npc, trade)
      vrtraTrade(player,npc,trade)
end
