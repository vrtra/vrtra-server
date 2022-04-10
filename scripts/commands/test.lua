cmdprops =
{
    permission = 0,
    parameters = "iiiiiiiiiii"
}

function onTrigger(player)
    if player:getCharVar("BCNM_Tester") == 1 then    
		local stock_1 =
        {
            1551,1, -- Orbs
            1552,1, 
			1131,1, 
			1177,1, 
            1130,1,
			1180,1,
			1175,1,
			1178,1,
			1553,1,
        };
         xi.shop.general(player, stock_1)
	else
	    player:PrintToPlayer("You can't use this command noob")
	end
end