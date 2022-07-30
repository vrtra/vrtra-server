-- --------------------------------------------------------------
-- ----------------------MISC LATENT FIXES-----------------------
-- --------------------------------------------------------------
UPDATE item_latents set value = 25 WHERE itemid = 13295; -- Minstrel's Ring

-- --------------------------------------------------------------
-- ---------------------CUSTOM LATENT STATS----------------------
-- --------------------------------------------------------------
INSERT INTO `item_latents` VALUES(15808,8,4,7,100); -- Ulthalam's Ring - STR+4 during WS 
INSERT INTO `item_latents` VALUES(15808,9,4,7,100); -- Ulthalam's Ring - DEX+4 during WS
INSERT INTO `item_latents` VALUES(15808,370,3,0,50); -- Ulthalam's Ring - Regen+3 when HP <=50%
INSERT INTO `item_latents` VALUES(15807,12,4,42,0); -- Balrahn's Ring - MND+4 when main job level is even number
INSERT INTO `item_latents` VALUES(15807,13,4,42,0); -- Balrahn's Ring - INT+4 when main job level is even number
INSERT INTO `item_latents` VALUES(15807,369,2,4,75);  -- Balrahn's Ring - Refresh +2 when MP <75%
INSERT INTO `item_latents` VALUES(15809,11,6,6,1); -- Jalzahn's Ring - AGI+6 during WS
INSERT INTO `item_latents` VALUES(15809, 365, 1, 6, 1000); -- Jalzahn's Ring - Snapshot +1 when TP is < 1000%
