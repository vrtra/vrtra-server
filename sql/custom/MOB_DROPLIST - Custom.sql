-- -------------------------------------------------------------
-- --------------------CUSTOM ZILART KING DROPS-----------------
-- -------------------------------------------------------------
-- Fafnir
INSERT INTO `mob_droplist` VALUES (918,0,0,1000,1526,100); -- Wyrm Beard
UPDATE mob_droplist SET itemRate = 60 WHERE itemid = 16555; -- Ridill drop rate was too high (18%)
-- Nidhogg
INSERT INTO `mob_droplist` VALUES (2425,0,0,1000,17829,250); -- Hagun
-- Remove extra abjuration drops from Nidhogg
DELETE FROM mob_droplist WHERE itemid = 1320 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1325 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1330 AND itemrate = 180;
DELETE FROM mob_droplist WHERE itemid = 1342 AND itemrate = 130;
-- Behemoth
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,13648,300); -- Gigant mantle
INSERT INTO `mob_droplist` VALUES (270,0,0,1000,1527,100); -- Behemoth Tongue
-- King Behemoth
INSERT INTO `mob_droplist` VALUES (1936,0,0,1000,14674,150); -- Toreadors Ring
-- Remove extra abjuration drops from KB
DELETE FROM mob_droplist WHERE itemid = 1322 AND itemrate = 160;
DELETE FROM mob_droplist WHERE itemid = 1328 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1332 AND itemrate = 140;
DELETE FROM mob_droplist WHERE itemid = 1334 AND itemrate = 190;
-- Adamantoise
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,17246,150); -- Ziskas Crossbow
INSERT INTO `mob_droplist` VALUES (24,0,0,1000,1525,100); -- Adamantoise Egg
-- Aspid
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,17946,100); -- Maneater
INSERT INTO `mob_droplist` VALUES (195,0,0,1000,17277,200); -- Hedgehog bomb
-- Remove extra abjuration drops from Aspid
DELETE FROM mob_droplist WHERE itemid = 1318 AND itemrate = 170;
DELETE FROM mob_droplist WHERE itemid = 1325 AND itemrate = 180;
DELETE FROM mob_droplist WHERE itemid = 1333 AND itemrate = 140;
DELETE FROM mob_droplist WHERE itemid = 1335 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 646;

-- -------------------------------------------------------------
-- --------------------CUSTOM SKY NM DROPS---------------------
-- -------------------------------------------------------------
-- Remove extra abjuration drops from Kirin
DELETE FROM mob_droplist WHERE itemid = 1315 AND itemrate = 400;
DELETE FROM mob_droplist WHERE itemid = 1337 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1340 AND itemrate = 140;
DELETE FROM mob_droplist WHERE itemid = 4748 AND itemrate = 80;
DELETE FROM mob_droplist WHERE itemid = 4818 AND itemrate = 150;
DELETE FROM mob_droplist WHERE itemid = 747;
DELETE FROM mob_droplist WHERE itemid = 658;
-- Remove extra abjuration drops from Genbu
DELETE FROM mob_droplist WHERE itemid = 1324 AND itemrate = 120;
DELETE FROM mob_droplist WHERE itemid = 1326 AND itemrate = 110;
DELETE FROM mob_droplist WHERE itemid = 1331 AND itemrate = 140;
DELETE FROM mob_droplist WHERE itemid = 1338 AND itemrate = 150;
-- Remove extra abjuration drops from Seiryu
DELETE FROM mob_droplist WHERE itemid = 1314 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1327 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1329 AND itemrate = 170;
DELETE FROM mob_droplist WHERE itemid = 1336 AND itemrate = 170;
-- Remove extra abjuration drops from Suzaku
DELETE FROM mob_droplist WHERE itemid = 1316 AND itemrate = 180;
DELETE FROM mob_droplist WHERE itemid = 1319 AND itemrate = 150;
DELETE FROM mob_droplist WHERE itemid = 1327 AND itemrate = 160;
DELETE FROM mob_droplist WHERE itemid = 1343 AND itemrate = 180;
-- Remove extra abjuration drops from Byakko
DELETE FROM mob_droplist WHERE itemid = 1317 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1323 AND itemrate = 130;
DELETE FROM mob_droplist WHERE itemid = 1324 AND itemrate = 150;
DELETE FROM mob_droplist WHERE itemid = 1341 AND itemrate = 170;

-- -------------------------------------------------------------
-- --------------------CUSTOM WYRM DROPS------------------------
-- -------------------------------------------------------------
-- Jormungand
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,11629,200); -- Zilant Ring
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,11633,200); -- Galdr Ring
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,11636,350); -- Royal Knight Sigil Ring
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,14282,300); -- Arcane Slops
INSERT INTO `mob_droplist` VALUES (1852,0,0,1000,15912,150); -- Lieutenant's Sash
-- Bloodlapper (Ouryu)
DELETE FROM mob_droplist WHERE dropid = 330;
INSERT INTO `mob_droplist` VALUES (330,0,0,1000,11630,200); -- Corneus Ring
INSERT INTO `mob_droplist` VALUES (330,0,0,1000,11631,200); -- Blobnag Ring
INSERT INTO `mob_droplist` VALUES (330,0,0,1000,11545,350); -- Fourth Division Mantle
INSERT INTO `mob_droplist` VALUES (330,0,0,1000,15013,340); -- Vicious Mufflers
INSERT INTO `mob_droplist` VALUES (330,0,0,1000,16271,150); -- Lieutenant's Gorget
INSERT INTO `mob_droplist` VALUES (330,0,0,1000,17658,1000); -- Tutelary
-- Tiamat
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,11628,200); -- Strigoi Ring
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,11632,200); -- Karka Ring
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,14868,300); -- Arcane Cuffs
INSERT INTO `mob_droplist` VALUES (3522,0,0,1000,16230,150); -- Lieutenant's Cape
-- Vrtra
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,15859,350); -- Succor Ring
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,11634,350); -- Veela Ring
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,11588,450); -- Mercenary Major Charm
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,16076,500); -- Coven Hat
INSERT INTO `mob_droplist` VALUES (4033,0,0,1000,14369,350); -- Arcane Robe
-- Custom Bahamut (Wake Warder Wanda)
/* DELETE FROM mob_droplist WHERE dropid = 4578;
INSERT INTO `mob_droplist` VALUES (4578,0,0,1000,17598,200); -- b staff
INSERT INTO `mob_droplist` VALUES (4578,0,0,1000,18061,200); -- b scythe
INSERT INTO `mob_droplist` VALUES (4578,0,0,1000,15264,200); -- b mask
INSERT INTO `mob_droplist` VALUES (4578,0,0,1000,15599,200); -- b hose
INSERT INTO `mob_droplist` VALUES (4578,0,0,1000,17597,200); -- dragon staff */

-- -------------------------------------------------------------
-- ----------------------CUSTOM SEA DROPS-----------------------
-- -------------------------------------------------------------
INSERT INTO `mob_droplist` VALUES (3653,0,0,1000,1783,134); -- Luminian Tissue
INSERT INTO `mob_droplist` VALUES (3653,0,0,1000,1785,150); -- Xzomit Organ

INSERT INTO `mob_droplist` VALUES (2538,0,0,1000,1785,145); -- Xzomit Organ
INSERT INTO `mob_droplist` VALUES (2536,0,0,1000,1787,70); -- Hpemde Organ
INSERT INTO `mob_droplist` VALUES (2535,0,0,1000,1786,45); -- Aern Organ
INSERT INTO `mob_droplist` VALUES (881,0,0,1000,1786,65); -- Aern Organ
INSERT INTO `mob_droplist` VALUES (214,0,0,1000,1786,60); -- Aern Organ

-- Gunpod Droplist from Apollyon Central
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1875,50); -- Ancient Beastcoin
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1875,50); -- Ancient Beastcoin
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1875,50); -- Ancient Beastcoin
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1875,50); -- Ancient Beastcoin
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1875,50); -- Ancient Beastcoin
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1875,50); -- Ancient Beastcoin
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1909,15); -- Smalt Chip
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1910,15); -- Smoky Chip
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1987,15); -- Charcoal Chip
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1988,15); -- Magenta Chip
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1931,5); -- Argyro Rivet (WAR)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1933,5); -- Ancient Brass (MNK)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1935,5); -- Benedict Yarn (WHM)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1937,5); -- Diabolic Yarn (BLM)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1939,5); -- Cardinal Cloth (RDM)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1941,5); -- Light Filament (THF)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1943,5); -- White Rivet (PLD)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1945,5); -- Black Rivet (DRK)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1947,5); -- Fetid Lanolin (BST)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1949,5); -- Brown Doeskin (BRD)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1951,5); -- Charcoal Cotton (RNG)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1953,5); -- Kurogane (SAM)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1955,5); -- Ebony Lacquer (NIN)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1957,5); -- Blue Rivert (DRG)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,1959,5); -- Astral Leather (SMN)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,2657,5); -- Flameshun Cloth (BLU)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,2659,5); -- Canvas Troile (COR)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,2661,5); -- Corduroy Cloth (PUP)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,2715,5); -- Gold Stud (DNC)
INSERT INTO `mob_droplist` VALUES (4719,0,0,1000,2717,5); -- Electrum Stud (SCH)

-- -------------------------------------------------------------
-- --------------------CUSTOM ToAU NM DROPS---------------------
-- -------------------------------------------------------------
-- Gulool JaJa
INSERT INTO mob_droplist VALUES (1607,0,0,1000,18692,500); -- Mamoolbane
INSERT INTO mob_droplist VALUES (1607,0,0,1000,15560,350); -- Troopers Ring
INSERT INTO mob_droplist VALUES (1607,0,0,1000,18943,250); -- Perdu Sickle
INSERT INTO mob_droplist VALUES (1607,0,0,1000,18425,250); -- Perdu Blade
INSERT INTO mob_droplist VALUES (1607,0,0,1000,18588,250); -- Perdu Staff
-- Gurfurlur the Menacing
INSERT INTO mob_droplist VALUES (1609,0,0,1000,18694,500); -- Trollbane
INSERT INTO mob_droplist VALUES (1609,0,0,1000,16168,350); -- Sentinel Shield
INSERT INTO mob_droplist VALUES (1609,0,0,1000,17741,250); -- Perdu Hanger
INSERT INTO mob_droplist VALUES (1609,0,0,1000,18850,250); -- Perdu WAND
INSERT INTO mob_droplist VALUES (1609,0,0,1000,18718,250); -- Perdu Crossbow
-- Medusa
INSERT INTO mob_droplist VALUES (2237,0,0,1000,15518,200); -- Merrow No17 Locket
INSERT INTO mob_droplist VALUES (2237,0,0,1000,18693,500); -- Lamiabane
INSERT INTO mob_droplist VALUES (2237,0,0,1000,15698,350); -- Sneaking Boots
INSERT INTO mob_droplist VALUES (2237,0,0,1000,18717,250); -- Perdu Bow
INSERT INTO mob_droplist VALUES (2237,0,0,1000,16602,250); -- Perdu Sword
INSERT INTO mob_droplist VALUES (2237,0,0,1000,18491,250); -- Perdu Voulge
-- Hydra
UPDATE mob_groups SET dropid = 4681 WHERE groupid = 1651;
INSERT INTO mob_droplist VALUES (4681,0,0,1000,2154,250); -- Orobon Lure
INSERT INTO mob_droplist VALUES (4681,0,0,1000,15530,200); -- Berserker's Torque
INSERT INTO mob_droplist VALUES (4681,0,0,1000,17952,200); -- Sirius Axe
INSERT INTO mob_droplist VALUES (4681,0,0,1000,15810,150); -- Luzaf's Ring
INSERT INTO mob_droplist VALUES (4681,0,0,1000,18691,150); -- Imperial Dart
-- Khimaira
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,11286,350); -- Avalon Breastplate
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,16275,100); -- Ancient Torque
INSERT INTO `mob_droplist` VALUES (1893,0,0,1000,19248,200); -- Lucky Coin
-- Cerberus
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,27599,250); -- Dew Silk Cape +1
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,28425,100); -- Salire Belt
INSERT INTO `mob_droplist` VALUES (502,0,0,1000,11578,300); -- Tiercel Necklace
-- Dragonscaled Bugaal Ja UPDATE
UPDATE mob_droplist SET itemRate = 330 WHERE itemId = 14958 AND dropid = 787;

-- -------------------------------------------------------------
-- -------------------WOTG NM DROPS----------------------------
-- -------------------------------------------------------------
-- Judgemental Julika drop fix
INSERT INTO mob_droplist VALUES (4625,0,0,1000,19124,250); -- Creve-coeur
UPDATE mob_groups SET dropid = 4625 WHERE groupid = 13812; -- Judgemental Julika

-- -------------------------------------------------------------
-- --------------------MISC NM DROPS----------------------------
-- -------------------------------------------------------------
-- Xolotl
INSERT INTO mob_droplist VALUES (4205,0,0,1000,16031,200); -- Affinity Earring
-- Vouivre
INSERT INTO mob_droplist VALUES (4031,0,0,1000,16022,200); -- Fidelity Earring
-- Overlord Bakgodek
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,17751,100); -- Fragarach
INSERT INTO `mob_droplist` VALUES (2728,0,0,1000,15327,100); -- Fuma Sune-ate
-- Za Dha Adamantking
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,16002,100); -- Roundel Earring
INSERT INTO `mob_droplist` VALUES (4383,0,0,1000,17996,100); -- Stylet
-- Tzee Xicu the Manifest
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,18015,100); -- Blau Dolch
INSERT INTO `mob_droplist` VALUES (3645,0,0,1000,11544,100); -- Veela Cape
-- Ash Dragon
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,18377,100); -- Mercurial Sword
INSERT INTO `mob_droplist` VALUES (191,0,0,1000,19213,75); -- White Tathlum
-- Guivre
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,18019,50); -- Xs Knife
INSERT INTO `mob_droplist` VALUES (1602,0,0,1000,11288,50); -- Zahaks Mail
-- Tyrannic Tunnok
INSERT INTO `mob_droplist` VALUES (3642,0,0,1000,17790,100); -- Unji
-- King Vinegarroon
INSERT INTO `mob_droplist` VALUES (1937,0,0,1000,11287,150); -- Antares Harness
INSERT INTO `mob_droplist` VALUES (1937,0,0,1000,19212,150); -- Black Tathlum
-- Bune
INSERT INTO `mob_droplist` VALUES (434,0,0,1000,15302,50); -- Scouters Rope
INSERT INTO `mob_droplist` VALUES (434,0,0,1000,18020,50); -- Mercurial Kris
-- Amaltheia
INSERT INTO `mob_droplist` VALUES (60,0,0,1000,27597,150); -- Emico Mantle
INSERT INTO `mob_droplist` VALUES (60,0,0,1000,11285,200); -- Morgana's Cotehardie
INSERT INTO `mob_droplist` VALUES (60,0,0,1000,14470,150); -- Assault Breastplate
-- Frostmane
INSERT INTO `mob_droplist` VALUES (1054,0,0,1000,16850,250); -- Mercurial Spear
-- Autarch
INSERT INTO `mob_droplist` VALUES (4518,0,0,1000,16344,200); -- Oily Trousers
INSERT INTO `mob_droplist` VALUES (4518,0,0,1000,18624,150); -- Numen Staff
-- Narasimha
INSERT INTO `mob_droplist` VALUES (2418,0,0,1000,13553,250); -- Blitz Ring
-- Ogama
INSERT INTO `mob_droplist` VALUES (2512,0,0,1000,17938,250); -- Woodville's Axe
-- Pelican
INSERT INTO `mob_droplist` VALUES (2761,0,0,1000,17939,250); -- Kriegsbeil
-- Amikiri
INSERT INTO `mob_droplist` VALUES (77,0,0,1000,17789,250); -- Unsho
-- Add broken CoP NM drop to Megalobugard
INSERT INTO `mob_droplist` VALUES (2239,0,0,1000,16297,100); -- Shepherds Chain
-- Add Pirate Clubs onto Gustav NMs
INSERT INTO `mob_droplist` VALUES (3441,0,0,1000,18395,250); -- Seawolf Cudgel
INSERT INTO `mob_droplist` VALUES (241,0,0,1000,18396,250); -- Searobber Cudgel
-- Add non-existant BST belt to Oni Carcass
INSERT INTO `mob_droplist` VALUES (2543,0,0,1000,15944,80); -- Selemnus Belt
-- Devil Manta
INSERT INTO `mob_droplist` VALUES (722,0,0,1000,1312,300); -- angel skin, devil manta fishing

-- -------------------------------------------------------------
-- -----------------MASS ITEM DELETIONS-------------------------
-- ------------+------------------------------------------------
-- Remove crafting materials FROM HNM drop pools
/* DELETE FROM mob_droplist WHERE itemId = 644;
DELETE FROM mob_droplist WHERE itemId = 645;
DELETE FROM mob_droplist WHERE itemid = 655; -- adaman ingot
DELETE FROM mob_droplist WHERE itemId = 656;
DELETE FROM mob_droplist WHERE itemId = 700;
DELETE FROM mob_droplist WHERE itemId = 702;
DELETE FROM mob_droplist WHERE itemId = 703;
DELETE FROM mob_droplist WHERE itemid = 722; -- divine log
DELETE FROM mob_droplist WHERE itemId = 737;
DELETE FROM mob_droplist WHERE itemId = 738;
DELETE FROM mob_droplist WHERE itemId = 751;
DELETE FROM mob_droplist WHERE itemId = 823;
DELETE FROM mob_droplist WHERE itemId = 830;
DELETE FROM mob_droplist WHERE itemid = 831; -- shining cloth
DELETE FROM mob_droplist WHERE itemId = 836; -- damascene cloth
DELETE FROM mob_droplist WHERE itemId = 837; -- malboro fiber
DELETE FROM mob_droplist WHERE itemId = 844;
DELETE FROM mob_droplist WHERE itemid = 860; -- behemoth hide
DELETE FROM mob_droplist WHERE itemid = 865; -- nidhogg scales
DELETE FROM mob_droplist WHERE itemId = 866;
DELETE FROM mob_droplist WHERE itemid = 867; -- dragon scales
DELETE FROM mob_droplist WHERE itemid = 883; -- behemoth horn
DELETE FROM mob_droplist WHERE itemId = 887;
DELETE FROM mob_droplist WHERE itemId = 895;
DELETE FROM mob_droplist WHERE itemid = 901; -- venomous claw
DELETE FROM mob_droplist WHERE itemId = 902;
DELETE FROM mob_droplist WHERE itemid = 903; -- dragon talon
DELETE FROM mob_droplist WHERE itemId = 942;
DELETE FROM mob_droplist WHERE itemid = 1110; -- beetle blood
DELETE FROM mob_droplist WHERE itemId = 1132;
DELETE FROM mob_droplist WHERE itemid = 1133; -- dragon blood
DELETE FROM mob_droplist WHERE itemid = 1311; -- oxblood
DELETE FROM mob_droplist WHERE itemid = 1312; -- angel skin 
DELETE FROM mob_droplist WHERE itemid = 1313; -- siren's hair
DELETE FROM mob_droplist WHERE itemId = 4172;
DELETE FROM mob_droplist WHERE itemId = 4174;
DELETE FROM mob_droplist WHERE itemId = 4175;
DELETE FROM mob_droplist WHERE itemid = 4272; -- dragon meat
DELETE FROM mob_droplist WHERE itemid = 4486; -- dragon heart
DELETE FROM mob_droplist WHERE itemid = 2372; -- Khimaira Mane
DELETE FROM mob_droplist WHERE itemid = 2373; -- Khimaira Tail
DELETE FROM mob_droplist WHERE itemid = 2168; -- Cerberus Claw
DELETE FROM mob_droplist WHERE itemid = 2169; -- Cerberus Hide
DELETE FROM mob_droplist WHERE itemid = 5565; -- Cerberus Meat */
-- remove clusters FROM mob drops
DELETE FROM mob_droplist WHERE itemid = 4110; -- light cluster
DELETE FROM mob_droplist WHERE itemid = 4111; -- dark cluster
DELETE FROM mob_droplist WHERE itemid = 4107; -- earth cluster
DELETE FROM mob_droplist WHERE itemid = 4104; -- fire cluster
DELETE FROM mob_droplist WHERE itemid = 4109; -- water cluster
DELETE FROM mob_droplist WHERE itemid = 4106; -- wind cluster
DELETE FROM mob_droplist WHERE itemid = 4105; -- ice cluster
DELETE FROM mob_droplist WHERE itemid = 4108; -- lightning cluster
-- Raise rare item droprate on Mee Deggi
UPDATE mob_droplist SET itemRate = 150 WHERE itemId = 14986;  -- Ochimusha Kote
UPDATE mob_droplist SET itemRate = 850 WHERE itemId = 16703;  -- Impact Knuckles
-- Raise rare item droprate on Quu Domi
UPDATE mob_droplist SET itemRate = 200 WHERE itemId = 15737;  -- Sarutobi Kyahan
UPDATE mob_droplist SET itemRate = 800 WHERE itemId = 16820;  -- Strider Sword

-- -------------------------------------------------------------
-- --------------------ABYSSEA DROP FIXES-----------------------
-- ------------+------------------------------------------------
-- Abyssea Konschtat
INSERT INTO `mob_droplist` VALUES (4683,0,0,1000,11560,350); -- Pedant Cape
INSERT INTO `mob_droplist` VALUES (4684,0,0,1000,11639,350); -- Blason Ring
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11593; -- Goetia Chain
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11591; -- Ravagers Gorget
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 13001; -- Augurs Gaiters
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 14887; -- Ocelot Gloves
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 17808; -- Scathacha
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11598; -- Iga Erimaki
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 19247; -- Savants Treatise
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11603; -- Charis Necklace
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11555; -- Ferine Mantle
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11739; -- Callers Sash
UPDATE mob_droplist SET itemRate = 100 WHERE itemid = 14337; -- Lokis Kaftan
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 11417; -- Theurgia Clogs
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 15430; -- Augurs Brais
-- Abyssea La-Theine
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 15427; -- Teutates Subligar
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11599; -- Lancers Torque
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 11559; -- Ultion Mantle
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 14060; -- Timarli Dastanas
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11736; -- Raiders Belt
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11602; -- Cirque Necklace
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 11418; -- Poise Shoes
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11554; -- Orison Cape
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11738; -- Aoidos Belt
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 16381; -- Tumbler Trunks
UPDATE mob_droplist SET itemRate = 200 WHERE itemid = 11728; -- Bullwhip Belt
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11601; -- Navarchs Choker
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 14085; -- Serpentes Sabots
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 19282; -- Hochomasamune
UPDATE mob_droplist SET itemRate = 300 WHERE itemid = 16540; -- Tyrfing
UPDATE mob_droplist SET itemRate = 250 WHERE itemid = 11600; -- Mavi Scarf
-- Fix drop rates on boss Empyrean upgrade items
UPDATE mob_droplist SET itemRate = 1000 WHERE itemid = 2929 AND itemRate = 100; -- Helm of Briareus
UPDATE mob_droplist SET itemRate = 500 WHERE itemid = 2929 AND itemRate = 50; -- Helm of Briareus
UPDATE mob_droplist SET itemRate = 1000 WHERE itemid = 2930 AND itemRate = 1620; -- Carabosse Gem
UPDATE mob_droplist SET itemRate = 500 WHERE itemid = 2930 AND itemRate = 810; -- Carabosse Gem
UPDATE mob_droplist SET itemRate = 1000 WHERE itemid = 2931 AND itemRate = 100; -- Fistule Discharge
UPDATE mob_droplist SET itemRate = 500 WHERE itemid = 2931 AND itemRate = 50; -- Fistule Discharge
UPDATE mob_droplist SET itemRate = 1000 WHERE itemid = 2932 AND itemRate = 100; -- Kukulkans Fang
UPDATE mob_droplist SET itemRate = 500 WHERE itemid = 2932 AND itemRate = 50; -- Kukulkans Fang
INSERT INTO mob_droplist VALUES (396,0,0,1000,2929,250); -- Helm of Briareus
INSERT INTO mob_droplist VALUES (466,0,0,1000,2930,250); -- Carabosse Gem
INSERT INTO mob_droplist VALUES (962,0,0,1000,2931,250); -- Fistule Discharge
INSERT INTO mob_droplist VALUES (1966,0,0,1000,2932,250); -- Kukulkans Fang
-- Irrlicht
INSERT INTO `mob_droplist` VALUES (1809,0,0,1000,3228,1000); -- Jewel of Voyage
INSERT INTO `mob_droplist` VALUES (1809,0,0,1000,11736,200); -- Raider's Belt
INSERT INTO `mob_droplist` VALUES (1809,0,0,1000,15060,650); -- Symbios Gloves
-- Abyssea Tahrongi
-- Abas 12961
INSERT INTO mob_droplist VALUES (4685,0,0,1000,11525,480); -- Maestria Mask
INSERT INTO mob_droplist VALUES (4685,0,0,1000,2949,1000); -- Quivering Eft Egg
INSERT INTO mob_droplist VALUES (4685,0,0,1000,3224,1000); -- Balance Jewel
-- Adze 12973
INSERT INTO mob_droplist VALUES (4686,0,0,1000,11735,630); -- Impulse Belt
INSERT INTO mob_droplist VALUES (4686,0,0,1000,11594,250); -- Estoqueur's Collar
INSERT INTO mob_droplist VALUES (4686,0,0,1000,3224,1000); -- Balance Jewel
-- Alectryon 12962
INSERT INTO mob_droplist VALUES (4687,0,0,1000,11642,520); -- Hoard Ring
INSERT INTO mob_droplist VALUES (4687,0,0,1000,3224,1000); -- Balance Jewel
-- Bhumi
INSERT INTO mob_droplist VALUES (4734,0,0,1000,3224,1000); -- Balance Jewel
-- Cannered Noz 12957
INSERT INTO mob_droplist VALUES (4688,0,0,1000,11607,550); -- Artemis' Medal		
INSERT INTO mob_droplist VALUES (4688,0,0,1000,2947,1000); -- Exorcised Skull
INSERT INTO mob_droplist VALUES (4688,0,0,1000,3224,1000); -- Balance Jewel
-- Chloris 12966
INSERT INTO mob_droplist VALUES (4689,0,0,1000,2928,1000); -- Two Leaf Chloris Bud
INSERT INTO mob_droplist VALUES (4689,0,0,1000,2928,500); -- Two Leaf Chloris Bud
INSERT INTO mob_droplist VALUES (4689,0,0,1000,2928,250); -- Two Leaf Chloris Bud
INSERT INTO mob_droplist VALUES (4689,0,0,1000,11509,1000); -- Issen Hachimaki
INSERT INTO mob_droplist VALUES (4689,0,0,1000,14888,300); -- Augur's Gloves
INSERT INTO mob_droplist VALUES (4689,0,0,1000,12741,800); -- Ludic Mitts
-- Chukwa 12971
INSERT INTO mob_droplist VALUES (4690,0,0,1000,11595,250); -- Creed Collar
INSERT INTO mob_droplist VALUES (4690,0,0,1000,17185,600); -- Siege Bow
INSERT INTO mob_droplist VALUES (4690,0,0,1000,3224,1000); -- Balance Jewel
-- Cuelebre 12969
INSERT INTO mob_droplist VALUES (4691,0,0,1000,17626,380); -- Auric Dagger
INSERT INTO mob_droplist VALUES (4691,0,0,1000,11592,250); -- Tantra Necklace
INSERT INTO mob_droplist VALUES (4691,0,0,1000,3224,1000); -- Balance Jewel
-- Gancanagh 12959
INSERT INTO mob_droplist VALUES (4692,0,0,1000,19249,300); -- Thew Bomblet		
INSERT INTO mob_droplist VALUES (4692,0,0,1000,2948,1000); -- Acidic Humus
INSERT INTO mob_droplist VALUES (4692,0,0,1000,3224,1000); -- Balance Jewel
-- Glavoid 12967
INSERT INTO mob_droplist VALUES (4693,0,0,1000,2927,1000); -- Glavoid Shell
INSERT INTO mob_droplist VALUES (4693,0,0,1000,2927,500); -- Glavoid Shell
INSERT INTO mob_droplist VALUES (4693,0,0,1000,2927,250); -- Glavoid Shell
INSERT INTO mob_droplist VALUES (4693,0,0,1000,11508,1000); -- Tokon Hachimaki
INSERT INTO mob_droplist VALUES (4693,0,0,1000,11523,770); -- Brisk Mask
-- Hedetet 12960
INSERT INTO mob_droplist VALUES (4694,0,0,1000,12488,360); -- Ost Cerveliere
INSERT INTO mob_droplist VALUES (4694,0,0,1000,3224,1000); -- Balance Jewel
-- Halimede 12979
INSERT INTO mob_droplist VALUES (4695,0,0,1000,11564,140); -- Tiresias' Cape	
INSERT INTO mob_droplist VALUES (4695,0,0,1000,2945,1000); -- Shriveled Wing
INSERT INTO mob_droplist VALUES (4695,0,0,1000,3224,1000); -- Balance Jewel
-- Iratham 12978
INSERT INTO mob_droplist VALUES (4696,0,0,1000,13791,300); -- Timarli Jawshan
INSERT INTO mob_droplist VALUES (4696,0,0,1000,11637,710); -- Meridian Ring
INSERT INTO mob_droplist VALUES (4696,0,0,1000,11733,1000); -- Aquiline Belt
INSERT INTO mob_droplist VALUES (4696,0,0,1000,3224,1000); -- Balance Jewel
-- Lachrymater 12965
INSERT INTO mob_droplist VALUES (4697,0,0,1000,19250,390); -- Witchstone
INSERT INTO mob_droplist VALUES (4697,0,0,1000,3224,1000); -- Balance Jewel
-- Lacovie 12968
INSERT INTO mob_droplist VALUES (4698,0,0,1000,11729,250); -- Goading Belt
INSERT INTO mob_droplist VALUES (4698,0,0,1000,11507,220); -- Hero's Galea
INSERT INTO mob_droplist VALUES (4698,0,0,1000,11521,1000); -- Saika Hachimaki
INSERT INTO mob_droplist VALUES (4698,0,0,1000,3224,1000); -- Jewel of Balance
INSERT INTO mob_droplist VALUES (4698,0,0,1000,3224,500); -- Jewel of Balance
-- Manananggal 12975
INSERT INTO mob_droplist VALUES (4699,0,0,1000,11604,640); -- Corvus Torque
INSERT INTO mob_droplist VALUES (4699,0,0,1000,11737,250); -- Bale Belt
INSERT INTO mob_droplist VALUES (4699,0,0,1000,3224,1000); -- Balance Jewel
-- Mictlantecuhtli 12970
INSERT INTO mob_droplist VALUES (4700,0,0,1000,15019,390); -- Serpentes Cuffs
INSERT INTO mob_droplist VALUES (4700,0,0,1000,11597,250); -- Unkai Nodowa
INSERT INTO mob_droplist VALUES (4700,0,0,1000,3224,1000); -- Balance Jewel
-- Minhocao 12972
INSERT INTO mob_droplist VALUES (4701,0,0,1000,18510,660); -- Vermeil Bhuj
INSERT INTO mob_droplist VALUES (4701,0,0,1000,11596,250); -- Sylvan Scarf
INSERT INTO mob_droplist VALUES (4701,0,0,1000,3224,1000); -- Balance Jewel
-- Muscaliet 12964
INSERT INTO mob_droplist VALUES (4702,0,0,1000,11419,290); -- Lithe Boots
INSERT INTO mob_droplist VALUES (4702,0,0,1000,3224,1000); -- Balance Jewel
-- Myrmecoleon 12976
INSERT INTO mob_droplist VALUES (4703,0,0,1000,17113,250); -- Owleyes
INSERT INTO mob_droplist VALUES (4703,0,0,1000,11548,650); -- Tactical Mantle
INSERT INTO mob_droplist VALUES (4703,0,0,1000,11517,1000); -- Kengo Hachimaki
INSERT INTO mob_droplist VALUES (4703,0,0,1000,3224,1000); -- Balance Jewel
INSERT INTO mob_droplist VALUES (4703,0,0,1000,3224,500); -- Balance Jewel
-- Ophanim 12956
INSERT INTO mob_droplist VALUES (4704,0,0,1000,15429,440); -- Wicca Subligar
INSERT INTO mob_droplist VALUES (4704,0,0,1000,3224,1000); -- Balance Jewel
-- Quetzalli 12974
INSERT INTO mob_droplist VALUES (4705,0,0,1000,11551,660); -- Metallon Mantle
INSERT INTO mob_droplist VALUES (4705,0,0,1000,11605,300); -- Ziel Charm
INSERT INTO mob_droplist VALUES (4705,0,0,1000,3224,1000); -- Balance Jewel
-- Tefenet 12963
INSERT INTO mob_droplist VALUES (4706,0,0,1000,11741,480); -- Sentry Belt		
INSERT INTO mob_droplist VALUES (4706,0,0,1000,2950,1000); -- Smooth Whisker
INSERT INTO mob_droplist VALUES (4706,0,0,1000,3224,1000); -- Balance Jewel
-- Treble Noctules 12958
INSERT INTO mob_droplist VALUES (4707,0,0,1000,11641,550); -- Metanoia Ring
INSERT INTO mob_droplist VALUES (4707,0,0,1000,3224,1000); -- Balance Jewel
-- Vetehinen 12955
INSERT INTO mob_droplist VALUES (4708,0,0,1000,11640,370); -- Bifrost Ring
INSERT INTO mob_droplist VALUES (4708,0,0,1000,2946,1000); -- Tarnished Pincer
INSERT INTO mob_droplist VALUES (4708,0,0,1000,3224,1000); -- Balance Jewel
-- Yearner 12982
INSERT INTO mob_droplist VALUES (4709,0,0,1000,19050,350); -- Eisen Grip
INSERT INTO mob_droplist VALUES (4709,0,0,1000,14042,100); -- Praeda Gauntlets
INSERT INTO mob_droplist VALUES (4709,0,0,1000,3224,1000); -- Balance Jewel
-- Usurper 12981
INSERT INTO mob_droplist VALUES (4710,0,0,1000,11511,1000); -- Hako Hachimaki
INSERT INTO mob_droplist VALUES (4710,0,0,1000,16380,660); -- Entois Trousers
INSERT INTO mob_droplist VALUES (4710,0,0,1000,15428,300); -- Ocelot Trousers
INSERT INTO mob_droplist VALUES (4710,0,0,1000,3224,1000); -- Balance Jewel
INSERT INTO mob_droplist VALUES (4710,0,0,1000,3224,500); -- Balance Jewel
-- Remove Coins/Cards/Stones/Jewels FROM droplist
DELETE FROM mob_droplist WHERE itemid = 3210; -- Vision Stone
DELETE FROM mob_droplist WHERE itemid = 3211; -- Vision Coin
DELETE FROM mob_droplist WHERE itemid = 3212; -- Vision Jewel
DELETE FROM mob_droplist WHERE itemid = 3213; -- Vision Card
DELETE FROM mob_droplist WHERE itemid = 3222; -- Balance Stone
DELETE FROM mob_droplist WHERE itemid = 3223; -- Balance Coin
DELETE FROM mob_droplist WHERE itemid = 3224; -- Balance Jewel
DELETE FROM mob_droplist WHERE itemid = 3225; -- Balance Card
DELETE FROM mob_droplist WHERE itemid = 3226; -- Voyage Stone
DELETE FROM mob_droplist WHERE itemid = 3227; -- Voyage Coin
DELETE FROM mob_droplist WHERE itemid = 3228; -- Voyage Jewel
DELETE FROM mob_droplist WHERE itemid = 3229; -- Voyage Card
-- Vision Jewel drops
INSERT INTO mob_droplist VALUES (54,0,0,1000,3212,1000); -- Alkonost
INSERT INTO mob_droplist VALUES (175,0,0,1000,3212,1000); -- Arimaspi
INSERT INTO mob_droplist VALUES (4683,0,0,1000,3212,1000); -- Ashtaerth the Gallvexed
INSERT INTO mob_droplist VALUES (229,0,0,1000,3212,1000); -- Bakka
INSERT INTO mob_droplist VALUES (231,0,0,1000,3212,1000); -- Balaur
INSERT INTO mob_droplist VALUES (328,0,0,1000,3212,1000); -- Bloodeye Vileberry
INSERT INTO mob_droplist VALUES (328,0,0,1000,3212,500); -- Bloodeye Vileberry
INSERT INTO mob_droplist VALUES (329,0,0,1000,3212,1000); -- Bloodguzzler
INSERT INTO mob_droplist VALUES (364,0,0,1000,3212,1000); -- Bombadeel
INSERT INTO mob_droplist VALUES (537,0,0,1000,3212,1000); -- Clingy Clare
INSERT INTO mob_droplist VALUES (838,0,0,1000,3212,1000); -- Eccentric Eve
INSERT INTO mob_droplist VALUES (838,0,0,1000,3212,500); -- Eccentric Eve
INSERT INTO mob_droplist VALUES (938,0,0,1000,3212,1000); -- Fear Gorta
INSERT INTO mob_droplist VALUES (1075,0,0,1000,3212,1000); -- Gangly Gean
INSERT INTO mob_droplist VALUES (1600,0,0,1000,3212,1000); -- Guimauve
INSERT INTO mob_droplist VALUES (1673,0,0,1000,3212,1000); -- Hexenpilz
INSERT INTO mob_droplist VALUES (1886,0,0,1000,3212,1000); -- Keratyrannos
INSERT INTO mob_droplist VALUES (1889,0,0,1000,3212,1000); -- Khalamari
INSERT INTO mob_droplist VALUES (2041,0,0,1000,3212,1000); -- Lentor
INSERT INTO mob_droplist VALUES (2752,0,0,1000,3212,1000); -- Pavan
INSERT INTO mob_droplist VALUES (2927,0,0,1000,3212,1000); -- Raskovnik
INSERT INTO mob_droplist VALUES (3060,0,0,1000,3212,1000); -- Sarcophilus
INSERT INTO mob_droplist VALUES (4684,0,0,1000,3212,1000); -- Siranpa-Kamuy
INSERT INTO mob_droplist VALUES (3553,0,0,1000,3212,1000); -- Tonberry Lieje
INSERT INTO mob_droplist VALUES (3632,0,0,1000,3212,1000); -- Turul
INSERT INTO mob_droplist VALUES (3632,0,0,1000,3212,500); -- Turul
INSERT INTO mob_droplist VALUES (708,0,0,1000,3212,1000); -- Depths Digester
INSERT INTO mob_droplist VALUES (1620,0,0,1000,3212,1000); -- Hadal Satiator
INSERT INTO mob_droplist VALUES (1620,0,0,1000,3212,500); -- Hadal Satiator
-- Voyage Jewel drops
INSERT INTO mob_droplist VALUES (27,0,0,1000,3228,1000); -- Adamastor
INSERT INTO mob_droplist VALUES (46,0,0,1000,3228,1000); -- Akash
INSERT INTO mob_droplist VALUES (226,0,0,1000,3228,1000); -- Baba Yaga
INSERT INTO mob_droplist VALUES (513,0,0,1000,3228,1000); -- Chasmic Hornet
INSERT INTO mob_droplist VALUES (783,0,0,1000,3228,1000); -- Dozing Dorian
INSERT INTO mob_droplist VALUES (1539,0,0,1000,3228,1000); -- GrANDgousier
INSERT INTO mob_droplist VALUES (1621,0,0,1000,3228,1000); -- Hadhayosh
INSERT INTO mob_droplist VALUES (1621,0,0,1000,3228,500); -- Hadhayosh
INSERT INTO mob_droplist VALUES (1809,0,0,1000,3228,1000); -- Irrlicht
INSERT INTO mob_droplist VALUES (1873,0,0,1000,3228,1000); -- Karkinos
INSERT INTO mob_droplist VALUES (1885,0,0,1000,3228,1000); -- Kessha Poppo
INSERT INTO mob_droplist VALUES (2032,0,0,1000,3228,1000); -- La Theine Liege
INSERT INTO mob_droplist VALUES (2090,0,0,1000,3228,1000); -- Lugarhoo
INSERT INTO mob_droplist VALUES (2189,0,0,1000,3228,1000); -- Mangy-tailed Marvin
INSERT INTO mob_droplist VALUES (2240,0,0,1000,3228,1000); -- Megamaw Mikey
INSERT INTO mob_droplist VALUES (2241,0,0,1000,3228,1000); -- Megantereon
INSERT INTO mob_droplist VALUES (2413,0,0,1000,3228,1000); -- Nahn
INSERT INTO mob_droplist VALUES (2423,0,0,1000,3228,1000); -- Nguruvilu
INSERT INTO mob_droplist VALUES (2732,0,0,1000,3228,1000); -- Ovni
INSERT INTO mob_droplist VALUES (2732,0,0,1000,3228,500); -- Ovni
INSERT INTO mob_droplist VALUES (2742,0,0,1000,3228,1000); -- Pantagruel
INSERT INTO mob_droplist VALUES (2775,0,0,1000,3228,1000); -- Piasa
INSERT INTO mob_droplist VALUES (2819,0,0,1000,3228,1000); -- Porrogo Dom Juan
INSERT INTO mob_droplist VALUES (3565,0,0,1000,3228,1000); -- Toppling Tuber
INSERT INTO mob_droplist VALUES (3618,0,0,1000,3228,1000); -- Trudging Thomas
INSERT INTO mob_droplist VALUES (404,0,0,1000,3228,1000); -- Brooder
INSERT INTO mob_droplist VALUES (3017,0,0,1000,3228,1000); -- Ruminator
INSERT INTO mob_droplist VALUES (3017,0,0,1000,3228,500); -- Ruminator

-- -------------------------------------------------------------
-- -----------CUSTOM DYNAMIS DROP ADJUSTMENTS-------------------
-- ------------+------------------------------------------------
-- Windurst
DELETE FROM mob_droplist WHERE itemid = 1470; -- Sparkling Stone
DELETE FROM mob_droplist WHERE itemid = 748; -- Gold Beastcoin
DELETE FROM mob_droplist WHERE itemid = 1474; -- Infinity Core
DELETE FROM mob_droplist WHERE itemid = 749; -- Mythril Beastcoin
DELETE FROM mob_droplist WHERE itemid = 3355; -- Divine Bijou
DELETE FROM mob_droplist WHERE itemid = 3388; -- Odious Necklace
DELETE FROM mob_droplist WHERE itemid = 3389; -- Odious Feather
DELETE FROM mob_droplist WHERE itemid = 3390; -- Canteen of Odious Holy Water
DELETE FROM mob_droplist WHERE itemid = 3391; -- Odious Quipu
DELETE FROM mob_droplist WHERE itemid = 3495; -- Forgotten Touch
DELETE FROM mob_droplist WHERE itemid = 3414; -- Fiendish Tome: 11
DELETE FROM mob_droplist WHERE itemid = 3415; -- Fiendish Tome: 12
DELETE FROM mob_droplist WHERE itemid = 3416; -- Fiendish Tome: 13
DELETE FROM mob_droplist WHERE itemid = 3417; -- Fiendish Tome: 14
DELETE FROM mob_droplist WHERE itemid = 3418; -- Fiendish Tome: 15
-- San d'Oria
DELETE FROM mob_droplist WHERE itemid = 3353; -- Barbaric Bijou
DELETE FROM mob_droplist WHERE itemid = 3382; -- Odious Cryptex
DELETE FROM mob_droplist WHERE itemid = 3380; -- Odious Scale
DELETE FROM mob_droplist WHERE itemid = 3381; -- Odious Leather
DELETE FROM mob_droplist WHERE itemid = 3383; -- Odious Strongbox
DELETE FROM mob_droplist WHERE itemid = 3497; -- Forgotten Step
DELETE FROM mob_droplist WHERE itemid = 3404; -- Fiendish Tome: 1
DELETE FROM mob_droplist WHERE itemid = 3405; -- Fiendish Tome: 2
DELETE FROM mob_droplist WHERE itemid = 3406; -- Fiendish Tome: 3
DELETE FROM mob_droplist WHERE itemid = 3407; -- Fiendish Tome: 4
DELETE FROM mob_droplist WHERE itemid = 3408; -- Fiendish Tome: 5
-- Bastok
DELETE FROM mob_droplist WHERE itemid = 3496; -- Forgotten Journey
DELETE FROM mob_droplist WHERE itemid = 3387; -- Odious Letterbox
DELETE FROM mob_droplist WHERE itemid = 3385; -- Odious Backscale
DELETE FROM mob_droplist WHERE itemid = 3386; -- Odious Engraving
DELETE FROM mob_droplist WHERE itemid = 3384; -- Odious Charm
DELETE FROM mob_droplist WHERE itemid = 3354; -- Steelwall Bijou
DELETE FROM mob_droplist WHERE itemid = 3409; -- Fiendish Tome: 6
DELETE FROM mob_droplist WHERE itemid = 3410; -- Fiendish Tome: 7
DELETE FROM mob_droplist WHERE itemid = 3411; -- Fiendish Tome: 8
DELETE FROM mob_droplist WHERE itemid = 3412; -- Fiendish Tome: 9
DELETE FROM mob_droplist WHERE itemid = 3413; -- Fiendish Tome: 10
-- Jeuno
DELETE FROM mob_droplist WHERE itemid = 3392; -- Odious Cup
DELETE FROM mob_droplist WHERE itemid = 3393; -- Odious Die
DELETE FROM mob_droplist WHERE itemid = 3394; -- Odious Mask
DELETE FROM mob_droplist WHERE itemid = 3395; -- Odious Grenade
DELETE FROM mob_droplist WHERE itemid = 3356; -- Roving Bijou
DELETE FROM mob_droplist WHERE itemid = 3419; -- Fiendish Tome: 16
DELETE FROM mob_droplist WHERE itemid = 3420; -- Fiendish Tome: 17
DELETE FROM mob_droplist WHERE itemid = 3421; -- Fiendish Tome: 18
DELETE FROM mob_droplist WHERE itemid = 3422; -- Fiendish Tome: 19
DELETE FROM mob_droplist WHERE itemid = 3423; -- Fiendish Tome: 20
-- Beaucedine
DELETE FROM mob_droplist WHERE itemid = 4248; -- Copy of "Ginuva's Battle Theory"
DELETE FROM mob_droplist WHERE itemid = 4249; -- Copy of "Schultz Stratagems"
DELETE FROM mob_droplist WHERE itemid = 3493; -- Forgotten Thought
DELETE FROM mob_droplist WHERE itemid = 3494; -- Forgotten Hope
DELETE FROM mob_droplist WHERE itemid = 3357; -- Leering Bijou
DELETE FROM mob_droplist WHERE itemid = 3424; -- Fiendish Tome: 21
DELETE FROM mob_droplist WHERE itemid = 3425; -- Fiendish Tome: 22
DELETE FROM mob_droplist WHERE itemid = 3426; -- Fiendish Tome: 23
DELETE FROM mob_droplist WHERE itemid = 3427; -- Fiendish Tome: 24
DELETE FROM mob_droplist WHERE itemid = 3428; -- Fiendish Tome: 25
DELETE FROM mob_droplist WHERE itemid = 3363; -- Traitors Fortune Parchment
DELETE FROM mob_droplist WHERE itemid = 3359; -- Despots Fortune Parchment
DELETE FROM mob_droplist WHERE itemid = 3361; -- Villains Fortune Parchment
DELETE FROM mob_droplist WHERE itemid = 3360; -- Sadists Fortune Parchment
DELETE FROM mob_droplist WHERE itemid = 3362; -- Deluders Fortune Parchment
-- Xarcabard
DELETE FROM mob_droplist WHERE itemid = 3358; -- Shroudid Bijou
DELETE FROM mob_droplist WHERE itemid = 3400; -- Odious Skull
DELETE FROM mob_droplist WHERE itemid = 3401; -- Odious Horn
DELETE FROM mob_droplist WHERE itemid = 3402; -- Odious Blood
DELETE FROM mob_droplist WHERE itemid = 3403; -- Odious Pen
DELETE FROM mob_droplist WHERE itemid = 3429; -- Fiendish Tome: 26
DELETE FROM mob_droplist WHERE itemid = 3430; -- Fiendish Tome: 27
DELETE FROM mob_droplist WHERE itemid = 3431; -- Fiendish Tome: 28
DELETE FROM mob_droplist WHERE itemid = 3432; -- Fiendish Tome: 29
DELETE FROM mob_droplist WHERE itemid = 3433; -- Fiendish Tome: 30
-- Valkurm
DELETE FROM mob_droplist WHERE itemid = 3456; -- Creeper's Juju
DELETE FROM mob_droplist WHERE itemid = 3460; -- Nightmare Log
DELETE FROM mob_droplist WHERE itemid = 3461; -- Nightmare Bud
DELETE FROM mob_droplist WHERE itemid = 3462; -- Nightmare Water
DELETE FROM mob_droplist WHERE itemid = 3470; -- Fiendish Tome II: 1
DELETE FROM mob_droplist WHERE itemid = 5895; -- Odorless Fungus
DELETE FROM mob_droplist WHERE itemid = 5896; -- Absorbent Moss
DELETE FROM mob_droplist WHERE itemid = 5897; -- Redolent Root
-- Buburimu
DELETE FROM mob_droplist WHERE itemid = 3457; -- Relevatory Juju
DELETE FROM mob_droplist WHERE itemid = 3463; -- Nightmare Shank
DELETE FROM mob_droplist WHERE itemid = 3464; -- Nightmare Roast
DELETE FROM mob_droplist WHERE itemid = 3465; -- Nightmare Loin
DELETE FROM mob_droplist WHERE itemid = 3466; -- Nightmare Chop
DELETE FROM mob_droplist WHERE itemid = 3474; -- Fiendish Tome II: 5
DELETE FROM mob_droplist WHERE itemid = 5902; -- Cagebeast Blood
DELETE FROM mob_droplist WHERE itemid = 5899; -- Shadescale Femur
DELETE FROM mob_droplist WHERE itemid = 5900; -- Shadescale Talon
DELETE FROM mob_droplist WHERE itemid = 5901; -- Shadescale Heart
DELETE FROM mob_droplist WHERE itemid = 5898; -- Shadescale Skull
-- Qufim
DELETE FROM mob_droplist WHERE itemid = 3458; -- Undying Juju
DELETE FROM mob_droplist WHERE itemid = 3467; -- Nightmare Shell
DELETE FROM mob_droplist WHERE itemid = 3468; -- Nightmare Blood
DELETE FROM mob_droplist WHERE itemid = 3469; -- Nightmare Shard
DELETE FROM mob_droplist WHERE itemid = 3479; -- Fiendish Tome II: 10
DELETE FROM mob_droplist WHERE itemid = 5903; -- Sea Monk Venom
DELETE FROM mob_droplist WHERE itemid = 5904; -- Perforated Wing
DELETE FROM mob_droplist WHERE itemid = 5905; -- Undying Moiety
-- Tavnazia
DELETE FROM mob_droplist WHERE itemid = 3483; -- Fiendish Tome II: 14
DELETE FROM mob_droplist WHERE itemid = 3484; -- Fiendish Tome II: 15
-- Weapons
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18266; -- Relic Dagger
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18260; -- Relic Knuckles
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18320; -- Relic Maul
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18272; -- Relic Sword
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18308; -- Ihintanto
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18290; -- Relic Bhuj
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18332; -- Relic Gun
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18296; -- Relic Lance
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18314; -- Ito
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18284; -- Relic Axe
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18278; -- Relic Blade
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18302; -- Relic Scythe
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18344; -- Relice Bow
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18338; -- Relic Horn
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 15066; -- Relic Shield
UPDATE mob_droplist SET itemRate = 10 WHERE itemid = 18326; -- Relic Staff
-- San d'Oria
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15132; -- Warrior's Calligae
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15118; -- Melee Hose
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15074; -- Cleric's Cap
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15136; -- Duelist's Boots
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15108; -- Valor Gauntlets
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15125; -- Monster Trousers
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15081; -- Bard's Roundlet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15127; -- Scout's Braccae
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15129; -- Koga Hakama
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15145; -- Wyrm Greaves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15146; -- Summoner's Pigaches
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15025; -- Mirage BazubANDs
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16349; -- Commondore Culotte
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11388; -- Pantin Babouches
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15040; -- Argute Bracers
-- Bastok
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15133; -- Melee Gaitors
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15120; -- Sorcerer's Tonbans
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15106; -- Duelist's Gloves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15092; -- Assassin's Vest
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15078; -- Valor Coronet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15139; -- Abyss Sollerets
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15095; -- Monster Jackcoat
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15111; -- Bard's Cuff
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15113; -- Saotome Kote
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15130; -- Wyrm Brais
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15116; -- Summoner Bracers
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16346; -- Mirage Shalwar
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11385; -- Commondore Bottes
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11478; -- Etoile Tiara
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16362; -- Argute Pants
-- Windurst
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15072; -- Warrior's Mask
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15134; -- Cleric's Duckbill
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15105; -- Sorcerer's Gloves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15077; -- Assassin's Bonnet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15138; -- Valor Leggings
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15109; -- Abyss Gauntlets
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15080; -- Monster Helm
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15112; -- Scout's Bracers
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15128; -- Saotome Haidate
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15084; -- Koga Hatsuburi
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15131; -- Summoner's Spats
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11382; -- Mirage Charuqs
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15031; -- Pantin Dastanas
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15038; -- Etoile Bangles
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11398; -- Argute Loafers
-- Jeuno
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15102; -- Warrior's Mufflers
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15103; -- Melee Gloves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15119; -- Cleric's Pantaloons
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15135; -- Sorcerer's Sabots
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15121; -- Duelist Tights
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15137; -- Assassin's Poulains
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15124; -- Abyss Flanchard
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15141; -- Bard's Slippers
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15082; -- Scout's Beret
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15143; -- Saotome Sune-Ate
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15144; -- Koga Kyahan
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15115; -- Wyrm Finger Gauntlets
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15028; -- Commondore Gants
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16352; -- Pantin Churidars
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11396; -- Etoile Shoes
-- Beaucedine
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15117; -- Warrior's Cuisses
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15088; -- Melee Cyclas
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15089; -- Cleric's Briault
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15090; -- Sorcerer's Coat
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15091; -- Duelist's Tabard
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15122; -- Assassin's Culotte
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15123; -- Valor Breeches
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15094; -- Abyss Cuirass
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15140; -- Monster Gaiters
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15096; -- Bard's Justaucorps
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15142; -- Scout's Socks
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15098; -- Saotome Domaru
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15099; -- Koga Chainmail
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15100; -- Wrym Mail
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15101; -- Summoner's Doublet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11292; -- Mirage Jubbah
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11295; -- Commondore Frac
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11298; -- Pantin Tobe
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16360; -- Etoile Tights
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11307; -- Argute Gown
-- Xarcabard
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15087; -- Warrior's Lorica
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15073; -- Melee Crown
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15104; -- Cleric's Mitts
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15075; -- Sorcerer's Petasos
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15076; -- Duelist's Chapeau
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15107; -- Assassin's Armlets
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15093; -- Valor Surcoat
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15079; -- Abyss Burgeonet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15110; -- Monster Gloves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15126; -- Bard's Cannions
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15097; -- Scout's Jerkin
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15083; -- Saotome Kabuto
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15114; -- Koga Tekko
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15085; -- Wrym Armet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15086; -- Summoner's Horn
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11465; -- Mirage Keffiyeh
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11468; -- Commondore Tricorne
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11471; -- Pantin Taj
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11305; -- Etoile Casaque
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 11480; -- Argute Mortarboard
-- Accessories
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15479; -- Abyss Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15925; -- Argute Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15480; -- Assassin's Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15482; -- Bard's Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15872; -- Cleric's Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15920; -- Commondore Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15873; -- Duelist's Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16248; -- Etoile Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15877; -- Koga Sarashi
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15478; -- Melee Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16244; -- Mirage Mantle
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15875; -- Monster Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16245; -- Pantin Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15879; -- Saotome Koshi-Ate
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15876; -- Scout's Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15874; -- Sorcerer's Belt
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15484; -- Summoner's Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15481; -- Valor Cape
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15871; -- Warrior's Stone
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15878; -- Wyrm Belt
-- Valkurm
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2033; -- Warrior's Mask -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2038; -- Melee Crown -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2043; -- Cleric's Cap -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2048; -- Sorcerer's Petasos -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2053; -- Duelist's Chapeau -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2058; -- Assassin's Bonnet -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2063; -- Valor Coronet -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2068; -- Abyss Burgeonet -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2073; -- Monster Helm -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2078; -- Bard's Roundlet -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2083; -- Scout's Beret -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2088; -- Saotome Kabuto -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2093; -- Koga Hatsuburi -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2098; -- Wyrm Armlet -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2103; -- Summoner's Horn -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2662; -- Mirage Keffiyeh -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2667; -- Commondore Tricorne -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2672; -- Pantin Taj -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2718; -- Etoile Tiara -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2723; -- Argute Mortarboard -1
-- Buburimu
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2035; -- Warrior's Mufflers -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2040; -- Melee Gloves -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2045; -- Cleric's Mitts -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2050; -- Sorcerer Gloves -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2055; -- Duelist's Gloves -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2060; -- Assassin's Armlets -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2065; -- Valor Gauntlets -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2070; -- Abyss Gauntlets -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2075; -- Monster Gloves -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2080; -- Bard's Cuffs -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2085; -- Scout's Bracers -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2090; -- Saotome Kote -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2095; -- Koga Tekko -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2100; -- Wyrm Finger Gauntlets -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2105; -- Summoner's Bracers -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2664; -- Mirage BazubANDs -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2669; -- Commondore Gants -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2674; -- Pantin Dastanas -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2720; -- Etoile Bangles -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2725; -- Argute Bracers -1
-- Qufim
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2037; -- Warrior Calligae -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2042; -- Melee Gaiters -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2047; -- Cleric's Duckbills -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2052; -- Sorcerer Sabots -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2057; -- Duelist Boots -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2062; -- Assassin's Poulains -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2067; -- Valor Leggings -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2072; -- Abyss Sollerets -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2077; -- Monster Gaiters -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2082; -- Bard's Slippers -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2087; -- Scout's Socks -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2092; -- Saotome Sune-Ate -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2097; -- Koga Kyahan -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2102; -- Wyrm Greaves -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2107; -- Summoner's Pigaches -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2666; -- Mirage Charuqs -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2671; -- Commondore Bottes -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2676; -- Pantin Babouches -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2722; -- Etoile Toe Shoes
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2727; -- Argute Loafers -1
-- Tavnazia
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15260; -- Hydra Beret
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14515; -- Hydra Doublet
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14924; -- Hydra Gloves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15595; -- Hydra Brais
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15680; -- Hydra Gaiters
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15261; -- Hydra Tiara
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14516; -- Hydra Harness
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14925; -- Hydra Mittens
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15596; -- Hydra Tights
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15681; -- Hydra Spats
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15262; -- Hydra Salade
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14514; -- Hydra Haunert
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14926; -- Hydra Moufles
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15597; -- Hydra Brayettes
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15682; -- Hydra Sollerets
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15263; -- Hydra Cap
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14518; -- Hydra Jupon
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14927; -- Hydra Bracers
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15598; -- Hydra Hose
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15683; -- Hydra Boots
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2036; -- Warrior's Cuisses -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2034; -- Warrior's Lorica -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2039; -- Melee Cyclas -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2041; -- Melee Hose -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2044; -- Cleric's Briault -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2046; -- Cleric's Pantaloons -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2049; -- Sorcerer Coat -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2051; -- Sorcerer's Tonbans -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2054; -- Duelist's Tabard -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2056; -- Duelist's Tights -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2061; -- Assassin's Culotte -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2059; -- Assassin's Vest -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2066; -- Valor Breeches -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2064; -- Valor Surcoat -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2069; -- Abyss Cuirass -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2071; -- Abyss Flanchard -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2074; -- Monster Jackcoat -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2076; -- Monster Trousers -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2079; -- Bard's Justaucorps -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2081; -- Bard's Cannions -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2086; -- Scout's Braccae -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2084; -- Scout's Jerkin -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2089; -- Saotome Domaru -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2091; -- Saotome Haidate -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2094; -- Koga Chainmail -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2096; -- Koga Hakama -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2101; -- Wyrm Brais -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2099; -- Wyrm Mail -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2104; -- Summoner's Doublet -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2106; -- Summoner's Spats -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2663; -- Mirage Jubbah -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2665; -- Mirage Shalwar -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2670; -- Commondore Trews -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2668; -- Commondore Frac -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2675; -- Pantin Churidars -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2673; -- Pantin Tobe -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2719; -- Etoile Casaque -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2721; -- Etoile Tights -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2724; -- Argute Gown -1
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 2726; -- Argute Pants -1
-- Xarcabard NM UPDATEs
UPDATE mob_droplist SET itemRate = 70 WHERE dropid = 585 AND itemid = 15087; -- Warrior's Lorica
UPDATE mob_droplist SET itemRate = 110 WHERE dropid = 807 AND itemid = 15073; -- Melee Crown
UPDATE mob_droplist SET itemRate = 70 WHERE dropid = 2827 AND itemid = 15104; -- Cleric's Mitts
UPDATE mob_droplist SET itemRate = 60 WHERE dropid = 2213 AND itemid = 15075; -- Sorcerer's Petasos
UPDATE mob_droplist SET itemRate = 160 WHERE dropid = 806 AND itemid = 15076; -- Duelist's Chapeau
UPDATE mob_droplist SET itemRate = 90 WHERE dropid = 583 AND itemid = 15107; -- Assassin's Armlets
UPDATE mob_droplist SET itemRate = 50 WHERE dropid = 2214 AND itemid = 15093; -- Valor Surcoat
UPDATE mob_droplist SET itemRate = 90 WHERE dropid = 809 AND itemid = 15079; -- Abyss Burgeonet
UPDATE mob_droplist SET itemRate = 130 WHERE dropid = 2207 AND itemid = 15110; -- Monster Gloves
UPDATE mob_droplist SET itemRate = 120 WHERE dropid = 2209 AND itemid = 15126; -- Bard's Cannions
UPDATE mob_droplist SET itemRate = 80 WHERE dropid = 2208 AND itemid = 15097; -- Scout's Jerkin
UPDATE mob_droplist SET itemRate = 180 WHERE dropid = 584 AND itemid = 15083; -- Saotome Kabuto
UPDATE mob_droplist SET itemRate = 100 WHERE dropid = 2211 AND itemid = 15114; -- Koga Tekko
UPDATE mob_droplist SET itemRate = 110 WHERE dropid = 1938 AND itemid = 15085; -- Wrym Armet
UPDATE mob_droplist SET itemRate = 130 WHERE dropid = 2212 AND itemid = 15086; -- Summoner's Horn

-- ---------------------------------------------------------------
-- ----------------------PROMATHIA BCNM---------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,1450,1000);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,1453,1000);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,1456,1000);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,1450,250);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,1453,250);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,1456,250);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,16058,200);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,11547,150);
INSERT INTO `mob_droplist` VALUES (4682,0,0,1000,11590,250);

-- ---------------------------------------------------------------
-- ----------------------SHINRYU BCNM---------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_droplist WHERE dropid = 3185;
INSERT INTO `mob_droplist` VALUES (3185,2,0,1000,6024,50); -- a ygg shard 4 (salvage item)

-- ---------------------------------------------------------------
-- ---------------------BEADEAUX [S} SCNM-------------------------
-- ---------------------------------------------------------------
-- Blifnix Oilycheeks
UPDATE mob_droplist SET itemRate = 150 WHERE itemid = 19220; -- Goblin Cracker
UPDATE mob_droplist SET itemRate = 200 WHERE itemid = 19215; -- Amanokakoyumi
-- Ga'Lhu Nevermolt
INSERT INTO mob_droplist VALUES (4711,0,0,1000,2686,1000); -- Bronze Letterbox
INSERT INTO mob_droplist VALUES (4711,0,0,1000,16181,120); -- Terror Shield
INSERT INTO mob_droplist VALUES (4711,0,0,1000,17756,80); -- Sinfender
-- Di'Zho Sponeshell
INSERT INTO mob_droplist VALUES (4712,0,0,1000,2688,1000); -- Shakudo Letterbox
INSERT INTO mob_droplist VALUES (4712,0,0,1000,19156,260); -- Balisarde
INSERT INTO mob_droplist VALUES (4712,0,0,1000,15830,160); -- Patriot's Ring
-- Mu'Nhi Thimbletail
INSERT INTO mob_droplist VALUES (4713,0,0,1000,2690,1000); -- Pig Iron Letterbox
INSERT INTO mob_droplist VALUES (4713,0,0,1000,15924,170); -- Demagogue's Sash
INSERT INTO mob_droplist VALUES (4713,0,0,1000,19112,260); -- Farseer
-- Va'Gho Bloodbasked
INSERT INTO mob_droplist VALUES (4714,0,0,1000,2692,1000); -- Cast Iron Letterbox
INSERT INTO mob_droplist VALUES (4714,0,0,1000,16354,330); -- Malagigi's Trousers
INSERT INTO mob_droplist VALUES (4714,0,0,1000,19271,260); -- Osoraku
-- Ra'Dha Scarscute
INSERT INTO mob_droplist VALUES (4715,0,0,1000,2693,1000); -- Wrought Iron Letterbox
INSERT INTO mob_droplist VALUES (4715,0,0,1000,17962,150); -- Fleetwing
INSERT INTO mob_droplist VALUES (4715,0,0,1000,11474,350); -- Louhi's Mask
-- Ea'Tho Cruelheart
INSERT INTO mob_droplist VALUES (4716,0,0,1000,15818,300); -- Molione's Ring
-- Ba'Tho Mercifulheart
INSERT INTO mob_droplist VALUES (4717,0,0,1000,18947,160); -- Molione's Sickle
INSERT INTO mob_droplist VALUES (4717,0,0,1000,2504,220); -- Molione's Sickle
-- Da'Dha Hundredmask
INSERT INTO mob_droplist VALUES (4718,0,0,1000,15014,300); -- Patrician's Cuffs

-- ---------------------------------------------------------------
-- -------------------------ODIN BCNM-----------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,17745,250); -- Hofud
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,18121,150); -- Valkyries Fork
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2429,300); --    P.Abjuration: Hd.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2430,50); --    P.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2431,50); -- P.Abjuration: Hn.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2432,120); -- P.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2433,100); -- P.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2434,300); -- H.Abjuration: Hd.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2435,120); -- H.Abjuration: Bd.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2436,50); -- H.Abjuration: Hn.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2437,40); -- H.Abjuration: Lg.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,2438,60); -- H.Abjuration: Ft.
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,14577,170); -- Valhalla Brstplate
INSERT INTO `mob_droplist` VALUES (4804,0,0,1000,16117,90); -- Valhalla Helm

-- ---------------------------------------------------------------
-- ----------------SALVAGE - ARRAPAGO REMNANTS--------------------
-- ---------------------------------------------------------------
DELETE FROM mob_droplist WHERE itemid = 14555 AND itemRate = 300; -- Remove erroneous Hoshikazu Gi drop from rANDom Gears
DELETE FROM mob_droplist WHERE itemid = 15626 AND dropid = 166; -- Remove erroneous Enyo's Cuisses drop from rANDom Gears
DELETE FROM mob_droplist WHERE itemid = 5735 AND dropid = 2837; -- Remove Coin purse from normal flayers
DELETE FROM mob_droplist WHERE itemid IN (5735,5736); -- Remove Cotton/Linen coin purses from all mobs
DELETE FROM mob_droplist WHERE itemid = 2376 AND dropid IN (162,165,179); -- Remove Arrapago Card from normal mobs
-- First floor Sabotender drops
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,2488,100);
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,5368,100);
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,5383,100);
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,5384,100);
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,2377,200); -- bhaflau card
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,2376,200); -- arrapago card
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,2375,200); -- zhayolm card 
INSERT INTO `mob_droplist` VALUES (3026,0,0,1000,2378,200); -- silver sea card
-- Lower drop rate on 15 pieces from Gears
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15642; -- Nemain's Slops
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 14966; -- Njord's Gloves
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 16093; -- Hoshikazu Hachimaki
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15626; -- Enyo's Cuisses
UPDATE mob_droplist SET itemRate = 5 WHERE itemid = 15724; -- Anu's Gaiters
-- Don Poroggo
INSERT INTO `mob_droplist` VALUES (4721,0,0,1000,14547,1000); -- enyo breastplate
INSERT INTO `mob_droplist` VALUES (4721,0,0,1000,14563,1000); -- nemains robe
INSERT INTO `mob_droplist` VALUES (4721,0,0,1000,15638,150); -- anu's brais
INSERT INTO `mob_droplist` VALUES (4721,0,0,1000,15720,80); -- H.kazu - kyahan
-- Jakko
INSERT INTO `mob_droplist` VALUES (1839,0,0,1000,14978,150); -- nemain's cuffs
INSERT INTO `mob_droplist` VALUES (1839,0,0,1000,14962,250); -- enyo's gauntlets
-- Demented_Jalaawa
INSERT INTO `mob_droplist` VALUES (680,0,0,1000,14970,250); -- H.kazu tekko
INSERT INTO `mob_droplist` VALUES (680,0,0,1000,15712,150); -- Enyo's leggings
-- Princess_Pudding
INSERT INTO `mob_droplist` VALUES (2826,0,0,1000,15728,250); -- Nemains sabots
INSERT INTO `mob_droplist` VALUES (2826,0,0,1000,15630,150); -- njords trousers
-- Gate Widow
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5369,1150);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5369,580);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5369,380);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5375,970);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5375,480);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5380,1390);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5380,700);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,5380,460);
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,15640,72); -- Enlil's Brayettes
INSERT INTO `mob_droplist` VALUES (4722,0,0,1000,14980,118); -- Macha's Cuffs
-- Poroggo Madame
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5369,1150);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5369,580);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5369,380);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5375,970);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5375,480);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5380,1390);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5380,700);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,5380,460);
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,14561,84); -- Enlil's Brayettes
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,14972,74); -- Macha's Cuffs
INSERT INTO `mob_droplist` VALUES (4723,0,0,1000,15632,84); -- Macha's Cuffs
-- Hammerblow Majanun
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5369,1150);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5369,580);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5369,380);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5375,970);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5375,480);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5380,1390);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5380,700);
INSERT INTO `mob_droplist` VALUES (1625,0,0,1000,5380,460);
-- Add 15 drops to normal Bhoots and Psycheflayers
INSERT INTO mob_droplist VALUES (719,0,0,1000,16089,50); -- Njord's Mask
INSERT INTO mob_droplist VALUES (2837,0,0,1000,16097,50); -- Anu's Tiara
-- Psychflayer
INSERT INTO `mob_droplist` VALUES (4724,0,0,1000,5374,100);
INSERT INTO `mob_droplist` VALUES (4724,0,0,1000,5375,100);
INSERT INTO `mob_droplist` VALUES (4724,0,0,1000,16103,139); -- Macha's Crown
-- Deviate Bhoot
DELETE FROM mob_droplist WHERE itemid IN (16087,16103);
INSERT INTO `mob_droplist` VALUES (4725,0,0,1000,5374,100);
INSERT INTO `mob_droplist` VALUES (4725,0,0,1000,5375,100);
INSERT INTO `mob_droplist` VALUES (4725,0,0,1000,5378,100);
INSERT INTO `mob_droplist` VALUES (4725,0,0,1000,16087,56);
INSERT INTO `mob_droplist` VALUES (4725,0,0,1000,5735,1000);
-- 5th floor changes
UPDATE mob_droplist SET itemRate = 75 WHERE dropid = 158 AND itemid IN (14976,15718); -- Lower rate on Archaic Chariot 35s
-- North Astrologer
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,15640,75);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,15722,75);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,15716,150);
INSERT INTO `mob_droplist` VALUES (4728,2,0,1000,5373,0);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5369,1150);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5369,580);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5369,380);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5375,970);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5375,480);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5380,1390);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5380,700);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5380,460);
INSERT INTO `mob_droplist` VALUES (4728,0,0,1000,5735,510);
-- North Chariot
INSERT INTO `mob_droplist` VALUES (158,0,0,1000,15730,75);
-- South Astrologer
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5369,580);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5369,380);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5375,970);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5375,480);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5380,700);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5380,460);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,15714,75);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,15726,75);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,14553,75);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,15634,150);
INSERT INTO `mob_droplist` VALUES (4726,0,0,1000,5735,1000);
-- South Chariot
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,5367,1000);
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,5367,500);
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,5369,1000);
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,5369,500);
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,5372,1000);
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,5372,500);
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,16091,75); -- Freya's Mask
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,15644,75); -- Macha's Slops
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,16099,75); -- Enlil's Tiara
INSERT INTO `mob_droplist` VALUES (4727,0,0,1000,14964,75); -- Deimos's Gauntlets
-- Gyroscropic Gears
INSERT INTO `mob_droplist` VALUES (1616,1,0,1000,14974,1000);
INSERT INTO `mob_droplist` VALUES (1616,1,0,1000,14969,70);
-- Linen Purse drop fix
UPDATE mob_droplist SET itemRate = 1000 WHERE itemid = 5736 AND dropid = 180; -- Linen Purse
-- drop rate adjustments
UPDATE mob_droplist SET itemRate = 200 WHERE dropid IN (2074,2076,180,255); -- RIP 25 gear drop rate
UPDATE mob_droplist SET itemRate = 50 WHERE itemid IN (16103,14565,14980,15644,15730); -- Morrigan 35 drop rate cut
UPDATE mob_droplist SET itemRate = 50 WHERE itemid IN (16091,14553,14968,15632,15718); -- Skadi 35 drop rate cut
UPDATE mob_droplist SET itemRate = 50 WHERE itemid IN (16095,14557,14972,15636,15722); -- Usukane 35 drop rate cut
UPDATE mob_droplist SET itemRate = 50 WHERE itemid IN (16087,14549,14964,15628,15714); -- Ares 35 drop rate cut
UPDATE mob_droplist SET itemRate = 50 WHERE itemid IN (16099,14561,14976,15640,15726); -- Marduk 35 drop rate cut

-- ---------------------------------------------------------------
-- -------------------WOTG - FOMOR WEAPON NMs---------------------
-- ---------------------------------------------------------------
-- Lugh
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,17767,100); -- Chipped Scimitar
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,2859,100); -- Cobalt Ore
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,2275,100); -- Scintillant Ingot
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,11410,50); -- Setanta's Ledelsens
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,2858,1000); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,2858,400); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,2858,150); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,747,100); -- Orichalcum Ingot
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,14793,100); -- Belinky's Earring
INSERT INTO `mob_droplist` VALUES (4729,0,0,1000,14794,100); -- Quantz's Earring
-- Elatha
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,19162,100); -- Dull Claymore
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,2859,100); -- Cobalt Ore
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,2275,100); -- Scintillant Ingot
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,15057,50); -- Bricta's Cuffs
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,2858,1000); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,2858,400); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,2858,150); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,747,100); -- Orichalcum Ingot
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,14801,100); -- Zedoma's Earring
INSERT INTO `mob_droplist` VALUES (4730,0,0,1000,14802,100); -- Gayanj's Earring
-- Buarainech
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,19307,100); -- Blunt Lance
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,2859,100); -- Cobalt Ore
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,2275,100); -- Scintillant Ingot
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,11411,50); -- Shrewd Pumps
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,2858,1000); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,2858,400); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,2858,150); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,747,100); -- Orichalcum Ingot
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,14795,100); -- Desamilion's Earring
INSERT INTO `mob_droplist` VALUES (4731,0,0,1000,14796,100); -- Melnina's Earring
-- Ethniu
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,19128,100); -- Edgeless Knife
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,2859,200); -- Cobalt Ore
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,2859,100); -- Cobalt Ore
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,2275,100); -- Scintillant Ingot
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,16376,50); -- Bahram Cuisses
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,2858,1000); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,2858,400); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,2858,150); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,747,100); -- Orichalcum Ingot
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,686,100); -- Imperial Wootz Ingot
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,14799,100); -- Ryakho's Earring
INSERT INTO `mob_droplist` VALUES (4732,0,0,1000,14800,100); -- Feyuh's Earring
-- Tethra
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,18617,100); -- Cracked Staff
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,2859,100); -- Cobalt Ore
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,2275,100); -- Scintillant Ingot
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,16302,50); -- Bloodbead Gorget
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,2858,1000); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,2858,400); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,2858,150); -- Wolfram Steel Ingot
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,747,100); -- Orichalcum Ingot
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,14797,100); -- Waetoto's Earring
INSERT INTO `mob_droplist` VALUES (4733,0,0,1000,14798,100); -- Morukaka's Earring
