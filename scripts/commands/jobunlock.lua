---------------------------------------------------------------------------------------------------
-- func: jobunlock
-- desc: unlock specified job
---------------------------------------------------------------------------------------------------
require("scripts/globals/quests")
require("scripts/globals/titles")
require("scripts/globals/status")
require("scripts/globals/pets")

cmdprops =
{
    permission = 1,
    parameters = "s"
}

function onTrigger(targ, job)

            if  targ:getFreeSlotsCount() > 0 and targ:hasItem(17859) == false then
                targ:setCharVar("NoStringsAttachedProgress",0)
                targ:addTitle(xi.title.PROUD_AUTOMATON_OWNER)
                targ:completeQuest(xi.quest.log_id.AHT_URHGAN, xi.quest.id.ahtUrhgan.NO_STRINGS_ATTACHED)
                targ:addItem(17859)
                targ:unlockJob(xi.job.PUP)
                targ:PrintToPlayer("You can now become a PUP")
                targ:unlockAttachment(xi.items.HARLEQUIN_FRAME)
                targ:unlockAttachment(xi.items.HARLEQUIN_HEAD)
            else
                targ:PrintToPlayer("Item could not be obtained: animator ")
            end

end
