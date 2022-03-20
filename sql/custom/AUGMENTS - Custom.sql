-- ---------------------------------------------------------------
-- -----------------------Misc Augment Fixes----------------------
-- ---------------------------------------------------------------
-- Barrage
DELETE FROM augments WHERE augmentid = 338;
INSERT INTO `augments` VALUES (338, 5, 420, 1, 0, 0); -- Barrage acc 1 pt is 5 acc
