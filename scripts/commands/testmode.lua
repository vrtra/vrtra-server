---------------------------------------------------------------------------------------------------
-- func: @testmode <on / off>
-- desc: Sometimes GodMode would actually get in the way of testing because of stats changes,
--       yet you need to be able to survive the mob you are testing. So now we have TestMode.
--       Note: does NOT persist through zoning, logout, or connection loss.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, toggle)
    if (player:getVar("TestMode") == 0) then
        -- Toggle TestMode on..
        player:setVar("TestMode", 1);
		-- Add bonus effects to the player..
        player:addStatusEffect(xi.effect.MAX_HP_BOOST,1000,0,0);
        player:addStatusEffect(xi.effect.MAX_MP_BOOST,1000,0,0);
        player:addStatusEffect(xi.effect.REGAIN,150,1,0);
        player:addStatusEffect(xi.effect.REFRESH,250,0,0);
        player:addStatusEffect(xi.effect.REGEN,250,0,0);
		player:addStatusEffect(xi.effect.HASTE,250,0,0);
		player:addStatusEffect(xi.effect.FEALTY,1,0,0);
        player:addStatusEffect(xi.effect.AQUAVEIL,75,0,0);
        player:addStatusEffect(xi.effect.NEGATE_PETRIFY,1,0,0);
        player:addStatusEffect(xi.effect.NEGATE_TERROR,1,0,0);
        player:addStatusEffect(xi.effect.NEGATE_AMNESIA,1,0,0);
        player:addStatusEffect(xi.effect.NEGATE_DOOM,1,0,0);
        player:addStatusEffect(xi.effect.NEGATE_POISON,1,0,0);
		player:PrintToPlayer("TestMode now activated");
        -- Heal the player from the new buffs..
        player:addHP( 50000 );
        player:setMP( 50000 );
		
    else 
	    player:setVar("TestMode", 0);
        player:delStatusEffect(xi.effect.MAX_HP_BOOST);
        player:delStatusEffect(xi.effect.MAX_MP_BOOST);
        player:delStatusEffect(xi.effect.REGAIN);
        player:delStatusEffect(xi.effect.REFRESH);
        player:delStatusEffect(xi.effect.REGEN);
		player:delStatusEffect(xi.effect.HASTE);
        player:delStatusEffect(xi.effect.FEALTY);
        player:delStatusEffect(xi.effect.AQUAVEIL);
        player:delStatusEffect(xi.effect.NEGATE_PETRIFY);
        player:delStatusEffect(xi.effect.NEGATE_TERROR);
        player:delStatusEffect(xi.effect.NEGATE_AMNESIA);
        player:delStatusEffect(xi.effect.NEGATE_DOOM);
        player:delStatusEffect(xi.effect.NEGATE_POISON);
		player:PrintToPlayer("TestMode now deactivated");

    end
end;