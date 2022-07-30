-----------------------------------
--
-- chair1
--
-----------------------------------
require("scripts/globals/status");

cmdprops =
{
    permission = 0,
    parameters = "s"
};



function onTrigger(player,setAnimation)
    player:setAnimation(69);
end;
