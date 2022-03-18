---------------------------------------------------------------------------------------------------
-- func: @stats
-- desc: Prints current Player stats to the in game chatlog.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    if (player:getVar("SoftBan") > 0) then
        player:PrintToPlayer("Error.");
        return;
    end

    require("scripts/globals/status");
    require("scripts/globals/msg");

    player:PrintToPlayer(string.format("Treasure Hunter base bonus: %s", player:getMod(dsp.mod.TREASURE_HUNTER)),21);
    if (player:getMod(dsp.mod.CRITHITRATE) > 0 or player:getMod(dsp.mod.CRIT_DMG_INCREASE) > 0 or player:getMod(dsp.mod.ENEMYCRITRATE) ~= 0) then
        if (player:getMod(dsp.mod.CRITHITRATE) > 0) then
            player:PrintToPlayer(string.format("Crit Rate bonus: %s%%", player:getMod(dsp.mod.CRITHITRATE)),21);
        end
        if (player:getMod(dsp.mod.CRIT_DMG_INCREASE) > 0) then
            player:PrintToPlayer(string.format("Crit Damage bonus: %s%%", player:getMod(dsp.mod.CRITHITRATE)),21);
        end
        if (player:getMod(dsp.mod.ENEMYCRITRATE) < 0) then
            player:PrintToPlayer(string.format("Crit Evasion bonus: %s%%", -player:getMod(dsp.mod.ENEMYCRITRATE)),21);
        elseif (player:getMod(dsp.mod.ENEMYCRITRATE) > 0) then
            player:PrintToPlayer(string.format("Crit Evasion penalty: %s%%", player:getMod(dsp.mod.ENEMYCRITRATE)),21);
        end
    else
        player:PrintToPlayer("No Critical Hit Rate, Crit Damage, or Crit Evasion bonus. ",21);
    end
    if (player:getMod(dsp.mod.DOUBLE_ATTACK) > 0 or player:getMod(dsp.mod.TRIPLE_ATTACK) > 0 or player:getMod(dsp.mod.QUAD_ATTACK) > 0) then
        if (player:getMod(dsp.mod.DOUBLE_ATTACK) > 0) then
            player:PrintToPlayer(string.format("Double Attack rate: %s%%", player:getMod(dsp.mod.DOUBLE_ATTACK)),21);
        end
        if (player:getMod(dsp.mod.TRIPLE_ATTACK) > 0) then
            player:PrintToPlayer(string.format("Triple Attack rate: %s%%", player:getMod(dsp.mod.TRIPLE_ATTACK)),21);
        end
        if (player:getMod(dsp.mod.QUAD_ATTACK) > 0) then
            player:PrintToPlayer(string.format("Quadruple Attack rate: %s%%", player:getMod(dsp.mod.QUAD_ATTACK)),21);
        end
    else
        player:PrintToPlayer("No bonus to Double, Triple, or Quadruple attack. ",21);
    end
    if (player:getMod(dsp.mod.HASTE_GEAR) > 0 or player:getMod(dsp.mod.HASTE_ABILITY) > 0 or player:getMod(dsp.mod.HASTE_MAGIC) > 0) then
        if (player:getMod(dsp.mod.HASTE_GEAR) > 0) then
            player:PrintToPlayer(string.format("Haste from equipment: %s%%", (player:getMod(dsp.mod.HASTE_GEAR)/1024)*100),21);
        end
        if (player:getMod(dsp.mod.HASTE_ABILITY) > 0) then
            player:PrintToPlayer(string.format("Haste from ability: %s%%", (player:getMod(dsp.mod.HASTE_ABILITY)/1024)*100),21);
        end
        if (player:getMod(dsp.mod.HASTE_MAGIC) > 0) then
            player:PrintToPlayer(string.format("Haste from magic: %s%%", (player:getMod(dsp.mod.HASTE_MAGIC)/1024)*100),21);
        end
    else
        player:PrintToPlayer("No Haste bonus from gear, ability, or magic ",21);
    end
    if (player:getMod(dsp.mod.MDEF) > 0 or player:getMod(dsp.mod.MATT) > 0 or player:getMod(dsp.mod.MACC) > 0) then
    -- if (player:getMod(dsp.mod.MDEF) > 0 or player:getMod(dsp.mod.MATT) > 0 or player:getMod(dsp.mod.MACC) > 0 or player:getMod(dsp.mod.MEVA) > 0) then
        if (player:getMod(dsp.mod.MDEF) > 0) then
            player:PrintToPlayer(string.format("Magic Defense bonus: %s", player:getMod(dsp.mod.MDEF)),21);
        end
        if (player:getMod(dsp.mod.MATT) > 0) then
            player:PrintToPlayer(string.format("Magic Attack bonus: %s", player:getMod(dsp.mod.MATT)),21);
        end
        if (player:getMod(dsp.mod.MACC) > 0) then
            player:PrintToPlayer(string.format("Magic Accuracy bonus: %s", player:getMod(dsp.mod.MACC)),21);
        end
        if player:getMod(dsp.mod.MAG_BURST_BONUS) > 0 then
            player:PrintToPlayer(string.format("Magic Burst Bonus: %s", player:getMod(dsp.mod.MAG_BURST_BONUS)),21)
        end
        if player:getMod(dsp.mod.MAGIC_CRIT_DMG_INCREASE) > 0 then
            player:PrintToPlayer(string.format("Magic Crit Damage: %s", player:getMod(dsp.mod.MAGIC_CRIT_DMG_INCREASE)),21)
        end
        if player:getMod(dsp.mod.MAGIC_CRITHITRATE) > 0 then
             player:PrintToPlayer(string.format("Magic Crit Rate: %s", player:getMod(dsp.mod.MAGIC_CRITHITRATE)),21)
        end
        if player:getMod(dsp.mod.UDMGMAGIC ) > 0 then
             player:PrintToPlayer(string.format("Magic Damage: %s", player:getMod(dsp.mod.UDMGMAGIC )),21)
        end
    else
        player:PrintToPlayer("No bonus to Magic Defense, Magic Attack, Magic Accuracy, Magic Burst Bonus, Magic Critical Rate or Magic Critical Damage. ",21)
    end
    player:PrintToPlayer("Get additional info from: /checkparam ",21);
end;