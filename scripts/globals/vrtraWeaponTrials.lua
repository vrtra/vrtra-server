
require("scripts/globals/weaponskills")
require("scripts/settings/main")
require("scripts/globals/status")

job_table =
{

	[xi.job.WAR] = 18991,
	[xi.job.MNK] = 18992,
	[xi.job.WHM] = 18993,
	[xi.job.BLM] = 18994,
	[xi.job.RDM] = 18995,
	[xi.job.THF] = 18996,
	[xi.job.PLD] = 18997,
	[xi.job.DRK] = 18998,
	[xi.job.BST] = 18999,
	[xi.job.BRD] = 19000,
	[xi.job.RNG] = 19001,
	[xi.job.SAM] = 19002,
	[xi.job.NIN] = 19003,
	[xi.job.DRG] = 19004,
	[xi.job.SMN] = 19005,
	[xi.job.BLU] = 19006,
	[xi.job.COR] = 19007,
	[xi.job.PUP] = 19008,
	[xi.job.DNC] = 18989,
	[xi.job.SCH] = 18990,
	
}

upgradeTable =
	{          --|BASEID,REWARDID|--
	[xi.job.WAR] = {18991 , 19060},
	[xi.job.MNK] = {18992 , 19061},
	[xi.job.WHM] = {18993 , 19062},
	[xi.job.BLM] = {18994 , 19063},
	[xi.job.RDM] = {18995 , 19064},
	[xi.job.THF] = {18996 , 19065},
	[xi.job.PLD] = {18997 , 19066},
	[xi.job.DRK] = {18998 , 19067},
	[xi.job.BST] = {18999 , 19068},
	[xi.job.BRD] = {19000 , 19069},
	[xi.job.RNG] = {19001 , 19070},
	[xi.job.SAM] = {19002 , 19071},
	[xi.job.NIN] = {19003 , 19072},
	[xi.job.DRG] = {19004 , 19073},
	[xi.job.SMN] = {19005 , 19074},
	[xi.job.BLU] = {19006 , 19075},
	[xi.job.COR] = {19007 , 19076},
	[xi.job.PUP] = {19008 , 19077},
	[xi.job.DNC] = {18989 , 19078},
  	[xi.job.SCH] = {18990 , 19079},	
}
wsTable =
	{	
    [xi.job.WAR] = xi.weaponskill.KINGS_JUSTICE,
    [xi.job.MNK] = xi.weaponskill.ASCETICS_FURY,
    [xi.job.WHM] = xi.weaponskill.MYSTIC_BOON,
    [xi.job.BLM] = xi.weaponskill.VIDOHUNIR,
    [xi.job.RDM] = xi.weaponskill.DEATH_BLOSSOM,
    [xi.job.THF] = xi.weaponskill.MANDALIC_STAB,
    [xi.job.PLD] = xi.weaponskill.ATONEMENT,
    [xi.job.DRK] = xi.weaponskill.INSURGENCY,
    [xi.job.BST] = xi.weaponskill.PRIMAL_REND,
    [xi.job.BRD] = xi.weaponskill.MORDANT_RIME,
    [xi.job.RNG] = xi.weaponskill.TRUEFLIGHT,
    [xi.job.SAM] = xi.weaponskill.TACHI_RANA,
    [xi.job.NIN] = xi.weaponskill.BLADE_KAMU,
    [xi.job.DRG] = xi.weaponskill.DRAKESBANE,
    [xi.job.SMN] = xi.weaponskill.GARLAND_OF_BLISS,
    [xi.job.BLU] = xi.weaponskill.EXPIACION,
    [xi.job.COR] = xi.weaponskill.LEADEN_SALUTE,
    [xi.job.PUP] = xi.weaponskill.STRINGING_PUMMEL,
    [xi.job.DNC] = xi.weaponskill.PYRRHIC_KLEOS,
    [xi.job.SCH] = xi.weaponskill.OMNISCIENCE,

}
function weaponSkillPoints(player, target)


	local wsPoints = player:getVar("drakesbane")
    if damage > 0 and player:getEquipID(xi.slot.MAIN) == 19004 and wsPoints < 249 then
        xi.aftermath.addStatusEffect(player, tp, xi.slot.MAIN, xi.aftermath.type.MYTHIC)
		player:setVar("drakesbane", wsPoints + 1)
		player:PrintToPlayer(string.format("You now have %u weapon skill points.", wsPoints + 1), 8)
	end
    if wsPoints > 249 then 
	    player:setVar("drakesbane_complete", 1) 
		player:PrintToPlayer("You have completed your weapon skill trials.", 21)
		
	end 
	
end