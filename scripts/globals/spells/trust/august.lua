-----------------------------------
-- Trust: August
-----------------------------------
require("scripts/globals/ability")
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/globals/status")
require("scripts/globals/roe")
require("scripts/globals/trust")
require("scripts/globals/weaponskillids")
-----------------------------------
local spell_object = {}

spell_object.onMagicCastingCheck = function(caster, target, spell)
    return xi.trust.canCast(caster, spell)
end

spell_object.onSpellCast = function(caster, target, spell)
    return xi.trust.spawn(caster, spell)
end

spell_object.onMobSpawn = function(mob)

    xi.trust.message(mob, xi.trust.message_offset.SPAWN)

    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_HAS_TOP_ENMITY, 0,
                        ai.r.JA, ai.s.SPECIFIC, xi.ja.PROVOKE)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_STATUS, xi.effect.FLASH,
                        ai.r.MA, ai.s.SPECIFIC, xi.magic.spell.FLASH)

    mob:addSimpleGambit(ai.t.SELF, ai.c.NOT_STATUS, xi.effect.SENTINEL,
                        ai.r.JA, ai.s.SPECIFIC, xi.ja.SENTINEL)

    mob:addSimpleGambit(ai.t.PARTY, ai.c.HPP_LT, 50,
                        ai.r.MA, ai.s.HIGHEST, xi.magic.spellFamily.CURE)
end

spell_object.onMobDespawn = function(mob)
    xi.trust.message(mob, xi.trust.message_offset.DESPAWN)
end

spell_object.onMobDeath = function(mob)
    xi.trust.message(mob, xi.trust.message_offset.DEATH)
end

return spell_object
