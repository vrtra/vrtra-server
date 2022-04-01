-----------------------------------
-- Zone: Abyssea-Tahrongi
--  mob:  Quetzalli (???)
-----------------------------------
local ID = require("scripts/zones/Abyssea-Tahrongi/IDs")
require("scripts/globals/status")
require("scripts/globals/mobs")
require("scripts/globals/magic")
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}


local path =
{
    168, 23, -637,
    199, 16, -640,
    213, 14, -628,
    224, 14, -625,
    232, 15, -604,
    257, 15, -589,
    282, 10, -573,
    281, 8, -559,
    316, 0, -555,
    324, -7, -495,
    367, -8, -448,
    367, -6, -386,
    342, -2, -335,
    307, 0, -321,
    283, 1, -337,
    276, 0, -362,
    237, -8, -354,
    215, -10, -343,
    204, -8, -321,
    191, -9, -313,
    180, -10, -294,
    169, -9, -291,
    101, -9, -255,
    169, -9, -291,
    180, -10, -294,
    191, -9, -313,
    204, -8, -321,
    215, -10, -343,
    237, -8, -354,
    276, 0, -362,
    283, 1, -337,
    307, 0, -321,
    342, -2, -335,
    367, -6, -386,
    367, -8, -448,
    324, -7, -495,
    316, 0, -555,
    281, 8, -559,
    282, 10, -573,
    257, 15, -589,
    232, 15, -604,
    224, 14, -625,
    213, 14, -628,
    199, 16, -640,
    168, 23, -637,
    158, 25, -655,
    }

function onMobInitialize(mob)
    mob:addStatusEffectEx(xi.effect.BLAZE_SPIKES,0,24,0,5)
end
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

entity.onMobFight = function(mob, target)
    if (mob:getHPP() < math.random(75,85) and mob:getLocalVar("twohour") == 0) then
        mob:useMobAbility(689)
        mob:setLocalVar("twohour", 1)
    end
    if (mob:getHPP() < math.random(55,65) and mob:getLocalVar("twohour") == 1) then
        mob:useMobAbility(689)
        mob:setLocalVar("twohour", 2)
    end
    if (mob:getHPP() < math.random(35,45) and mob:getLocalVar("twohour") == 2) then
        mob:useMobAbility(689)
        mob:setLocalVar("twohour", 3)
    end
    if (mob:getHPP() < math.random(15,25) and mob:getLocalVar("twohour") == 3) then
        mob:useMobAbility(689)
        mob:setLocalVar("twohour", 4)
    end
    if (mob:getHPP() < math.random(2,9) and mob:getLocalVar("twohour") == 4) then
        mob:useMobAbility(689)
        mob:setLocalVar("twohour", 5)
    end
end
return entity

entity.onMobDeath = function(mob,player)
	local cruor = math.random(400,600)
    player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity