---------------------------------------------------------------------------------------------------
-- func:  !salvage
-- auth: <Unknown> :: Modded by Rev
-- desc: Sets the players position to the salvage entrance.
---------------------------------------------------------------------------------------------------
local ID = require("scripts/zones/Alzadaal_Undersea_Ruins/IDs")
require("scripts/globals/keyitems")

cmdprops =
{
    permission = 5,
    parameters = ""
}

function onTrigger(player)
   
    
    
    if player:hasKeyItem(xi.ki.REMNANTS_PERMIT) then
    player:PrintToPlayer(string.format("You have the key item already dude."))
    player:PrintToPlayer(string.format("Don't dupe salvage gear you shit."))
    player:setPos(-580, 0, -159, 65, 72)
	player:setVar("AGI", 0) 
	player:setVar("VIT", 0) 
	player:setVar("STR", 0) 
	player:setVar("MND", 0) 
	player:setVar("INT", 0) 	
	player:setVar("DEX", 0) 
	player:setVar("CHR", 0) 
	player:setVar("MP", 0) 
	player:setVar("HP", 0)    
	player:setVar("BODY", 0) 
	player:setVar("HANDS", 0) 
	player:setVar("RANGED/AMMO", 0) 
	player:setVar("ACCESSORIES", 0) 
	player:setVar("LEGS/FEET", 0)   
	player:setVar("HEAD/NECK", 0) 
	player:setVar("WEAPONS", 0) 
	player:setVar("BACK/WAIST", 0) 
	player:setVar("SJ", 0) 
	player:setVar("MAGIC", 0) 
	player:setVar("JA", 0) 
	player:setVar("ENCUMBRANCE",0)
	player:setVar("OBLIVISCENCE",0)
	player:setVar("OMERTA",0)
	player:setVar("IMPAIRMENT",0)
	player:setVar("DEBILITATION",0)
     
    else
    player:setPos(-580, 0, -159, 65, 72)
    player:PrintToPlayer(string.format("Don't dupe salvage gear you shit."))
	player:addKeyItem(xi.ki.REMNANTS_PERMIT)
	player:messageSpecial(ID.text.KEYITEM_OBTAINED, xi.ki.REMNANTS_PERMIT)
    player:setVar("AGI", 0) 
	player:setVar("VIT", 0) 
	player:setVar("STR", 0) 
	player:setVar("MND", 0) 
	player:setVar("INT", 0) 	
	player:setVar("DEX", 0) 
	player:setVar("CHR", 0) 
	player:setVar("MP", 0) 
	player:setVar("HP", 0)    
	player:setVar("BODY", 0) 
	player:setVar("HANDS", 0) 
	player:setVar("RANGED/AMMO", 0) 
	player:setVar("ACCESSORIES", 0) 
	player:setVar("LEGS/FEET", 0)   
	player:setVar("HEAD/NECK", 0) 
	player:setVar("WEAPONS", 0) 
	player:setVar("BACK/WAIST", 0) 
	player:setVar("SJ", 0) 
	player:setVar("MAGIC", 0) 
	player:setVar("JA", 0) 
	player:setVar("ENCUMBRANCE",0)
	player:setVar("OBLIVISCENCE",0)
	player:setVar("OMERTA",0)
	player:setVar("IMPAIRMENT",0)
	player:setVar("DEBILITATION",0)
    end


            
end
