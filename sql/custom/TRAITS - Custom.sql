-- ---------------------------------------------------------------
-- ------------------Misc Job Traits Adjustments------------------
-- ---------------------------------------------------------------
INSERT INTO `traits` VALUES (18,'dual wield',16,80,1,259,30,NULL,0); -- BLU Dual Wield unlock at LVL80

UPDATE traits SET level = 75 where traitid = '18' AND job = '6' AND level = '83'; -- THF Dual Wield unlock at 75
