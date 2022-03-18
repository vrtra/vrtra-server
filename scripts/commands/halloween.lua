
cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player) 
    if player:getVar("HALLOWEEN") == 2 then 
	local stock = {
            15177, 100, -- horror staff
			17566, 100, -- treat staff 
			18103, 100, -- pitchfork
			16257, 100, -- ghost cape
			11320, 100, -- skeleton robe
	}
	dsp.shop.general(player, stock)
	player:setVar("HALLOWEEN",3)
	elseif player:getVar("HALLOWEEN") == 5 then 
	player:PrintToPlayer("Halloween food with a bonus!")
	local stock = {
		    4488,1,
		    5644,1,
	}
	dsp.shop.general(player, stock)
	player:setVar("HALLOWEEN",6)
	else
	    player:PrintToPlayer("Heyeyeyey... no way bruh")
	end
end