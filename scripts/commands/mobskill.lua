-----------------------------------
--   [Command name]: mobskill
--   [Author      ]: Troak
--   [Description ]: Forces mob to use mobskill (with option to adjust mob damage)
-----------------------------------
cmdprops =
{
    permission = 5,
    parameters = "ss"
}

function onTrigger(player,mobid,mobskillid,dmg)

   if(mobid ~= nil and mobskillid ~= nil) then
      local mob = GetMobByID(mobid)
      if(mob ~= nil) then
         if(dmg ~= nil) then
            mob:setDamage(dmg)
            mob:useMobAbility(mobskillid)
         else
            mob:useMobAbility(mobskillid)
         end
      end
   end

end