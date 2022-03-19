-----------------------------------
-- Leaden Salute
-- Sword weapon skill
-- Skill Level: N/A
-- Delivers a Twofold attack. Damage varies with TP. Death Penalty: Aftermath effect varies with TP.
-- Available only after completing the Unlocking a Myth (Corsair) quest.
-- Aligned with the Shadow Gorget, Soil Gorget & Light Gorget.
-- Aligned with the Shadow Belt, Soil Belt & Light Belt.
-- Element: Darkness
-- Modifiers: AGI:30%
-- 100%TP    200%TP    300%TP
-- 4.00      4.25      4.75
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
    params.ftp100 = 4 params.ftp200 = 4.25 params.ftp300 = 4.75
    params.str_wsc = 0.0 params.dex_wsc = 0.0 params.vit_wsc = 0.0 params.agi_wsc = 0.8 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.ele =xi.magic.ele.DARK
    params.skill =xi.skill.MARKSMANSHIP
    params.includemab = true

    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.ftp200 = 6.7 params.ftp300 = 10.0
        params.agi_wsc = 1.0
    end

    local damage, criticalHit, tpHits, extraHits = doMagicWeaponskill(player, target, wsID, params, tp, action, primary)

    -- Apply Aftermath
 	local wsPoints = player:getVar("LEADEN_SALUTE")
    if damage > 0 and player:getEquipID(xislot.RANGED) == 19001 and wsPoints < 250 then
       xi.aftermath.addStatusEffect(player, tp,xi.slot.RANGED,xi.aftermath.type.MYTHIC)
		player:setVar("LEADEN_SALUTE", wsPoints + 1)
		player:PrintToPlayer(string.format("You now have %u weapon skill points.", wsPoints + 1), 8)
	end
    if wsPoints == 249 then 
	    player:setVar("LEADEN_SALUTE_COMPLETE", 1) 
		player:PrintToPlayer("You have completed your weapon skill trials.", 21)
		
	end 

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object