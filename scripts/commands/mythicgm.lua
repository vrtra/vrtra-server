

cmdprops =
{
    permission = 5,
    parameters = "ss"
};




function onTrigger(player,target)
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target));
            return;
        end
    end
    targ:setVar('Gurfurlur',1);
 	targ:setVar('Medusa',1);
	targ:setVar('Gulool',1);
	targ:setVar('Overlord',1);
	targ:setVar('Tzee',1);
	targ:setVar('ZaDha',1);
	targ:setVar('Cirrate',1);
	targ:setVar('Antaeus',1);
	targ:setVar('Apocalyptic',1);
	targ:setVar('Diabolos',1);
	targ:setVar('Kirin',1);
	targ:setVar('Cerberus',1);
	targ:setVar('Hydra',1);
	targ:setVar('Khimaira',1)
	targ:setVar('Vrtra',1);
	targ:setVar('AV',1);
	targ:setVar('Tyger',1);
	targ:setVar('Sarameya',1);
	targ:setVar('Tinnin',1);
	targ:setVar('PW',1);
	targ:setVar("Chlevnik",1) 
	targ:setVar("Tartaruga",1) 
	targ:setVar("Wyrm",1)
	targ:PrintToPlayer("Mythic kills added check !mythic to confirm!",21);
	player:PrintToPlayer(string.format("All vars added for mythic weapon and upgrades to 80..cheater.... "), 21);
end;
