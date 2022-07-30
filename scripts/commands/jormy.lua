-----------------------------------
-- func: Jormy
-- desc: Summon a fightable Jormy (no loot)
-- note:
-----------------------------------

cmdprops =
{
    permission = 5,
    parameters = ""
}

function onTrigger(player)
    local zone = player:getZone()

    -- Jormy's entry in mob_groups:
    -- INSERT INTO `mob_groups` VALUES (40,2156,5,'Jormungand',0,128,1410,100000,0,95,95,0);
    --                       groupId ---^       ^--- groupZoneId

    local mob = zone:insertDynamicEntity({
        objtype = xi.objType.MOB,
        x = player:getXPos(),
        y = player:getYPos(),
        z = player:getZPos(),
        rotation = player:getRotPos(),
        groupId = 40,
        groupZoneId = 5,
    })

    mob:setSpawn(player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos())

    mob:setDropID(0) -- No loot!

    -- Dynamic mobs skip the regular bindings for onMobDeath, so if you want to
    -- add logic to their deaths, you need to use a listener:
    mob:addListener("DEATH", "DYNAMIC_Jormy_DEATH", function(mobArg)
        mobArg:removeListener("DYNAMIC_Jormy_DEATH")

        -- Do stuff here
    end)

    mob:spawn()

    player:PrintToPlayer(string.format("Spawning Jormy (Lv: %i, HP: %i)\n%s", mob:getMainLvl(), mob:getMaxHP(), mob))
end
