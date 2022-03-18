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
    player:PrintToPlayer("Here's your Salvage cells bitch.");
   
     local stock = {
        5375,1, -- Praecipitatio Cell
        5373,1, -- Duplicatus Cell
        5374,1, -- Opacus Cell
        5383,1, -- Humilus Cell
        5384,1, -- Spissatus Cell
        5365,1, -- Incus Cell
        5366,1, -- Castellanus Cell
        5371,1, -- Undulatus Cell
        5367,1, -- Cumulus Cell
        5368,1, -- Radiatus Cell
        5372,1, -- Virga Cell
		5370,1, -- Cirrocumulus Cell
		5369,1, -- Stratus Cell
		5376,1, -- Pannus Cell
        5377,1, -- Fractus Cell
        5378,1, -- Congestus Cell
        5379,1, -- Nimbus Cell
        5380,1, -- Velum Cell
		5381,1, -- Pileus Cell
		5382,1, -- Mediocris Cell
    }
 
    dsp.shop.general(player, stock);
end