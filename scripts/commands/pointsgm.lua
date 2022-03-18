-----------------------------------
--
-- add login points
--
-----------------------------------
require("scripts/globals/status")

cmdprops =
{
    permission = 5,
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
	
	player:addCurrency('cruor',100000)
	player:addCurrency('jetton',100000)
	player:addCurrency('bayld',100000)
	player:addCurrency('voidstones',100000)
	player:addCurrency('zeni_points',100000)
	player:addCurrency('legion_point',100000)
    player:addCurrency('imperial_standing',100000)
	player:addCP(100000)
	player:addCurrency('zeni_points',100000)
	player:addCurrency('shining_star',100000)
	player:addCurrency('ancient_beastcoin',1000)
	player:setVar("Hunt_WeekPoints",100000)
	player:setVar("Hunt_DayPoints",100000)
	
	player:PrintToPlayer(" GM COMMAND ACTIVATED ")
	player:PrintToPlayer("ALL POINTS SET TO 100K CHECK !points FOR YOUR TOTALS")
end
	