-----------------------------------
-- Area: Dynamis - Beaucedine
--  Mob: Vanguard Assassin
-----------------------------------
mixins =
{
    require("scripts/mixins/job_special")
}
local ID = require("scripts/zones/Dynamis-Beaucedine/IDs")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.KUU_XUKA_THE_NIMBLE_PH, 10, 1200) -- 20 minutes
end

return entity
