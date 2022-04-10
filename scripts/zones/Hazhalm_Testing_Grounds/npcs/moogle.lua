-----------------------------------
-- Area: Hazhalm
-- NPC:  ??? to spawn Odin or Alex
-----------------------------------
local ID = require("scripts/zones/Hazhalm_Testing_Grounds/IDs")
require("scripts/globals/status")
local entity = {}

entity.onTrigger = function(player, npc)
    if GetMobByID(17097716):isSpawned() == false and
	playerArg:getMainLvl() > 79 and 
	playerArg:getCharVar("Odin_Ready") == 1 and 
	playerArg:getCurrentMission(TOAU) == xi.mission.id.toau.ETERNAL_MERCENARY then
    SpawnMob(17097716)
	player:PrintToPlayer(string.format("Moogle: Spawning Odin!"), 21)
	end
end
return entity