-----------------------------------
-- Area: Dynamis - San d'Oria
--  Mob: Vanguard Footsoldier
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
