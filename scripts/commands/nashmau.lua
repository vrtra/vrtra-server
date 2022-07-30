---------------------------------------------------------------------------------------------------
-- func:  @nashmau
-- auth: <Unknown> :: Modded by wadski
-- desc: Sets the players position to specific location (nashmau).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "iiii"
}
function onTrigger(player)
       
    if (player:getVar("inJail") ~= 0) then
        player:PrintToPlayer( string.format( "You've been bad." ) )
    elseif (player:getZoneID() == 255) then
    player:PrintToPlayer( string.format( "Nope nope nope! Kill it or run away!" ) )
       
    else
        player:setPos('0','0','-31','190','53')
        player:PrintToPlayer( string.format("Welcome to Nashmau!"))
    end
 
end
