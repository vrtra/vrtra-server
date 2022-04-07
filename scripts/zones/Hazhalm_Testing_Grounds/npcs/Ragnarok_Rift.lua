-----------------------------------
-- Area: Hazhalm
-- NPC:  ??? to spawn Odin or Alex
-----------------------------------
local ID = require("scripts/zones/Hazhalm_Testing_Grounds/IDs")
require("scripts/globals/status")
local entity = {}

entity.onTrigger = function(player, npc)
    SpawnMob(17097716)
end
return entity