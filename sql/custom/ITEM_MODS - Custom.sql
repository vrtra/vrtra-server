-- --------------------------------------------------------------
-- ---------------------MISC ITEM MOD FIXES----------------------
-- --------------------------------------------------------------
-- Galkan Dagger
INSERT INTO `item_mods` VALUES (19114,431,1); -- Added Effect Earth Damage
-- Sirocco Axe
INSERT INTO `item_mods` VALUES (17965,431,1); -- Added Effect Wind Damage
-- fatality belt full time 2% crit dmg 
INSERT INTO `item_mods` VALUES(15955,421,2);
-- Brave Grip stat fix
INSERT INTO `item_mods` VALUES (19029,421,3); -- Critial Hit Damage +3%
-- add Imperial Dart stats
INSERT INTO `item_mods` VALUES (18691,71,2); -- hHP+2
INSERT INTO `item_mods` VALUES (18691,72,2); -- hMP+2
-- Ifrit's Blade additional effect stat
INSERT INTO `item_mods` VALUES (17665,431,1); -- additional effect coded via LUA
-- Hauteclaire Added Light Dmg
INSERT INTO `item_mods` VALUES (17738,431,1); -- Hauteclaire
-- Vermeil Bhuj additional effect stat
INSERT INTO `item_mods` VALUES (18510,431,1); -- additional effect coded via LUA
-- Pet item stats
INSERT INTO `item_mods_pet` VALUES (16031,23,10,0); -- Affinity Earring
INSERT INTO `item_mods_pet` VALUES (16022,25,10,0); -- Fidelity Earring
-- Selemnus Belt Pet stat fix
UPDATE item_mods_pet SET value = -3 WHERE itemid = 15944; -- Pet MDT -3%
-- Octave Club stat fix
UPDATE item_weapon SET hit = 8 WHERE itemId = 18852; -- attacks up to 8 times
-- Balestarius
UPDATE item_weapon SET hit = 2 WHERE itemid = 18498;
-- fix Elemental Obis to account for Day of the Week Bonus
INSERT INTO item_mods VALUES (15435,565,10); -- Karin Obi
INSERT INTO item_mods VALUES (15440,565,10); -- Suirin Obi
INSERT INTO item_mods VALUES (15441,565,10); -- Korin Obi
INSERT INTO item_mods VALUES (15436,565,10); -- Hyorin Obi
INSERT INTO item_mods VALUES (15439,565,10); -- Rairin Obi
INSERT INTO item_mods VALUES (15437,565,10); -- Furin Obi
INSERT INTO item_mods VALUES (15438,565,10); -- Dorin Obi
INSERT INTO item_mods VALUES (15442,565,10); -- Anrin Obi
INSERT INTO item_mods VALUES (28419,565,10); -- Hachirin No Obi
-- Custom Maat's Cap 
DELETE FROM item_mods WHERE itemid = 15194;
INSERT INTO `item_mods` VALUES (15194,8,7);
INSERT INTO `item_mods` VALUES (15194,9,7);
INSERT INTO `item_mods` VALUES (15194,10,7);
INSERT INTO `item_mods` VALUES (15194,11,7);
INSERT INTO `item_mods` VALUES (15194,12,7);
INSERT INTO `item_mods` VALUES (15194,13,7);
INSERT INTO `item_mods` VALUES (15194,14,7);
INSERT INTO `item_mods` VALUES (15194,170,5); -- Fast Cast +5
INSERT INTO `item_mods` VALUES (15194,73,5); -- Store TP +5
INSERT INTO `item_mods` VALUES (15194,384,50); -- Haste +5
INSERT INTO `item_mods` VALUES (15194,23,10); -- Attack +10
INSERT INTO `item_mods` VALUES (15194,374,5); -- Cure Potency +5
INSERT INTO `item_mods` VALUES (15194,28,5); -- Mab +5
INSERT INTO `item_mods` VALUES (15194,840,5); -- ws dmg +5 
INSERT INTO `item_mods` VALUES (15194,48,5); -- ws acc +5

-- ------------------------------------------
-- --------------RELIC WEAPONS---------------
-- ------------------------------------------
INSERT INTO `item_mods` VALUES (18577,14,6);     -- Gjallarhorn: CHR+6 NOT IN DSP 
INSERT INTO `item_mods` VALUES (18577,119,15);    -- Singing skill +15

-- claustrum
INSERT INTO `item_mods` VALUES (18331,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (18331,543,6); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (18331,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (18331,347,5);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,348,5);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,349,5);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,350,5);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,351,5);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,352,5);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,353,5);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,354,5);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (18331,544,5);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,545,5);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,546,5);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,547,5);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,548,5);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,549,5);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,550,5);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (18331,551,5);     -- Dark affinity accuracy +30
-- mjollnir 
INSERT INTO `item_mods` VALUES (18325,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (18325,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (18325,347,3);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,348,3);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,349,3);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,350,3);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,351,3);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,352,3);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,353,3);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,354,3);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (18325,544,3);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,545,3);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,546,3);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,547,3);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,548,3);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,549,3);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,550,3);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (18325,551,3);     -- Dark affinity accuracy +30
-- -------------------------
-- ---------MYTHICS---------
-- -------------------------
-- yagrush 18993
INSERT INTO `item_mods` VALUES (18993,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (18993,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (18993,347,3);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,348,3);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,349,3);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,350,3);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,351,3);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,352,3);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,353,3);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,354,3);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (18993,544,3);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,545,3);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,546,3);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,547,3);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,548,3);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,549,3);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,550,3);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (18993,551,3);     -- Dark affinity accuracy +30
-- nirvana 19074
INSERT INTO `item_mods` VALUES (19074,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (19074,543,6); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (19074,552,6); -- elemental affinity acc +6
-- kenkonken 80
INSERT INTO `item_mods` VALUES (19077,288,15); -- double attack
INSERT INTO `item_mods` VALUES (19077,855,1000); -- prevent overload
INSERT INTO `item_mods` VALUES (19077,505,1000);
INSERT INTO `item_mods_pet` VALUES (19077,26,10,3); -- automaton: racc +10
INSERT INTO `item_mods_pet` VALUES (19077,25,10,3); -- automaton: acc +10 
INSERT INTO `item_mods_pet` VALUES (19077,30,10,3); -- automaton: macc +10
INSERT INTO `item_mods_pet` VALUES (19077,374,10,3); -- automaton: cure potency +10
INSERT INTO `item_mods_pet` VALUES (19077,368,10,3); -- automaton: regain +10 
INSERT INTO `item_mods_pet` VALUES (19077,848,1,3); -- automaton: shield bash slow effect
INSERT INTO `item_mods_pet` VALUES (19077,28,10,3); -- automaton: mab +10
-- Laevateinn 80
INSERT INTO `item_mods` VALUES (19063,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (19063,543,6); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (19063,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (19063,347,3);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,348,3);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,349,3);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,350,3);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,351,3);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,352,3);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,353,3);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,354,3);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (19063,544,3);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,545,3);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,546,3);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,547,3);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,548,3);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,549,3);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,550,3);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (19063,551,3);     -- Dark affinity accuracy +30
-- Murgleis  80 
INSERT INTO `item_mods` VALUES (19064,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (19064,543,2); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (19064,552,2); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (19064,529,5); -- refresh potency
INSERT INTO `item_mods` VALUES (19064,347,5);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,348,5);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,349,5);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,350,5);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,351,5);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,352,5);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,353,5);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,354,5);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (19064,544,5);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,545,5);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,546,5);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,547,5);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,548,5);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,549,5);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,550,5);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (19064,551,5);     -- Dark affinity accuracy +30
-- Tupsimati 80
INSERT INTO `item_mods` VALUES (19079,566,5); -- iridecence
INSERT INTO `item_mods` VALUES (19079,543,6); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (19079,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (19079,347,3);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,348,3);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,349,3);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,350,3);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,351,3);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,352,3);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,353,3);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,354,3);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (19079,544,3);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,545,3);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,546,3);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,547,3);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,548,3);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,549,3);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,550,3);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (19079,551,3);     -- Dark affinity accuracy +30
-- Vajra 
INSERT INTO item_mods VALUES (19065,303,1); -- Treasure Hunter +1

-- ------------------------------------------
-- -------------EMPYREAN WEAPONS-------------
-- ------------------------------------------
-- Verethragna 
INSERT INTO `item_mods` VALUES (19397,355,14); -- Victory Smite
INSERT INTO `item_mods` VALUES (19397,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19397;
-- Twashtar
INSERT INTO `item_mods` VALUES (19398,355,31); -- Rudras Storm
INSERT INTO `item_mods` VALUES (19398,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19398;
-- Almace
INSERT INTO `item_mods` VALUES (19399,355,225); -- Chant Du Cygne
INSERT INTO `item_mods` VALUES (19399,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19399;
-- Caladbolg
INSERT INTO `item_mods` VALUES (19400,355,59); -- Torcleaver
INSERT INTO `item_mods` VALUES (19400,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19400;
-- Farsha
INSERT INTO `item_mods` VALUES (19401,355,76); -- Cloudsplitter
INSERT INTO `item_mods` VALUES (19401,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19401;
-- Ukonvasara
INSERT INTO `item_mods` VALUES (19402,355,92); -- Ukkos Fury
INSERT INTO `item_mods` VALUES (19402,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19402;
-- Redemption
INSERT INTO `item_mods` VALUES (19403,355,108); -- Quietus
INSERT INTO `item_mods` VALUES (19403,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19403;
-- Rhongomiant
INSERT INTO `item_mods` VALUES (19404,355,124); -- Camlanns Torment
INSERT INTO `item_mods` VALUES (19404,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19404;
-- Kannagi
INSERT INTO `item_mods` VALUES (19405,355,140); -- Blade: Hi
INSERT INTO `item_mods` VALUES (19405,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19405;
-- Masamune
INSERT INTO `item_mods` VALUES (19406,355,156); -- Tachi: Fudo
INSERT INTO `item_mods` VALUES (19406,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19406;
-- Gambanteinn
INSERT INTO `item_mods` VALUES (19407,355,173); -- Dagan
INSERT INTO `item_mods` VALUES (19407,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19407;
INSERT INTO `item_mods` VALUES (19407,566,5); -- Iridescence +5
INSERT INTO `item_mods` VALUES (19407,543,6); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (19407,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (19407,347,3);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,348,3);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,349,3);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,350,3);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,351,3);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,352,3);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,353,3);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,354,3);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (19407,544,3);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,545,3);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,546,3);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,547,3);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,548,3);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,549,3);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,550,3);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (19407,551,3);     -- Dark affinity accuracy +30
-- Hvergelmir
INSERT INTO `item_mods` VALUES (19408,28,15); -- macc
INSERT INTO `item_mods` VALUES (19408,30,15); -- mab
INSERT INTO `item_mods` VALUES (19408,355,190); -- Myrkr
INSERT INTO `item_mods` VALUES (19408,256,44); -- aftermath
UPDATE item_weapon SET hit = 2 WHERE itemid = 19408;
INSERT INTO `item_mods` VALUES (19408,566,5); -- Iridescence +5
INSERT INTO `item_mods` VALUES (19408,543,6); -- elemental affinity DMG +6
INSERT INTO `item_mods` VALUES (19408,552,6); -- elemental affinity acc +6
INSERT INTO `item_mods` VALUES (19408,347,5);     -- Fire affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,348,5);     -- Earth affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,349,5);     -- Water affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,350,5);     -- Ice affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,351,5);     -- Thunder affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,352,5);     -- Wind affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,353,5);     -- Light affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,354,5);     -- Dark affinity damage +15%
INSERT INTO `item_mods` VALUES (19408,544,5);     -- Fire affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,545,5);     -- Earth affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,546,5);     -- Water affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,547,5);     -- Ice affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,548,5);     -- Thunder affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,549,5);     -- Wind affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,550,5);     -- Light affinity accuracy +30
INSERT INTO `item_mods` VALUES (19408,551,5);     -- Dark affinity accuracy +30
-- Gandiva
INSERT INTO `item_mods` VALUES (19409,355,202); -- Jishnus Radiance
INSERT INTO `item_mods` VALUES (19409,507,250); -- Occasionally does 2.5x damage
INSERT INTO `item_mods` VALUES (19409,256,44); -- aftermath
-- Armageddon
INSERT INTO `item_mods` VALUES (19410,355,220); -- Wildfire
INSERT INTO `item_mods` VALUES (19410,507,250); -- Occasionally does 2.5x damage
INSERT INTO `item_mods` VALUES (19410,256,44); -- aftermath
-- Daurabla 85 
INSERT INTO `item_mods` VALUES (18574,453,1); -- extra song
-- ochain 85 
INSERT INTO `item_mods` VALUES (16192,426,25); -- 25%physical dmg to mp

-- ------------------------------------------
-- -----------SCNM & WOTG RELATED -----------
-- ------------------------------------------
-- Samudra
INSERT INTO item_mods VALUES (18618,25,30); -- Acc +30
INSERT INTO item_mods VALUES (18618,355,240); -- Adds WS Tartarus Torpor
-- Seismic Axe
INSERT INTO item_mods VALUES (18501,25,5); -- Acc +5
INSERT INTO item_mods VALUES (18501,431,1); -- Additional Earth Damage
INSERT INTO item_mods VALUES (18501,840,5); -- WS Dmg +5%
-- Mercenary Major Charm
INSERT INTO item_mods VALUES (11588,369,1); -- Refresh +1
-- Fourth Division Mantle
delete from item_mods where itemid = 11545;
INSERT INTO item_mods VALUES (11545,368,10); -- Regain +10
INSERT INTO item_mods VALUES (11545,73,2); -- stp +2
-- Royal Knight Sigil Ring
INSERT INTO item_mods VALUES (11636,370,1); -- Regen +1
