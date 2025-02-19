-----------------------------------
-- Ascetics Fury
-- Hand-to-Hand weapon skill
-- Skill Level: N/A
-- Chance of params.critical hit varies with TP. Glanzfaust: Aftermath effect varies with TP.
-- Available only after completing the Unlocking a Myth (Monk) quest.
-- Aligned with the Flame Gorget & Light Gorget.
-- Aligned with the Flame Belt & Light Belt.
-- Element: None
-- Modifiers: STR:50%  VIT:50%
-- 100%TP    200%TP    300%TP
-- 1.00      1.00      1.00
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
    params.ftp100 = 2.5 params.ftp200 = 2.5 params.ftp300 = 2.5
    params.str_wsc = 0.6 params.dex_wsc = 0.6 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.2 params.crit200 = 0.3 params.crit300 = 0.5
    params.canCrit = true
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.75; params.atk200 = 1.75; params.atk300 = 1.75;

    if xi.settings.main.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.crit100 = 0.2 params.crit200 = 0.3 params.crit300 = 0.5
        params.atk100 = 2.6; params.atk200 = 2.6; params.atk300 = 2.6;
    end


    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply aftermath
 	local wsPoints = player:getVar("ASCETICS_FURY")
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)
		
	end 

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object
