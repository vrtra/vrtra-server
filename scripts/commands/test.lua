cmdprops =
{
    permission = 1,
    parameters = "iiiiiiiiiii"
}

function onTrigger(player)
    if player:getCharVar("BCNM_Tester") == 1 then    
		local stock_1 =
        {
            1126,1, --Bseal
            1127,1, --Kseal
			2108,1, -- Monarch
			1842,1, -- cloud orb

        };
         xi.shop.general(player, stock_1)
	else
	    player:PrintToPlayer("You can't use this command noob")
	end
end