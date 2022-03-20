-- --------------------------------------------------------------
-- -----------------MISC MOB SPAWN POINT FIXES-------------------
-- --------------------------------------------------------------
-- Devil Manta fishing in Kuftal
UPDATE mob_spawn_points SET pos_x = 87.1, pos_y = 38.8, pos_z = 128.3, pos_rot = 90 WHERE mobid = 17489925;
-- Adjust Thoon's spawn point away from the side tunnel in Korroloka
UPDATE mob_spawn_points SET pos_x = 116, pos_y = 0, pos_z = 81 WHERE mobid = 17486171;
-- Tzee Xicu Spawn + Buff
UPDATE mob_spawn_points SET pos_x = 1, pos_y = 1, pos_z = 1 WHERE mobid = 17396139; -- Yagudos Avatar
-- Lumbering Lambert spawntype & pos fix
UPDATE mob_spawn_points SET pos_x = 81, pos_y = 8, pos_z = -229, pos_rot = 224 WHERE mobid = 17195317;
-- Argus spawn coordinate fix
UPDATE mob_spawn_points SET pos_x = 237, pos_y = 20, pos_z = -87, pos_rot = 234 WHERE mobid = 17588674;
-- Ogama Position Fix
UPDATE mob_spawn_points SET pos_x = -33.728, pos_y = 35.998, pos_z = -358.720, pos_rot = 127 WHERE mobid = 17432974;
-- Ifrits Cauldron spawn fixes to spread mobs out
UPDATE mob_spawn_points SET pos_x = -9, pos_y = 3, pos_z = 246, pos_rot = 126 WHERE mobid = 17617119;
UPDATE mob_spawn_points SET pos_x = -49, pos_y = 3, pos_z = 224, pos_rot = 158 WHERE mobid = 17617126;
UPDATE mob_spawn_points SET pos_x = -12, pos_y = 3, pos_z = 286, pos_rot = 98 WHERE mobid = 17617132;
UPDATE mob_spawn_points SET pos_x = -35, pos_y = 3, pos_z = 235, pos_rot = 249 WHERE mobid = 17617128;
UPDATE mob_spawn_points SET pos_x = -41, pos_y = 4, pos_z = 269, pos_rot = 128 WHERE mobid = 17617127;
UPDATE mob_spawn_points SET pos_x = -7, pos_y = 3, pos_z = 285, pos_rot = 188 WHERE mobid = 17617122;
UPDATE mob_spawn_points SET pos_x = -49, pos_y = 4, pos_z = 239, pos_rot = 44 WHERE mobid = 17617129;
UPDATE mob_spawn_points SET pos_x = 11, pos_y = 3, pos_z = 285, pos_rot = 80 WHERE mobid = 17617118;
-- Monastic Cavern spawn fixes to spread mobs out
UPDATE mob_spawn_points SET pos_x = -3, pos_y = -7, pos_z = -380, pos_rot = 104 WHERE mobid = 17391620;
UPDATE mob_spawn_points SET pos_x = -18, pos_y = -3, pos_z = -379, pos_rot = 165 WHERE mobid = 17391617;
UPDATE mob_spawn_points SET pos_x = -22, pos_y = -1, pos_z = -368, pos_rot = 181 WHERE mobid = 17391621;
UPDATE mob_spawn_points SET pos_x = -20, pos_y = 0, pos_z = -350, pos_rot = 184 WHERE mobid = 17391640;
UPDATE mob_spawn_points SET pos_x = -10, pos_y = -1, pos_z = -334, pos_rot = 21 WHERE mobid = 17391630;
UPDATE mob_spawn_points SET pos_x = 8, pos_y = 0, pos_z = -323, pos_rot = 206 WHERE mobid = 17391631;
UPDATE mob_spawn_points SET pos_x = -45, pos_y = 0, pos_z = -325, pos_rot = 113 WHERE mobid = 17391632;
UPDATE mob_spawn_points SET pos_x = -11, pos_y = 0, pos_z = -294, pos_rot = 200 WHERE mobid = 17391618;
UPDATE mob_spawn_points SET pos_x = -10, pos_y = 0, pos_z = -272, pos_rot = 212 WHERE mobid = 17391619;
UPDATE mob_spawn_points SET pos_x = 19, pos_y = 0, pos_z = -280, pos_rot = 48 WHERE mobid = 17391624;
UPDATE mob_spawn_points SET pos_x = 47, pos_y = 0, pos_z = -291, pos_rot = 16 WHERE mobid = 17391639;
UPDATE mob_spawn_points SET pos_x = -17, pos_y = 0, pos_z = -264, pos_rot = 133 WHERE mobid = 17391644;
UPDATE mob_spawn_points SET pos_x = -25, pos_y = 0, pos_z = -261, pos_rot = 136 WHERE mobid = 17391645;
UPDATE mob_spawn_points SET pos_x = -47, pos_y = 0, pos_z = -260, pos_rot = 123 WHERE mobid = 17391648;
UPDATE mob_spawn_points SET pos_x = -61, pos_y = 0, pos_z = -244, pos_rot = 185 WHERE mobid = 17391658;
UPDATE mob_spawn_points SET pos_x = -56, pos_y = 0, pos_z = -214, pos_rot = 67 WHERE mobid = 17391666;
UPDATE mob_spawn_points SET pos_x = -60, pos_y = 0, pos_z = -203, pos_rot = 158 WHERE mobid = 17391664;
UPDATE mob_spawn_points SET pos_x = -58, pos_y = 0, pos_z = -194, pos_rot = 191 WHERE mobid = 17391665;
UPDATE mob_spawn_points SET pos_x = -64, pos_y = 0, pos_z = -183, pos_rot = 169 WHERE mobid = 17391667;
UPDATE mob_spawn_points SET pos_x = -49, pos_y = 0, pos_z = -138, pos_rot = 240 WHERE mobid = 17391677;
UPDATE mob_spawn_points SET pos_x = -15, pos_y = 0, pos_z = -221, pos_rot = 39 WHERE mobid = 17391693;
UPDATE mob_spawn_points SET pos_x = 59, pos_y = 0, pos_z = -119, pos_rot = 57 WHERE mobid = 17391731;
UPDATE mob_spawn_points SET pos_x = 59, pos_y = 0, pos_z = -104, pos_rot = 213 WHERE mobid = 17391719;
UPDATE mob_spawn_points SET pos_x = 219, pos_y = 0, pos_z = -199, pos_rot = 200 WHERE mobid = 17391749;
UPDATE mob_spawn_points SET pos_x = 220, pos_y = 0, pos_z = -188, pos_rot = 198 WHERE mobid = 17391757;
UPDATE mob_spawn_points SET pos_x = 219, pos_y = 0, pos_z = -148, pos_rot = 183 WHERE mobid = 17391748;
UPDATE mob_spawn_points SET pos_x = 245, pos_y = 0, pos_z = -96, pos_rot = 218 WHERE mobid = 17391759;
UPDATE mob_spawn_points SET pos_x = 253, pos_y = -1, pos_z = -69, pos_rot = 190 WHERE mobid = 17391746;
UPDATE mob_spawn_points SET pos_x = 220, pos_y = 0, pos_z = -79, pos_rot = 112 WHERE mobid = 17391740;
UPDATE mob_spawn_points SET pos_x = 195, pos_y = 0, pos_z = -64, pos_rot = 3 WHERE mobid = 17391755;
UPDATE mob_spawn_points SET pos_x = 195, pos_y = 0, pos_z = -91, pos_rot = 138 WHERE mobid = 17391744;
UPDATE mob_spawn_points SET pos_x = 195, pos_y = 0, pos_z = -123, pos_rot = 108 WHERE mobid = 17391750;
UPDATE mob_spawn_points SET pos_x = 195, pos_y = 0, pos_z = -134, pos_rot = 50 WHERE mobid = 17391762;
UPDATE mob_spawn_points SET pos_x = 220, pos_y = 0, pos_z = -70, pos_rot = 126 WHERE mobid = 17391756;
UPDATE mob_spawn_points SET pos_x = 215, pos_y = -2, pos_z = -97, pos_rot = 122 WHERE mobid = 17391765;
UPDATE mob_spawn_points SET pos_x = 226, pos_y = -2, pos_z = -98, pos_rot = 242 WHERE mobid = 17391766;
-- Reposition Yovra in Al'Taieu outside Temenos
UPDATE mob_spawn_points SET pos_x = -10, pos_y = 0, pos_z = 651, pos_rot = 250 WHERE mobid = 16912816;
-- AV random Wynav spawns
INSERT INTO `mob_spawn_points` VALUES (16912883,'Aerns_Wynav','Aern\'s Wynav',864,463.115,-1.346,-571.896,181);
INSERT INTO `mob_spawn_points` VALUES (16912884,'Aerns_Wynav','Aern\'s Wynav',864,463.214,-1.336,-573.022,202);
INSERT INTO `mob_spawn_points` VALUES (16912885,'Aerns_Wynav','Aern\'s Wynav',864,463.557,-1.360,-574.178,193);
INSERT INTO `mob_spawn_points` VALUES (16912886,'Aerns_Wynav','Aern\'s Wynav',864,463.115,-1.346,-571.896,181);
INSERT INTO `mob_spawn_points` VALUES (16912887,'Aerns_Wynav','Aern\'s Wynav',864,463.214,-1.336,-573.022,202);
INSERT INTO `mob_spawn_points` VALUES (16912888,'Aerns_Wynav','Aern\'s Wynav',864,463.557,-1.360,-574.178,193);
-- Adjust Serket spawn point to be in middle of main basement again
UPDATE mob_spawn_points SET pos_x = -296, pos_y = 20, pos_z = 259, pos_rot = 175 WHERE mobid = 17596720; -- Serket
-- Fix random Zdei asshole spawning in no man's land
UPDATE mob_spawn_points SET pos_x = -540, pos_y = -1, pos_z = 297, pos_rot = 65 WHERE mobid = 16916608; -- Eo'zdei

-- -------------------------------------------------------------
-- ---------------DREAMLAND DYNAMIS SPAWN FIXES-----------------
-- -------------------------------------------------------------
-- Statue Spawn Coordinate fixes in Dynamis Valkurm
UPDATE mob_spawn_points SET pos_x = -11, pos_y = -8, pos_z = 131, pos_rot = 125 WHERE mobid = 16937544; -- Manifest Icon
UPDATE mob_spawn_points SET pos_x = -4, pos_y = -7, pos_z = 125, pos_rot = 65 WHERE mobid = 16937547; -- Manifest Icon
UPDATE mob_spawn_points SET pos_x = -10, pos_y = -7, pos_z = 126, pos_rot = 65 WHERE mobid = 16937545; -- Manifest Icon
UPDATE mob_spawn_points SET pos_x = -4, pos_y = -7, pos_z = 131, pos_rot = 255 WHERE mobid = 16937546; -- Manifest Icon
UPDATE mob_spawn_points SET pos_x = -7, pos_y = -7, pos_z = 135, pos_rot = 190 WHERE mobid = 16937548; -- Manifest Icon
UPDATE mob_spawn_points SET pos_x = 15, pos_y = -8, pos_z = 131, pos_rot = 125 WHERE mobid = 16937521; -- Adamantking Effigy
UPDATE mob_spawn_points SET pos_x = 15, pos_y = -7, pos_z = 126, pos_rot = 65 WHERE mobid = 16937520; -- Adamantking Effigy
UPDATE mob_spawn_points SET pos_x = 19, pos_y = -8, pos_z = 134, pos_rot = 190 WHERE mobid = 16937522; -- Adamantking Effigy
UPDATE mob_spawn_points SET pos_x = 22, pos_y = -7, pos_z = 126, pos_rot = 65 WHERE mobid = 16937523; -- Adamantking Effigy
UPDATE mob_spawn_points SET pos_x = 22, pos_y = -7, pos_z = 131, pos_rot = 255 WHERE mobid = 16937519; -- Adamantking Effigy
UPDATE mob_spawn_points SET pos_x = -7, pos_y = -7, pos_z = 106, pos_rot = 190 WHERE mobid = 16937495; -- Serjeant Tombstone
UPDATE mob_spawn_points SET pos_x = -3, pos_y = -7, pos_z = 102, pos_rot = 255 WHERE mobid = 16937498; -- Serjeant Tombstone
UPDATE mob_spawn_points SET pos_x = -11, pos_y = -7, pos_z = 102, pos_rot = 125 WHERE mobid = 16937497; -- Serjeant Tombstone
UPDATE mob_spawn_points SET pos_x = -11, pos_y = -7, pos_z = 97, pos_rot = 65 WHERE mobid = 16937494; -- Serjeant Tombstone
UPDATE mob_spawn_points SET pos_x = -3, pos_y = -7, pos_z = 97, pos_rot = 65 WHERE mobid = 16937496; -- Serjeant Tombstone
UPDATE mob_spawn_points SET pos_x = -36, pos_y = -7, pos_z = 129, pos_rot = 125 WHERE mobid = 16937571; -- Goblin Replica
UPDATE mob_spawn_points SET pos_x = -30, pos_y = -8, pos_z = 129, pos_rot = 255 WHERE mobid = 16937569; -- Goblin Replica
UPDATE mob_spawn_points SET pos_x = -33, pos_y = -7, pos_z = 131, pos_rot = 190 WHERE mobid = 16937572; -- Goblin Replica
UPDATE mob_spawn_points SET pos_x = -36, pos_y = -7, pos_z = 125, pos_rot = 65 WHERE mobid = 16937570; -- Goblin Replica
UPDATE mob_spawn_points SET pos_x = -30, pos_y = -7, pos_z = 124, pos_rot = 65 WHERE mobid = 16937573; -- Goblin Replica
-- Remove Lost Dragon NM Spawns in Dyna Bubu
DELETE FROM mob_spawn_points WHERE mobid = 16941520;
DELETE FROM mob_spawn_points WHERE mobid = 16941552;
DELETE FROM mob_spawn_points WHERE mobid = 16941576;

-- --------------------------------------------------------------
-- ------------------LIMBUS SPAWN POINT FIXES--------------------
-- --------------------------------------------------------------
-- Apollyon NE
UPDATE mob_spawn_points SET pos_x = 393, pos_y = 0, pos_z = 39, pos_rot = 159 WHERE mobid = 16933056;
UPDATE mob_spawn_points SET pos_x = 445, pos_y = 0, pos_z = 23, pos_rot = 7 WHERE mobid = 16933057;
UPDATE mob_spawn_points SET pos_x = 474, pos_y = 0, pos_z = -46, pos_rot = 19 WHERE mobid = 16933049;
UPDATE mob_spawn_points SET pos_x = 484, pos_y = 0, pos_z = -20, pos_rot = 180 WHERE mobid = 16933055;
UPDATE mob_spawn_points SET pos_x = 449, pos_y = 0, pos_z = -1, pos_rot = 218 WHERE mobid = 16933051;
UPDATE mob_spawn_points SET pos_x = 428, pos_y = 0, pos_z = -24, pos_rot = 51 WHERE mobid = 16933058;
UPDATE mob_spawn_points SET pos_x = 332, pos_y = 0, pos_z = 236, pos_rot = 65 WHERE mobid = 16933073;
UPDATE mob_spawn_points SET pos_x = 338, pos_y = 0, pos_z = 236, pos_rot = 65 WHERE mobid = 16933072;
UPDATE mob_spawn_points SET pos_x = 405, pos_y = 0, pos_z = 283, pos_rot = 125 WHERE mobid = 16933070;
UPDATE mob_spawn_points SET pos_x = 405, pos_y = 0, pos_z = 276, pos_rot = 125 WHERE mobid = 16933071;
UPDATE mob_spawn_points SET pos_x = 287, pos_y = 0, pos_z = 514, pos_rot = 162 WHERE mobid = 16933081;
UPDATE mob_spawn_points SET pos_x = 276, pos_y = 0, pos_z = 551, pos_rot = 36 WHERE mobid = 16933082;
UPDATE mob_spawn_points SET pos_x = 553, pos_y = 0, pos_z = 540, pos_rot = 17 WHERE mobid = 16933101;
UPDATE mob_spawn_points SET pos_x = 567, pos_y = 0, pos_z = 255, pos_rot = 128 WHERE mobid = 16933120;
UPDATE mob_spawn_points SET pos_x = 544, pos_y = 0, pos_z = 258, pos_rot = 144 WHERE mobid = 16933122;
UPDATE mob_spawn_points SET pos_x = 532, pos_y = 0, pos_z = 275, pos_rot = 180 WHERE mobid = 16933119;
UPDATE mob_spawn_points SET pos_x = 525, pos_y = 0, pos_z = 298, pos_rot = 167 WHERE mobid = 16933121;
UPDATE mob_spawn_points SET pos_x = 525, pos_y = 0, pos_z = 313, pos_rot = 1 WHERE mobid = 16933115;
UPDATE mob_spawn_points SET pos_x = 553, pos_y = 0, pos_z = 310, pos_rot = 2 WHERE mobid = 16933116;
UPDATE mob_spawn_points SET pos_x = 576, pos_y = 0, pos_z = 303, pos_rot = 22 WHERE mobid = 16933118;
UPDATE mob_spawn_points SET pos_x = 586, pos_y = 0, pos_z = 277, pos_rot = 77 WHERE mobid = 16933117;
UPDATE mob_spawn_points SET pos_x = 554, pos_y = 0, pos_z = 346, pos_rot = 65 WHERE mobid = 16933113;
-- Apollyon NW
-- Layer 1
UPDATE mob_spawn_points SET pos_x = -476, pos_y = 0, pos_z = -3, pos_rot = 55 WHERE mobid = 16932941; -- Bardha
UPDATE mob_spawn_points SET pos_x = -484, pos_y = 0, pos_z = 23, pos_rot = 160 WHERE mobid = 16932940; -- Bardha
UPDATE mob_spawn_points SET pos_x = -440, pos_y = 0, pos_z = 23, pos_rot = 5 WHERE mobid = 16932942; -- Bardha
UPDATE mob_spawn_points SET pos_x = -442, pos_y = 0, pos_z = 34, pos_rot = 175 WHERE mobid = 16932944; -- Bardha
UPDATE mob_spawn_points SET pos_x = -416, pos_y = 0, pos_z = 31, pos_rot = 100 WHERE mobid = 16932938; -- Bardha
UPDATE mob_spawn_points SET pos_x = -397, pos_y = 0, pos_z = 49, pos_rot = 130 WHERE mobid = 16932939; -- Bardha
UPDATE mob_spawn_points SET pos_x = -458, pos_y = 0, pos_z = 43, pos_rot = 65 WHERE mobid = 16932937; -- Pluto
-- Layer 2
UPDATE mob_spawn_points SET pos_x = -342, pos_y = 0, pos_z = 227, pos_rot = 245 WHERE mobid = 16932954; -- Mountain Buffalo
UPDATE mob_spawn_points SET pos_x = -322, pos_y = 0, pos_z = 257, pos_rot = 65 WHERE mobid = 16932955; -- Mountain Buffalo
UPDATE mob_spawn_points SET pos_x = -359, pos_y = 0, pos_z = 371, pos_rot = 255 WHERE mobid = 16932953; -- Mountain Buffalo
UPDATE mob_spawn_points SET pos_x = -312, pos_y = 0, pos_z = 298, pos_rot = 128 WHERE mobid = 16932952; -- Mountain Buffalo
UPDATE mob_spawn_points SET pos_x = -311, pos_y = 0, pos_z = 330, pos_rot = 142 WHERE mobid = 16932957; -- Mountain Buffalo
UPDATE mob_spawn_points SET pos_x = -296, pos_y = 0, pos_z = 347, pos_rot = 12 WHERE mobid = 16932951; -- Mountain Buffalo
UPDATE mob_spawn_points SET pos_x = -340, pos_y = 0, pos_z = 300, pos_rot = 100 WHERE mobid = 16932950; -- Zlatarog
-- Layer 3
UPDATE mob_spawn_points SET pos_x = -345, pos_y = 0, pos_z = 526, pos_rot = 100 WHERE mobid = 16932969; -- Apollyon Scavenger
UPDATE mob_spawn_points SET pos_x = -286, pos_y = 0, pos_z = 565, pos_rot = 35 WHERE mobid = 16932967; -- Apollyon Scavenger
UPDATE mob_spawn_points SET pos_x = -302, pos_y = 0, pos_z = 579, pos_rot = 130 WHERE mobid = 16932968; -- Apollyon Scavenger
UPDATE mob_spawn_points SET pos_x = -224, pos_y = 0, pos_z = 537, pos_rot = 130 WHERE mobid = 16932964; -- Apollyon Scavenger
UPDATE mob_spawn_points SET pos_x = -299, pos_y = -2, pos_z = 538, pos_rot = 140 WHERE mobid = 16932966; -- Apollyon Scavenger
UPDATE mob_spawn_points SET pos_x = -314, pos_y = 0, pos_z = 499, pos_rot = 185 WHERE mobid = 16932965; -- Apollyon Scavenger
-- Layer 4
UPDATE mob_spawn_points SET pos_x = -604, pos_y = 0, pos_z = 526, pos_rot = 65 WHERE mobid = 16932979; -- Gorynich
UPDATE mob_spawn_points SET pos_x = -613, pos_y = 0, pos_z = 544, pos_rot = 15 WHERE mobid = 16932980; -- Gorynich
UPDATE mob_spawn_points SET pos_x = -577, pos_y = 0, pos_z = 542, pos_rot = 80 WHERE mobid = 16932978; -- Gorynich
UPDATE mob_spawn_points SET pos_x = -588, pos_y = 0, pos_z = 582, pos_rot = 40 WHERE mobid = 16932977; -- Gorynich
-- Layer 5
UPDATE mob_spawn_points SET pos_x = -573, pos_y = 0, pos_z = 221, pos_rot = 30 WHERE mobid = 16932986; -- Konprinz Behemoth
UPDATE mob_spawn_points SET pos_x = -603, pos_y = 0, pos_z = 252, pos_rot = 55 WHERE mobid = 16932987; -- Konprinz Behemoth
UPDATE mob_spawn_points SET pos_x = -527, pos_y = 0, pos_z = 266, pos_rot = 85 WHERE mobid = 16932988; -- Konprinz Behemoth
UPDATE mob_spawn_points SET pos_x = -551, pos_y = 0, pos_z = 320, pos_rot = 65 WHERE mobid = 16932985; -- Kaiser Behemoth
-- Central Apollyon
UPDATE mob_spawn_points SET pos_x = 0, pos_y = 0, pos_z = 145, pos_rot = 190 WHERE mobid = 16933124; -- Proto Omega
UPDATE mob_spawn_points SET groupid = 1073, pos_x = 7.943, pos_y = -0.358, pos_z = 159.71, pos_rot = 162 WHERE mobid = 16933193; -- Gunpod
UPDATE mob_spawn_points SET groupid = 1073, pos_x = 7.943, pos_y = -0.358, pos_z = 159.71, pos_rot = 162 WHERE mobid = 16933194; -- Gunpod
UPDATE mob_spawn_points SET groupid = 1073, pos_x = 7.943, pos_y = -0.358, pos_z = 159.71, pos_rot = 162 WHERE mobid = 16933195; -- Gunpod
-- Apollyon SW
-- Layer 1
UPDATE mob_spawn_points SET pos_x = -438, pos_y = 0, pos_z = -512, pos_rot = 100 WHERE mobid = 16932870; -- Fir Bholg
UPDATE mob_spawn_points SET pos_x = -443, pos_y = 0, pos_z = -523, pos_rot = 250 WHERE mobid = 16932869; -- Fir Bholg
UPDATE mob_spawn_points SET pos_x = -429, pos_y = 0, pos_z = -540, pos_rot = 80 WHERE mobid = 16932876; -- Fir Bholg
UPDATE mob_spawn_points SET pos_x = -416, pos_y = 0, pos_z = -539, pos_rot = 50 WHERE mobid = 16932871; -- Fir Bholg
UPDATE mob_spawn_points SET pos_x = -427, pos_y = 0, pos_z = -559, pos_rot = 250 WHERE mobid = 16932868; -- Fir Bholg
UPDATE mob_spawn_points SET pos_x = -369, pos_y = 0, pos_z = -548, pos_rot = 120 WHERE mobid = 16932872; -- Fir Bholg
UPDATE mob_spawn_points SET pos_x = -383, pos_y = 0, pos_z = --62, pos_rot = 200 WHERE mobid = 16932874; -- Fir Bholg
-- Layer 4
UPDATE mob_spawn_points SET pos_x = -596, pos_y = 0, pos_z = -392, pos_rot = 5 WHERE mobid = 16932930; -- Ice Elemental
UPDATE mob_spawn_points SET pos_x = -600, pos_y = 0, pos_z = -390, pos_rot = 105 WHERE mobid = 16932914; -- Ice Elemental
UPDATE mob_spawn_points SET pos_x = -608, pos_y = 0, pos_z = -372, pos_rot = 105 WHERE mobid = 16932918; -- Air Elemental
UPDATE mob_spawn_points SET pos_x = -604, pos_y = 0, pos_z = -372, pos_rot = 5 WHERE mobid = 16932910; -- Air Elemental
UPDATE mob_spawn_points SET pos_x = -606, pos_y = 0, pos_z = -370, pos_rot = 105 WHERE mobid = 16932926; -- Air Elemental
UPDATE mob_spawn_points SET pos_x = -580, pos_y = 0, pos_z = -370, pos_rot = 105 WHERE mobid = 16932932; -- Water Elemental
UPDATE mob_spawn_points SET pos_x = -584, pos_y = 0, pos_z = -370, pos_rot = 5 WHERE mobid = 16932924; -- Water Elemental
UPDATE mob_spawn_points SET pos_x = -582, pos_y = 0, pos_z = -368, pos_rot = 105 WHERE mobid = 16932916; -- Water Elemental
UPDATE mob_spawn_points SET pos_x = -586, pos_y = 0, pos_z = -356, pos_rot = 105 WHERE mobid = 16932919; -- Dark Elemental
UPDATE mob_spawn_points SET pos_x = -590, pos_y = 0, pos_z = -356, pos_rot = 5 WHERE mobid = 16932927; -- Dark Elemental
UPDATE mob_spawn_points SET pos_x = -588, pos_y = 0, pos_z = -354, pos_rot = 105 WHERE mobid = 16932911; -- Dark Elemental
UPDATE mob_spawn_points SET pos_x = -554, pos_y = 0, pos_z = -362, pos_rot = 105 WHERE mobid = 16932931; -- Light Elemental
UPDATE mob_spawn_points SET pos_x = -558, pos_y = 0, pos_z = -362, pos_rot = 5 WHERE mobid = 16932915; -- Light Elemental
UPDATE mob_spawn_points SET pos_x = -556, pos_y = 0, pos_z = -360, pos_rot = 105 WHERE mobid = 16932923; -- Light Elemental
UPDATE mob_spawn_points SET pos_x = -566, pos_y = 0, pos_z = -340, pos_rot = 105 WHERE mobid = 16932933; -- Thunder Elemental
UPDATE mob_spawn_points SET pos_x = -570, pos_y = 0, pos_z = -340, pos_rot = 5 WHERE mobid = 16932917; -- Thunder Elemental
UPDATE mob_spawn_points SET pos_x = -568, pos_y = 0, pos_z = -338, pos_rot = 105 WHERE mobid = 16932925; -- Thunder Elemental
UPDATE mob_spawn_points SET pos_x = -542, pos_y = 0, pos_z = -339, pos_rot = 105 WHERE mobid = 16932929; -- Fire Elemental
UPDATE mob_spawn_points SET pos_x = -546, pos_y = 0, pos_z = -339, pos_rot = 5 WHERE mobid = 16932913; -- Fire Elemental
UPDATE mob_spawn_points SET pos_x = -544, pos_y = 0, pos_z = -337, pos_rot = 105 WHERE mobid = 16932921; -- Fire Elemental
UPDATE mob_spawn_points SET pos_x = -552, pos_y = 0, pos_z = -319, pos_rot = 105 WHERE mobid = 16932928; -- Earth Elemental
UPDATE mob_spawn_points SET pos_x = -556, pos_y = 0, pos_z = -319, pos_rot = 5 WHERE mobid = 16932920; -- Earth Elemental
UPDATE mob_spawn_points SET pos_x = -554, pos_y = 0, pos_z = -317, pos_rot = 105 WHERE mobid = 16932912; -- Earth Elemental
-- Apollyon SE
-- Layer 1
UPDATE mob_spawn_points SET pos_x = 440, pos_y = 0, pos_z = -539, pos_rot = 55 WHERE mobid = 16932994; -- Metalloid Amoeba
UPDATE mob_spawn_points SET pos_x = 427, pos_y = 0, pos_z = -548, pos_rot = 160 WHERE mobid = 16932998; -- Metalloid Amoeba
UPDATE mob_spawn_points SET pos_x = 412, pos_y = 0, pos_z =-554, pos_rot = 5 WHERE mobid = 16932996; -- Metalloid Amoeba
UPDATE mob_spawn_points SET pos_x = 360, pos_y = 0, pos_z = -556, pos_rot = 175 WHERE mobid = 16932999; -- Metalloid Amoeba
UPDATE mob_spawn_points SET pos_x = 362, pos_y = 0, pos_z = -578, pos_rot = 100 WHERE mobid = 16932995; -- Metalloid Amoeba
UPDATE mob_spawn_points SET pos_x = 358, pos_y = 0, pos_z = -602, pos_rot = 130 WHERE mobid = 16933000; -- Metalloid Amoeba
UPDATE mob_spawn_points SET pos_x = 406, pos_y = 0, pos_z = -530, pos_rot = 65 WHERE mobid = 16932992; -- Ghost Clot
-- Layer 2
UPDATE mob_spawn_points SET pos_x = 184, pos_y = 0, pos_z = -559, pos_rot = 32 WHERE mobid = 16933011; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 185, pos_y = 0, pos_z = -543, pos_rot = 90 WHERE mobid = 16933010; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 128, pos_y = 0, pos_z = -497, pos_rot = 95 WHERE mobid = 16933007; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 141, pos_y = 0, pos_z = -487, pos_rot = 220 WHERE mobid = 16933008; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 132, pos_y = 0, pos_z = -479, pos_rot = 50 WHERE mobid = 16933009; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 210, pos_y = 0, pos_z = -434, pos_rot = 170 WHERE mobid = 16933014; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 195, pos_y = 0, pos_z = -438, pos_rot = 95 WHERE mobid = 16933012; -- Adamantshell
UPDATE mob_spawn_points SET pos_x = 186, pos_y = 0, pos_z = -448, pos_rot = 168 WHERE mobid = 16933013; -- Adamantshell
-- Layer 3
UPDATE mob_spawn_points SET pos_x = 333, pos_y = 0, pos_z = -327 WHERE mobid = 16933021; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 325, pos_y = 0, pos_z = -309 WHERE mobid = 16933022; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 341, pos_y = 0, pos_z = -302 WHERE mobid = 16933023; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 335, pos_y = 0, pos_z = -286 WHERE mobid = 16933024; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 361, pos_y = 0, pos_z = -311 WHERE mobid = 16933025; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 357, pos_y = 0, pos_z = -297 WHERE mobid = 16933026; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 360, pos_y = 0, pos_z = -280 WHERE mobid = 16933027; -- Inhumer
UPDATE mob_spawn_points SET pos_x = 340, pos_y = 0, pos_z = -277 WHERE mobid = 16933028; -- Inhumer
-- Layer 4
UPDATE mob_spawn_points SET pos_x = 580, pos_y = 0, pos_z = -348, pos_rot = 75 WHERE mobid = 16933035; -- Flying Spear
UPDATE mob_spawn_points SET pos_x = 564, pos_y = 0, pos_z = -359, pos_rot = 90 WHERE mobid = 16933038; -- Flying Spear
UPDATE mob_spawn_points SET pos_x = 547, pos_y = 0, pos_z = -349, pos_rot = 5 WHERE mobid = 16933040; -- Flying Spear
UPDATE mob_spawn_points SET pos_x = 524, pos_y = 0, pos_z = -343, pos_rot = 250 WHERE mobid = 16933037; -- Flying Spear
UPDATE mob_spawn_points SET pos_x = 491, pos_y = 0, pos_z = -294, pos_rot = 35 WHERE mobid = 16933033; -- Flying Spear
UPDATE mob_spawn_points SET pos_x = 520, pos_y = 0, pos_z = -320, pos_rot = 0 WHERE mobid = 16933032; -- Evil Armory
-- Temenos West
-- Layer 2
UPDATE mob_spawn_points SET pos_x = 229, pos_y = -80, pos_z = -140, pos_rot = 190 WHERE mobid = 16928912; -- Enhanced Mandragora
UPDATE mob_spawn_points SET pos_x = 232, pos_y = -80, pos_z = -140, pos_rot = 190 WHERE mobid = 16928910; -- Enhanced Mandragora
UPDATE mob_spawn_points SET pos_x = 235, pos_y = -80, pos_z = -140, pos_rot = 190 WHERE mobid = 16928911; -- Enhanced Mandragora

-- -------------------------------------------------------------
-- ------------------CUSTOM TOAU NM CHANGES---------------------
-- -------------------------------------------------------------
-- UPDATE Experimental Lamia's add spawn coordinates
UPDATE mob_spawn_points SET pos_x = -769, pos_y = -12, pos_z = 322, pos_rot = 135 WHERE mobid = 17101206; -- Merrow Shadowdancer
UPDATE mob_spawn_points SET pos_x = -775, pos_y = -11, pos_z = 320, pos_rot = 206 WHERE mobid = 17101207; -- Merrow Typhoondancer
UPDATE mob_spawn_points SET pos_x = -772, pos_y = -11, pos_z = 324, pos_rot = 33 WHERE mobid = 17101208; -- Merrow Typhoondancer
-- UPDATE Khromasoul's add spawn coordinates
UPDATE mob_spawn_points SET pos_x = 85, pos_y = -22, pos_z = 71, pos_rot = 125 WHERE mobid = 17027475; -- Troll Grenadier
UPDATE mob_spawn_points SET pos_x = 88, pos_y = -22, pos_z = 75, pos_rot = 191 WHERE mobid = 17027476; -- Troll Grenadier
UPDATE mob_spawn_points SET pos_x = 87, pos_y = -22, pos_z = 69, pos_rot = 63 WHERE mobid = 17027477; -- Troll Grenadier

-- -------------------------------------------------------------
-- ------------------CUSTOM WOTG NM CHANGES---------------------
-- -------------------------------------------------------------
-- Pallas Vunkerl(S) spawn fix
UPDATE mob_spawn_points SET pos_x = 406, pos_y = -31, pos_z = 421, pos_rot = 161 WHERE mobid = 17117250; -- Pallas Vunk(S)
UPDATE mob_spawn_points SET pos_x = 407, pos_y = -31, pos_z = 422, pos_rot = 239 WHERE mobid = 17117251; -- Pallas Tiger
UPDATE mob_spawn_points SET pos_x = 407, pos_y = -31, pos_z = 419, pos_rot = 47 WHERE mobid = 17117252; -- Pallas Tiger
UPDATE mob_spawn_points SET pos_x = 404, pos_y = -31, pos_z = 418, pos_rot = 103 WHERE mobid = 17117253; -- Pallas Tiger

-- --------------------------------------------------------------
-- -----------------ABYSSEA SPAWN POINT FIXES--------------------
-- --------------------------------------------------------------
-- Abyssea Konschtat
DELETE FROM mob_spawn_points WHERE mobid = 16838946;
INSERT INTO `mob_spawn_points` VALUES (16838946,'Clingy_Clare','Clingy Clare',423,148,17,89,75);
UPDATE mob_spawn_points SET groupid = 427, pos_x = -140.967, pos_y = -60.783, pos_z = -680.161, pos_rot = 180 WHERE mobid = 16838661; -- Depths Digester
UPDATE mob_spawn_points SET groupid = 438, pos_x = -142, pos_y = -61, pos_z = -676, pos_rot = 180 WHERE mobid = 16838658; -- Hadal Mirror
UPDATE mob_spawn_points SET groupid = 438, pos_x = -139, pos_y = -60, pos_z = -683, pos_rot = 220 WHERE mobid = 16838659; -- Hadal Mirror
UPDATE mob_spawn_points SET groupid = 438, pos_x = -135, pos_y = -59, pos_z = -678, pos_rot = 60 WHERE mobid = 16838660; -- Hadal Mirror
UPDATE mob_spawn_points SET groupid = 439, pos_x = -140.967, pos_y = -60.783, pos_z = -680.161, pos_rot = 090 WHERE mobid = 16838657; -- Hadal Satiator
UPDATE mob_spawn_points SET groupid = 451, pos_x = 489.538, pos_y = -15.748, pos_z = -408.290, pos_rot = 90 WHERE mobid = 16838662; -- Meanderer
UPDATE mob_spawn_points SET groupid = 451, pos_x = -361.141, pos_y = -8, pos_z = -154.791, pos_rot = 90 WHERE mobid = 16838663; -- Meanderer
UPDATE mob_spawn_points SET groupid = 451, pos_x = -398.721, pos_y = 16, pos_z = 243.364, pos_rot = 90 WHERE mobid = 16838664; -- Meanderer
UPDATE mob_spawn_points SET groupid = 451, pos_x = 410.246, pos_y = 16.291, pos_z = 112.861, pos_rot = 90 WHERE mobid = 16838665; -- Meanderer
UPDATE mob_spawn_points SET groupid = 451, pos_x = -0.560, pos_y = 43.459, pos_z = 459.950, pos_rot = 90 WHERE mobid = 16838666; -- Meanderer
UPDATE mob_spawn_points SET groupid = 451, pos_x = 170.752, pos_y = 22.750, pos_z = 257.478, pos_rot = 90 WHERE mobid = 16838667; -- Meanderer
UPDATE mob_spawn_points SET pos_x = 439.318, pos_y = 32, pos_z = 358.056, pos_rot = 90 WHERE mobid = 16838994; -- Lesser Arimaspi
UPDATE mob_spawn_points SET pos_x = 435.014, pos_y = 31.840, pos_z = 357.026, pos_rot = 70 WHERE mobid = 16838995; -- Lesser Arimaspi
UPDATE mob_spawn_points SET pos_x = 436.600, pos_y = 32, pos_z = 359.650, pos_rot = 50 WHERE mobid = 16838996; -- Lesser Arimaspi
UPDATE mob_spawn_points SET groupid = 454, pos_x = -230.913, pos_y = -23.871, pos_z = -197.373, pos_rot = 15 WHERE mobid = 16838674; -- Pavan
UPDATE mob_spawn_points SET groupid = 454, pos_x = -280.474, pos_y = 23.771, pos_z = 154.223, pos_rot = 30 WHERE mobid = 16838675; -- Pavan
UPDATE mob_spawn_points SET groupid = 454, pos_x = -246.595, pos_y = 55.746, pos_z = 553.880, pos_rot = 45 WHERE mobid = 16838676; -- Pavan
UPDATE mob_spawn_points SET groupid = 454, pos_x = 153.408, pos_y = 24.235, pos_z = 245, pos_rot = 60 WHERE mobid = 16838677; -- Pavan
UPDATE mob_spawn_points SET groupid = 454, pos_x = 269.903, pos_y = 30.750, pos_z = 617.301, pos_rot = 90 WHERE mobid = 16838678; -- Pavan
UPDATE mob_spawn_points SET groupid = 465, pos_x = 430.081, pos_y = -15.693, pos_z = -399.732, pos_rot = 103 WHERE mobid = 16838669; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 465, pos_x = 2.013, pos_y = 23.957, pos_z = 197.380, pos_rot = 18 WHERE mobid = 16838670; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 465, pos_x = 591.345, pos_y = 23.311, pos_z = 173.225, pos_rot = 135 WHERE mobid = 16838671; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 465, pos_x = -265.685, pos_y = 34.146, pos_z = 357.895, pos_rot = 11 WHERE mobid = 16838672; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 465, pos_x = -120, pos_y = -56, pos_z = -685, pos_rot =46 WHERE mobid = 16838673; -- Sturdy Pyxis
UPDATE mob_spawn_points SET pos_x = -246, pos_y = 17, pos_z = 64, pos_rot = 200 WHERE mobid = 16838668; -- Turul
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838914; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838915; -- Pustule
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838916; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838917; -- Pustule
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838918; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838919; -- Pustule
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838920; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838921; -- Pustule
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838922; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838923; -- Pustule
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838924; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838925; -- Pustule
UPDATE mob_spawn_points SET pos_x = -223.570, pos_y = 64.465, pos_z = 804.310, pos_rot = 90 WHERE mobid = 16838926; -- Pustule
UPDATE mob_spawn_points SET pos_x = -221.029, pos_y = 64.561, pos_z = 802.775, pos_rot = 45 WHERE mobid = 16838927; -- Pustule
UPDATE mob_spawn_points SET mobname = 'Ypotryll' WHERE groupid = 471; -- Ypotryll
UPDATE mob_spawn_points SET pos_x = -250, pos_y = -16, pos_z = -121 WHERE mobid = 16838765; -- Razorback
UPDATE mob_spawn_points SET pos_x = -223, pos_y = -14, pos_z = -132 WHERE mobid = 16838760; -- Razorback
UPDATE mob_spawn_points SET pos_x = -227, pos_y = -11, pos_z = -106 WHERE mobid = 16838766; -- Ephemeral Limule
UPDATE mob_spawn_points SET pos_x = -1, pos_y = 32, pos_z = 398, pos_rot = 228 WHERE mobid = 16838866; -- Mesa Wivre
-- Abyssea La-Theine
UPDATE mob_spawn_points SET pos_x = -23.787, pos_y = 20.521, pos_z = 82.695, pos_rot = 50 WHERE mobid = 17317897; -- Nahn
UPDATE mob_spawn_points SET pos_x = 27.107, pos_y = 20.631, pos_z = 93.639, pos_rot = 70 WHERE mobid = 17317898; -- Karkinos
UPDATE mob_spawn_points SET groupid = 6979, pos_x = -510.800, pos_y = -0.694, pos_z = 363.052, pos_rot = 090 WHERE mobid = 17318428; -- Meditator
UPDATE mob_spawn_points SET groupid = 6979, pos_x = 57.055, pos_y = 7.648, pos_z = -213.668, pos_rot = 090 WHERE mobid = 17318429; -- Meditator
UPDATE mob_spawn_points SET groupid = 6979, pos_x = 319.968, pos_y = 40.227, pos_z = 271.369, pos_rot = 090 WHERE mobid = 17318430; -- Meditator
UPDATE mob_spawn_points SET groupid = 6979, pos_x = 538.029, pos_y = 23.611, pos_z = 137.038, pos_rot = 090 WHERE mobid = 17318431; -- Meditator
UPDATE mob_spawn_points SET groupid = 6979, pos_x = 366.537, pos_y = 23.470, pos_z = -462.702, pos_rot = 090 WHERE mobid = 17318432; -- Meditator
UPDATE mob_spawn_points SET groupid = 6979, pos_x = -173.564, pos_y = 24.379, pos_z = -466.841, pos_rot = 090 WHERE mobid = 17318433; -- Meditator
UPDATE mob_spawn_points SET groupid = 6952, pos_x = 430.029, pos_y = 24.253, pos_z = -30.750, pos_rot = 180 WHERE mobid = 17318427; -- Brooder
UPDATE mob_spawn_points SET groupid = 6994, pos_x = 430.029, pos_y = 24.253, pos_z = -30.750, pos_rot = 145 WHERE mobid = 17318426; -- Ruminator
UPDATE mob_spawn_points SET groupid = 6996, pos_x = -608.838, pos_y = -0.611, pos_z = 519.170, pos_rot = 180 WHERE mobid = 17318462; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 6996, pos_x = 118.779, pos_y = 7.342, pos_z = -209.214, pos_rot = 090 WHERE mobid = 17318463; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 6996, pos_x = 521.634, pos_y = 24.000, pos_z = 0.645, pos_rot = 180 WHERE mobid = 17318464; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 6996, pos_x = 547.532, pos_y = 40.460, pos_z = -424.892, pos_rot = 090 WHERE mobid = 17318465; -- Sturdy Pyxis
UPDATE mob_spawn_points SET groupid = 6990, pos_x = 405.805, pos_y = 26.408, pos_z = -543.046, pos_rot = 180 WHERE mobid = 17318443; -- Poroggo Dom Juan
UPDATE mob_spawn_points SET pos_x = -22.6, pos_y = 20.6, pos_z = 121.7, pos_rot = 100 WHERE mobid = 17317889; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = -24, pos_y = 20.1, pos_z = 115, pos_rot = 70 WHERE mobid = 17317890; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = -27.2, pos_y = 19.7, pos_z = 105.8, pos_rot = 10 WHERE mobid = 17317891; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = -22.9, pos_y = 20.2, pos_z = 88.8, pos_rot = 180 WHERE mobid = 17317892; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = -0.3, pos_y = 20.6, pos_z = 57.3, pos_rot = 0 WHERE mobid = 17317893; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = 23.3, pos_y = 20.5, pos_z = 77.7, pos_rot = 210 WHERE mobid = 17317894; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = 23.8, pos_y = 20.5, pos_z = 87.2, pos_rot = 140 WHERE mobid = 17317895; -- Sentinel Crab
UPDATE mob_spawn_points SET pos_x = 38.2, pos_y = 20.6, pos_z = 97.3, pos_rot = 145 WHERE mobid = 17317896; -- Sentinel Crab
-- Abyssea Tahrongi
UPDATE mob_spawn_points SET pos_x = -291, pos_y = 8, pos_z = 228 WHERE mobid = 16961746; -- Caoineag
UPDATE mob_spawn_points SET pos_x = 160.545, pos_y = 0, pos_z = 0, pos_rot = 090 WHERE mobid = 16961929; -- Chloris
UPDATE mob_spawn_points SET pos_x = 166.647, pos_y = 48.062, pos_z = 354.999, pos_rot = 075 WHERE mobid = 16961935; -- Minhocao
UPDATE mob_spawn_points SET pos_x = 130.961, pos_y = 8.347, pos_z = -479.171, pos_rot = 182 WHERE mobid = 16961911; -- Hungerer
UPDATE mob_spawn_points SET pos_x = -474.303, pos_y = -39.930, pos_z = -119.750, pos_rot = 39 WHERE mobid = 16961912; -- Hungerer
UPDATE mob_spawn_points SET pos_x = 56.866, pos_y = -15.513, pos_z = -157.945, pos_rot = 182 WHERE mobid = 16961913; -- Hungerer
UPDATE mob_spawn_points SET pos_x = -201.480, pos_y = 16.075, pos_z = 354.488, pos_rot = 177 WHERE mobid = 16961914; -- Hungerer
UPDATE mob_spawn_points SET pos_x = 250.568, pos_y = 40.011, pos_z = 364.189, pos_rot = 38 WHERE mobid = 16961915; -- Hungerer
UPDATE mob_spawn_points SET pos_x = -236.653, pos_y = 32, pos_z = 438.463, pos_rot = 105 WHERE mobid = 16961916; -- Hungerer
UPDATE mob_spawn_points SET pos_x = -92, pos_y =4, pos_z = -60, pos_rot = 0 WHERE mobid = 16961945; -- Iratham
UPDATE mob_spawn_points SET pos_x = 158, pos_y = 25, pos_z = -655, pos_rot = 210 WHERE mobid = 16961937; -- Quetzalli
UPDATE mob_spawn_points SET pos_x = -278.270, pos_y = 16.114, pos_z = -553.698, pos_rot = 180 WHERE mobid = 16961910; -- Yearner
UPDATE mob_spawn_points SET pos_x = -276, pos_y = 15, pos_z = -561, pos_rot = 095 WHERE mobid = 16961909; -- Usurper
UPDATE mob_spawn_points SET pos_x = 110, pos_y = 9, pos_z = 41, pos_rot = 120 WHERE mobid = 16961692; -- Pachypodium
UPDATE mob_spawn_points SET pos_x = 85, pos_y = 17, pos_z = -24, pos_rot = 82 WHERE mobid = 16961687; -- Pachypodium
UPDATE mob_spawn_points SET pos_x = 85, pos_y = 15, pos_z = -45, pos_rot = 5 WHERE mobid = 16961688; -- Pachypodium
UPDATE mob_spawn_points SET pos_x = 120, pos_y = 16, pos_z = 5, pos_rot = 240 WHERE mobid = 16961694; -- Pachypodium

-- -------------------------------------------------------------
-- -------------CUSTOM OURYU SPAWN ADJUSTMENTS------------------
-- -------------------------------------------------------------
UPDATE mob_spawn_points SET pos_x = 592, pos_y = -24, pos_z = 632, pos_rot = 11 WHERE mobid = 17174889; -- Bloodlapper
-- Adding/Changing mob spawns around Ouryu spawn to make it more hostile
UPDATE mob_spawn_points SET pos_x = 588, pos_y = -23, pos_z = 639, pos_rot = 7 WHERE mobid = 17174865; -- Earth Elemental
UPDATE mob_spawn_points SET pos_x = 616, pos_y = -25, pos_z = 650, pos_rot = 6 WHERE mobid = 17174866; -- Earth Elemental
UPDATE mob_spawn_points SET pos_x = 599, pos_y = -29, pos_z = 617, pos_rot = 83 WHERE mobid = 17174867; -- Fire Elemental
UPDATE mob_spawn_points SET pos_x = 547, pos_y = -32, pos_z = 615, pos_rot = 97 WHERE mobid = 17174763; -- Scavenging Hound
UPDATE mob_spawn_points SET pos_x = 601, pos_y = -29, pos_z = 665, pos_rot = 232 WHERE mobid = 17174765; -- Scavenging Hound
UPDATE mob_spawn_points SET pos_x = 665, pos_y = -25, pos_z = 666, pos_rot = 58 WHERE mobid = 17174559; -- War Lynx
UPDATE mob_spawn_points SET pos_x = 630, pos_y = -23, pos_z = 641, pos_rot = 88 WHERE mobid = 17174558; -- War Lynx
UPDATE mob_spawn_points SET pos_x = 570, pos_y = -26, pos_z = 634, pos_rot = 165 WHERE mobid = 17174564; -- War Lynx
UPDATE mob_spawn_points SET pos_x = 547, pos_y = -31, pos_z = 599, pos_rot = 166 WHERE mobid = 17174567; -- War Lynx
UPDATE mob_spawn_points SET pos_x = 535, pos_y = -31, pos_z = 628, pos_rot = 254 WHERE mobid = 17174568; -- War Lynx

-- ---------------------------------------------------------------
-- ----------------------PROMATHIA BCNM---------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_spawn_points WHERE groupid = 12948;
INSERT INTO `mob_spawn_points` VALUES (17821799,'Promathia','Promathia',12948,-475.7,0,519.4,249);

-- ---------------------------------------------------------------
-- -----------------------SHINRYU BCNM----------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_spawn_points WHERE groupid = 14087;
INSERT INTO `mob_spawn_points` VALUES (17821699,'Shinryu','Shinryu',14087,-475.7,0,519.4,249);

-- ---------------------------------------------------------------
-- ----------------------FIAT LUX CUSTOM--------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_spawn_points where mobid = 17416214;
INSERT INTO `mob_spawn_points` VALUES (17416214,'Shadow_Lord','Shadow_Lord',8339,-465,-167,-239,0);
INSERT INTO `mob_spawn_points` VALUES (17416280,'Shadow_Spawn','Shadow_Spawn',14638,-465,-167,-239,0);
INSERT INTO `mob_spawn_points` VALUES (17416281,'Shadow_Spawn','Shadow_Spawn',14638,-465,-167,-239,0);

-- ---------------------------------------------------------------
-- ---------------------BEADEAUX [S} SCNM-------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_spawn_points WHERE mobid = 17154392; -- bye treasure chest
UPDATE mob_spawn_points SET groupid = 4618, pos_x = 520, pos_y = -39, pos_z = 360, pos_rot = 65 WHERE mobid = 17154387; -- Za Dha Adamantking
UPDATE mob_spawn_points SET groupid = 4619, pos_x = 525, pos_y = -39, pos_z = 355, pos_rot = 65 WHERE mobid = 17154388; -- Za Dhas Biographer (BLM)
UPDATE mob_spawn_points SET groupid = 4619, pos_x = 515, pos_y = -39, pos_z = 365, pos_rot = 65 WHERE mobid = 17154389; -- Za Dhas Biographer (BLM)
UPDATE mob_spawn_points SET groupid = 4620, pos_x = 525, pos_y = -39, pos_z = 365, pos_rot = 65 WHERE mobid = 17154390; -- Za Dhas Minister (WHM)
UPDATE mob_spawn_points SET groupid = 4620, pos_x = 515, pos_y = -39, pos_z = 355, pos_rot = 65 WHERE mobid = 17154391; -- Za Dhas Minister (WHM)
UPDATE mob_spawn_points SET pos_x = 179, pos_y = 40, pos_z = 25, pos_rot = 200 WHERE mobid = 17154335; -- Virulent Peiste
UPDATE mob_spawn_points SET pos_x = 175, pos_y = 40, pos_z = 16, pos_rot = 220 WHERE mobid = 17154336; -- Virulent Peiste

-- ---------------------------------------------------------------
-- --------------------------ODIN BCNM----------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_spawn_points` VALUES (17097716,'Odin','Odin',2766,379,-215,66,62); -- Odin
INSERT INTO `mob_spawn_points` VALUES (17097717,'Alexander','Alexander',2767,426,-215,20,104); -- Alexander

-- ---------------------------------------------------------------
-- ----------------------APOCALYPSE NIGH--------------------------
-- ---------------------------------------------------------------
REPLACE INTO `mob_spawn_points` VALUES (16924679,'Kamlanaut','Kam\'lanaut',932,-518.190,-120.5,524.392,173); -- Apocalypse Nigh (Quest)
REPLACE INTO `mob_spawn_points` VALUES (16924680,'Ealdnarche','Eald\'narche',931,-529.274,-120,516.185,167);

-- ---------------------------------------------------------------
-- -------------------------ASSAULTS------------------------------
-- ---------------------------------------------------------------
-- Delete extra Brittle Rock spawns in Excavation Duty
DELETE FROM mob_spawn_points WHERE mobid IN (17035282,17035284,17035286,17035288,17035290);

-- ---------------------------------------------------------------
-- -----------------SALVAGE - ARRAPAGO REMNANTS-------------------
-- ---------------------------------------------------------------
-- Add new NMs
DELETE FROM mob_spawn_points where mobid IN (17080598,17080599,17080600,17080601,17080602,17080603,17080604,17080605,17080606,17080607,17080608,17080609);
INSERT INTO `mob_spawn_points` VALUES (17080598,'Battleclad_Chariot','Battleclad Chariot',2384,-339.000,-5.000,500.000,188);
INSERT INTO `mob_spawn_points` VALUES (17080599,'Long-Bowed_Chariot','Long-Bowed Chariot',2466,-339.000,-5.000,500.000,188);
INSERT INTO `mob_spawn_points` VALUES (17080600,'Long-Armed_Chariot','Long-Armed Chariot',2505,-339.000,-5.000,500.000,188);
INSERT INTO `mob_spawn_points` VALUES (17080601,'Demented_Jalaawa','Demented_Jalaawa',2460,420.000,0.000,-25.000,188);
INSERT INTO `mob_spawn_points` VALUES (17080602,'Don_Poroggo','Don_Poroggo',14641,420.000,0.000,-25.000,188);
INSERT INTO `mob_spawn_points` VALUES (17080603,'Jakko','Jakko',2390,420.000,0.000,-25.000,188);
INSERT INTO `mob_spawn_points` VALUES (17080604,'Gate_Widow','Gate_Widow',14642,291.85,-0.153,99.3870,182);
INSERT INTO `mob_spawn_points` VALUES (17080605,'Poroggo_Madame','Poroggo_Madame',2402,291.85,-0.153,99.3870,182);
INSERT INTO `mob_spawn_points` VALUES (17080606,'Hammerblow_Majanun','Hammerblow_Majanun',2502,291.85,-0.153,99.3870,182);
INSERT INTO `mob_spawn_points` VALUES (17080607,'Gyroscopic_Gears','Gyroscopic_Gears',2501,-337.6,-0.508,226.486,102);
INSERT INTO `mob_spawn_points` VALUES (17080608,'Gyroscopic_Gears','Gyroscopic_Gears',2501,-333.9,-0.685,219.697,216);
INSERT INTO `mob_spawn_points` VALUES (17080609,'Citadel_Chelonian','Citadel Chelonian',2490,-337.6,-0.508,226.486,102);
-- Delete rogue mob pet spawns
DELETE FROM mob_spawn_points WHERE mobid IN (17080344,17080353,17080377,17080382,17080390,17080408,17080428,17080443);
-- Split off NMs from regular mobs into new mob group
UPDATE mob_spawn_points SET groupid = 14643 WHERE mobid = 17080479; -- Psycheflayer
UPDATE mob_spawn_points SET groupid = 14644 WHERE mobid = 17080499; -- Deviate Bhoot
UPDATE mob_spawn_points SET groupid = 14645 WHERE mobid = 17080520; -- South Astrologer
UPDATE mob_spawn_points SET groupid = 14646 WHERE mobid = 17080537; -- South Chariot
UPDATE mob_spawn_points SET groupid = 14647 WHERE mobid = 17080542; -- North Astrologer
-- Fix spawn points for mobs
UPDATE mob_spawn_points SET pos_x = 419.2, pos_y = -13.8, pos_z = -300.2, pos_rot = 130 WHERE mobid = 17080383; -- Merrow Chantress
UPDATE mob_spawn_points SET pos_x = 252, pos_y = -12, pos_z = -380 WHERE mobid = 17080326;
UPDATE mob_spawn_points SET pos_x = 221, pos_y = -12, pos_z = -391 WHERE mobid = 17080329;
UPDATE mob_spawn_points SET pos_x = 227, pos_y = -16, pos_z = -298 WHERE mobid = 17080334;
UPDATE mob_spawn_points SET pos_x = 295, pos_y = -8, pos_z = -457 WHERE mobid = 17080339;
UPDATE mob_spawn_points SET pos_x = 291, pos_y = -8, pos_z = -451 WHERE mobid = 17080341;
UPDATE mob_spawn_points SET pos_x = 308, pos_y = -8, pos_z = -457 WHERE mobid = 17080348;
UPDATE mob_spawn_points SET pos_x = 311, pos_y = -12, pos_z = -540 WHERE mobid = 17080345;
UPDATE mob_spawn_points SET pos_x = 389, pos_y = -8, pos_z = -466 WHERE mobid = 17080359;
UPDATE mob_spawn_points SET pos_x = 457, pos_y = -12, pos_z = -451 WHERE mobid = 17080363;
UPDATE mob_spawn_points SET pos_x = 467, pos_y = -16, pos_z = -539 WHERE mobid = 17080369;
UPDATE mob_spawn_points SET pos_x = 412, pos_y = -20, pos_z = -540 WHERE mobid = 17080370;
UPDATE mob_spawn_points SET pos_x = 391, pos_y = -8, pos_z = -386 WHERE mobid = 17080379;
UPDATE mob_spawn_points SET pos_x = 382, pos_y = -12, pos_z = -291 WHERE mobid = 17080386;
UPDATE mob_spawn_points SET pos_x = 461, pos_y = -20, pos_z = -390 WHERE mobid = 17080392;
UPDATE mob_spawn_points SET pos_x = 400, pos_y = 0, pos_z = 50 WHERE mobid = 17080416;
UPDATE mob_spawn_points SET pos_x = 445, pos_y = 0, pos_z = 44 WHERE mobid = 17080420;
UPDATE mob_spawn_points SET pos_x = 422, pos_y = -4, pos_z = 425 WHERE mobid = 17080457;
UPDATE mob_spawn_points SET pos_x = 433, pos_y = -4, pos_z = 418 WHERE mobid = 17080455;
UPDATE mob_spawn_points SET pos_x = 407, pos_y = -4, pos_z = 421 WHERE mobid = 17080456;
UPDATE mob_spawn_points SET pos_x = 468, pos_y = -4, pos_z = 460 WHERE mobid = 17080461;
UPDATE mob_spawn_points SET pos_x = 457, pos_y = -4, pos_z = 471 WHERE mobid = 17080458;
UPDATE mob_spawn_points SET pos_x = 427, pos_y = -4, pos_z = 505 WHERE mobid = 17080463;
UPDATE mob_spawn_points SET pos_x = 342, pos_y = -4, pos_z = 563 WHERE mobid = 17080471;
UPDATE mob_spawn_points SET pos_x = 307, pos_y = -4, pos_z = 555 WHERE mobid = 17080474;
UPDATE mob_spawn_points SET pos_x = 266, pos_y = -4, pos_z = 498 WHERE mobid = 17080432;
UPDATE mob_spawn_points SET pos_x = 227, pos_y = -4, pos_z = 456 WHERE mobid = 17080436;
UPDATE mob_spawn_points SET pos_x = 353, pos_y = -4, pos_z = 355 WHERE mobid = 17080447;
UPDATE mob_spawn_points SET pos_x = 374, pos_y = -4, pos_z = 355 WHERE mobid = 17080451;
UPDATE mob_spawn_points SET pos_x = -349, pos_y = 4, pos_z = -392 WHERE mobid = 17080499;
UPDATE mob_spawn_points SET pos_x = -322, pos_y = 4, pos_z = -410 WHERE mobid = 17080500;
UPDATE mob_spawn_points SET pos_x = -392, pos_y = 0, pos_z = -534 WHERE mobid = 17080504;
UPDATE mob_spawn_points SET pos_x = -434, pos_y = 0, pos_z = -533 WHERE mobid = 17080506;
UPDATE mob_spawn_points SET pos_x = 282, pos_y = 0, pos_z = 160 WHERE mobid = 17080396;
UPDATE mob_spawn_points SET pos_x = 267, pos_y = 0, pos_z = 154 WHERE mobid = 17080403;
UPDATE mob_spawn_points SET pos_x = 251, pos_y = 0, pos_z = 155 WHERE mobid = 17080400;
UPDATE mob_spawn_points SET pos_x = 240, pos_y = 0, pos_z = 198 WHERE mobid = 17080398;
UPDATE mob_spawn_points SET pos_x = -326, pos_y = -4, pos_z = -691 WHERE mobid = 17080479;
UPDATE mob_spawn_points SET pos_x = -363, pos_y = -4, pos_z = -668 WHERE mobid = 17080482;
UPDATE mob_spawn_points SET pos_x = -308, pos_y = 0, pos_z = -542 WHERE mobid = 17080484;
UPDATE mob_spawn_points SET pos_x = -237, pos_y = 0, pos_z = -540 WHERE mobid = 17080488;
UPDATE mob_spawn_points SET pos_x = -312, pos_y = 0, pos_z = -183 WHERE mobid = 17080522;
UPDATE mob_spawn_points SET pos_x = -346, pos_y = 0, pos_z = 157 WHERE mobid = 17080569;
UPDATE mob_spawn_points SET pos_x = -362, pos_y = 0, pos_z = 236 WHERE mobid = 17080565;
UPDATE mob_spawn_points SET pos_x = 259, pos_y = 0, pos_z = -17 WHERE mobid = 17080410;
UPDATE mob_spawn_points SET pos_x = 286, pos_y = 0, pos_z = 27 WHERE mobid = 17080412;
UPDATE mob_spawn_points SET pos_x = 234, pos_y = 0, pos_z = 42 WHERE mobid = 17080404;
UPDATE mob_spawn_points SET pos_x = 236, pos_y = 0, pos_z = -2 WHERE mobid = 17080405;
UPDATE mob_spawn_points SET pos_x = -348, pos_y = 0, pos_z = 13 WHERE mobid = 17080539;
UPDATE mob_spawn_points SET pos_x = -429, pos_y = 0, pos_z = -123 WHERE mobid = 17080551;
UPDATE mob_spawn_points SET pos_x = -428, pos_y = 0, pos_z = -79 WHERE mobid = 17080550;
UPDATE mob_spawn_points SET pos_x = 445, pos_y = 0, pos_z = 203 WHERE mobid = 17080424;

-- ---------------------------------------------------------------
-- -------------------WOTG - FOMOR WEAPON NMs---------------------
-- ---------------------------------------------------------------
UPDATE mob_spawn_points SET groupid = 14639, pos_x = 164, pos_y = -15, pos_z = 278, pos_rot = 125 WHERE mobid = 17494093; -- Ethniu
UPDATE mob_spawn_points SET groupid = 14640, pos_x = 123, pos_y = 9, pos_z = -81, pos_rot = 130 WHERE mobid = 17494213; -- Tethra
