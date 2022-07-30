
local ID = require("scripts/zones/Throne_Room_[S]/IDs")

function onMobSpawn(mob)
	mob:setMod(dsp.mod.SLEEPRES, 100);
	mob:setMod(dsp.mod.PARALYZERES, 10);
	mob:setMod(dsp.mod.BINDRES, 100);
	mob:setMod(dsp.mod.LULLABYRES, 100);
	mob:setMod(dsp.mod.GRAVITYRES, 40);
	mob:setMod(dsp.mod.SLOWRES, 10);
	mob:setMod(dsp.mod.BLINDRES, 10);
	mob:setMod(dsp.mod.SILENCERES, 10);
	mob:setMod(dsp.mod.STUNRES, 10)
	mob:setMod(dsp.mod.REGAIN, 10);
	mob:setLocalVar("shadow",1)
end


function onMobFight(mob, target)
	local alive = mob:getLocalVar("spawn_time")
	
	if mob:getBattleTime() % 60 < 3 then 
       for i = dsp.mod.STR, dsp.mod.CHR do
           local amt = 100
           mob:addMod(i, amt)
       end
    elseif mob:getBattleTime() % 120 < 3 then 
       for i = dsp.mod.STR, dsp.mod.CHR do
           local amt = 300
           mob:addMod(i, amt)
       end
	end
end
function onMobDeath(mob, player)
   mob:setLocalVar("shadow",0)
   mob:setLocalVar("spawn_time",0)
end