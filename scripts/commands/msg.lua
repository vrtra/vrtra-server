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
    player:messagePublic(29, "Hello")
end
