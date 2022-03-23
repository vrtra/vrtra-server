-----------------------------------
-- func: updateservermessage
-- desc: Updates the server message if it has been edited.
-----------------------------------

cmdprops =
{
    permission = 1,
    parameters = ""
}

function onTrigger(player)
    player:PrintToArea(string.format("Congratulations %s on reaching level 80!", player:getName()), 21);
end
