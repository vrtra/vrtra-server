-- ---------------------------------------------------------------
-- -------------------MISC FIXES TO MOB SKILLS--------------------
-- ---------------------------------------------------------------
UPDATE mob_skills SET mob_prepare_time = 3000 WHERE mob_skill_id = 1790; -- Gates of Hades
UPDATE mob_skills SET mob_skill_distance = 30, mob_prepare_time = 3000 WHERE mob_skill_id = 2028; -- Fulmination
UPDATE mob_skills SET mob_skill_aoe = 4 WHERE mob_skill_id = 728; -- Sweet Breath
UPDATE mob_skills SET mob_skill_aoe = 4 WHERE mob_skill_id = 727; -- Bad Breath

-- ---------------------------------------------------------------
-- -------------------ABYSSEA MOB CUSTOM SKILLS-------------------
-- ---------------------------------------------------------------
-- Alectryon
INSERT INTO `mob_skills` VALUES (1334,154,'contamination',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Contamination
-- Chloris
INSERT INTO `mob_skills` VALUES (2387,1660,'fatal_scream',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Fatal Scream
INSERT INTO `mob_skills` VALUES (2579,2323,'phaeosynthesis',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Phaeosynthesis
-- Gancanagh
INSERT INTO `mob_skills` VALUES (2599,2343,'tepal_twist',1,12.0,2000,1500,4,0,0,0,0,0,0); -- Tepal Twist
INSERT INTO `mob_skills` VALUES (2600,2344,'bloom_fouette',1,12.0,2000,1500,4,0,0,0,0,0,0); -- Bloom Fouette
INSERT INTO `mob_skills` VALUES (2601,2345,'petalback_spin',1,12.0,2000,1500,4,0,0,0,0,0,0); -- Petalback Spin
-- Glavoid
INSERT INTO `mob_skills` VALUES (2604,2348,'gorge',4,12.0,2000,1500,4,0,0,0,0,0,0); -- Gorge
INSERT INTO `mob_skills` VALUES (2605,2349,'disgorge',4,12.0,2000,1500,4,0,0,0,0,0,0); -- Disgorge
-- Hedetet
INSERT INTO `mob_skills` VALUES (2221,1965,'hell_scissors',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Hell Scissors
-- Lacovie
INSERT INTO `mob_skills` VALUES (2585,1658,'tetsudo_tremor',1,12.0,2000,1500,4,0,0,0,0,0,0); -- Tetsudo Tremor

-- Tefenet
INSERT INTO `mob_skills` VALUES (2602,2346,'mortal_blast',1,7.0,2000,1500,4,0,0,0,0,0,0); -- Mortal Blast
INSERT INTO `mob_skills` VALUES (2209,1953,'blink_of_peril',1,7.0,2000,1500,4,0,0,0,0,0,0); -- Blink of Peril
-- Treble Noctules
INSERT INTO `mob_skills` VALUES (1157,339,'slipstream',1,12.0,2000,1500,4,0,0,0,0,0,0); -- Slipstream
INSERT INTO `mob_skills` VALUES (1341,1085,'knife_edge_circle',4,12.0,2000,1500,4,0,0,0,0,0,0); -- Knife Edge Circle
INSERT INTO `mob_skills` VALUES (1342,1086,'train_fall',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Train Fall
-- Bakka
INSERT INTO `mob_skills` VALUES (2003,1181,'grating_tantara',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Grating Tantara
INSERT INTO `mob_skills` VALUES (2004,1182,'stifling_tantara',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Stifling Tantara
-- Chasmic Hornet
INSERT INTO `mob_skills` VALUES (1847,79,'frenzy_pollen',0,7.0,2000,1500,1,0,0,0,0,0,0); -- Frenzy Pollen
INSERT INTO `mob_skills` VALUES (2608,2352,'terminal_sting',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Terminal Sting
-- Meganetereon
INSERT INTO `mob_skills` VALUES (2207,1951,'disorienting_waul',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Disorienting Waul
-- Pantagruel
INSERT INTO `mob_skills` VALUES (2367,2111,'moribund_hack',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Moribund Hack
-- Irrlicht
INSERT INTO `mob_skills` VALUES (2511,2255,'corpse_breath',4,10.0,2000,1500,4,0,0,0,0,0,0); -- Corpse Breath
-- Hadhayosh
INSERT INTO `mob_skills` VALUES (2390,2134,'accursed_armor',0,30.0,2000,1500,4,0,0,0,0,0,0); -- Accursed Armor
INSERT INTO `mob_skills` VALUES (2391,2135,'amnesic_blast',0,10.0,2000,1500,4,0,0,0,0,0,0); -- Amnesic Blast
INSERT INTO `mob_skills` VALUES (2586,2256,'ecliptic_meteor',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Ecliptic Meteor
-- Briareus
INSERT INTO `mob_skills` VALUES (2576,2320,'mercurial_strike',1,10,2000,1500,4,0,0,0,0,0,0); -- Mercurial Strike
INSERT INTO `mob_skills` VALUES (2578,2322,'colossal_slam',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Colossal Slam
INSERT INTO `mob_skills` VALUES (1636,1380,'trebuchet',1,10.0,2000,1500,4,0,0,3,0,0,0); -- Trebuchet
-- Alkonost
INSERT INTO `mob_skills` VALUES (579,323,'choke_breath',4,15.0,2000,1500,4,0,0,0,0,0,0); -- Choke Breath
INSERT INTO `mob_skills` VALUES (580,324,'fantod',0,7.0,2000,1500,2,0,0,0,0,0,0); -- Fantod
-- Bloodeye Vileberry
INSERT INTO `mob_skills` VALUES (2393,2137,'ritual_bind',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Ritual Bind
-- Fear Gorta
INSERT INTO `mob_skills` VALUES (1339,1083,'bane',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Bane
-- Fistule
INSERT INTO `mob_skills` VALUES (2550,2294,'dissolve',4,15.0,2000,1500,4,0,0,0,0,0,0); -- Dissolve
INSERT INTO `mob_skills` VALUES (2551,2295,'mucus_spread',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Mucus Spread


-- Ovni
INSERT INTO `mob_skills` VALUES (1374,1026,'torrential_torment',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Torrential Torment
INSERT INTO `mob_skills` VALUES (1377,1029,'fluorescence',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Fluorescence
-- Keratyrannos
INSERT INTO `mob_skills` VALUES (2104,1436,'crippling_slam',4,15.0,2000,1500,4,0,0,0,0,0,0); -- Crippling Slam
-- Kukulkan
INSERT INTO `mob_skills` VALUES (2157,1901,'calcifying_mist',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Calcifying Mist
INSERT INTO `mob_skills` VALUES (2392,1665,'oppressive_gaze',4,10.0,2000,1500,4,0,0,0,0,0,0); -- Oppressive Gaze
-- Rafflesia
INSERT INTO `mob_skills` VALUES (2165,1909,'rotten_stench',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Rotten Stench
INSERT INTO `mob_skills` VALUES (2166,1910,'floral_bouquet',1,10.0,2000,1500,4,0,0,0,0,0,0); -- Floral Bouquet
INSERT INTO `mob_skills` VALUES (2169,1913,'soothing_aroma',1,7.0,2000,1500,4,0,0,0,0,0,0); -- Soothing Aroma
-- Siranpa Kamuy
INSERT INTO `mob_skills` VALUES (1026,727,'arbor_storm',1,30.0,2000,1500,4,0,0,0,0,0,0); -- Arbor Storm
-- Turul
INSERT INTO `mob_skills` VALUES (2430,2174,'warped_wail',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Warped Wail
UPDATE mob_skills SET mob_skill_aoe = 4 WHERE mob_skill_id = 2428; -- Bloody Beak

-- ---------------------------------------------------------------
-- ----------------BEADEAUX [S} SCNM MOB SKILLS-------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_skills` VALUES (2374,2118,'torment_of_gudha',1,20,2000,2000,4,0,0,7,0,0,0); -- Tormet of GuDha
INSERT INTO `mob_skills` VALUES (2203,1563,'diamond_shell',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Diamond Shell
INSERT INTO `mob_skills` VALUES (2204,1948,'ore_lob',1,15.0,2000,1500,4,0,0,0,0,0,0); -- Ore Lob
INSERT INTO `mob_skills` VALUES (2265,2009,'skull_smash',0,7.0,2000,1000,4,0,0,0,0,0,0); -- Skull Smash
INSERT INTO `mob_skills` VALUES (2266,2010,'shell_charge',1,10,2000,1500,4,0,0,7,0,0,0); -- Shell Charge

-- ---------------------------------------------------------------
-- ---------------------------FIAT LUX----------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_skills` VALUES (2535,2279,'vicious_kick',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Vicious Kick
UPDATE mob_skills SET mob_anim_id = 1746, mob_skill_aoe = 4 WHERE mob_skill_id = 2536; -- Boon Void
UPDATE mob_skills SET mob_anim_id = 1747, mob_skill_aoe = 4 WHERE mob_skill_id = 2537; -- Cruel Slash
UPDATE mob_skills SET mob_anim_id = 1751, mob_skill_aoe = 4, mob_skill_distance = 18.0 WHERE mob_skill_id = 2541; -- Cross Smash
UPDATE mob_skills SET mob_anim_id = 1752, mob_skill_aoe = 0, mob_skill_distance = 7.0 WHERE mob_skill_id = 2542; -- Blighting Blitz

-- ---------------------------------------------------------------
-- ------------------------CUSTOM ODIN BCNM-----------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_skills` VALUES (2120,1441,'ofnir',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Ofnir
INSERT INTO `mob_skills` VALUES (2121,1446,'valfodr',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Valfodr
INSERT INTO `mob_skills` VALUES (2122,1444,'yggr',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Yggr
INSERT INTO `mob_skills` VALUES (2123,1442,'gagnrath',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Gagnrath
INSERT INTO `mob_skills` VALUES (2124,1445,'sanngetall',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Sanngetall
INSERT INTO `mob_skills` VALUES (2125,1443,'geirrothr',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Geirrothr
INSERT INTO `mob_skills` VALUES (2126,1447,'zantetsuken',4,10.0,2000,1000,4,0,0,0,0,0,0); -- Zantetsuken

-- ---------------------------------------------------------------
-- -----------------------ASSAULTS & SALVAGE----------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_skills` VALUES (1736,1480,'axe_throw',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Axe Throw
INSERT INTO `mob_skills` VALUES (1925,1669,'stave_toss',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Stave Toss
INSERT INTO `mob_skills` VALUES (2034,1778,'reinforcements',0,7.0,2000,1500,4,0,0,0,0,0,0); -- Reinforcements
UPDATE mob_skills SET mob_skill_name = 'inertia_stream' WHERE mob_skill_id = 2055; -- Fix Inertia Stream misspelling
