---------------------------------------------------------------------------------------------------
-- func: teleport conflux
-- auth: wadski
-- desc: teleports a player to a destination
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "ss"
};

function onTrigger(player, teleport)

    if player:getZoneID() == 156 then
	-- Get Confirmation
	if (teleport == nil) then
	player:PrintToPlayer(string.format("You must enter a destination. Speak to the conflux for destinations."), 21);



		return 

	end

	-- PERFORM COMMAND
	if (teleport == 'sandy') then
      player:setPos('130', '0', '-3', '160', '231'); -- North Sandy
	  player:PrintToPlayer(string.format("Veridical Conflux : ...You have chosen to warp to North San d'Oria. Please have a safe trip!..."), 21)
    elseif (teleport == 'bastok') then
      player:setPos('116', '0', '-71', '127', '234'); -- Bastok Mines
	  player:PrintToPlayer(string.format("Veridical Conflux : ...You have chosen to warp to Bastok Mines. Please have a safe trip!..."), 21)
	elseif (teleport == 'windy') then
      player:setPos('-257', '-5', '-118', '0', '239'); -- Windurst Walls
	  player:PrintToPlayer(string.format("Veridical Conflux : ...You have chosen to warp to Windurst Walls. Please have a safe trip!..."), 21)
	elseif (teleport == 'rulude') then
      player:setPos('0', '3', '118', '65', '243'); -- Ru'lude gardens
	  player:PrintToPlayer(string.format("Veridical Conflux : ...You have chosen to warp to Ru'lude Gardens. Please have a safe trip!..."), 21)
	elseif (teleport == 'ghelsba') then
      player:setPos('-154', '-10', '74', '134', '140'); -- ghelsba outpost
	  player:PrintToPlayer(string.format("Veridical Conflux : ...You have chosen to warp to Ru'lude Gardens. Please have a safe trip!..."), 21)
	elseif (teleport == 'bcnm') then
      player:setPos('543', '-500', '-567', '88', '255'); -- Bastok Mines
	  player:PrintToPlayer(string.format("Veridical Conflux : ...You have chosen to warp to Vrtra BCNM zone. Please have a safe trip!..."), 21)
	-- COMMAND IS NOT CONFIRMED
	else 
		player:PrintToPlayer(string.format("Your request was not confirmed."), 21)

        end
    end
end