-----------------------------------
-- Area: Apollyon NE, Floor 5
--  Mob: Troglodyte Dhalmel
-----------------------------------
local ID = require("scripts/zones/Apollyon/IDs")
require("scripts/zones/Apollyon/bcnms/ne_apollyon_helper")
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local flags = xi.path.flag.NONE
local path =
{
    { 525.180, -0.500, 288.169 },
    { 542.354, -0.499, 256.271 },
    { 546.451, -0.499, 253.793 },
    { 582.242, -0.499, 307.279 },
    { 590.586, -0.500, 285.598 },
    { 590.569, -0.500, 285.574 },
    { 530.585, -0.500, 283.369 },
    { 525.971, -0.499, 289.436 }
}

entity.onMobSpawn = function(mob)
    local start = (mob:getID() - ID.mob.APOLLYON_NE_MOB[5]) - 1
    mob:setLocalVar("point", start)
end

entity.onMobRoam = function(mob)
    if not mob:isFollowingPath() then
        local point = math.random(#path)

        while point == mob:getLocalVar("point") do
            point = math.random(#path)
        end

        mob:setLocalVar("point", point)
        mob:pathTo(path[point][1], path[point][2], path[point][3], flags)
    end
end

entity.onMobDeath = function(mob, player, isKiller, noKiller)
    xi.apollyon_ne.handleMobDeathFloorFive(mob, player, isKiller, noKiller)
end

return entity
