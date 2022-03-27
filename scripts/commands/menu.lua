require ("scripts/globals/msg")
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
cmdprops =
{
    permission = 0,
    parameters = "s"
}
function onTrigger(player, msg, result)
  local weekPoints = player:getVar("Hunt_WeekPoints")
  local complete = player:getVar("HuntWeek_Active")
  local menuName = "Augment Your Kraken Club"
  local op1 = "DMG+20"
  local op2 = "ACC+20"

  player:PrintToPlayer(""..menuName.." "..op1.." "..op2.."", xi.msg.channel.GM_PROMPT)
  if op1 and weekPoints > 4 and complete == 1 then  
	  player:setVar("HuntWeek_Active", 0)
	  player:setVar("Hunt_Week",0)
	  player:setVar("HuntWeek_Target",0)
	  player:setVar("Hunt_WeekPoints",(weekPoints - 5))
	  player:PrintToPlayer(string.format("Weekly Hunt Reset"), 21);
   end
   if op2 and weekPoints > 500 then 

   end

end


--[[
function onTrigger(player,npc)

	local menuTest = 0xFFFFFFFF;


	player:startEvent(32000, 0, 0, 0, menuTest, 0, 0, 0);
end;

function onTrigger(player, msg, result)
  local menuName = "Teleport_to_WG?"
  local op1 = "Yes."
  local op2 = "No."
  player:PrintToPlayer(""..menuName.." "..op1.." "..op2.."", xi.msg.channel.GM_PROMPT)
    if op1 then 
       player:setVar("TELEPORT",1)
	   player:PrintToPlayer(string.format("Nexus Quest: Speak to the Conflux to teleport."), 21);
	end
    if op2 then
	   player:setVar("TELEPORT",0)
    end	   
	

end
]]--