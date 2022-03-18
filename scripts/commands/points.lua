-----------------------------------
--
-- check login points
--
-----------------------------------
require("scripts/globals/status")

cmdprops =
{
    permission = 0,
    parameters = "s"
}



function onTrigger(player)
    local cruor = player:getCurrency('cruor')
    local loginPoints = player:getCurrency('legion_point')
    local weekPoints = player:getVar("Hunt_WeekPoints")
    local dayPoints = player:getVar("Hunt_DayPoints")	
	local zeniPoints = player:getCurrency("zeni_point")
    local silvers = player:getCurrency("voidstones")
	local hundred = player:getCurrency("bayld")
	local jade    = player:getCurrency("jetton")
	local alex = player:getCurrency("shining_star")
	local abc = player:getCurrency("ancient_beastcoin")

    player:PrintToPlayer("Calculating your total points.", 21)
	player:PrintToPlayer("------------------------------", 21)
	player:PrintToPlayer("..... "..loginPoints.." login points.", 21)
	player:PrintToPlayer("..... "..weekPoints.." Weekly Hunt points and "..dayPoints.." Daily Hunt Points.", 21)
	player:PrintToPlayer("..... "..cruor.." Cruor.", 21)
	player:PrintToPlayer("..... "..zeniPoints.." Zeni Points.", 21)
	player:PrintToPlayer("..... "..silvers.." M. Silverpeice stored with the Dynamis Overseer.", 21)
	player:PrintToPlayer("..... "..hundred.." 100 Byne bills stored with the Dynamis Overseer..", 21)
	player:PrintToPlayer("..... "..jade.." Lungo Jadeshells stored with the Dynamis Overseer..", 21)
	player:PrintToPlayer("..... "..alex.." Alexandrite stored with Paparoon..", 21)
	player:PrintToPlayer("..... "..abc.." Ancient Beastcoins stored with Sagheera..", 21)
end
