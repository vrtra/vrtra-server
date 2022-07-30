-- ---------------------------------------------------------------
-- --------------------MISC MOB SKILL FIXES-----------------------
-- ---------------------------------------------------------------
DELETE FROM mob_skill_lists WHERE mob_skill_id = 1383 AND skill_list_id = 329; -- Glacial Splitter from AV
-- Cactrot Rapido TP move adjustment
DELETE FROM mob_skill_lists WHERE skill_list_id = 703 AND mob_skill_id = 1120; -- 10,000 Needles
INSERT INTO `mob_skill_lists` VALUES ('Cactrot_Rapido',703,1625); -- 2,000 Needles
-- Diabolos Prime
INSERT INTO `mob_skill_lists` VALUES ('Avatar-Diabolos',35,1903); -- Camisado
INSERT INTO `mob_skill_lists` VALUES ('Avatar-Diabolos',35,1905); -- Noctoshield
INSERT INTO `mob_skill_lists` VALUES ('Avatar-Diabolos',35,1906); -- Ultimate Terror
INSERT INTO `mob_skill_lists` VALUES ('Avatar-Diabolos',35,1908); -- Nightmare
INSERT INTO `mob_skill_lists` VALUES ('Avatar-Diabolos',35,1911); -- Ruinous Omen


-- ---------------------------------------------------------------
-- ------------------ABYSSEA MOB SKILL FIXES----------------------
-- ---------------------------------------------------------------
-- Alectryon
INSERT INTO `mob_skill_lists` VALUES ('Alectryon',832,1334); -- Contamination
-- Chloris
INSERT INTO `mob_skill_lists` VALUES ('Chloris',835,2579); -- Phaeosynthesis
-- Gancanagh
INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',838,2599); -- Tepal Twist
INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',838,2600); -- Bloom Fouette
INSERT INTO `mob_skill_lists` VALUES ('Gancanagh',838,2601); -- Petalback Spin
-- Glavoid
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',839,2604); -- Gorge
INSERT INTO `mob_skill_lists` VALUES ('Glavoid',839,2605); -- Disgorge

-- Lacovie
INSERT INTO `mob_skill_lists` VALUES ('Lacovie',843,804); -- Tortoise Song
INSERT INTO `mob_skill_lists` VALUES ('Lacovie',843,808); -- Earth Breath
-- Manananggal
INSERT INTO `mob_skill_lists` VALUES ('Manananggal',854,1781); -- Hex Palm
-- Myrmecoleon
INSERT INTO `mob_skill_lists` VALUES ('Myrmecoleon',847,277); -- Venom Spray
INSERT INTO `mob_skill_lists` VALUES ('Myrmecoleon',847,276); -- Sand Pit
INSERT INTO `mob_skill_lists` VALUES ('Myrmecoleon',847,275); -- Sand Blast
INSERT INTO `mob_skill_lists` VALUES ('Myrmecoleon',847,279); -- Mandibular Bite
-- Ophanim
INSERT INTO `mob_skill_lists` VALUES ('Ophanim',848,439); -- Petro Gaze
-- Tefenet
INSERT INTO `mob_skill_lists` VALUES ('Tefenet',849,2209); -- Blink of Peril
INSERT INTO `mob_skill_lists` VALUES ('Tefenet',849,2602); -- Mortal Blast
-- Treble Noctules
INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',850,1157); -- Slipstream
INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',850,1341); -- Knife Edge Circle
INSERT INTO `mob_skill_lists` VALUES ('Treble_Noctules',850,1342); -- Train Fall
-- Usurper
INSERT INTO `mob_skill_lists` VALUES ('Craver',78,1234); -- Carousel
INSERT INTO `mob_skill_lists` VALUES ('Craver',78,1274); -- Impalement
-- Chasmic Hornet
INSERT INTO `mob_skill_lists` VALUES ('Chasmic_Hornet',814,1847);
INSERT INTO `mob_skill_lists` VALUES ('Chasmic_Hornet',814,2608);
-- Megantereon
INSERT INTO `mob_skill_lists` VALUES ('Megantereon',822,2207);
-- Poroggo Dom Juan
INSERT INTO `mob_skill_lists` VALUES ('Poroggo_Dom_Juan',827,1957);
-- Trudging Thomas
INSERT INTO `mob_skill_lists` VALUES ('Trudging_Thomas',829,268);
-- Piasa
INSERT INTO `mob_skill_lists` VALUES ('Piasa',826,622); -- Helldive
-- Hadhayosh
INSERT INTO `mob_skill_lists` VALUES ('Hadhayosh',817,2390); -- Accursed Armor
-- Karkinos
INSERT INTO `mob_skill_lists` VALUES ('Karkinos',1010,442); -- Bubble Shower
INSERT INTO `mob_skill_lists` VALUES ('Karkinos',1010,444); -- Big Scissors
INSERT INTO `mob_skill_lists` VALUES ('Karkinos',1010,2512); -- Venom Shower
INSERT INTO `mob_skill_lists` VALUES ('Karkinos',1010,2513); -- Mega Scissors
-- Briareus
INSERT INTO `mob_skill_lists` VALUES ('Briareus',811,664); -- Impact Roar
INSERT INTO `mob_skill_lists` VALUES ('Briareus',811,665); -- Grand Slam
-- Ovni
INSERT INTO `mob_skill_lists` VALUES ('Ovni',824,1374); -- Torrential Torment
INSERT INTO `mob_skill_lists` VALUES ('Ovni',824,1377); -- Fluorescence
-- Alkonost
INSERT INTO `mob_skill_lists` VALUES ('Alkonost',786,579); -- Choke Breath
INSERT INTO `mob_skill_lists` VALUES ('Alkonost',786,580); -- Fantod
-- Ashtaerth the Gallvexed
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',788,1964); -- Immortal Mind
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',788,1965); -- Immortal Shield
INSERT INTO `mob_skill_lists` VALUES ('Ashtaerh_the_Gallvexed',788,1969); -- Reprobation
-- Balaur
INSERT INTO `mob_skill_lists` VALUES ('Balaur_Post_50',791,2222); -- Radiant Breath
-- Bloodguzzler
INSERT INTO `mob_skill_lists` VALUES ('Bloodguzzler',793,326); -- Absorbing Kiss
-- Fear Gorta
INSERT INTO `mob_skill_lists` VALUES ('Fear_Gorta',797,476); -- Curse
-- Guimauve
INSERT INTO `mob_skill_lists` VALUES ('Dextrose',299,1824); -- Amorphic Spikes
-- Raskovnik
INSERT INTO `mob_skill_lists` VALUES ('Raskovnik',805,2167); -- Bloody Caress
-- Siranpa Kamuy
INSERT INTO `mob_skill_lists` VALUES ('Siranpa',1012,328); -- Drill Branch
INSERT INTO `mob_skill_lists` VALUES ('Siranpa',1012,329); -- Pinecone Bomb
INSERT INTO `mob_skill_lists` VALUES ('Siranpa',1012,331); -- Leafstorm
INSERT INTO `mob_skill_lists` VALUES ('Siranpa',1012,332); -- Entangle
INSERT INTO `mob_skill_lists` VALUES ('Siranpa',1012,1026); -- Arbor Storm
-- fistule
delete from mob_skill_lists where mob_skill_id = 2514 and skill_list_id = 798; -- remove cytokinesis from him

-- ---------------------------------------------------------------
-- ----------------------SHINRYU BCNM-----------------------------
-- ---------------------------------------------------------------
delete from mob_skill_lists where skill_list_name = 'Shinryu';
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2665); -- Cataclysmic_Vortex
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2667); -- Mighty_Guard
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2668); -- Atomic_ray
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2670); -- Protostar
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2664); -- Cosmic_Breath
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2666); -- Gyre_Charge
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2669); -- Darkmatter
INSERT INTO `mob_skill_lists` VALUES ('Shinryu',475,2671); -- Supernova

-- ---------------------------------------------------------------
-- ---------------------BEADEAUX [S} SCNM-------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,614); -- Shell Guard
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,633); -- Howl
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,1074); -- Wrath of Gu'Dha
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,2203); -- Diamond Shell
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,2204); -- Ore Lob
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,2265); -- Skull Smash
INSERT INTO `mob_skill_lists` VALUES ('QuadavWOTG',1008,2266); -- Shell Charge

INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,614); -- Shell Guard
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,633); -- Howl
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,2203); -- Diamond Shell
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,2204); -- Ore Lob
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,2265); -- Skull Smash
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,2266); -- Shell Charge
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,2374); -- Torment of Gu'Dha
INSERT INTO `mob_skill_lists` VALUES ('Adamantking',1009,2412); -- Thunderous Yowl

-- ---------------------------------------------------------------
-- ------------------------FIAT LUX-------------------------------
-- ---------------------------------------------------------------
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2535); -- Vicious Kick
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2536); -- Boon Void
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2537); -- Cruel Slash
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2538); -- Spell Wall
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2539); -- Implosion
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2540); -- Umbral Orb
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2541); -- Cross Smash
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2542); -- Blighting Blitz
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2544); -- Soma Wall
INSERT INTO `mob_skill_lists` VALUES ('ShadowLordFiatLux',1011,2545); -- Doom Arc

-- ---------------------------------------------------------------
-- -------------------ASSAULTS & SALVAGE--------------------------
-- ---------------------------------------------------------------
-- Salvage bosses
-- Long Armed Chariot
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1013,2054); -- Diffusion Ray
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1013,2055); -- Inertia Stream
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1013,2056); -- Discharge
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1013,2060); -- Brainjack
-- Long Bowed Chariot
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1014,2054); -- Diffusion Ray
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1014,2055); -- Inertia Stream
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1014,2056); -- Discharge
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1014,2058); -- Homing Missle
-- Battleclad Chariot
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1015,2054); -- Diffusion Ray
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1015,2055); -- Inertia Stream
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1015,2056); -- Discharge
INSERT INTO `mob_skill_lists` VALUES ('LongArmedChariot',1015,2059); -- Discoid

-- ---------------------------------------------------------------
-- -------------------WOTG - FOMOR WEAPON NMs---------------------
-- ---------------------------------------------------------------
-- Lugh
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,32); -- Fast Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,33); -- Burning Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,34); -- Red Lotus Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,35); -- Flat Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,36); -- Shining Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,37); -- Seraph Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,38); -- Circle Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,40); -- Vorpal Blade
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,247); -- Foxfire
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,250); -- Carnal Nightmare
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,251); -- Aegis Schism
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,252); -- Dancing Chains
INSERT INTO `mob_skill_lists` VALUES ('Lugh',1016,253); -- Barbed Crescent
-- Elatha
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,979); -- Power Slash
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,980); -- Freezebite
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,981); -- Ground Strike
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,248); -- Grim Halo
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,250); -- Carnal Nightmare
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,251); -- Aegis Schism
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,252); -- Dancing Chains
INSERT INTO `mob_skill_lists` VALUES ('Elatha',1017,253); -- Barbed Crescent
-- Buarainech
INSERT INTO `mob_skill_lists` VALUES ('Buarainech',1018,248); -- Grim Halo
INSERT INTO `mob_skill_lists` VALUES ('Buarainech',1018,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('Buarainech',1018,250); -- Carnal Nightmare
INSERT INTO `mob_skill_lists` VALUES ('Buarainech',1018,251); -- Aegis Schism
INSERT INTO `mob_skill_lists` VALUES ('Buarainech',1018,252); -- Dancing Chains
INSERT INTO `mob_skill_lists` VALUES ('Buarainech',1018,253); -- Barbed Crescent
-- Ethniu
INSERT INTO `mob_skill_lists` VALUES ('Ethniu',1019,247); -- Foxfire
INSERT INTO `mob_skill_lists` VALUES ('Ethniu',1019,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('Ethniu',1019,250); -- Carnal Nightmare
INSERT INTO `mob_skill_lists` VALUES ('Ethniu',1019,251); -- Aegis Schism
INSERT INTO `mob_skill_lists` VALUES ('Ethniu',1019,252); -- Dancing Chains
INSERT INTO `mob_skill_lists` VALUES ('Ethniu',1019,253); -- Barbed Crescent
-- Tethra
INSERT INTO `mob_skill_lists` VALUES ('Tethra',1020,248); -- Grim Halo
INSERT INTO `mob_skill_lists` VALUES ('Tethra',1020,249); -- Netherspikes
INSERT INTO `mob_skill_lists` VALUES ('Tethra',1020,250); -- Carnal Nightmare
INSERT INTO `mob_skill_lists` VALUES ('Tethra',1020,251); -- Aegis Schism
INSERT INTO `mob_skill_lists` VALUES ('Tethra',1020,252); -- Dancing Chains
INSERT INTO `mob_skill_lists` VALUES ('Tethra',1020,253); -- Barbed Crescent
