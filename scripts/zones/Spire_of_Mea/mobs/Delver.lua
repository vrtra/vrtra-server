-----------------------------------
-- Area: Spire of Mea
--  Mob: Delver
-----------------------------------
local entity = {}

entity.onMobInitialize = function(mob)
end

entity.onMobSpawn = function(mob)
    mob:setLocalVar("maxBabies", 4)
end

entity.onMobEngaged = function(mob, target)
end

entity.onMobWeaponSkill = function(target, mob, skill)
end

entity.onMobFight = function(mob, target)
end

entity.onMobDeath = function(mob, player, isKiller)
	player:setCharVar("mea_win", 1)
end

return entity