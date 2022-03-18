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
        player:addStatusEffect(dsp.effect.MAX_HP_BOOST,1000,0,0);
        player:addStatusEffect(dsp.effect.MAX_MP_BOOST,1000,0,0);
        player:addStatusEffect(dsp.effect.REGAIN,150,1,0);
        player:addStatusEffect(dsp.effect.REFRESH,250,0,0);
        player:addStatusEffect(dsp.effect.REGEN,250,0,0);
		player:addStatusEffect(dsp.effect.HASTE,250,0,0);
		player:addStatusEffect(dsp.effect.FEALTY,1,0,0);
        player:addStatusEffect(dsp.effect.AQUAVEIL,75,0,0);
        player:addStatusEffect(dsp.effect.NEGATE_PETRIFY,1,0,0);
        player:addStatusEffect(dsp.effect.NEGATE_TERROR,1,0,0);
        player:addStatusEffect(dsp.effect.NEGATE_AMNESIA,1,0,0);
        player:addStatusEffect(dsp.effect.NEGATE_DOOM,1,0,0);
        player:addStatusEffect(dsp.effect.NEGATE_POISON,1,0,0);
		player:PrintToPlayer("TestMode now activated");
        -- Heal the player from the new buffs..
        player:addHP( 50000 );
        player:setMP( 50000 );
		
    else 
	    player:setVar("TestMode", 0);
        player:delStatusEffect(dsp.effect.MAX_HP_BOOST);
        player:delStatusEffect(dsp.effect.MAX_MP_BOOST);
        player:delStatusEffect(dsp.effect.REGAIN);
        player:delStatusEffect(dsp.effect.REFRESH);
        player:delStatusEffect(dsp.effect.REGEN);
		player:delStatusEffect(dsp.effect.HASTE);
        player:delStatusEffect(dsp.effect.FEALTY);
        player:delStatusEffect(dsp.effect.AQUAVEIL);
        player:delStatusEffect(dsp.effect.NEGATE_PETRIFY);
        player:delStatusEffect(dsp.effect.NEGATE_TERROR);
        player:delStatusEffect(dsp.effect.NEGATE_AMNESIA);
        player:delStatusEffect(dsp.effect.NEGATE_DOOM);
        player:delStatusEffect(dsp.effect.NEGATE_POISON);
		player:PrintToPlayer("TestMode now deactivated");

    end
end;