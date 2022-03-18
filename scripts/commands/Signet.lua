---------------------------------------------------------------------------------------------------
-- func: signet
-- desc: Adds a 4-hr Signet effect to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	if (player:hasStatusEffect(dsp.effect.SANCTION)) then
		player:delStatusEffectSilent(dsp.effect.SANCTION)
		player:addStatusEffect(dsp.effect.SIGNET,0,0,14400); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Signet!"), 21);
	else
		player:addStatusEffect(dsp.effect.SIGNET,0,0,14400); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Signet!"), 21);
	end
end;
