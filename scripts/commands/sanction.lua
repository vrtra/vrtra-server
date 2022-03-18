---------------------------------------------------------------------------------------------------
-- func: sanction
-- desc: Adds a 2-hr Sanction effect to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	if (player:hasStatusEffect(dsp.effect.SIGNET)) then
		player:delStatusEffectSilent(dsp.effect.SIGNET)
		player:addStatusEffect(dsp.effect.SANCTION,0,0,7200); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Sanction!"), 21);
	else
		player:addStatusEffect(dsp.effect.SANCTION,0,0,7200); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Sanction!"), 21);
	end
end;