-----------------------------------
-- Area: Abyssea - Tahrongi
--   NM: Iratham
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
-----------------------------------
local entity = {}

require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/pathfind")


local path =
{
    -60, 1, -58,
    -33, -3, -61,
    -25, -3, -68,
    -16, -3, -102,
    34, 4, -99,
    93, -5, -100,
    148, -2, -103,
    234, -15, -97,
    222, -8, 13,
    230, 9, 92,
    236, 16, 167,
    200, 24, 162,
    230, 9, 92,
    222, -8, 13,
    234, -15, -97,
    148, -2, -103,
    93, -5, -100,
    34, 4, -99,
    -16, -3, -102,
    -25, -3, -68,
    -33, -3, -61,
    -60, 1, -58,
    -92, 4, -60,
    }
	
-----------------------------------
local entity = {}

entity.onSpawn = function(mob)
    onMobRoam(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 20)
	mob:setMod(xi.mod.BINDRES, 75)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 350)
	mob:setMod(xi.mod.SLOWRES, 20)
	mob:setMod(xi.mod.BLINDRES, 20)
	mob:setMod(xi.mod.SILENCERES, 75)
	mob:setMod(xi.mod.STUNRES, 10)
end
    
function onPath(mob)
    xi.path.patrol(mob, path, xi.path.flag.RUN)    
end

function onMobRoam(mob)
    if (mob:isFollowingPath() == false) then
        mob:pathThrough(xi.path.first(path), xi.path.flag.RUN)
    end    
end
entity.onMobFight = function(mob,target)
    if mob:getHPP() < 20 then
        mob:setMobMod(xi.mobMod.SPELL_LIST, 155)
    elseif mob:getHPP() < 50 then
        mob:setMobMod(xi.mobMod.SPELL_LIST, 154)
    else
        mob:setMobMod(xi.mobMod.SPELL_LIST, 153)
    end
end

entity.onMobDeath = function(mob, player, isKiller)
	local cruor = math.random(700,900)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
    player:addTitle(xi.title.IRATHAM_CAPTURER)
end
return entity