-----------------------------------
-- Area: Dynamis - Xarcabard
--  Mob: Kindred Beastmaster
-----------------------------------
mixins =
mixins =
{
    require("scripts/mixins/job_special")
}
local ID = require("scripts/zones/Dynamis-Xarcabard/IDs")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.MARQUIS_ANDRAS_PH, 10, 1200) -- 20 minutes
end

return entity
