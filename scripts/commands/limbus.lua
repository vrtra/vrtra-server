---------------------------------------------------------------------------------------------------
-- func: limbus
-- auth: Rev
-- desc: Adds all Limbus key items to character
---------------------------------------------------------------------------------------------------

require("scripts/globals/keyitems");

cmdprops =
{
    permission = 5,
    parameters = ""
};
function onTrigger(player)
    player:addKeyItem(349); -- White Card
    player:addKeyItem(350); -- Red Card
    player:addKeyItem(351); -- Black Card
    player:addKeyItem(734); -- Cosmo Cleanse
    player:messageSpecial( ID.text.KEYITEM_OBTAINED, keyId )
end;