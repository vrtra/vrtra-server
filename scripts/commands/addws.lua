---------------------------------------------------------------------------------------------------
-- func: @addws <unlock_id> <player>
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "is"
}
local entity = {}
entity.onTrigger = function(player, unlock_id, target)
    if unlock_id == nil or unlock_id > 48 or unlock_id < 0 then
        player:PrintToPlayer( "You must enter a valid Weaponskill ID." )
        player:PrintToPlayer( "@addws <unlock_id> <player>" )
        return
    end

    if target == nil then
        player:addLearnedWeaponskill(unlock_id)
    else
        local targ = GetPlayerByName(target);
        if targ ~= nil then
            targ:addLearnedWeaponskill(unlock_id)
        else
            player:PrintToPlayer( "Player named '%s' not found!", target )
            player:PrintToPlayer( "@addws <unlock_id> <player>" )
        end
    end
end
return entity