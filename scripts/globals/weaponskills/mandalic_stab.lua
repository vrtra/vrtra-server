-----------------------------------
-- Mandalic Stab
-- Dagger weapon skill
-- Skill Level: N/A
-- Damage Varies with TP. Vajra: Aftermath effect varies with TP.
-- Multiplies attack by 1.66
-- Available only after completing the Unlocking a Myth (Thief) quest.
-- Will stack with Sneak Attack.
-- Aligned with the Shadow Gorget, Flame Gorget & Light Gorget.
-- Aligned with the Shadow Belt, Flame Belt & Light Belt.
-- Element: None
-- Modifiers: DEX:30%
-- 100%TP    200%TP    300%TP
-- 2.00      2.13      2.50
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
    params.str_wsc = 0.0 params.dex_wsc = 0.6 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 1.5; params.atk200 = 1.5; params.atk300 = 1.5;

    if xi.settings.main.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.ftp100 = 4 params.ftp200 = 6.09 params.ftp300 = 8.5
        params.dex_wsc = 0.6
        params.atk100 = 1.75; params.atk200 = 1.75; params.atk300 = 1.75;
    end

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply aftermath
 	local wsPoints = player:getVar("MANDALIC_STAB")
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)		
	end 

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object
