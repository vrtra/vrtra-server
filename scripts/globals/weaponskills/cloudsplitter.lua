-----------------------------------
-- Cloudsplitter
-- Axe weapon skill
-- Skill level: NA
-- Description: Deals lightning elemental damage. Damage varies with TP. Farsha: Aftermath.
-- Available only when equipped with Farsha (85), Farsha (90) or Alard's Axe +1.
-- Elemental gorgets do not affect damage. Rairin Obi increases damage on Lightning day and/or weather.
-- Element: Lightning
-- Modifiers: STR:40% MND:40%
-- 100%TP    200%TP    300%TP
-- 3.75        5.0      6.0
-----------------------------------
require("scripts/globals/aftermath")
require("scripts/globals/magic")
require("scripts/settings/main")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------
local weaponskill_object = {}

weaponskill_object.onUseWeaponSkill = function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 2
    params.ftp100 = 6 params.ftp200 = 6 params.ftp300 = 6
    params.str_wsc = 0.5 params.dex_wsc = 0.5 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0 params.mnd_wsc = 0 params.chr_wsc = 0.0
    params.ele =xi.magic.ele.LIGHTNING
    params.skill =xi.skill.AXE
    params.includemab = true
    params.acc100 = 0 params.acc200= 0 params.acc300= 0
    params.atk100 = 4; params.atk200 = 4; params.atk300 = 4;
	
    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.ftp200 = 6.7 params.ftp300 = 8.5
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    -- Apply aftermath
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.EMPYREAN)
    end

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object