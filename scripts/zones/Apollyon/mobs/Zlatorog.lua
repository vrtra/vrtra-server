-----------------------------------
-- Area: Apollyon NW, Floor 2
--  Mob: Zlatorog
-----------------------------------
require("scripts/zones/Apollyon/bcnms/nw_apollyon_helper")
require("scripts/globals/pathfind")
mixins = {require("scripts/mixins/job_special")}
-----------------------------------
local entity = {}

local flags = xi.path.flag.NONE
local path =
{
    { -343.300, 0.000, 311.863 },
    { -378.080, 0.000, 274.412 }
}

entity.onMobRoam = function(mob)
    local pause = mob:getLocalVar("pause")

    if pause < os.time() then
        local point = (mob:getLocalVar("point") % 2) + 1
        mob:setLocalVar("point", point)
        mob:pathTo(path[point][1], path[point][2], path[point][3], flags)
        mob:setLocalVar("pause", os.time() + 30)
    end
end

entity.onMobSpawn = function(mob)
    xi.mix.jobSpecial.config(mob, {
        specials =
        {
            { id = xi.jsa.MIGHTY_STRIKES, hpp = math.random(90, 95), cooldown = 90 },
        },
    })
end

entity.onMobDeath = function(mob, player, isKiller, noKiller)
    xi.apollyon_nw.handleMobDeathFloorTwoChest(mob, player, isKiller, noKiller)
end

return entity
