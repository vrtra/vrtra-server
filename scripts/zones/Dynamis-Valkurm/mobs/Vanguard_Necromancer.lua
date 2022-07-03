-----------------------------------
-- Area: Dynamis - Valkurm
--  Mob: Vanguard Necromancer
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
