-- resets hunts 
		
cmdprops =
{
    permission = 1,
    parameters = "ss"
}
function onTrigger(player, target)
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target));
            return;
        end
    end
		targ:setVar("HuntWeek_Active", 0)
		targ:setVar("Hunt_Week",0)
		targ:setVar("HuntWeek_Target",0)
		targ:setVar("Huntday_Active", 0)
		targ:setVar("Hunt_day",0)
		targ:setVar("Huntday_Target",0)
	    targ:PrintToPlayer("Your Hunts are reset!",21);
		player:PrintToPlayer(string.format("%s's hunts are reset",targ:getName()), 21);
end