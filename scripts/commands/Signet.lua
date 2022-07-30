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
	if (player:hasStatusEffect(xi.effect.SANCTION)) then
		player:delStatusEffectSilent(xi.effect.SANCTION)
		player:addStatusEffect(xi.effect.SIGNET,0,0,14400); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Signet!"), 21);
	else
		player:addStatusEffect(xi.effect.SIGNET,0,0,14400); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Signet!"), 21);
	end
end;
