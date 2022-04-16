-----------------------------------
-- Area: Dynamis - Bastok
--  Mob: Vanguard Hatamoto
-----------------------------------
mixins =
mixins =
{
    require("scripts/mixins/job_special")
}
-----------------------------------
local entity = {}

entity.onMobDeath = function(mob, player, isKiller)
    mob:addTreasure(1455,
end

return entity
