-----------------------------------
-- Drakesbane
-- Polearm weapon skill
-- Skill level: N/A
-- Delivers a fourfold attack. Chance of params.critical hit varies with TP. Ryunohige: Aftermath effect varies with TP.
-- Available only after completing the Unlocking a Myth (Dragoon) quest.
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: None
-- Modifiers: STR:50%
-- 100%TP    200%TP    300%TP
-- 1.00      1.00      1.00
-----------------------------------
require("scripts/globals/aftermath")
require("scripts/settings/main")
require("scripts/globals/status")
require("scripts/globals/weaponskills")
-----------------------------------
local weaponskill_object = {}

weaponskill_object.onUseWeaponSkill = function(player, target, wsID, tp, primary, action, taChar)
    local params = {}
    params.numHits = 4
    params.ftp100 = 1.5 params.ftp200 = 1.5 params.ftp300 = 1.5
    params.str_wsc = 0.5 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.1 params.crit200 = 0.2 params.crit300 = 0.3
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 0.9; params.atk200 = 0.9; params.atk300 = 0.9;

    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.atk100 = 0.9; params.atk200 = 0.9; params.atk300 = 0.9;
        params.crit100 = 0.1 params.crit200 = 0.2 params.crit300 = 0.3;
    end

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply Aftermath / Weaponskill Points
 	local wsPoints = player:getVar("drakesbane")
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)
    end 
	

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object
