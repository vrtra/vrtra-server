-----------------------------------
-- xi.effect.SENGIKORI
-----------------------------------
local effect_object = {}

effect_object.onEffectGain = function(target, effect)
    target:addMod(xi.mod.SKILLCHAINBONUS, 2)
end

effect_object.onEffectTick = function(target, effect)
end

effect_object.onEffectLose = function(target, effect)
    target:delMod(xi.mod.SKILLCHAINBONUS, 2)
end

return effect_object
