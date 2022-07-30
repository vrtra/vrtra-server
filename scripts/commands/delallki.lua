---------------------------------------------------------------------------------------------------
-- func: addallkeyitems
-- auth: Shadowmh
-- desc: Adds all key items to character
---------------------------------------------------------------------------------------------------

require("scripts/globals/keyitems");

cmdprops =
{
    permission = 5,
    parameters = ""
};
function onTrigger(player)
    z = 1;
    while z <= 2544 do
    player:delKeyItem(z);
	z = z + 1;
    end
end;