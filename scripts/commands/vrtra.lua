---------------------------------------------------------------------------------------------------
-- func:  !vrtra
-- auth: <Unknown> :: Modded by Wadski
-- desc: Sets the players position to specific location vrtra zone.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
   
    
    
    if (player:getVar("inJail") ~= 0) then
        player:PrintToPlayer( string.format( "You've been bad." ) );
     
    else
        player:setPos(-73, -4, 0, 0, 156);
        player:PrintToPlayer( string.format("Welcome to Vrtra!"));
    end


            
end;
