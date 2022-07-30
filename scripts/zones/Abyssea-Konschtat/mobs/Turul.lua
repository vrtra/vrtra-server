-----------------------------------
-- Area: Abyssea - Konschtat (15)
--   NM: Turul
-----------------------------------
local ID = require("scripts/zones/Abyssea-Konschtat/IDs")
mixins = {require("scripts/mixins/families/amphiptere")}
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/mobs")
require("scripts/globals/magic")
require("scripts/globals/pathfind")
-----------------------------------
local entity = {}

local path =
{
    -248, 16, 90,
    -248, 16, 139,
    -257, 19, 198,
    -234, 34, 255,
    -233, 33, 249,
    -207, 35, 295,
    -168, 33, 328,
    -103, 30, 350,
    -43, 31, 350,
    -19, 38, 321,
    -1, 32, 277,
    -7, 24, 225,
    -70, 17, 160,
    -64, 18, 119,
    0, 24, 79,
    36, 24, 122,
    81, 24, 88,
    165, 30, 171,
    269, 13, 18,
    326, 26, 102,
    392, 16, 80,
    437, 16, 163,
    508, 14, 178,
    442, 26, 256,
    478, 32, 329,
    413, 32, 414,
    363, 33, 453,
    307, 25, 345,
    193, 26, 341,
    83, 32, 373,
    4, 40, 443,
    -75, 56, 515,
    -134, 69, 598,
    -185, 73, 673,
    -255, 64, 595,
    -213, 56, 487,
    -284, 48, 401,
    -354, 25, 310,
    -451, 22, 227,
    -354, 16, 196,
    -292, 22, 159,
    -273, 16, 69,
    -366, 16, -5,
    -423, -4, -108,
    -365, -16, -204,
    -237, -24, -199,
    -269, -7, -71,
	}local entity = {}

entity.onMobInitialize = function(mob)
    mob:addStatusEffectEx(xi.effect.SHOCK_SPIKES,0,50,0,0)	
end

entity.onMobSpawn = function(mob)
	mob:setMod(xi.mod.SLEEPRES, 100)
	mob:setMod(xi.mod.PARALYZERES, 10)
	mob:setMod(xi.mod.BINDRES, 40)
	mob:setMod(xi.mod.LULLABYRES, 100)
	mob:setMod(xi.mod.GRAVITYRES, 40)
	mob:setMod(xi.mod.SLOWRES, 10)
	mob:setMod(xi.mod.BLINDRES, 10)
	mob:setMod(xi.mod.SILENCERES, 10)
	mob:setMod(xi.mod.REGAIN, 10)	
end

entity.onPath = function(mob)

    xi.path.patrol(mob, path, xi.path.flag.RUN)
	
end

entity.onMobRoam = function(mob)
    -- move to start position if not moving
    if (mob:isFollowingPath() == false) then
        mob:pathThrough(xi.path.first(path), xi.path.flag.RUN)
    end
end

entity.onAdditionalEffect = function(mob, target, damage)

    return xi.mob.onAddEffect(mob, target, damage, xi.mob.ae.STUN, {chance = 65, duration = math.random(5, 15)})
	
end

entity.onSpikesDamage = function(mob, target, damage)

    local INT_diff = mob:getStat(xi.mod.INT) - target:getStat(xi.mod.INT)

    if INT_diff > 20 then
        INT_diff = 20 + (INT_diff - 20) * 0.5 -- INT above 20 is half as effective.
    end

    local dmg = (damage + INT_diff) * 0.5 -- INT adjustment and base damage averaged together.
    local params = {}
    params.bonusmab = 0
    params.includemab = false
    dmg = addBonusesAbility(mob, xi.magic.ele.THUNDER, target, dmg, params)
    dmg = dmg * applyResistanceAddEffect(mob, target, xi.magic.ele.THUNDER, 0)
    dmg = adjustForTarget(target, dmg, xi.magic.ele.THUNDER)
    dmg = finalMagicNonSpellAdjustments(mob, target, xi.magic.ele.THUNDER, dmg)

    if dmg < 0 then
        dmg = 0
    end

    return xi.subEffect.SHOCK_SPIKES, xi.msg.basic.SPIKES_EFFECT_DMG, dmg
	
end

entity.onMobFight = function(mob,target)
    -- Uncertain of threshold. Going with 50% for now.
    -- (possibly varies, perhaps is simply lower HP = greater cast chance?)
    if mob:getHPP() <= 50 then
        mob:setMobMod(xi.mobMod.SPELL_LIST, 175)
    else
        -- I'm assuming that if it heals up, it goes back to the other spell list.
        mob:setMobMod(xi.mobMod.SPELL_LIST, 174)
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end

entity.onMobDeath = function(mob,player)

	local cruor = math.random(1300,1700)
	
	player:addTitle(xi.title.TURUL_GROUNDER)
	player:addCurrency("Cruor",cruor)
	player:messageSpecial(ID.text.CRUOR_OBTAINED, cruor)
end
return entity
