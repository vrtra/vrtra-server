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
	if (player:hasStatusEffect(xi.effect.SIGNET)) then
		player:delStatusEffectSilent(xi.effect.SIGNET)
		player:addStatusEffect(xi.effect.SANCTION,0,0,7200); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Sanction!"), 21);
	else
		player:addStatusEffect(xi.effect.SANCTION,0,0,7200); -- 253 effect id
		player:PrintToPlayer(string.format("You have received the effect of Sanction!"), 21);
	end
end;