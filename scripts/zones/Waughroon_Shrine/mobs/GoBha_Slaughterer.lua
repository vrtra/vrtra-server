-----------------------------------
-- Area: Waughroon Shrine
--  Mob: Go'Bha Slaughterer
-----------------------------------
mixins = {require("scripts/mixins/job_special")}
-----------------------------------

local entity = {}

entity.onMobSpawn = function(mob)
    --print(mob:getName())
end

entity.onMobDeath = function(mob, player, isKiller)
end

return entity
