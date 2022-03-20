-- -------------------------------------------------------------
-- ----------------MISC CUSTOM NM/MOB CHANGES-------------------
-- -------------------------------------------------------------
UPDATE mob_groups SET spawntype = 128, HP = 40000, minLevel = 88, maxLevel = 88 WHERE groupid = 8000; -- Adamantking Spawn + Buff
UPDATE mob_groups SET spawntype = 128, HP = 50000, minLevel = 88, maxLevel = 88 WHERE groupid = 8072; -- Bakgodek Spawn + Buff
UPDATE mob_groups SET spawntype = 128, HP = 50000, minLevel = 88, maxLevel = 88 WHERE groupid = 8096; -- Tzee Xicu the Manifest
UPDATE mob_groups SET minLevel = 70, maxLevel = 70 WHERE groupid = 8118; -- Yagudos Avatar
UPDATE mob_groups SET respawntime = 28800 WHERE groupid = 8837; -- reduce Oni Carcass respawn time
UPDATE mob_groups SET MP = 4000 WHERE groupid = 300; -- Diabolos Prime
UPDATE mob_groups SET spawntype = 4 WHERE groupid = 9025; -- Fix Devil Manta to be fished
UPDATE mob_groups SET HP = 24000, MP = 6000, minLevel = 80, maxLevel = 82 WHERE groupid = 10158;  -- Lord of Onzozo buff
UPDATE mob_groups SET spawntype = 32 WHERE groupid = 5647; -- Lumbering lambert lotto spawn fix
UPDATE mob_groups SET HP = 35000, minLevel = 85, maxLevel = 85 WHERE groupid = 10107; -- Bune
UPDATE mob_groups SET HP = 40000, minLevel = 87, maxLevel = 87 WHERE groupid = 9036; -- Guivre
UPDATE mob_groups SET HP = 30000, minLevel = 88, maxLevel = 88 WHERE groupid = 6785; -- King Vinegarroon
UPDATE mob_groups SET HP = 30000, minLevel = 87, maxLevel = 87 WHERE groupid = 9962; -- Ash Dragon
-- Valley of Sorrows
UPDATE mob_groups SET HP = 20000, minLevel = 78, maxLevel = 80 WHERE groupid = 6857; -- Adamantoise
UPDATE mob_groups SET minLevel = 68, maxLevel = 72 WHERE groupid = 6858; -- Air Elemental
UPDATE mob_groups SET HP = 55000 WHERE groupid = 6859; -- Aspidochelone
UPDATE mob_groups SET minLevel = 68, maxLevel = 72 WHERE groupid = 6860; -- Fire Elemental
UPDATE mob_groups SET minLevel = 72, maxLevel = 75 WHERE groupid = 6864; -- Peryton
UPDATE mob_groups SET minLevel = 72, maxLevel = 75 WHERE groupid = 6866; -- Valley Manticore
UPDATE mob_groups SET minLevel = 72, maxLevel = 75 WHERE groupid = 6867; -- Velociraptor
-- Misareaux Coast
UPDATE mob_groups SET spawntype = 1 WHERE groupid = 643; -- Fomor Black Mage
UPDATE mob_groups SET spawntype = 1 WHERE groupid = 644; -- Fomor Dark Knight
-- Lufaise Meadows
UPDATE mob_groups SET spawntype = 1 WHERE groupid = 572; -- Fomor Black Mage
UPDATE mob_groups SET spawntype = 1 WHERE groupid = 573; -- Fomor Dark Knight
-- Remove random Campaign mob spawns in Vunkerl Inlet
UPDATE mob_groups SET respawntime = 0, spawntype = 128 WHERE respawntime = 1 AND zoneid = 83;
UPDATE mob_groups SET spawntype = 128 WHERE minLevel = 0 AND spawntype = 0 AND zoneid = 83;
-- Set spawntypes for Hunt NMs to 0
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 6545; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 6152;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 5742; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 8784;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 5947; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 8087;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 8093; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 6620;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 7961; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 6255;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 14315; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 10074;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 9194; 
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 9214;
UPDATE mob_groups SET spawnType = 0 WHERE groupid = 10163; 

-- -------------------------------------------------------------
-- --------------CUSTOM GOV MOB LEVEL ADJUSTMENTS---------------
-- -------------------------------------------------------------
-- Gustav Tunnel
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10760; -- Boulder Eater
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10761; -- Pygmytoise
-- The Boyahda Tree
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10829; -- Viseclaw
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10744; -- Snaggletooth Peapuk
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10745; -- Mourning Crawler
-- Garlaige Citadel
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10762; -- Warden Beetle
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10831; -- Donjon Bat
UPDATE mob_groups SET minLevel = 68, maxLevel = 72 WHERE groupid = 9889; -- Earth Elemental
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10764; -- Fortalice Bats
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10763; -- Kaboom
UPDATE mob_groups SET minLevel = 68, maxLevel = 72 WHERE groupid =9914; -- Thunder Elemental
-- Kuftal Tunnel
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10746; -- Kuftal Delver
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10747; -- Machairodus
-- Korroloka Tunnel
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10785; -- Lacerator
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10786; -- Spool Leech
-- Bostaunieux Oubliette
UPDATE mob_groups SET poolid = 6033, minLevel = 81, maxLevel = 84 WHERE groupid = 10752; -- Wurdalak
UPDATE mob_groups SET spawntype = 0, minLevel = 81, maxLevel = 84 WHERE groupid = 10753; -- Blind Bat
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10754; -- Panna Cotta
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10755; -- Nachtmahr
UPDATE mob_groups SET spawntype = 0, minLevel = 81, maxLevel = 84 WHERE groupid = 10756; -- Dabilla
-- Crawler's Nest
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10765; -- King Crawler
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10766; -- Vespo
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10767; -- Dancing Jewel
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10768; -- Olid Funguar
-- Labyrinth of Onzozo
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10832; -- Babaulas
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10833; -- Boribaba
-- Fei'Yin
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10757; -- Wekufe
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10758; -- Sentient Carafe
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10759; -- Balayang
-- Maze of Shakhrami
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10825; -- Bleeder Leech
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10826; -- Chaser Bats
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10827; -- Warren Bat
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10828; -- Crypterpillar
-- Gusgen Mines
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10769; -- Accursed Soldier
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10770; -- Accursed Sorcerer
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10771; -- Madfly
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10772; -- Rockmill
-- The Eldieme Necropolis
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10813; -- Hellbound Warrior
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10814; -- Hellbound Warlock
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10815; -- Nekros Hound
-- Ordelle's Caves
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10809; -- Buds Bunny
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10810; -- Bilis Leech
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10811; -- Swagger Sprice
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10812; -- Targe Beetle
-- Dangruf Wadi
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10773; -- Goblin Brigand
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10774; -- Goblin Headsman
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10775; -- Goblin Healer
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10776; -- Witchetty Grub
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10777; -- Couloir Leech
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10778; -- Prim Pika
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10779; -- Natty Gibbon
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10780; -- Trimmer
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10781; -- Fume Lizard
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10782; -- Goblin Conjurer
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10783; -- Goblin Bladesmith
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10784; -- Goblin Bushwhacker
-- Toraimarai Canal
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10816; -- Blackwater Pugil
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10817; -- Plunderer Crab
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10818; -- Deviling Bats
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10819; -- Sodden Bones
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10820; -- Drowned Bones
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10821; -- Starborer
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10822; -- Rapier Scorpion
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10823; -- Poroggo Excavator
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10824; -- Flume Toad
-- Ranguemont Pass
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10787; -- Hovering Oculus
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10788; -- Bilesucker
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10789; -- Goblin Hoodoo
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10790; -- Goblin Artificer
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10791; -- Goblin Tanner
UPDATE mob_groups SET minLevel = 81, maxLevel = 84 WHERE groupid = 10792; -- Goblin Chaser

-- -------------------------------------------------------------
-- --------------CUSTOM DYNAMIS NM/BOSS CHANGES-----------------
-- -------------------------------------------------------------
UPDATE mob_groups SET HP = 32000, MP = 8000 WHERE groupid = 1194; -- Apocalyptic Beast HP increase
UPDATE mob_groups SET HP = 40000 WHERE groupid = 1392; -- Diabolos Club
UPDATE mob_groups SET HP = 40000 WHERE groupid = 1393; -- Diabolos Diamond
UPDATE mob_groups SET HP = 40000 WHERE groupid = 1394; -- Diabolos Heart
UPDATE mob_groups SET HP = 40000 WHERE groupid = 1395; -- Diabolos Spade
UPDATE mob_groups SET MP = 4000 WHERE groupid = 7158; -- Velosareon
UPDATE mob_groups SET MP = 4000 WHERE groupid = 7074; -- Quiebitiel
UPDATE mob_groups SET MP = 4000 WHERE groupid = 7028; -- Goublefaupe
UPDATE mob_groups SET MP = 4000 WHERE groupid = 7010; -- Dagourmarche

-- -------------------------------------------------------------
-- ------------------CUSTOM SKY NM CHANGES----------------------
-- -------------------------------------------------------------
-- Rebalance Sky NMs for Level 80
-- Ru'Aun Gardens
UPDATE mob_groups SET HP = 30000, minLevel = 90 WHERE groupid = 6923; -- Byakko
UPDATE mob_groups SET HP = 30000, minLevel = 90 WHERE groupid = 6930; -- Genbu
UPDATE mob_groups SET HP = 30000, minLevel = 90 WHERE groupid = 6938; -- Seiryu
UPDATE mob_groups SET HP = 30000, minLevel = 90 WHERE groupid = 6940; -- Suzaku
UPDATE mob_groups SET spawntype = 0, respawntime = 1800, HP = 20000, minLevel = 85, maxLevel = 85 WHERE groupid = 6925; -- Despot
-- The Shrine of Ru'Avitau
UPDATE mob_groups SET HP = 22000, minLevel = 85 WHERE groupid = 9274; -- Faust
UPDATE mob_groups SET HP = 75000 WHERE groupid = 9278; -- Kirin
UPDATE mob_groups SET HP = 18000 WHERE groupid = 9280; -- Mother Globe
UPDATE mob_groups SET HP = 10000 WHERE groupid = 9281; -- Olla Grande
UPDATE mob_groups SET HP = 10000 WHERE groupid = 9282; -- Olla Media
UPDATE mob_groups SET HP = 10000 WHERE groupid = 9283; -- Olla Pequena
UPDATE mob_groups SET HP = 1200 WHERE groupid = 9285; -- Slave Globe
UPDATE mob_groups SET HP = 22000, minLevel = 87 WHERE groupid = 9288; -- Ullikummi
UPDATE mob_groups SET HP = 16000, minLevel = 85, maxLevel = 85 WHERE groupid = 9276; -- Genbu
UPDATE mob_groups SET HP = 16000, minLevel = 85, maxLevel = 85 WHERE groupid = 9284; -- Seiryu
UPDATE mob_groups SET HP = 16000, minLevel = 85, maxLevel = 85 WHERE groupid = 9269; -- Byakko
UPDATE mob_groups SET HP = 16000, minLevel = 85, maxLevel = 85 WHERE groupid = 9286; -- Suzaku
-- Ve'Legannon Palace
UPDATE mob_groups SET HP = 20000, minLevel = 85, maxLevel = 85 WHERE groupid = 9248; -- Brigandish Blade
UPDATE mob_groups SET HP = 17000, minLevel = 85, maxLevel = 85 WHERE groupid = 9259; -- Steam Cleaner
UPDATE mob_groups SET HP = 18000, minLevel = 85 WHERE groupid = 9262; -- Zipacna

-- -------------------------------------------------------------
-- ----------------CUSTOM SEA NM/MOB CHANGES--------------------
-- -------------------------------------------------------------
-- Al'Taieu
UPDATE mob_groups SET HP = 45000, MP = 5000, minLevel = 86, maxLevel = 86 WHERE groupid = 868; -- Jailer of Hope
UPDATE mob_groups SET HP = 45000, minLevel = 86, maxLevel = 86 WHERE groupid = 869; -- Jailer of Justice
UPDATE mob_groups SET HP = 48000, minLevel = 86, maxLevel = 86 WHERE groupid = 871; -- Jailer of Prudence
UPDATE mob_groups SET HP = 80000, MP = 5000 WHERE groupid = 870; -- Jailer of Love HP fix
UPDATE mob_groups SET HP = 120000, MP = 50000 WHERE groupid = 862; -- Absolute Virtue HP/MP adjustment
update mob_groups set HP = 4000, MP = 2000, minLevel = 78, maxLevel = 81 where groupid = 864; -- AV adds adjustment
-- Grand Palace of HuXoi
UPDATE mob_groups SET HP = 30000, minLevel = 86, maxLevel = 86 WHERE groupid = 902; -- Jailer of Temperance
UPDATE mob_groups SET minLevel = 80, maxLevel = 80 WHERE groupid = 906; -- Qnaern
UPDATE mob_groups SET minLevel = 80, maxLevel = 80 WHERE groupid = 907; -- Qnaern
UPDATE mob_groups SET HP = 22000, minLevel = 83, maxLevel = 83 WHERE groupid = 900; -- Ixaern_MNK
-- Ghrah spellcasting fix
UPDATE mob_groups SET MP = 2000 WHERE groupid = 898; -- Eo'Ghrah
UPDATE mob_groups SET MP = 3000 WHERE groupid = 914; -- Aw'Ghrah
-- The Garden of RuHmet
UPDATE mob_groups SET HP = 28000, MP = 3000 WHERE groupid = 916; -- Ixaern_DRK
UPDATE mob_groups SET HP = 28000 WHERE groupid = 917; -- Ixaern_DRG
UPDATE mob_groups SET HP = 25000, MP = 5000 WHERE groupid = 919; -- Jailer of Faith
UPDATE mob_groups SET HP = 32000, MP = 2500, minLevel = 83, maxLevel = 83 WHERE groupid = 920; -- Jailer of Fortitude
UPDATE mob_groups SET HP = 10000, MP = 1500, minLevel = 80, maxLevel = 80 WHERE groupid = 921; -- Kfghrah_WHM
UPDATE mob_groups SET HP = 10000, MP = 1800, minLevel = 80, maxLevel = 80 WHERE groupid = 922; -- Kfghrah_BLM
-- Raise Levels on Hpemdes in Al'Taieu so they will come above water
UPDATE mob_groups SET minLevel = 75, maxLevel = 79 WHERE groupid = 888; -- UlHpemde
UPDATE mob_groups SET minLevel = 76, maxLevel = 80 WHERE groupid = 875; -- OmHpemde
-- Limbus
UPDATE mob_groups SET dropid = 4719 WHERE groupid = 1073; -- Gunpod
-- Apollyon mob Level/HP re-balance for Level 80
UPDATE mob_groups SET HP = HP + 8000 WHERE zoneid = 38 AND HP > 25000;
UPDATE mob_groups SET HP = HP + 5000 WHERE zoneid = 38 AND HP > 14000 AND HP < 25000;
UPDATE mob_groups SET HP = HP + 4000 WHERE zoneid = 38 AND HP > 7000 AND HP < 14000;
UPDATE mob_groups SET HP = HP + 2000 WHERE zoneid = 38 AND HP < 7000;
UPDATE mob_groups SET minLevel = minLevel + 3 WHERE zoneid = 38 AND minLevel > 76;
UPDATE mob_groups SET minLevel = minLevel + 5 WHERE zoneid = 38 AND minLevel < 76;
UPDATE mob_groups SET maxLevel = maxLevel + 2 WHERE zoneid = 38 AND maxLevel > 84;
UPDATE mob_groups SET maxLevel = maxLevel + 3 WHERE zoneid = 38 AND maxLevel < 84;
-- Temenos mob Level/HP re-balance for Level 80
UPDATE mob_groups SET HP = HP + 8000 WHERE zoneid = 37 AND HP > 25000;
UPDATE mob_groups SET HP = HP + 5000 WHERE zoneid = 37 AND HP > 14000 AND HP < 25000;
UPDATE mob_groups SET HP = HP + 4000 WHERE zoneid = 37 AND HP > 7000 AND HP < 14000;
UPDATE mob_groups SET HP = HP + 2000 WHERE zoneid = 37 AND HP < 7000 AND HP > 0;
UPDATE mob_groups SET minLevel = minLevel + 3 WHERE zoneid = 37 AND minLevel > 76;
UPDATE mob_groups SET minLevel = minLevel + 5 WHERE zoneid = 37 AND minLevel < 76;
UPDATE mob_groups SET maxLevel = maxLevel + 2 WHERE zoneid = 37 AND maxLevel > 84;
UPDATE mob_groups SET maxLevel = maxLevel + 3 WHERE zoneid = 37 AND maxLevel < 84;
-- Mystic Avatar buffs in Temenos Central 2
UPDATE mob_groups SET HP = 20000, MP = 8000 WHERE groupid IN (11181,11182,11183,11184,11185,11186);
-- Buffs to HP and other misc. fixes in Temenos Central 3
UPDATE mob_groups SET minLevel = 78, maxLevel = 78 WHERE groupid = 1032; -- Yagudos Elemental
UPDATE mob_groups SET HP = 5000, minLevel = 78, maxLevel = 78 WHERE groupid = 1001; -- Orcs Wyvern
UPDATE mob_groups SET HP = 20000, dropid = 4414 WHERE groupid = 973; -- Fossil Quadav
UPDATE mob_groups SET HP = 20000 WHERE groupid IN (1030,1029,1028,1027,1026,1025,1024,1023,1008,1007,996,983,982,981,980,979,978);
UPDATE mob_groups SET HP = 30000 WHERE groupid IN (941,1002,1003);

-- -------------------------------------------------------------
-- ----------------CUSTOM TOAU NM/MOB CHANGES-------------------
-- -------------------------------------------------------------
-- T4 ZNM Rebuff because fuck DSP
UPDATE mob_groups SET HP = 75000, MP = 10000, minLevel = 92, maxLevel = 92 WHERE groupid = 2059; -- Sarameya
UPDATE mob_groups SET HP = 75000, minLevel = 92, maxLevel = 92 WHERE groupid = 1696; -- Tinnin
UPDATE mob_groups SET HP = 75000, minLevel = 92, maxLevel = 92 WHERE groupid = 2829; -- Tyger
-- Strengthen ToAU HNMs since easy & Mythic NMs
UPDATE mob_groups SET HP = 95000, minLevel = 90, maxLevel = 90 WHERE groupid = 2795; -- Khimaira
UPDATE mob_groups SET HP = 75000, minLevel = 90, maxLevel = 90 WHERE groupid = 2032; -- Cerberus
UPDATE mob_groups SET dropid = 4624, HP = 95000, minLevel = 90, maxLevel = 90 WHERE groupid = 1651; -- Hydra
-- ToAU King buffs
UPDATE mob_groups SET HP = 75000, minLevel = 90, maxLevel = 90 WHERE groupid = 1859; -- Medusa
UPDATE mob_groups SET HP = 80000, minLevel = 90, maxLevel = 90 WHERE groupid = 2176; -- Gulool Ja Ja
UPDATE mob_groups SET respawntime = 259200, HP = 85000, minLevel = 90, maxLevel = 90 WHERE groupid = 2095; -- Gurfurlur
-- ToAU Mob Level Increase at Nyzul Bird Camp/Mamool Ja Staging Point/Puddings in MZ
UPDATE mob_groups SET respawntime = 180, HP = 7000, minLevel = 82, maxLevel = 85 WHERE groupid = 2039; -- Ebony Pudding
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1754; -- Greater Colibri
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1772; -- Mamool Ja Blusterer
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1776; -- Mamool Ja Philosopher
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1777; -- Mamool Ja Pikeman
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1773; -- Mamool Ja Infiltrator
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1774; -- Mamool Ja Lurker
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1775; -- Mamool Ja Mimer
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1778; -- Mamool Ja Stabler
UPDATE mob_groups SET respawntime = 180, HP = 10000, minLevel = 82, maxLevel = 85 WHERE groupid = 1797; -- Skoffin
UPDATE mob_groups SET respawntime = 180, HP = 7500, minLevel = 80, maxLevel = 81 WHERE groupid = 1796; -- Sea Puk
UPDATE mob_groups SET respawntime = 180, HP = 12000, minLevel = 85, maxLevel = 86 WHERE groupid = 1804; -- Wivre
UPDATE mob_groups SET spawntype = 0 WHERE groupid = 2073; -- Wamoura spawn fix
UPDATE mob_groups SET minLevel = 70, maxLevel = 70 WHERE groupid IN (14180,14181,2016); -- Decrease level for Black Coffin mobs (not boss)

-- -------------------------------------------------------------
-- ------------------------ABYSSEA------------------------------
-- -------------------------------------------------------------
-- Abyssea La-Theine
select * from mob_groups where groupid = 6977;
update mob_groups set MP = 2000 and HP = 3000 where groupid = 3131; -- gnoles mp for penl embrace
update mob_groups set MP = 2000 and HP = 3000 where groupid = 3175;
update mob_groups set MP = 2000 and HP = 3000 where groupid = 3306;
update mob_groups set MP = 2000 where groupid = 6977;
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6944; -- Adamastor
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6945; -- Akash
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 15000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6947; -- Baba Yaga
UPDATE mob_groups SET respawntime = 0, spawntype = 128, HP = 38000, MP = 0, minLevel = 86, maxLevel = 86 WHERE groupid = 6951; -- Briareus
UPDATE mob_groups SET respawntime = 0, spawntype = 128, HP = 20000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 6954; -- Carabosse
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6955; -- Chasmic Hornet
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6960; -- Dozing Dorian
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6966; -- Grandgousier
UPDATE mob_groups SET respawntime = 0, spawntype = 128, HP = 38000, MP = 18000, minLevel = 86, maxLevel = 86 WHERE groupid = 6969; -- Hadhayosh
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6972; -- Irrlicht
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6973; -- Karkinos
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6974; -- Keesha Poppo
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6975; -- LaTheine Liege
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6976; -- Lugarhoo
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6978; -- Mangytailed Marvin
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6980; -- Megamaw Mikey
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6981; -- Megantereon
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6982; -- Nahn
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6983; -- Nguruvilu
UPDATE mob_groups SET respawntime = 1800, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 6984; -- Ovni
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6985; -- Pantagruel
UPDATE mob_groups SET respawntime = 1800, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6987; -- Piasa
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6990; -- Poroggo DomJuan
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 6997; -- Toppling Tuber
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6998; -- Trudging Thomas
UPDATE mob_groups SET respawntime = 600, HP = 20000, MP = 0, minLevel = 83, maxLevel = 83 WHERE groupid = 6979; -- Meditator
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 6952; -- Brooder
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 38000, MP = 0, minLevel = 86, maxLevel = 86 WHERE groupid = 6994; -- Ruminator
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6946; -- Angler Tiger
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6948; -- Bathayal Gigas
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6949; -- Black Merino
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6950; -- Brae OpoOpo
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6953; -- Cankercap
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6956; -- Crapaudy
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6957; -- Crepuscule Puk
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6959; -- Demersal Gigas
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6961; -- Ephemeral Clionid
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6962; -- Ephemeral Limule
UPDATE mob_groups SET respawntime = 360, HP = 4000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6963; -- Farfadet
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6964; -- Geier
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6965; -- Gigadaphnia
UPDATE mob_groups SET respawntime = 300, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6966;
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6967; -- Great Wasp
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6968; -- Hadal Gigas
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6970; -- Hammering Ram
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6971; -- Irate Sheep
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6977; -- Luison
UPDATE mob_groups SET dropid = 657, respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6986; -- Pasture Funguar
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6988; -- Plateau Glider
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6989; -- Plateau Hare
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6991; -- Poroggo Sedecteur
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6992; -- Psychopomp
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6993; -- Rock Grinder
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6995; -- Sentinel Crab
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 6996; -- Sturdy Pyxis
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 6999; -- Veld Clionid
-- Abyssea Konschtat
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 413; -- Alkonost
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 415; -- Arimaspi
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, dropid = 4683, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 416; -- Ashtaerth the Gallvaxed
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 418; -- Bakka
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 419; -- Balaur
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 34000, MP = 8000, minLevel = 86, maxLevel = 86 WHERE groupid = 420; -- Bloodeye Vileberry
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 421; -- Bloodguzzler
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 422; -- Bombadeel
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 423; -- Clingy Clare
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 38000, MP = 0, minLevel = 86, maxLevel = 86 WHERE groupid = 429; -- Eccentric Eve
UPDATE mob_groups SET respawntime = 900, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 433; -- Fistule
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 432; -- Fear Gorta
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 434; -- Gangly Gean
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 436; -- Guimauve
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 440; -- Hexenpilz
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 444; -- Keratyrannos
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 445; -- Khalamari
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 38000, MP = 0, minLevel = 86, maxLevel = 86 WHERE groupid = 446; -- Kukulkan
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 447; -- Lentor
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 3000, MP = 2500, minLevel = 80, maxLevel = 80 WHERE groupid = 448; -- Lesser Arimaspi
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 454; -- Pavan
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 2500, MP = 0, minLevel = 75, maxLevel = 75 WHERE groupid = 455; -- Pustule
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 457; -- Raskovnik
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 460; -- Sarcophilus
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, dropid = 4684, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 463; -- Siranpa Kamuy
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 30000, MP = 5500, minLevel = 84, maxLevel = 84 WHERE groupid = 467; -- Tonberry Lieje
UPDATE mob_groups SET respawntime = 1800, spawntype = 0, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 469; -- Turul
UPDATE mob_groups SET respawntime = 600, spawntype = 0, HP = 20000, MP = 0, minLevel = 83, maxLevel = 83 WHERE groupid = 451; -- Meanderer
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, dropid = 708, HP = 30000, MP = 5000, minLevel = 84, maxLevel = 84 WHERE groupid = 427; -- Depths Digestor
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, HP = 3000, MP = 0, minLevel = 78, maxLevel = 78 WHERE groupid = 438; -- Hadal Mirror
UPDATE mob_groups SET respawntime = 1800, spawntype = 128, dropid = 1620, HP = 38000, MP = 10000, minLevel = 86, maxLevel = 86 WHERE groupid = 439; -- Hadal Satiator
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 412; -- Ab'Xzomit
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 424; -- Cryptonberry Occultist
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 425; -- Dapifer Imp
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 426; -- Deep Eye
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 428; -- Dybbuk
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 430; -- Ephemeral Clionid
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 458; -- Ephemeral Limule
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 435; -- Gneiss Leech
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 437; -- Gungle Slug
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 443; -- Hoary Ragwort
UPDATE mob_groups SET respawntime = 360, dropid = 2918, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 441; -- Highland Rafflesia
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 442; -- Highland Treant
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 449; -- Ley Clionid
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 450; -- Licorice
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 452; -- Mesa Wivre
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 453; -- Morboling
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 456; -- Quaitu
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 458; -- Razorback
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 459; -- Razorback
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 461; -- Shadow Funguar
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 462; -- Shadow Lizard
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 464; -- Sods Limule
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 465; -- Sturdy Pyxis
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 466; -- Tonberry Bedeviler
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 468; -- Trotting Sapling
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 470; -- Viridis Wyvern
UPDATE mob_groups SET spawntype = 0, respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 471; -- Ypotryll

-- Abyssea Tahrongi
UPDATE mob_groups SET poolid = 4549, dropID = 4685, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12961; -- Abas
UPDATE mob_groups SET poolid = 4561, dropID = 4686, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12973; -- Adze
UPDATE mob_groups SET poolid = 4550, dropID = 4687, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12962; -- Alectryon
UPDATE mob_groups SET poolid = 4538, respawntime = 1800, spawntype = 0, dropid = 4734, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12980; -- Bhumi
UPDATE mob_groups SET poolid = 4545, dropID = 4688, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12957; -- Cannered Noz
UPDATE mob_groups SET poolid = 4554, dropID = 4689, respawntime = 1800, spawntype = 128, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 12966; -- Chloris
UPDATE mob_groups SET poolid = 4559, dropID = 4690, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12971; -- Chukwa
UPDATE mob_groups SET poolid = 4557, dropID = 4691, respawntime = 1800, spawntype = 0, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 12969; -- Cuelebre
UPDATE mob_groups SET poolid = 4547, dropID = 4692, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12959; -- Gancanagh
UPDATE mob_groups SET poolid = 4555, dropID = 4693, respawntime = 1800, spawntype = 128, HP = 30000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 12967; -- Glavoid
UPDATE mob_groups SET poolid = 4542, dropID = 4694, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12979; -- Halimede
UPDATE mob_groups SET poolid = 4548, dropID = 4695, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12960; -- Hedetet
UPDATE mob_groups SET poolid = 4566, dropID = 4696, respawntime = 1800, spawntype = 0, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 12978; -- Iratham
UPDATE mob_groups SET poolid = 4553, dropID = 4697, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12965; -- Lachrymater
UPDATE mob_groups SET poolid = 4556, dropID = 4698, respawntime = 1800, spawntype = 128, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 12968; -- Lacovie
UPDATE mob_groups SET poolid = 4563, dropID = 4699, respawntime = 1800, spawntype = 0, HP = 50000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12975; -- Manananggal
UPDATE mob_groups SET poolid = 4558, dropID = 4700, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12970; -- Mictlantecuhtli
UPDATE mob_groups SET poolid = 4560, dropID = 4701, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12972; -- Minhocao
UPDATE mob_groups SET poolid = 4552, dropID = 4702, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12964; -- Muscaliet
UPDATE mob_groups SET poolid = 4564, dropID = 4703, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12976; -- Myrmecoleon
UPDATE mob_groups SET poolid = 4544, zoneid = 45, dropID = 4704, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12956; -- Ophanim
UPDATE mob_groups SET poolid = 4562, dropID = 4705, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12974; -- Quetzalli
UPDATE mob_groups SET poolid = 4551, dropID = 4706, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12963; -- Tefenet
UPDATE mob_groups SET poolid = 4546, dropID = 4707, respawntime = 1800, spawntype = 0, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12958; -- Treble Noctules
UPDATE mob_groups SET poolid = 4543, dropID = 4708, respawntime = 1800, spawntype = 0, HP = 30000, MP = 2500, minLevel = 84, maxLevel = 84 WHERE groupid = 12955; -- Vetehinen
UPDATE mob_groups SET poolid = 4541, respawntime = 600, spawntype = 0, HP = 20000, MP = 0, minLevel = 83, maxLevel = 83 WHERE groupid = 12983; -- Hungerer
UPDATE mob_groups SET poolid = 4540, dropID = 4709, respawntime = 1800, spawntype = 128, HP = 30000, MP = 0, minLevel = 84, maxLevel = 84 WHERE groupid = 12982; -- Yearner
UPDATE mob_groups SET poolid = 4539, dropID = 4710, respawntime = 1800, spawntype = 128, HP = 38000, MP = 4000, minLevel = 86, maxLevel = 86 WHERE groupid = 12981; -- Usurper
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1445; -- Beholder
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1446; -- Blood Bat
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 12954; -- Bog Body
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1448; -- Canyon Eft
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1449; -- Canyon Scorpion
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1450; -- Caoineag
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1452; -- Cluckatrice
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1453; -- Ephemeral Clionid
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1454; -- Ephemeral Limule
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1455; -- Gulch Limule
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1456; -- Gully Clionid
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1457; -- Hieracosphinx
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1458; -- Jagauarundi
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 1459; -- Lamenter
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1460; -- Naul
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 12953; -- Nematocera
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1461; -- Pachypodium
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 1463; -- Sturdy Pyxis
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 12950; -- Thalassinon
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 0, minLevel = 78, maxLevel = 82 WHERE groupid = 12951; -- Vermes Carnium
UPDATE mob_groups SET respawntime = 360, HP = 6000, MP = 1000, minLevel = 78, maxLevel = 82 WHERE groupid = 12952; -- Wiederganger

-- ---------------------------------------------------------------
-- ---------------------BEADEAUX [S} SCNM-------------------------
-- ---------------------------------------------------------------
UPDATE mob_groups SET poolid = 6032, dropid = 4719, HP = 80000, MP = 25000, minLevel = 90, maxLevel = 90 WHERE groupid = 4618; -- Za Dha Adamantking
UPDATE mob_groups SET HP = 12000, MP = 6500, minLevel = 84, maxLevel = 84 WHERE groupid = 4619; -- Za Dhas Biographer (BLM)
UPDATE mob_groups SET HP = 12000, MP = 6500, minLevel = 84, maxLevel = 84 WHERE groupid = 4620; -- Za Dhas Minister (WHM)
UPDATE mob_groups SET dropId = 4711, minLevel = 85, maxLevel = 90 WHERE groupid = 4543; -- Ga'Lhu Nevermolt
UPDATE mob_groups SET minLevel = 85, maxLevel = 90 WHERE groupid = 4508; -- Bres
UPDATE mob_groups SET dropId = 4712, minLevel = 85, maxLevel = 90 WHERE groupid = 4525; -- Di'Zho Spongeshell
UPDATE mob_groups SET minLevel = 85, maxLevel = 90 WHERE groupid = 4577; -- Observant Zekka
UPDATE mob_groups SET dropId = 4713, minLevel = 85, maxLevel = 90 WHERE groupid = 4572; -- Mu'Nhi Thimbletail
UPDATE mob_groups SET minLevel = 85, maxLevel = 90 WHERE groupid = 4503; -- Blifnix Oilycheeks
UPDATE mob_groups SET dropId = 4714, minLevel = 85, maxLevel = 90 WHERE groupid = 4612; -- Va'Gho Bloodbasked
UPDATE mob_groups SET dropId = 4715, minLevel = 85, maxLevel = 90 WHERE groupid = 4591; -- Ra'Dha Scarscute
UPDATE mob_groups SET dropId = 4716, minLevel = 85, maxLevel = 86 WHERE groupid = 4530; -- Ea'Tho Cruelheart
UPDATE mob_groups SET dropId = 4717, minLevel = 85, maxLevel = 86 WHERE groupid = 4499; -- Ba'Tho Mercifulheart
UPDATE mob_groups SET dropId = 4718, minLevel = 85, maxLevel = 86 WHERE groupid = 4519; -- Da'Dha Hundredmask
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4484; -- Adaman Quadav
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4489; -- Ancient Quadav
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4497; -- Baetyl Quadav
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4511; -- Chatoyant Quadav
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4526; -- Doyen Quadav
UPDATE mob_groups SET minLevel = 77, maxLevel = 81 WHERE groupid = 4531; -- Edible Slug
UPDATE mob_groups SET minLevel = 73, maxLevel = 75 WHERE groupid = 4532; -- Electrumcap
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4537; -- Ferroalloy Quadav
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4550; -- Gold Quadav
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4557; -- Iron Quadav
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4568; -- Magnes Quadav
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4570; -- Meteor Quadav
UPDATE mob_groups SET dropid = 837, minLevel = 82, maxLevel = 84 WHERE groupid = 4582; -- Pitchy Pudding
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4583; -- Platinum Quadav
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4595; -- Seneschal Imp
UPDATE mob_groups SET respawntime = 1056, minLevel = 82, maxLevel = 84 WHERE groupid = 4605; -- Star Ruby Quadav
UPDATE mob_groups SET minLevel = 84, maxLevel = 87 WHERE groupid = 4606; -- Steel Quadav
UPDATE mob_groups SET minLevel = 80, maxLevel = 87 WHERE groupid = 4607; -- Thunder Elemental
UPDATE mob_groups SET minLevel = 82, maxLevel = 84 WHERE groupid = 4611; -- Vajra Quadav
UPDATE mob_groups SET minLevel = 81, maxLevel = 83 WHERE groupid = 4614; -- Virulent Peiste
UPDATE mob_groups SET minLevel = 80, maxLevel = 87 WHERE groupid = 4616; -- Water Elemental

-- -------------------------------------------------------------
-- --------------------CUSTOM OURYU-----------------------------
-- -------------------------------------------------------------
UPDATE mob_groups SET respawntime = 432000, spawntype = 128, HP = 100000, MP = 10000, minLevel = 95, maxLevel = 95 WHERE groupid = 5092; -- Bloodlapper
-- Adding/Changing mob spawns around Ouryu spawn to make it more hostile
UPDATE mob_groups SET HP = 6000, minLevel = 75, maxLevel = 79 WHERE groupid = 5210; -- War Lynx
UPDATE mob_groups SET HP = 6000, minLevel = 76, maxLevel = 79 WHERE groupid = 5185; -- Scavenging Hound
UPDATE mob_groups SET minLevel = 77, maxLevel = 77 WHERE groupid = 5119; -- Earth Elemental
UPDATE mob_groups SET minLevel = 77, maxLevel = 77 WHERE groupid = 5125; -- Fire Elemental

-- -------------------------------------------------------------
-- --------------------CUSTOM BAHAMUT---------------------------
-- -------------------------------------------------------------
-- DELETE FROM mob_groups WHERE groupid = 14545;
-- INSERT INTO `mob_groups` VALUES (14545,5741,118,3600,1,4578,75000,0,90,90,0); -- Wake Warder Wanda

-- -------------------------------------------------------------
-- ------------------------KSNM99-------------------------------
-- -------------------------------------------------------------
UPDATE mob_groups SET HP = 80000, minLevel = 84, maxLevel = 84 WHERE groupid = 7939; -- Wyrm buff
UPDATE mob_groups SET HP = 80000, MP = 10000, minLevel = 84, maxLevel = 84 WHERE groupid = 7697; -- behe buff 
UPDATE mob_groups SET HP = 80000, MP = 15000, minLevel = 84, maxLevel = 84 WHERE groupid = 7860; -- ada buff

-- -------------------------------------------------------------
-- ----------------------TENZEN BCNM----------------------------
-- -------------------------------------------------------------
DELETE FROM mob_groups WHERE groupid = 7740;
DELETE FROM mob_groups WHERE groupid = 7741;
INSERT INTO `mob_groups` VALUES (7740,2181,140,0,128,0,12000,0,75,80,0);
INSERT INTO `mob_groups` VALUES (7741,2227,140,0,128,0,18000,10000,80,85,0); 

-- ---------------------------------------------------------------
-- ----------------------PROMATHIA BCNM---------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_groups WHERE groupid = 12948;
INSERT INTO `mob_groups` VALUES (12948,5901,255,0,128,4682,20000,9999,80,80,0); 

-- ---------------------------------------------------------------
-- -----------------------SHINRYU BCNM----------------------------
-- ---------------------------------------------------------------
DELETE FROM mob_groups WHERE groupid = 14087;
INSERT INTO `mob_groups` VALUES (14087,3604,255,0,128,3185,70000,50000,85,85,0);

-- ---------------------------------------------------------------
-- ----------------------APOCALYPSE NIGH--------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_groups` VALUES (932,2184,36,0,128,0,40000,0,87,87,0); -- Kamlanaut
INSERT INTO `mob_groups` VALUES (931,1158,36,0,128,0,40000,0,87,87,0); -- Ealdnarche

-- ---------------------------------------------------------------
-- --------------------------FIAT LUX-----------------------------
-- ---------------------------------------------------------------
UPDATE mob_groups set poolid = 6031, spawntype = 128, HP = 40000, minLevel = 88, maxLevel = 88 WHERE groupid = 8339; -- Shadow Lord (main guy)
INSERT INTO `mob_groups` VALUES (14638,6031,156,0,128,0,8000,0,82,82,0); -- Shadow Lord clones

-- ---------------------------------------------------------------
-- -------------------------ODIN BCNM-----------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_groups` VALUES (2766,2941,78,0,128,0,80000,0,85,87,0);

-- ---------------------------------------------------------------
-- -------------------------ASSAULTS------------------------------
-- ---------------------------------------------------------------
UPDATE mob_groups set allegiance = 1 where groupid = 10633;
UPDATE mob_groups set HP = 9999, allegiance = 1 where groupid = 2233;
UPDATE mob_groups SET HP = 10000, minLevel = 84, maxLevel = 85 WHERE groupid = 2336; -- Leujaoam Worm

-- -------------------------------------------------------------
-- -----------------SALVAGE - ARRAPAGO REMNANTS-----------------
-- -------------------------------------------------------------
UPDATE mob_groups SET allegiance = 1 WHERE groupid = 10633; -- Qirirn Mine
-- Set Chariot bosses to spawn in Arrapago Remants zone
UPDATE mob_groups SET HP = 50000, minLevel = 85, maxLevel = 85 WHERE groupid = 2417; -- Armored Chariot
UPDATE mob_groups SET zoneid = 74, spawntype = 128, HP = 50000, minLevel = 85, maxLevel = 85 WHERE groupid = 2384; -- Battleclad Chariot
UPDATE mob_groups SET zoneid = 74, spawntype = 128, HP = 50000, minLevel = 85, maxLevel = 85 WHERE groupid = 2505; -- Long-Armed Chariot
UPDATE mob_groups SET zoneid = 74, spawntype = 128, HP = 50000, minLevel = 85, maxLevel = 85 WHERE groupid = 2466; -- Long-Bowed Chariot
-- Fix drop id for several mobs
UPDATE mob_groups SET dropid = 2949 WHERE groupid IN (14533,14531,14532);
-- HP increases/fixes on Gears and Chariot 35 NM
UPDATE mob_groups SET HP = 40000, minLevel = 82, maxLevel = 82 WHERE groupid = 2413; -- Archaic Chariot
UPDATE mob_groups SET HP = 12000, minLevel = 79, maxLevel = 79 WHERE groupid = 2414; -- Archaic Gear
UPDATE mob_groups SET HP = 15000, minLevel = 79, maxLevel = 79 WHERE groupid = 2415; -- Archaic Gears
UPDATE mob_groups SET minLevel = 78, maxLevel = 78 WHERE groupid = 2416; -- Archaic Rampart
UPDATE mob_groups SET HP = 18000, minLevel = 82, maxLevel = 82 WHERE groupid = 2442; -- Qiqirn Astrologer
UPDATE mob_groups SET HP = 24000, minLevel = 82, maxLevel = 82 WHERE groupid = 2444; -- Qiqirn Treasure Hunter
-- Floor 2 socket NMs
UPDATE mob_groups SET HP = 12000, minLevel = 80, maxLevel = 80 WHERE groupid = 2440; -- Princess Pudding
UPDATE mob_groups SET zoneid = 74, spawntype = 128, HP = 12000, minLevel = 80, maxLevel = 80 WHERE groupid = 2460; -- Demented_Jalaawa (680 dropid)
UPDATE mob_groups SET zoneid = 74, spawntype = 128, HP = 12000, minLevel = 80, maxLevel = 80 WHERE groupid = 2390; -- Jakko (1839 dropid)
-- Floor 2 35 NMs
INSERT INTO mob_groups VALUES (14641,967,74,0,128,4721,12000,0,80,80,0); -- Don Poroggo
INSERT INTO mob_groups VALUES (14642,344,74,0,128,4722,25000,0,82,82,0); -- Gate Widow
UPDATE mob_groups SET zoneid = 74, spawntype = 128, dropid = 4723, HP = 20000, minLevel = 82, maxLevel = 82 WHERE groupid = 2402; -- Poroggo Madame
UPDATE mob_groups SET zoneid = 74, HP = 20000, minLevel = 82, maxLevel = 82 WHERE groupid = 2502; -- Hammerblow Majanun
-- Split off mob groups for floor 4 NMs and fix normal mobs
INSERT INTO mob_groups VALUES (14643,6036,74,0,128,4724,25000,0,84,84,0); -- Psycheflayer NM
INSERT INTO mob_groups VALUES (14644,6037,74,0,128,4725,25000,0,84,84,0); -- Deviate Bhoot NM
UPDATE mob_groups SET HP = 0 WHERE groupid = 2421; -- Deviate Bhoot
UPDATE mob_groups SET HP = 0 WHERE groupid = 2441; -- Psycheflayer
-- New mobs groups for new floor 5 NMs
INSERT INTO mob_groups VALUES (14645,3246,74,0,128,4726,25000,0,82,82,0); -- South Astrologer
INSERT INTO mob_groups VALUES (14646,216,74,0,128,4727,30000,0,82,82,0); -- South Chariot
INSERT INTO `mob_groups` VALUES (14647,3246,74,0,128,4728,32000,0,82,82,0); -- North Astrologer
-- New 6th floor NMs
UPDATE mob_groups SET zoneid = 74, HP = 40000, minLevel = 82, maxLevel = 82 WHERE groupid = 2490; -- Citadel Chelonian
UPDATE mob_groups SET zoneid = 74, spawntype = 128, HP = 25000, minLevel = 82, maxLevel = 82 WHERE groupid = 2501; -- Gyroscopic Gears

-- ---------------------------------------------------------------
-- -------------------WOTG - FOMOR WEAPON NMs---------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_groups` VALUES (14639,6034,175,14400,0,4732,45000,15000,88,88,0); -- Ethniu
INSERT INTO `mob_groups` VALUES (14640,6035,175,14400,0,4733,45000,15000,88,88,0); -- Tethra
UPDATE mob_groups SET respawntime = 14400, spawntype = 0, dropid = 4729, HP = 45000, MP = 15000, minLevel = 88, maxLevel = 88 WHERE groupid = 13762; -- Lugh
UPDATE mob_groups SET dropid = 4731, HP = 45000, MP = 15000, minLevel = 88, maxLevel = 88 WHERE groupid = 13773; -- Buarainech
UPDATE mob_groups SET dropid = 4730, HP = 45000, MP = 15000, minLevel = 88, maxLevel = 88 WHERE groupid = 13774; -- Elatha
