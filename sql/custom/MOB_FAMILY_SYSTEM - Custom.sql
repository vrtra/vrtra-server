-- ---------------------------------------------------------------
-- -----------------MISC FIXES TO MOB FAMILIES--------------------
-- ---------------------------------------------------------------
UPDATE mob_family_system SET mobsize = 4 WHERE familyid = 2; -- Increase Lacovie's melee radius for players
UPDATE mob_family_system SET mobsize = 0 WHERE familyid = 275; -- Fix Pygmytoise hit box size
UPDATE mob_family_system SET charmable = 1 WHERE familyid = 357; -- Alows Trench & Cave Antlions to be charmed
