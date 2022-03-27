-----------------------------------
-- Blade Kamu
-- Katana weapon skill
-- Skill Level: N/A
-- Lowers target's params.accuracy. Duration of effect varies with TP. Nagi: Aftermath effect varies with TP.
-- Effect lasts 60 seconds @ 100 TP, 90 seconds @ 200 TP, and 120 seconds @ 300 TP
-- Available only after completing the Unlocking a Myth (Ninja) quest.
-- Aligned with the Shadow Gorget, Thunder Gorget & Breeze Gorget.
-- Aligned with the Shadow Belt, Thunder Belt & Breeze Belt.
-- Element: None
-- Modifiers: STR:50%  INT:50%
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
    params.numHits = 2
    params.ftp100 = 3 params.ftp200 = 3 params.ftp300 = 3
    params.str_wsc = 0.5 params.dex_wsc = 0.5 params.vit_wsc = 0.0 params.agi_wsc = 0.0 params.int_wsc = 0.0
    params.mnd_wsc = 0.0 params.chr_wsc = 0.0
    params.crit100 = 0.0 params.crit200 = 0.0 params.crit300 = 0.0
    params.canCrit = false
    params.acc100 = 0.0 params.acc200 = 0.0 params.acc300 = 0.0
    params.atk100 = 2; params.atk200 = 2; params.atk300 = 2;

    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.str_wsc = 0.6 params.int_wsc = 0.6
        params.atk100 = 1.3125; params.atk200 = 1.3125; params.atk300 = 1.3125;
        params.atk100 = 1.3; params.atk200 = 1.3; params.atk300 = 1.3

    if xi.settings.USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.str_wsc = 0.6 params.int_wsc = 0.6
        params.ignoresDef = true
        params.ignored100 = 0.25
        params.ignored200 = 0.25
        params.ignored300 = 0.25
        params.atk100 = 2.25; params.atk200 = 2.25; params.atk300 = 2.25 -- http://wiki.ffo.jp/html/15893.html

    end

    local damage, criticalHit, tpHits, extraHits = doPhysicalWeaponskill(player, target, wsID, params, tp, action, primary, taChar)
 	local wsPoints = player:getVar("BLADE_KAMU")
    if damage > 0 then 
       xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)
    end

    return tpHits, extraHits, criticalHit, damage
end

return weaponskill_object