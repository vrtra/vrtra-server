    -----------------------------------
-- Scourge
-- Great Sword weapon skill
-- Skill level: N/A
-- Additional effect: temporarily improves params.critical hit rate.
-- params.critical hit rate boost duration is based on TP when the weapon skill is used. 100% TP will give 20 seconds of params.critical hit rate boost this scales linearly to 60 seconds of params.critical hit rate boost at 300% TP. 5 TP = 1 Second of Aftermath.
-- Parses show the params.critical hit rate increase from the Scourge Aftermath is between 10% and 15%.
-- This weapon skill is only available with the stage 5 relic Great Sword Ragnarok or within Dynamis with the stage 4 Valhalla.
-- Aligned with the Light Gorget & Flame Gorget.
-- Aligned with the Light Belt & Flame Belt.
-- Element: None
-- Modifiers: STR:40%  VIT:40%
-- 100%TP    200%TP    300%TP
-- 3.00      3.00      3.00
-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/status")
require("scripts/settings/main")
require("scripts/globals/weaponskills")
-----------------------------------
local weaponskill_object = {}

weaponskill_object.onUseWeaponSkill = function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 1
    params.ftp100 = 5 params.ftp200 = 5 params.ftp300 = 5
    params.str_wsc = 0.8 params.dex_wsc = 0.4 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0 params.chr_wsc = 0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2; params.atk200 = 2; params.atk300 = 2;

    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.str_wsc = 0.4 params.vit_wsc = 0.4 params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    end

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply aftermath
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.RELIC)
    end

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object
