-----------------------------------
--  Area: throne room event nm
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs");
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs");
require("scripts/globals/status");

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    if (mob:getHPP() < math.random(40,70) and mob:getLocalVar("chainspell") == 0) then
        mob:useMobAbility(692);
        mob:setLocalVar("chainspell", 1);
    end
end

-----------------------------------
-- onMonsterMagicPrepare Action
-----------------------------------

-- Return the selected spell ID.
function onMonsterMagicPrepare(mob, target)
    if (mob:hasStatusEffect(xi.effect.CHAINSPELL) == true) then
        local rndSpell = math.random(1,4);

		switch (rndSpell) : caseof
		{
			[1] = function (x) spellId = 147; end, -- Fire IV
			[2] = function (x) spellId = 176; end, -- Firaga III
			[3] = function (x) spellId = 204; end, -- Flare
			[4] = function (x) spellId = 235; end, -- Burn
		}
	mob:castSpell(spellId);
	end;
end;


-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobInitialize(mob)
	mob:addMod(xi.mod.SLEEPRES, 100)
	mob:addMod(xi.mod.SILENCERES, 100)
end

-----------------------------------
-- onMobDeath Action
-----------------------------------
        local lootTable = nil;
        lootTable =
        {
            [1] = 4692,  -- Haste II
            [2] = 20858, -- Lightreaver
            [3] = 20991, -- Chidori
            [4] = 21227, -- Hangaku-no-Yumi
            [5] = 21284, -- Vanir_Gun
            [6] = 28155, -- Scuff._Cosciales
            [7] = 28287  -- Durgai_Leggings
        }
function onMobDeath(mob, player, isKiller)
	 player:addTreasure()
end;

