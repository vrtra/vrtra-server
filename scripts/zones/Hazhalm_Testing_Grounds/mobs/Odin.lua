-----------------------------------
-- Area: ?
--  NM:  Odin
-----------------------------------
local ID = require("scripts/zones/Hazhalm_Testing_Grounds/IDs")
require("scripts/globals/titles")
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/utils")
local entity = {}


entity.onMobFight = function(mob, target)
    local BAM = mob:getLocalVar("BAM") -- Bam, bam! BAM BAM BAM!!!

    if mob:getHPP() <= 9 and BAM == 11 then
        mob:useMobAbility(2126) -- Zantesuken
        mob:setLocalVar("BAM", 12)
    elseif mob:getHPP() <= 19 and BAM == 10 then
        mob:useMobAbility(2304) -- Sanngetall
        mob:setLocalVar("BAM", 11)
    elseif mob:getHPP() <= 24 and BAM == 9 then
         mob:useMobAbility(2125) -- Geirrothr
        mob:setLocalVar("BAM", 10)
    elseif mob:getHPP() <= 29 and BAM == 8 then
        mob:useMobAbility(2124) -- Sanngetall
        mob:setLocalVar("BAM", 9)
    elseif mob:getHPP() <= 39 and BAM == 7 then
        mob:useMobAbility(2124) -- Sanngetall
        mob:setLocalVar("BAM", 8)
    elseif mob:getHPP() <= 49 and BAM == 6 then
        mob:useMobAbility(2124) -- Sanngetall
        mob:setLocalVar("BAM", 7)
    elseif mob:getHPP() <= 49 and BAM == 5 then
        mob:useMobAbility(2125) -- Geirrothr
        mob:setLocalVar("BAM", 6)
    elseif mob:getHPP() <= 59 and BAM == 4 then
        mob:useMobAbility(2124) -- Sanngetall
        mob:setLocalVar("BAM", 5)
    elseif mob:getHPP() <= 69 and BAM == 3 then
        mob:useMobAbility(2124) -- Sanngetall
        mob:setLocalVar("BAM", 4)
    elseif mob:getHPP() <= 74 and BAM == 2 then
        mob:useMobAbility(2125) -- Geirrothr
        mob:setLocalVar("BAM", 3)
    elseif mob:getHPP() <= 79 and BAM == 1 then
        mob:useMobAbility(2124) -- Sanngetall
        mob:setLocalVar("BAM", 2)
    elseif mob:getHPP() <= 89 and BAM == 0 then
        mob:useMobAbility(2304) -- Sanngetall
        mob:setLocalVar("BAM", 1)
    end
end

entity.onMobDeath = function(mob, player, isKiller)
       player:startEvent(32002)
	   player:setCharVar("Odin",1)
	   player:setCharVar("Odin_Ready",0)
    if player:getMainJob() == xi.job.SMN and player:hasSpell(305) == false then
	   player:addSpell(305)
	   player:PrintToPlayer(string.format("Congratulations! You have obtained Avatar: Odin!"), 21)
	end
end
return entity