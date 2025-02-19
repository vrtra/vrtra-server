-- --------------------------------------------------------------
-- --------STARLIGHT CELEBRATION (CHRISTMAS) NPC CHANGES---------
-- --------------------------------------------------------------
UPDATE npc_list SET status = 0 WHERE npcid > 17740111 AND npcid < 17740193; -- Bastok Markets
UPDATE npc_list SET status = 0 WHERE npcid > 17735929 AND npcid < 17735957; -- Bastok Mines
UPDATE npc_list SET status = 0 WHERE npcid > 17744056 AND npcid < 17744082; -- Port Bastok
UPDATE npc_list SET status = 0 WHERE npcid > 17756384 AND npcid < 17756399; -- Windurst Walls
UPDATE npc_list SET status = 0 WHERE npcid > 17760486 AND npcid < 17760503; -- Port Windurst
UPDATE npc_list SET status = 0 WHERE npcid > 17764667 AND npcid < 17764764; -- Windurst Woods
UPDATE npc_list SET status = 0 WHERE npcid > 17752471 AND npcid < 17752545; -- Windurst Waters
UPDATE npc_list SET status = 0 WHERE npcid > 17719768 AND npcid < 17719805; -- Southern San d'Oria
UPDATE npc_list SET status = 0 WHERE npcid > 17723773 AND npcid < 17723806; -- Northern San d'Oria
UPDATE npc_list SET Status = 0 WHERE name = 'Smile_Helper';
-- West Side of Vrtra
DELETE FROM npc_list WHERE npcid > 17416344 AND npcid < 17416381);
INSERT INTO `npc_list` VALUES (17416347,'blank','     ',130,0,0,0,98305,50,50,0,0,64,0,2075,0x0000D80400000000000000000000000000000000,34,NULL,0); -- Big Christmas Pavillion
INSERT INTO `npc_list` VALUES (17416348,'blank','     ',0,-22.4,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416349,'blank','     ',0,-22.4,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416350,'blank','     ',0,-30,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416351,'blank','     ',0,-30,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416352,'blank','     ',0,-38,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416353,'blank','     ',0,-38,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416354,'blank','     ',0,-62,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416355,'blank','     ',0,-62,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416356,'blank','     ',0,-73,-4,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416357,'blank','     ',0,-73,-4,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416358,'blank','     ',0,-88,-5.75,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416359,'blank','     ',0,-88,-5.75,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416360,'blank','     ',0,-112,-6,9,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416361,'blank','     ',0,-112,-6,-9,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416381,'blank','     ',0,-48,0,0,32848,50,50,0,0,64,0,2075,0x0000DC0400000000000000000000000000000000,34,NULL,0); -- Medium Christmas tree
INSERT INTO `npc_list` VALUES (17416382,'blank','     ',0,-48,0,8,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416383,'blank','     ',0,-48,0,-8,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
-- East Side of Vrtra
INSERT INTO `npc_list` VALUES (17416362,'blank','     ',0,0,0,-7,32769,40,40,0,0,104,0,2075,0x0000070500000000000000000000000000000000,34,NULL,0); -- Bomb floats
INSERT INTO `npc_list` VALUES (17416363,'blank','     ',0,0,0,7,32769,40,40,0,0,104,0,2075,0x0000070500000000000000000000000000000000,34,NULL,0); -- Bomb floats
INSERT INTO `npc_list` VALUES (17416364,'blank','     ',0,22.4,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416365,'blank','     ',0,22.4,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416366,'blank','     ',0,38,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416367,'blank','     ',0,38,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416368,'blank','     ',0,30,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416369,'blank','     ',0,30,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416370,'blank','     ',0,62,0,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416371,'blank','     ',0,62,0,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416372,'blank','     ',0,74,-4,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416373,'blank','     ',0,74,-4,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416374,'blank','     ',0,88,-5.75,2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416375,'blank','     ',0,88,-5.75,-2.6,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416376,'blank','     ',0,112,-6,-9,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416377,'blank','     ',0,112,-6,9,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416378,'blank','     ',0,48,0,0,32848,50,50,0,0,64,0,2075,0x0000DC0400000000000000000000000000000000,34,NULL,0); -- Medium Christmas tree
INSERT INTO `npc_list` VALUES (17416379,'blank','     ',0,48,0,8,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree
INSERT INTO `npc_list` VALUES (17416380,'blank','     ',0,48,0,-8,32784,50,50,0,0,64,0,2075,0x0000DA0400000000000000000000000000000000,34,NULL,0); -- Small Christmas tree