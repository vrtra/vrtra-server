-----------------------------------
-- Area: Dynamis - Bastok
--  Mob: Vanguard Undertaker
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
