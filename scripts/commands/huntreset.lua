require ("scripts/globals/msg")
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
cmdprops =
{
    permission = 1,
    parameters = "s"
}
function onTrigger(player, msg, result)



  local menuName = "YOU_BOUGHT_A_DRING?"
  local op1 = "Yes."
  local op2 = "No."
  player:PrintToPlayer(""..menuName.." "..op1.." "..op2.."", xi.msg.channel.GM_PROMPT)
    if op1 then 
       player:addItem(13566,1) 
	   player:addItem(65535,3000000)
	   player:messageSpecial(ID.text.ITEM_OBTAINED, 13566)
    end
	
end