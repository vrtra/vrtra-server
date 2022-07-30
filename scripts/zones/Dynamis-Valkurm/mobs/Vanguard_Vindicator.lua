-----------------------------------
-- Area: Dynamis - Valkurm
--  Mob: Vanguard Vindicator
-----------------------------------
mixins =
{
    require("scripts/mixins/job_special")
}
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
