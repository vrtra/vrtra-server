-----------------------------------
-- Tachi Rana
-- Great Katana weapon skill
-- Skill Level: N/A
-- Delivers a three-fold attack. params.accuracy varies with TP. Aftermath effect varies with TP. See Kogarasumaru.
-- In order to obtain Tachi: Rana, the Unlocking a Myth (Samurai) quest must be completed.
-- Will stack with Sneak Attack (first hit only).
-- Aligned with the Shadow Gorget, Soil Gorget & Snow Gorget.
-- Aligned with the Shadow Belt, Soil Belt & Snow Belt.
-- Element: None
-- Modifiers: STR:35%
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
    params.numHits = 3
    params.ftp100 = 2.0 params.ftp200 = 2.1 params.ftp300 = 2.2
    params.str_wsc = 0.5 params.dex_wsc = 0.5 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 1 params.acc200 = 1 params.acc300 = 1
    params.atk100 = 1; params.atk200 = 1; params.atk300 = 1;

    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.str_wsc = 0.5
    end

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)

    -- Apply aftermath
 	local wsPoints = player:getVar("TACHI_RANA")
    if damage > 0 then
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)
	end


    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object
