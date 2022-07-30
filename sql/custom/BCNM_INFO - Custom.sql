-- --------------------------------------------------------------
-- ----------------------MISC BCNM CHANGES-----------------------
-- --------------------------------------------------------------
UPDATE bcnm_info SET fastestName = 'Vrtra' WHERE fastestName = 'nobody'; -- SET all BCNM fastestNames to Vrtra
UPDATE bcnm_info SET fastestTime = 48; -- SET all BCNM fastestTimes to 48 seconds
UPDATE bcnm_info SET levelCap = 0 where bcnmId = 0; -- Remove level cap from Rank 2.3 BCNM
UPDATE bcnm_info SET levelCap = 0 where bcnmId = 64; -- Remove level cap from Rank 2.3 BCNM
UPDATE bcnm_info SET levelCap = 0 where bcnmId = 96; -- Remove level cap from Rank 2.3 BCNM
UPDATE bcnm_info SET levelCap = 0 where bcnmId = 512; -- Remove level cap from Rank 5.1 BCNM
UPDATE bcnm_info SET levelCap = 0 where bcnmId = 256; -- Remove level cap from ZM8 Stellar Fulcrum BCNM

-- ---------------------------------------------------------------
-- ----------------PETRYIFYING PAIR (TENZEN) BCNM-----------------
-- ---------------------------------------------------------------
DELETE FROM bcnm_info WHERE bcnmid = 35;
INSERT INTO `bcnm_info` VALUES (35,140,'petrifying_pair','Vrtra',3,48,1800,80,3,35,15,0);

-- ---------------------------------------------------------------
-- --------------------------KSNM 99------------------------------
-- ---------------------------------------------------------------
UPDATE bcnm_info SET levelCap = 80 AND partySize = 6 WHERE bcnmId = 11; -- Adjust KS99 Behemoth to 6-man
UPDATE bcnm_info SET levelCap = 80 AND partySize = 6 WHERE bcnmId = 76; -- Adjust KS99 Turtle to 6-man
UPDATE bcnm_info SET levelCap = 80 AND partySize = 6 WHERE bcnmId = 107; -- Adjust KS99 Wyrm to 6-man

-- ---------------------------------------------------------------
-- ---------------------BEADEAUX [S] SCNM-------------------------
-- ---------------------------------------------------------------
INSERT INTO `bcnm_info` VALUES (1308,92,'the_buried_god','Vrtra',18,48,1800,80,18,0,15,0); -- The Buried God
UPDATE bcnm_info SET lootDropId = 182 WHERE bcnmId = 1308; -- The Buried God

-- ---------------------------------------------------------------
-- ----------------------PROMATHIA BCNM---------------------------
-- ---------------------------------------------------------------
INSERT INTO `bcnm_info` VALUES (1309,255,'promathia_battle','Vrtra',1,48,1800,80,1,190,5,0); -- Promathia

-- ---------------------------------------------------------------
-- -----------------------SHINRYU BCNM----------------------------
-- ---------------------------------------------------------------
INSERT INTO `bcnm_info` VALUES (1310,255,'the_wyrm_god','Vrtra',1,48,1800,80,6,181,5,0); -- Shinryu

-- ---------------------------------------------------------------
-- ----------------------FIAT LUX BCNM----------------------------
-- ---------------------------------------------------------------
UPDATE bcnm_info SET lootDropId = 181 WHERE bcnmId = 352; -- Fiat Lux

-- ---------------------------------------------------------------
-- ----------------SKCNM20 DISMEMBERMENT BRIGADE------------------
-- ---------------------------------------------------------------
INSERT INTO `bcnm_info` VALUES (2800,139,'*dismemberment_brigade','Vrtra',0,1800,1800,99,6,2,15,0);
