-----------------------------------
-- Camlann's Torment
-- Polearm weapon skill
-- Skill Level: EMPYREAN
-- Delivers a triple damage attack. DEF ignored varies with TP.
-- Will stack with Sneak Attack.
-- Element: None
-- Modifiers: VIT:60%
-- 100%TP    200%TP    300%TP
-- 3.00      3           3
-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------
local weaponskill_object = {}

weaponskill_object.onUseWeaponSkill = function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 1
    params.ftp100 = 4 params.ftp200 = 4 params.ftp300 = 4
    params.str_wsc = 0.0 params.dex_wsc = 0.8 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2; params.atk200 = 2; params.atk300 = 2;
    params.ignoresDef = true
    params.ignored100 = 0.5
    params.ignored200 = 0.5
    params.ignored300 = 0.5

    if xi.settings.main.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.str_wsc = 0.6
    end

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply aftermath
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.EMPYREAN)
    end

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object
