-----------------------------------
--   [Command name]: mobspell
--   [Author      ]: Rev
--   [Description ]: Forces mob to cast a spell from it's assigned spell list
-----------------------------------
cmdprops =
{
    permission = 1,
    parameters = "ss"
}

function onTrigger(player,mobid,spellid)
  if(mobid ~= nil and spellid ~= nil) then
   
      local mob = GetMobByID(mobid)
      if(mob ~= nil) then
            mob:castSpell(spellid)
      end
   end
end

	
