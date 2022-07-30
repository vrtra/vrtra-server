-----------------------------------
-- Area: Throne Room S
--  MOB: Shadow Lord
-- Fiat Lux
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/globals/status")
require("scripts/globals/titles")
require("scripts/globals/mobs")

-----------------------------------
-- onMobSpawn
-----------------------------------

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
    for i = dsp.mod.STR, dsp.mod.CHR do
        local amt = 50
        mob:addMod(i, amt)
    end
end

function onMobFight(mob,target)	
    for shadows = mob:getID()+3, mob:getID()+4 do
        if GetMobByID(shadows):isSpawned() == false and mob:getBattleTime() % 240 < 30 then
            SpawnMob(shadows):updateEnmity(target)
        end
    end   
end

function onMobDeath(mob, player, isKiller)
       DespawnMob(17416217)
       DespawnMob(17416218)
	if player:getVar("fiat_lux") == 1 then
	   player:setVar("fiat_lux",0)
	end
end

function onMobDespawn(mob)

end;

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end


