-----------------------------------
-- Area: Dynamis - Buburimu
--  Mob: Vanguard Predator
-----------------------------------
mixins =
{
    require("scripts/mixins/job_special")
}
local ID = require("scripts/zones/Dynamis-Buburimu/IDs")
require("scripts/globals/mobs")
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

entity.onMobDespawn = function(mob)
    xi.mob.phOnDespawn(mob, ID.mob.LYNCEAN_JUWGNEG_PH, 10, 1200) -- 20 minutes
end

return entity
