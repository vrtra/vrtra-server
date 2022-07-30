-- -------------------------------------------------------------
-- ---------------------MISC MOB/NM FIXES-----------------------
-- -------------------------------------------------------------
-- Giving Zipacna a Viagra so he's larger
UPDATE mob_pools SET entityFlags = 1183 WHERE poolid = 4504; -- Zipacna
update mob_pools set spellList = 140 where name = 'Jailer_of_Hope'; -- jailer of hope spell list
update mob_pools set mJob = 4, sJob = 15, spellList = 409, hasSpellScript = 0 where name = 'Jailer_of_Love'; -- Jailer of Love
update mob_pools set true_detection = 1, aggro = 1, mJob = 4, sJob = 14, spellList = 418, hasSpellScript = 0, entityFlags = 1157 where poolid = 56; -- av adds
UPDATE mob_pools SET modelid = 0x0000E90100000000000000000000000000000000 WHERE poolid = 3669; -- Slendlix Spindlethumb model fix
UPDATE mob_pools SET mobType = 0 WHERE poolid = 1471; -- Garm mobtype fix
UPDATE mob_pools SET modelid = 0x0600C60600000000000000000000000000000000 WHERE poolid = 3294; -- -- Qutrub model glitch fix
UPDATE mob_pools SET roamflag = 0 where poolid = 595; -- Cactrot Rapido
UPDATE mob_pools SET entityFlags = 159 WHERE poolid = 584; -- Bune
UPDATE mob_pools SET entityFlags = 159 WHERE poolid = 4100; -- Ungur
UPDATE mob_pools SET skill_list_id = 35 WHERE poolid = 5186; -- Diabolos Prime
UPDATE mob_pools SET name_prefix = 32 WHERE poolid = 3549; -- Fix Serket name prefix
UPDATE mob_pools SET entityFlags = 4 WHERE poolid = 2203; -- Keeper of Halidom
UPDATE mob_pools SET entityFlags = 4 WHERE poolid = 3814; -- Suttung
UPDATE mob_pools SET entityFlags = 4 WHERE poolid = 2807; -- Nantina
UPDATE mob_pools SET entityFlags = 163 WHERE poolid = 162; -- Antaeus
UPDATE mob_pools SET modelid = 0x0000950100000000000000000000000000000000 WHERE poolid = 387; -- Behemoth
UPDATE mob_pools SET modelid = 0x0000950100000000000000000000000000000000 WHERE poolid = 2255; -- King Behemoth
UPDATE mob_pools SET modelid = 0x0000480900000000000000000000000000000000 WHERE poolid = 268; -- Aspidochelone
UPDATE mob_pools SET modelid = 0x0000C10100000000000000000000000000000000 WHERE poolid = 920; -- Darter
UPDATE mob_pools SET modelid = 0x0000660100000000000000000000000000000000 WHERE poolid = 2254; -- King Arthro
UPDATE mob_pools SET modelid = 0x0000530100000000000000000000000000000000 WHERE poolid = 3376; -- Roc
UPDATE mob_pools SET modelid = 0x0000530100000000000000000000000000000000 WHERE poolid = 3630; -- Simurgh
UPDATE mob_pools SET modelid = 0x0000C50800000000000000000000000000000000 WHERE poolid = 584; -- Bune
UPDATE mob_pools SET modelid = 0x0000C50800000000000000000000000000000000 WHERE poolid = 1841; -- Guivre
UPDATE mob_pools SET modelid = 0x0000C50800000000000000000000000000000000 WHERE poolid = 4100; -- Ungur
UPDATE mob_pools SET modelid = 0x0000C50800000000000000000000000000000000 WHERE poolid = 4258; -- Vouivre
UPDATE mob_pools SET modelid = 0x0000B80200000000000000000000000000000000 WHERE poolid = 2790; -- Mysticmaker Profblix
UPDATE mob_pools SET modelid = 0x0000310100000000000000000000000000000000 WHERE poolid = 1012; -- Despot
UPDATE mob_pools SET modelid = 0x0000310100000000000000000000000000000000 WHERE poolid = 1306; -- Faust
UPDATE mob_pools SET modelid = 0x00009D0100000000000000000000000000000000 WHERE poolid = 2969; -- Olla Grande
UPDATE mob_pools SET modelid = 0x00009D0100000000000000000000000000000000 WHERE poolid = 3763; -- Steam Cleaner
UPDATE mob_pools set modelid = 0x0000B10100000000000000000000000000000000 WHERE poolid = 4504; -- Zipacna
UPDATE mob_pools set modelid = 0x0000B10100000000000000000000000000000000 WHERE poolid = 4082; -- Ullikummi
UPDATE mob_pools set modelid = 0x0000560900000000000000000000000000000000 WHERE poolid = 2870; -- Nightmare Taurus
UPDATE mob_pools set modelid = 0x00009A0100000000000000000000000000000000 WHERE poolid = 2450; -- Lumber Jack
UPDATE mob_pools set modelid = 0x00009A0100000000000000000000000000000000 WHERE poolid = 3095; -- Panzer Percival
UPDATE mob_pools set modelid = 0x00003C0800000000000000000000000000000000 WHERE poolid = 1362; -- Flauros
UPDATE mob_pools set modelid = 0x00003C0800000000000000000000000000000000 WHERE poolid = 3063; -- Ose
UPDATE mob_pools set modelid = 0x00003C0800000000000000000000000000000000 WHERE poolid = 5537; -- Sekhmet
UPDATE mob_pools set modelid = 0x00003C0800000000000000000000000000000000 WHERE poolid = 4551; -- Tefenet
UPDATE mob_pools set modelid = 0x00006B0B00000000000000000000000000000000 WHERE poolid = 630; -- Capricious Cassie
UPDATE mob_pools set modelid = 0x00006B0B00000000000000000000000000000000 WHERE poolid = 2742; -- Morbolger
UPDATE mob_pools set modelid = 0x00006B0B00000000000000000000000000000000 WHERE poolid = 4252; -- Voluptuous Vilma
UPDATE mob_pools set modelid = 0x00006B0B00000000000000000000000000000000 WHERE poolid = 4253; -- Voluptuous Vivian
UPDATE mob_pools set modelid = 0x0000FC0600000000000000000000000000000000 WHERE poolid = 930; -- Dea
UPDATE mob_pools set modelid = 0x0000FC0600000000000000000000000000000000 WHERE poolid = 2209; -- Keratyrannos
UPDATE mob_pools set modelid = 0x0000780B00000000000000000000000000000000 WHERE poolid = 1170; -- Ebony Pudding
UPDATE mob_pools set modelid = 0x0000480500000000000000000000000000000000 WHERE poolid = 2299; -- Kurrea
UPDATE mob_pools set modelid = 0x0000480500000000000000000000000000000000 WHERE poolid = 2608; -- Megalobugard
UPDATE mob_pools set modelid = 0x0000480500000000000000000000000000000000 WHERE poolid = 2843; -- Nightmare Bugard
UPDATE mob_pools set modelid = 0x0000480500000000000000000000000000000000 WHERE poolid = 4480; -- Ypotryll
UPDATE mob_pools set modelid = 0x0000550900000000000000000000000000000000 WHERE poolid = 4396; -- Xolotl
UPDATE mob_pools set modelid = 0x0000680A00000000000000000000000000000000 WHERE poolid = 100; -- Amaltheia
UPDATE mob_pools set modelid = 0x0000680A00000000000000000000000000000000 WHERE poolid = 462; -- Bloodtear Baldurf
UPDATE mob_pools set modelid = 0x0000680A00000000000000000000000000000000 WHERE poolid = 5734; -- Rambukk
UPDATE mob_pools set modelid = 0x0000680A00000000000000000000000000000000 WHERE poolid = 4043; -- Trudging Thomas
UPDATE mob_pools set modelid = 0x0000680A00000000000000000000000000000000 WHERE poolid = 4513; -- Zlatorog
UPDATE mob_pools set modelid = 0x0000390100000000000000000000000000000000 WHERE poolid = 343; -- Bark Spider
UPDATE mob_pools set modelid = 0x0000390100000000000000000000000000000000 WHERE poolid = 344; -- Bark Tarantula
UPDATE mob_pools set modelid = 0x0000390100000000000000000000000000000000 WHERE poolid = 3342; -- Recluse Spider
UPDATE mob_pools set modelid = 0x0000DD0700000000000000000000000000000000 WHERE poolid = 4536; -- Nematocera
UPDATE mob_pools set modelid = 0x0000920700000000000000000000000000000000 WHERE poolid = 890; -- Daggerclaw Dracos
UPDATE mob_pools set modelid = 0x0000920700000000000000000000000000000000 WHERE poolid = 4478; -- Yowie
UPDATE mob_pools set modelid = 0x0000920700000000000000000000000000000000 WHERE poolid = 4218; -- Velociraptor
UPDATE mob_pools set modelid = 0x0000920700000000000000000000000000000000 WHERE poolid = 962; -- Deinonychus
UPDATE mob_pools set modelid = 0x0000920700000000000000000000000000000000 WHERE poolid = 4513; -- Eotyrannus
UPDATE mob_pools set modelid = 0x0000920700000000000000000000000000000000 WHERE poolid = 2862; -- Nightmare Raptor
UPDATE mob_pools set modelid = 0x0000900700000000000000000000000000000000 WHERE poolid = 979; -- Demonia Tiphia
UPDATE mob_pools set modelid = 0x0000900700000000000000000000000000000000 WHERE poolid = 3335; -- Vespo
UPDATE mob_pools set modelid = 0x0000900700000000000000000000000000000000 WHERE poolid = 1810; -- Great Wasp
UPDATE mob_pools set modelid = 0x0000900700000000000000000000000000000000 WHERE poolid = 2855; -- Nightmare Hornet
UPDATE mob_pools set modelid = 0x0000900700000000000000000000000000000000 WHERE poolid = 4322; -- Wespe
UPDATE mob_pools set modelid = 0x00008E0700000000000000000000000000000000 WHERE poolid = 1630; -- Gneiss Leech
UPDATE mob_pools set modelid = 0x00008E0700000000000000000000000000000000 WHERE poolid = 2857; -- Nightmare Leech
UPDATE mob_pools set modelid = 0x00008E0700000000000000000000000000000000 WHERE poolid = 3901; -- Thread Leech
UPDATE mob_pools set modelid = 0x00008E0700000000000000000000000000000000 WHERE poolid = 2386; -- Leech King
UPDATE mob_pools set modelid = 0x0000910754776967747269704C6170696E690000 WHERE poolid = 3155; -- Plateau Hare
UPDATE mob_pools set modelid = 0x0000910754776967747269704C6170696E690000 WHERE poolid = 2754; -- Moss Eater
UPDATE mob_pools set modelid = 0x0000910754776967747269704C6170696E690000 WHERE poolid = 378; -- Beach Bunny
UPDATE mob_pools set modelid = 0x0000910754776967747269704C6170696E690000 WHERE poolid = 4343; -- Wild Rabbit
UPDATE mob_pools set modelid = 0x0000650800000000000000000000000000000000 WHERE poolid = 1341; -- Fire Elemental
UPDATE mob_pools set modelid = 0x0000650800000000000000000000000000000000 WHERE poolid = 5528; -- Fire Elemental
UPDATE mob_pools set modelid = 0x0000650800000000000000000000000000000000 WHERE poolid = 2413; -- Light Elemental
UPDATE mob_pools set modelid = 0x0000650800000000000000000000000000000000 WHERE poolid = 5531; -- Light Elemental
UPDATE mob_pools set modelid = 0x0000640800000000000000000000000000000000 WHERE poolid = 913; -- Dark Elemental
UPDATE mob_pools set modelid = 0x0000640800000000000000000000000000000000 WHERE poolid = 5533; -- Dark Elemental
UPDATE mob_pools set modelid = 0x0000640800000000000000000000000000000000 WHERE poolid = 1160; -- Earth Elemental
UPDATE mob_pools set modelid = 0x0000640800000000000000000000000000000000 WHERE poolid = 5530; -- Earth Elemental
UPDATE mob_pools set modelid = 0x0000670800000000000000000000000000000000 WHERE poolid = 2043; -- Ice Elemental
UPDATE mob_pools set modelid = 0x0000670800000000000000000000000000000000 WHERE poolid = 5535; -- Ice Elemental
UPDATE mob_pools set modelid = 0x0000670800000000000000000000000000000000 WHERE poolid = 4309; -- Water Elemental
UPDATE mob_pools set modelid = 0x0000670800000000000000000000000000000000 WHERE poolid = 5374; -- Water Elemental
UPDATE mob_pools set modelid = 0x0000670800000000000000000000000000000000 WHERE poolid = 5532; -- Water Elemental
UPDATE mob_pools set modelid = 0x0000660800000000000000000000000000000000 WHERE poolid = 71; -- Air Elemental
UPDATE mob_pools set modelid = 0x0000660800000000000000000000000000000000 WHERE poolid = 5534; -- Air Elemental
UPDATE mob_pools set modelid = 0x0000660800000000000000000000000000000000 WHERE poolid = 3912; -- Thunder Elemental
UPDATE mob_pools set modelid = 0x0000660800000000000000000000000000000000 WHERE poolid = 5381; -- Thunder Elemental
UPDATE mob_pools set modelid = 0x0000660800000000000000000000000000000000 WHERE poolid = 5529; -- Thunder Elemental
UPDATE mob_pools set modelid = 0x0000460500000000000000000000000000000000 WHERE poolid = 2083; -- Intulo
UPDATE mob_pools set modelid = 0x0000460500000000000000000000000000000000 WHERE poolid = 3466; -- Sarcophilus
UPDATE mob_pools set modelid = 0x0000460500000000000000000000000000000000 WHERE poolid = 3334; -- Razorback
UPDATE mob_pools set modelid = 0x0000460500000000000000000000000000000000 WHERE poolid = 2851; -- Nightmare Eft

-- Fix issue with "Tiny Orcs" in Monastic Cavern
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2997; -- Orcish Bowshooter
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3000; -- Orcish Champion
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3007; -- Orcish Dreadnought
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3008; -- Orcish Farkiller
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3014; -- Orcish Footsoldier
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3015; -- Orcish Gladiator
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3019; -- Orcish Hexspinner 
UPDATE mob_pools SET entityFlags = 1181 WHERE poolid = 3027; -- Orcish Overlord
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3029; -- Orcish Predator
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3031; -- Orcish Protector
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3039; -- Orcish Trooper
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3041; -- Orcish Veteran
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3043; -- Orcish Warchief
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3044; -- Orcish Warlord
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3046; -- Orcish Zerker
-- Fix issue with "Tiny Quadavs" in Qulun Dome
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 46; -- Adaman Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 125; -- Ancient Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 907; -- Darksteel Quadav
UPDATE mob_pools SET entityFlags = 1181 WHERE poolid = 1034; -- Diamond Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3410; -- Ruby Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3463; -- Sapphire Quadav
UPDATE mob_pools SET name_prefix = 32, entityFlags = 1181 WHERE poolid = 4494; -- Za Dha Adamantking
-- Fix issue with "Tiny Quadavs" in Beadeaux
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 427; -- BiGho Headtaker
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1023; -- DeVyu Headhunter
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1482; -- GaBhu Unvanquished
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1509; -- GeDha Evileye
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1778; -- GoBhu Gascon
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4522; -- ZoKhu Blackcloud
-- Fix issue with "Tiny Orcs" in Davoi
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1046; -- Dirtyhanded Gochakzuk
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1903; -- Hawkeyed Dnatbat
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2980; -- One-eyed Gwajboj
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 3004; -- Orcish Cursemaker
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 3032; -- Orcish Serjeant
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3011; -- Orcish Firebelcher
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3162; -- Poisonhand Gnadgad
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3233; -- Purpleflash Brukdok
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3765; -- Steelbiter Gudrud
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3902; -- Three-eyed Prozpuz
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3919; -- Tigerbane Bakdak
-- Fix issue with "Tiny Yags" in Castle Oztroja
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2016; -- Huu Xalmo the Savage
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2607; -- Mee Deggi the Punisher
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2737; -- Moo Ouzi the Swiftblade
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3298; -- Quu Domi the Gallant
UPDATE mob_pools SET flag = 539, name_prefix = 32, entityFlags = 1181 WHERE poolid = 4072; -- Tzee Xicu the Manifest
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4402; -- Yaa Haqa the Profane
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4573; -- Lii Jixa the Somnolist
-- Fix issue with "Tiny Quadavs" in Beadeaux [S]
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 324; -- Baetyl Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 1094; -- Doyen Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 1325; -- Ferroalloy Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 1753; -- Gold Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 2102; -- Iron Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 2224; -- Khroma Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 2486; -- Magnes Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 2644; -- Meteor Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 3757; -- Star Ruby Quadav
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 5553; -- Adaman Quadav
-- Fix issue with Lacerator not aggroing
UPDATE mob_pools SET aggro = 1 WHERE poolid = 4816; -- Lacerator
-- Add new Mob Pool for Wurdalak in Bostauniex Oubliette
delete from mob_pools where name = 'Wurdalak';
INSERT INTO `mob_pools` VALUES (6582,'Wurdalak','Wurdalak',309,0x0000350700000000000000000000000000000000,15,15,7,290,100,0,1,1,0,2,0,0,3992,157,0,0,293,1,0,309,309); -- Wurdalak
-- -------------------------------------------------------------
-- --------------------------DYNAMIS----------------------------
-- -------------------------------------------------------------
UPDATE mob_pools SET spellList = 2 WHERE poolid = 198; -- Apocalyptic Beast spell list
UPDATE mob_pools SET mJob = 5, sJob = 7, spellList = 3 WHERE poolid = 1774; -- Goublefaupe
UPDATE mob_pools SET mJob = 8, sJob = 12, spellList = 5 WHERE poolid = 4219; -- Velosareon
UPDATE mob_pools SET mJob = 13, sjob = 6, spellList = 7 WHERE poolid = 2660; -- Mildaunegeux
UPDATE mob_pools SET mJob = 4, sjob = 10, spellList = 2 WHERE poolid = 3289; -- Quiebitiel

-- -------------------------------------------------------------
-- ------------------CUSTOM SEA NM CHANGES---------------------
-- -------------------------------------------------------------
UPDATE mob_pools SET spellList = 0 WHERE poolid = 2132; -- -- Jailer of Hope spell fix
UPDATE mob_pools SET spellList = 305 WHERE poolid = 21; -- Absolute Virtue spell list fix & HP adjustment
UPDATE mob_pools set mJob = 5, sJob = 4 WHERE poolid = 300; -- Aw'Ghrah
UPDATE mob_pools set mJob = 5, sJob = 4 WHERE poolid = 1241; -- Eo'Ghrah
UPDATE mob_pools SET mobType = 0 WHERE poolid = 2979; -- Om'Yovra
-- Limbus - CS Apollyon
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 644; -- Carnagechief Jackbodokk
UPDATE mob_pools SET flag = 300, entityFlags = 1157 WHERE poolid = 952; -- Dee Wapa the Desolator
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2815; -- Na'Qba Chirurgeon
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1818; -- Grognard Footsoldier
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1819; -- Grognard Grappler
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1820; -- Grognard Impaler
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1821; -- Grognard Mesmerizer
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1822; -- Grognard Neckchopper
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1823; -- Grognard Predator
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4406; -- Yagudo Archpriest
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4415; -- Yagudo Disciplinant
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4417; -- Yagudo Eradicator
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4429; -- Yagudo Kapellmeister
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4430; -- Yagudo Knight Templar
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4443; -- Yagudo Prelatess
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 1410; -- Fossil Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 2412; -- Lightsteel Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3757; -- Star Ruby Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3758; -- Star Sapphire Quadaver
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4331; -- Whitegold Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 4372; -- Wootz Quadav
UPDATE mob_pools SET entityFlags = 1157 WHERE poolid = 3112; -- Pee Qoho the Python

-- -------------------------------------------------------------
-- ------------------CUSTOM TOAU NM CHANGES---------------------
-- -------------------------------------------------------------
-- Fix ToAU HNMs to not turn directly to tank (allows flail TP move to activate)
UPDATE mob_pools SET modelid = 0x0000020700000000000000000000000000000000 WHERE poolid = 680; -- Cerberus
UPDATE mob_pools SET modelid = 0x0000050700000000000000000000000000000000, behavior = 1024 WHERE poolid = 2018; -- Hydra
UPDATE mob_pools SET modelid = 0x00000F0700000000000000000000000000000000, behavior = 1024 WHERE poolid = 2220; -- Khimaira
UPDATE mob_pools SET behavior = 1024 WHERE poolid = 4063; -- Tyger

-- -------------------------------------------------------------
-- ------------------------ABYSSEA------------------------------
-- -------------------------------------------------------------
-- Abyssea La-Theine
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 76; -- Akash
UPDATE mob_pools SET name_prefix = 32, skill_list_id = 811 WHERE poolid = 530; -- Briareus
UPDATE mob_pools SET name_prefix = 32, spellList = 177, skill_list_id = 812 WHERE poolid = 633; -- Carabosse
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 699; -- Chasmic Hornet
UPDATE mob_pools SET familyid = 479, mJob = 4, behavior = 1024, name_prefix = 32, spellList = 126, skill_list_id = 817 WHERE poolid = 1872; -- Hadhayosh
UPDATE mob_pools SET aggro = 1, true_detection = 1, skill_list_id = 834 WHERE poolid = 2104; -- Irrlicht
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32, skill_list_id = 1010 WHERE poolid = 2196; -- Karkinos
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 2204; -- Keesha Poppo
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32 WHERE poolid = 2549; -- Mangy Tailed Marvin
UPDATE mob_pools SET modelid = 0x0000C80800000000000000000000000000000000, aggro = 1, true_detection = 1 WHERE poolid = 2611; -- Megantereon
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32 WHERE poolid = 2610; -- Megamaw Mikey
UPDATE mob_pools SET aggro = 1, true_detection = 1, spellList = 306 WHERE poolid = 2798; -- Nahn
UPDATE mob_pools SET behavior = 1032, name_prefix = 32, animationsub = 5, skill_list_id = 824 WHERE poolid = 3080; -- Ovni
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 3134; -- Piasa
UPDATE mob_pools SET familyid = 220, modelid = 0x00005D0400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 220 WHERE poolid = 2604; -- Meditator
UPDATE mob_pools SET familyid = 241, modelid = 0x0000680400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 241 WHERE poolid = 540; -- Brooder
UPDATE mob_pools SET familyid = 241, modelid = 0x0000680400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 241 WHERE poolid = 3416; -- Ruminator
UPDATE mob_pools SET aggro = 1 WHERE poolid = 140; -- Angler Tiger
UPDATE mob_pools SET links = 1 WHERE poolid = 520; -- Brae Opo Opo
UPDATE mob_pools SET aggro = 1, links = 1 WHERE poolid = 622; -- Cankercap
UPDATE mob_pools SET skill_list_id = 0 WHERE poolid = 828; -- Crapaudy
UPDATE mob_pools SET aggro = 1 WHERE poolid = 834; -- Crepuscule Puk
UPDATE mob_pools SET cmbDelay = 400, aggro = 1 WHERE poolid = 968; -- Demersal Gigas
UPDATE mob_pools SET aggro = 1 WHERE poolid = 1244; -- Ephemeral Clionid
UPDATE mob_pools SET aggro = 1, links = 1 WHERE poolid = 1245; -- Ephemeral Limule
UPDATE mob_pools SET familyid = 173, aggro = 1, links = 1, skill_list_id = 173 WHERE poolid = 1548; -- Gigadaphnia
UPDATE mob_pools SET aggro = 1 WHERE poolid = 1810; -- Great Wasp
UPDATE mob_pools SET aggro = 1 WHERE poolid = 1888; -- Hammering Ram
UPDATE mob_pools SET aggro = 1 WHERE poolid = 2448; -- Luison
UPDATE mob_pools SET modelid = 0x0000AA0100000000000000000000000000000000 WHERE poolid = 2610; -- Megamaw Mikey
UPDATE mob_pools SET aggro = 1 WHERE poolid = 3103; -- Pasture Funguar
UPDATE mob_pools SET aggro = 1 WHERE poolid = 3154; -- Plateau Glider
UPDATE mob_pools SET aggro = 1 WHERE poolid = 3155; -- Plateau Hare
UPDATE mob_pools SET aggro = 1, links = 1 WHERE poolid = 3185; -- Poroggo Seducteur
UPDATE mob_pools SET skill_list_id = 790 WHERE poolid = 3216; -- Psychopomp
UPDATE mob_pools SET aggro = 1 WHERE poolid = 3380; -- Rock Grinder
UPDATE mob_pools SET aggro = 1 WHERE poolid = 3543; -- Sentinel Crab
UPDATE mob_pools SET familyid = 183, modelid = 0x0000030100000000000000000000000000000000, aggro = 1, mobtype = 2, entityFlags = 3, skill_list_id = 183 WHERE poolid = 3798; -- Sturdy Pyxis
UPDATE mob_pools SET familyid = 65, aggro = 1, skill_list_id = 65 WHERE poolid = 4216; -- Veld Clionid
-- Abyssea Konschtat
UPDATE mob_pools set cmbSkill = 7, cmbDelay = 200 where poolid = 29; -- Fix Ab'Xzomit delay issue
UPDATE mob_pools SET aggro = 1, true_detection = 1, skill_list_id = 786 WHERE poolid = 86; -- Alkonost
UPDATE mob_pools SET aggro = 1, true_detection = 1, hasSpellScript = 0 WHERE poolid = 232; -- Arimaspi
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32 WHERE poolid = 261; -- Ashtaerth the Gallvexed
UPDATE mob_pools SET aggro = 1, true_detection = 1, namevis = 1, skill_list_id = 789 WHERE poolid = 326; -- Bakka
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 330; -- Balaur
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32 WHERE poolid = 457; -- Bloodeye Vileberry
UPDATE mob_pools SET aggro = 1, links = 1 where poolid = 458; -- Bloodguzzler
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 491; -- Bombadeel
UPDATE mob_pools SET familyid = 137, modelid = 0x00006D0400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 137 WHERE poolid = 1001; -- Depths Digester
UPDATE mob_pools SET true_detection = 1, name_prefix = 32 WHERE poolid = 1171; -- Eccentric Eve
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32, entityFlags = 0, flag = 0 WHERE poolid = 1348; -- Fistule
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 1457; -- Gangly Gean
UPDATE mob_pools SET familyid = 299, aggro = 1, true_detection = 1, mobType = 2, name_prefix = 32 WHERE poolid = 1840; -- Guimauve
UPDATE mob_pools SET familyid = 138, modelid = 0x00006D0400000000000000000000000000000000, skill_list_id = 137 WHERE poolid = 1868; -- Hadal Mirror
UPDATE mob_pools SET familyid = 138, modelid = 0x00006D0400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 137 WHERE poolid = 1869; -- Hadal Satiator
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1 WHERE poolid = 1939; -- Hexenpilz
UPDATE mob_pools SET aggro = 1, true_detection = 1, behavior = 1024 WHERE poolid = 2209; -- Keratyrannos
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 2217; -- Khalamari
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32 WHERE poolid = 2294; -- Kukulkan
UPDATE mob_pools SET modelid = 0x0000090100000000000000000000000000000000 WHERE poolid = 2395; -- Lesser Arimaspi
UPDATE mob_pools SET familyid = 255, modelid = 0x0000570400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 255 WHERE poolid = 2601; -- Meanderer
UPDATE mob_pools SET familyid = 324, modelid = 0x00001C0300000000000000000000000000000000, aggro = 1, true_detection = 1 WHERE poolid = 3107; -- Pavan
UPDATE mob_pools SET modelid = 0x0000260100000000000000000000000000000000 WHERE poolid = 3235; -- Pustule
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1 WHERE poolid = 3326; -- Raskovnik
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 3466; -- Sarcophilus
UPDATE mob_pools SET familyid = 245, aggro = 1, true_detection = 1, name_prefix = 32, skill_list_id = 1012 WHERE poolid = 3633; -- Siranpa Kamuy
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 3962; -- Tonberry Lieje
UPDATE mob_pools SET aggro = 1, true_detection = 1, behavior = 1024, animationsub = 1, name_prefix = 32, flag = 139, entityFlags = 133, skill_list_id = 807 WHERE poolid = 4054; -- Turul
UPDATE mob_pools SET skill_list_id = 834 WHERE poolid = 1150; -- Dybbuk
UPDATE mob_pools SET links = 1 WHERE poolid = 1967; -- Hoary Ragwort
UPDATE mob_pools SET aggro = 1 WHERE poolid = 2404; -- Ley Clionid
UPDATE mob_pools SET behavior = 1024 WHERE poolid = 2632; -- Mesa Wivre
-- Abyssea Tahrongi
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4549; -- Abas
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4561; -- Adze
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4550; -- Alectryon
UPDATE mob_pools SET familyid = 321, modelid = 0x00001A0300000000000000000000000000000000, aggro = 1, true_detection = 1 WHERE poolid = 4538; -- Bhumi
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4545; -- Cannered Noz
UPDATE mob_pools SET skill_list_id = 790 WHERE poolid = 628; -- Caoineag
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, spellList = 404, entityFlags = 1157 WHERE poolid = 4554; -- Chloris
UPDATE mob_pools SET aggro = 1, true_detection = 1, entityFlags = 1157, skill_list_id = 836 WHERE poolid = 4559; -- Chukwa
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32, animationsub = 5 WHERE poolid = 4557; -- Cuelebre
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4547; -- Gancanagh
UPDATE mob_pools SET familyid = 215, aggro = 1, true_detection = 1, skill_list_id = 839 WHERE poolid = 4555; -- Glavoid
UPDATE mob_pools SET familyid = 65, aggro = 1, true_detection = 1 WHERE poolid = 4542; -- Halimede
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 4 WHERE poolid = 4548; -- Hedetet
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1 WHERE poolid = 4566; -- Iratham
UPDATE mob_pools SET aggro = 1, true_detection = 1, entityFlags = 1157 WHERE poolid = 4553; -- Lachyrmater
UPDATE mob_pools SET aggro = 1, true_detection = 1, entityFlags = 1157 WHERE poolid = 4556; -- Lacovie
UPDATE mob_pools SET modelid = 0x0600C60600000000000000000000000000000000, aggro = 1, true_detection = 1, entityFlags = 1157, skill_list_id = 854 WHERE poolid = 4563; -- Manananggal
UPDATE mob_pools SET modelid = 0x0000550900000000000000000000000000000000, aggro = 1, true_detection = 1, entityFlags = 1157, skill_list_id = 844 WHERE poolid = 4558; -- Mictlantecuhtli
UPDATE mob_pools SET familyid = 215, modelid = 0x0000EB0700000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 845 WHERE poolid = 4560; -- Minhocao
UPDATE mob_pools SET aggro = 1, true_detection = 1 WHERE poolid = 4564; -- Myrmelcoleon
UPDATE mob_pools SET familyid = 179, modelid = 0x0000920100000000000000000000000000000000, aggro = 1, true_detection = 1, links = 1, flag = 6, entityFlags = 1157 WHERE poolid = 4552; -- Muscaliet
UPDATE mob_pools SET aggro = 1, true_detection = 1, entityFlags = 1157 WHERE poolid = 4544; -- Ophanim
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1 WHERE poolid = 4562; -- Quetzalli
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4551; -- Tefenet
UPDATE mob_pools SET aggro = 1, true_detection = 1, links = 1, entityFlags = 1157 WHERE poolid = 4546; -- Treble Noctules
UPDATE mob_pools SET familyid = 173, aggro = 1, true_detection = 1, entityFlags = 1157 WHERE poolid = 4543; -- Vetehinen
UPDATE mob_pools SET familyid = 78, modelid = 0x0000730400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 78 WHERE poolid = 4541; -- Hungerer
UPDATE mob_pools SET familyid = 78, modelid = 0x0000730400000000000000000000000000000000, aggro = 1, true_detection = 1, skill_list_id = 78 WHERE poolid = 4540; -- Yearner
UPDATE mob_pools SET familyid = 78, modelid = 0x0000730400000000000000000000000000000000, aggro = 0, true_detection = 0, skill_list_id = 78 WHERE poolid = 4539; -- Usurper
UPDATE mob_pools SET modelid = 0x0600C60600000000000000000000000000000000 WHERE poolid = 4537; -- Bog Body
UPDATE mob_pools SET familyid = 173, links = 1 WHERE poolid = 1843; -- Gulch Limule
UPDATE mob_pools SET familyid = 65, aggro = 1 WHERE poolid = 1845; -- Gully Clionid
UPDATE mob_pools SET mobType = 0 WHERE poolid = 1941; -- Hieracosphinx
UPDATE mob_pools SET behavior = 1024 WHERE poolid = 2813; -- Naul
UPDATE mob_pools SET familyid = 406 WHERE poolid = 3082; -- Pachypodium
UPDATE mob_pools SET aggro = 0, mobType = 0 WHERE poolid = 4534; -- Thalassinon
UPDATE mob_pools SET familyid = 214 WHERE poolid = 4533; -- Vermes Carnium

-- ---------------------------------------------------------------
-- ---------------------------WotG NMs----------------------------
-- ---------------------------------------------------------------
UPDATE mob_pools SET modelid = 0x01001D0814111421143114411451CF6100700000 WHERE poolid = 5144; -- Elatha model fix

-- ---------------------------------------------------------------
-- ---------------------BEADEAUX [S} SCNM-------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_pools` VALUES (6032,'Za_Dha_Adamantking','Za_Dha_Adamantking',202,0x00000E0300000000000000000000000000000000,3,1,7,265,125,0,1,1,1,2,0,32,5074,1181,0,0,1,1,0,1009,1009); -- Za Dha Adamantking

UPDATE mob_pools SET true_detection = 1, mobtype = 2, name_prefix = 32, flag = 0, entityFlags = 1155, roamflag = 0, skill_list_id = 1008 WHERE poolid = 4495; -- Za Dhas Biographer (BLM)
UPDATE mob_pools SET true_detection = 1, mobtype = 2, name_prefix = 32, flag = 0, entityFlags = 1155, roamflag = 0, skill_list_id = 1008 WHERE poolid = 4496; -- Za Dhas Minister (WHM)
-- Beadeaux [S] mobs
UPDATE mob_pools SET true_detection = 1 WHERE poolid = 528; -- Bres
UPDATE mob_pools SET true_detection = 1, mobtype = 2, name_prefix = 32, entityFlags = 1157, skill_list_id = 1008 WHERE poolid = 1069; -- Di'Zho Spongeshell
UPDATE mob_pools SET true_detection = 1, mobtype = 2, name_prefix = 32, entityFlags = 1157, skill_list_id = 1008 WHERE poolid = 1485; -- Ga'Lhu Nevermolt
UPDATE mob_pools SET true_detection = 1, mobtype = 2, name_prefix = 32, entityFlags = 1157, skill_list_id = 1008 WHERE poolid = 2779; -- Mu'Nhi Thimbletail
UPDATE mob_pools SET mobType = 2 WHERE poolid = 2932; -- Observant Zekka
UPDATE mob_pools SET true_detection = 1, name_prefix = 32, entityFlags = 1157, skill_list_id = 1008 WHERE poolid = 3337; -- Ra'Dha Scarscute
UPDATE mob_pools SET aggro = 1, true_detection = 1, name_prefix = 32, entityFlags = 1157, skill_list_id = 1008 WHERE poolid = 4208; -- Va'Gho Bloodbasked
UPDATE mob_pools SET mobType = 2, name_prefix = 32, entityFlags = 1157 WHERE poolid = 1167; -- Ea'Tho Cruelheart
UPDATE mob_pools SET mobType = 2, name_prefix = 32, entityFlags = 1157 WHERE poolid = 377; -- Ba'Tho Mercifulheart
UPDATE mob_pools SET name_prefix = 32, entityFlags = 1157 WHERE poolid = 928; -- Da'Dha Hundredmask

-- -------------------------------------------------------------
-- ------------------------KSNM99-------------------------------
-- -------------------------------------------------------------
UPDATE mob_pools SET modelid = 0x0000950100000000000000000000000000000000, familyid = 479 WHERE poolid = 723; -- set Chlevik familyid to King Behemoth
UPDATE mob_pools SET modelid = 0x0000480900000000000000000000000000000000 WHERE poolid = 3847; -- Tartaruga Gigante
UPDATE mob_pools SET modelid = 0x0000630200000000000000000000000000000000 WHERE poolid = 4385; -- Wyrm

-- -------------------------------------------------------------
-- ----------------------TENZEN BCNM----------------------------
-- -------------------------------------------------------------
DELETE FROM mob_pools WHERE poolid = 2227;
DELETE FROM mob_pools WHERE poolid = 2181;
INSERT INTO `mob_pools` VALUES (2227,'Kilioa','Kilioa',149,0x00009E0400000000000000000000000000000000,2,2,1,360,100,0,0,0,0,16,0,0,0,3,0,0,0,1,0,149,149); -- tenzen model
INSERT INTO `mob_pools` VALUES (2181,'Kalamainu','Kalamainu',299,0x0000080700000000000000000000000000000000,4,5,12,240,100,0,1,0,0,2,1,0,0,3,0,0,2,1,0,299,299); -- Dextrose model pet

-- ---------------------------------------------------------------
-- ----------------------PROMATHIA BCNM---------------------------
-- ---------------------------------------------------------------
REPLACE INTO `mob_pools` VALUES (5901,'Promathia','Promathia',134,0x0000300400000000000000000000000000000000,7,7,3,240,100,0,1,0,0,2,0,32,3979,155,0,0,127,1,0,134,134);

-- ---------------------------------------------------------------
-- ----------------------SHINRYU BCNM---------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_pools WHERE poolid = 3604;
INSERT INTO `mob_pools` VALUES (3604,'Shinryu','Shinryu',475,0x00003F0900000000000000000000000000000000,1,4,12,240,100,0,1,0,0,18,23,0,3,409,5,0,400,1,0,475,475); -- Custom Shinryu Skillist

-- -------------------------------------------------------------
-- --------------------CUSTOM OURYU-----------------------------
-- -------------------------------------------------------------
UPDATE mob_pools SET familyid = 259, modelid = 0x0000620200000000000000000000000000000000, mJob = 7, sJob = 7, cmbDmgMult = 80, behavior = 1024, true_detection = 1, immunity = 0, name_prefix = 32, flag = 606, entityFlags = 157, spellList = 304, skill_list_id = 259 WHERE poolid = 459;

-- -------------------------------------------------------------
-- --------------------CUSTOM BAHAMUT---------------------------
-- -------------------------------------------------------------
-- DELETE FROM mob_pools WHERE poolid = 5741;
-- INSERT INTO `mob_pools` VALUES (5741,'Wake_Warder_Wanda','Wake_Warder_Wanda',449,0x00001B0500000000000000000000000000000000,4,5,7,240,100,1024,1,1,0,16,55,32,100,157,0,0,144,1,0,726);

-- -------------------------------------------------------------
-- -----------------------FIAT LUX------------------------------
-- -------------------------------------------------------------
DELETE FROM mob_pools where poolid = 6031;
INSERT INTO `mob_pools` VALUES (6031,'Shadow_Lord','Shadow_Lord',224,0x0600F80200000000000000000000000000000000,1,12,4,200,100,0,1,1,0,18,0,0,0,0,0,0,0,1,0,1011,1011); -- Shadow Lord

-- -------------------------------------------------------------
-- -----------------------ASSAULTS------------------------------
-- -------------------------------------------------------------
UPDATE mob_pools SET immunity = 1200 WHERE poolid = 534; -- Brittle Rock
UPDATE mob_pools SET modelid = 0x0000C20100000000000000000000000000000000 WHERE poolid = 534; -- Brittle Rock
UPDATE mob_pools SET entityFlags = 1155 WHERE poolid = 262; -- Ashu Talif Captain
UPDATE mob_pools SET aggro = 1 WHERE poolid = 2401; -- Leujaoam Worm

-- -------------------------------------------------------------
-- -----------------SALVAGE - ARRAPAGO REMNANTS-----------------
-- -------------------------------------------------------------
-- Set new TP list for Chariot bosses
UPDATE mob_pools SET skill_list_id = 1015 WHERE poolid = 364; -- Battleclad Chariot
UPDATE mob_pools SET skill_list_id = 1013 WHERE poolid = 2431; -- Long Armed Chariot
UPDATE mob_pools SET skill_list_id = 1014 WHERE poolid = 2433; -- Long Bowed Chariot
-- Split off new mob pools for NMs
INSERT INTO `mob_pools` VALUES (6036,'Psycheflayer','Psycheflayer_NM',311,0x0000F00600000000000000000000000000000000,4,5,5,240,100,0,1,1,1,2,656,0,0,4,0,0,28,1,0,311,311);
INSERT INTO `mob_pools` VALUES (6037,'Deviate_Bhoot','Deviate_Bhoot_NM',121,0x0000700100000000000000000000000000000000,4,4,12,240,100,0,1,0,0,2,0,0,0,3,0,0,28,1,0,121,121);
UPDATE mob_pools SET mobtype = 0 WHERE poolid IN (1015,3215);

-- ---------------------------------------------------------------
-- -------------------WOTG - FOMOR WEAPON NMs---------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_pools` VALUES (6034,'Ethniu','Ethniu',115,0x01001D0702110221023102410251B61CB7100000,4,6,2,240,100,0,1,1,1,2,23,32,0,1181,0,0,432,1,0,1019,1019); -- Ethniu
INSERT INTO `mob_pools` VALUES (6035,'Tethra','Tethra',115,0x0100000000000000000000001F78070001000000,4,16,12,240,100,0,1,1,1,2,23,32,0,1181,0,0,433,1,0,1020,1020); -- Tethra
UPDATE mob_pools SET cmbSkill = 3, name_prefix = 32, entityFlags = 1181, spellList = 429, skill_list_id = 1016 WHERE poolid = 4696; -- Lugh
UPDATE mob_pools SET cmbSkill = 8, links = 1, name_prefix = 32, entityFlags = 1181, spellList = 431, skill_list_id = 1018 WHERE poolid = 5143; -- Buarainech
UPDATE mob_pools SET sJob = 16, cmbSkill = 4, links = 1, name_prefix = 32, spellList = 430, skill_list_id = 1017 WHERE poolid = 5144; -- Elatha
