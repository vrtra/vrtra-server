--------------------------------------------------------------
-- Func: Cell shop
-- author: Rev
-- Desc: Opens Salvage Cell shop for GMs
--------------------------------------------------------------

cmdprops =
{
    permission = 5,
    parameters = "iiii"
};

function onTrigger(player)
        player:delStatusEffect(xi.effect.ENCUMBRANCE_I)
        player:delStatusEffect(xi.effect.OBLIVISCENCE)	
        player:delStatusEffect(xi.effect.OMERTA)
        player:delStatusEffect(xi.effect.IMPAIRMENT)
        player:delStatusEffect(xi.effect.DEBILITATION)	
end