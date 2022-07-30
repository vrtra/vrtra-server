---------------------------------------------------------------------------------------------------
-- func:  !temenos
-- auth: <Unknown> :: Modded by Rev
-- desc: Sets the players position to the Temenos Limbus entrance.
---------------------------------------------------------------------------------------------------
local ID = require("scripts/zones/Temenos/IDs")
require("scripts/globals/keyitems")

cmdprops =
{
    permission = 5,
    parameters = ""
}

function onTrigger(player)
   
	player:addKeyItem(xi.ki.WHITE_CARD)
	player:addKeyItem(xi.ki.COSMOCLEANSE)
	player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.COSMOCLEANSE)
	player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.WHITE_CARD)
	player:setPos(580, -3, 100, 190, 37)
    player:PrintToPlayer(string.format("Teleporting to the Temenos limbus entrance."))

end
