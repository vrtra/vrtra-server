-----------------------------------
-- Area: Dynamis - Jeuno
--  Mob: Scruffix Shaggychest
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
