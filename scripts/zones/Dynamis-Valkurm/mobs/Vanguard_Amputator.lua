-----------------------------------
-- Area: Dynamis - Valkurm
--  Mob: Vanguard Amputator
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
