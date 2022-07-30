-- ---------------------------------------------------------------
-- -----------------Misc Job Ability Adjustments------------------
-- ---------------------------------------------------------------
UPDATE abilities SET recastTime = 300 WHERE abilityId = 61; -- Reduce Call Wyvern recast to 5 minutes (from 20)
UPDATE abilities SET recastTime = 300 WHERE abilityId = 136; -- Reduce Activate recast to 5 minutes (from 20)
UPDATE abilities SET recastTime = 5 WHERE abilityId = 229; -- BRD Pianissimo recast reduction
UPDATE abilities SET level = 41 WHERE abilityId = 245; -- Set Afflatus Solace to LVL41 for non-SJ ability
UPDATE abilities SET level = 41 WHERE abilityId = 246; -- Set Afflatus Misery to LVL41 for non-SJ ability
UPDATE abilities SET recastTime = 30 WHERE abilityId = 97; -- Phantom Roll recast reduction
