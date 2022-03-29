-----------------------------------
-- Incus Cell
-- ID 5365
-- Unlocks weapons and shields
-----------------------------------
require("scripts/globals/status")
-----------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local encumbrance = target:getStatusEffect(xi.effect.ENCUMBRANCE_I)
    if (encumbrance) then
        local power = encumbrance:getPower()
        if bit.band(power, 0x0003) > 0 then
            return 0
        end
    end
    return -1
end

function onItemUse(target)
    local encumbrance = target:getStatusEffect(xi.effect.ENCUMBRANCE_I)
    local power = encumbrance:getPower()
    local newpower = bit.band(power, bit.bnot(0x0003))
    target:delStatusEffectSilent(xi.effect.ENCUMBRANCE_I)
	target:setVar("WEAPONS", 1)
    if (newpower > 0) then
        target:addStatusEffectEx(xi.effect.ENCUMBRANCE_I, xi.effect.ENCUMBRANCE_I, newpower, 0, 0)
    end
    target:messageText(target, zones[target:getZoneID()].text.CELL_OFFSET)
end
