-- --------------------------------------------------------------
-- ----------------------MISC ITEM CHANGES-----------------------
-- --------------------------------------------------------------
UPDATE item_basic SET BaseSell = 5 WHERE itemid = 4228; -- Greatly lower NPC sale price for Bolt Quiver
UPDATE item_basic SET BaseSell = 5 WHERE itemid = 4229; -- Greatly lower NPC sale price for Bolt Quiver
UPDATE item_basic SET stackSize = 12 WHERE itemid = 6464; -- Allow Behemoth Steak to stack to 12
UPDATE item_basic SET stackSize = 12 WHERE itemid = 6465; -- Allow Behemoth Steak +1 to stack to 12
UPDATE item_basic SET stackSize = 12 WHERE itemid = 4146; -- Allow Revitalizer to stack to 12
UPDATE item_basic SET stackSize = 12 WHERE itemid = 6063; -- Allow Fruit Parfait to stack to 12
UPDATE item_basic SET stackSize = 12 WHERE itemid = 6064; -- Allow Queen's Crown to stack to 12
UPDATE item_basic SET stackSize = 12 WHERE itemid = 4144; -- Allow Hi-Elixir to stack to 12
UPDATE item_basic SET BaseSell = 14510 WHERE BaseSell > 15000; -- Lower all vendor prices to 14510 gil where price was greater than 15000
UPDATE item_basic SET BaseSell = 4320 WHERE itemid = 11664; -- Phrygian Ring
UPDATE item_basic SET BaseSell = 4985 WHERE itemid = 11665; -- Phrygian Ring +1
UPDATE item_basic SET BaseSell = 4680 WHERE itemid = 11725; -- Phrygian Earring
UPDATE item_basic SET BaseSell = 4840 WHERE itemid = 11726; -- Phrygian Earring +1
UPDATE item_basic SET BaseSell = 1105 WHERE itemid = 740; -- Phrygian Ore
UPDATE item_basic SET BaseSell = 1500 WHERE itemid = 743; -- Phrygian Gold Ingot
UPDATE item_basic SET BaseSell = 1500 WHERE itemid = 753; -- Phrygian Gold Sheet
UPDATE item_basic SET BaseSell = 996 WHERE itemid = 5932; -- Kitron Juice
UPDATE item_basic SET BaseSell = 10762 WHERE itemid = 13792; -- Grim Cuirass
UPDATE item_basic SET BaseSell = 11486 WHERE itemid = 12620; -- Grim Cuirass +1
UPDATE item_basic SET BaseSell = 240 WHERE itemid = 5892; -- B.E.W. Pitaru
UPDATE item_basic SET BaseSell = 365 WHERE itemid = 6468; -- Sublime Sushi
UPDATE item_basic SET BaseSell = 489 WHERE itemid = 6469; -- Sublime Sushi +1
UPDATE item_basic SET BaseSell = 10998 WHERE itemid = 14336; -- Juogi
UPDATE item_basic SET BaseSell = 11414 WHERE itemid = 12622; -- Juogi +1
-- Allow DRing to be signable because reasons
UPDATE item_basic SET flags = 63600 WHERE itemid = 13566; -- Defending Ring
-- Add signable ability to custom crafts
UPDATE item_basic SET flags = 2084 WHERE itemid IN 
(18632,18633,11778,11779,11782,11783,11780,11781,11579,11580,11583,11584,13792,12620,14336,12622,14364,
12623,11828,11829,11832,11833,11830,11831,11878,11879,11882,11883,11880,11881,11928,11929,11932,11933,
11930,11931,11424,11425,11428,11429,11426,11427,11678,11686,11685,11693,11680,11688,11683,11691,11679,
11687,11681,11689,11682,11690,11684,11692,16052,16053,14631,14645,14635,14633,14639,14637,14641,14643,
11644,11645,19049,19051,15949,15950);

-- Set NPC price for cursed gear (for now)
UPDATE item_basic SET BaseSell = 10000 WHERE itemid > 1343 and itemid < 1404;
UPDATE item_basic SET BaseSell = 10000 WHERE itemid > 2438 and itemid < 2459;

-- Changing NPC prices on crafting materials removed from AH
-- Woodworking
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 692; -- Beech Log
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 729; -- Bloodwood Log
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 722; -- Divine Log
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 702; -- Ebony Log
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 2761; -- Feyweald Log
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2534; -- Jacaranda Log
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1446; -- Lacquer Tree Log
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1464; -- Lancewood Log
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 703; --  Petrified Log
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 2532; -- Teak Log
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 1414; -- Wisteria Lumber
-- Smithing
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 646; -- Adaman Ore
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 1229; -- Adaman Nugget
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 658; -- Damascus Ingot
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 756; -- Durium Ore
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 757; -- Durium Ingot
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2823; -- Iridium Ingot
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 685; -- Khroma Ore
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2711; -- Khroma Nugget
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 1703; -- Kunwu Ore
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 647; -- Molybdenum Ore
UPDATE item_basic SET BaseSell = 40000 WHERE itemid = 1466; -- Relic Iron
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2763; -- Swamp Ore
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 657; -- Tama-Hagane
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 2302; -- Troll Bronze Ingot
UPDATE item_basic SET BaseSell = 6400 WHERE itemid = 1469; -- Wootz Ore
-- Goldsmithing
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 738; -- Platinum Ore
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 1227; -- Platinum Nugget
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 746; -- Platinum Ingot
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 751; -- Platinum Beastcoin
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2765; -- Fool's Gold Ore
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 1858; -- Moblumin Ingot
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 740; -- Phrygian Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1255; -- Fire Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1256; -- Ice Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1257; -- Wind Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1258; -- Earth Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1259; -- Lightning Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1260; -- Water Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1261; -- Light Ore
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1262; -- Dark Ore
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2850; -- Sahagin Gold
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 739; -- Orichalcum Ore
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2228; -- Luminium Ore
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 2877; -- Befouled Silver
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 2876; -- Muculent Ingot
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 777; -- Fulmenite
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 778; -- Heliodor
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 767; -- Carnelian
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 779; -- Aventurine
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 780; -- Clarite
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 781; -- Larimar
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 782; -- Selenite
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 783; -- Tenebrite
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 1460; -- Koh-I-Noor
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 2470; -- Nethereye Chain
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 2471; -- Netherfield Chain
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 2472; -- Netherspirit Chain
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 2473; -- Nethercant Chain
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 2474; -- Netherpact Chain
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 2880; -- Kidney Stone
-- Clothcraft
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2149; -- Apkallu Feather
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 1997; -- Sailcloth
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 845; -- Black Chocobo Feather
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 1281; -- Cheviot Cloth
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 2150; -- Colibri Feather
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2304; -- Wamoura Silk
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2878; -- Scarlet Kadife
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 838; -- Spider Web
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 821; -- Rainbow Thread
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1996; -- Rainbow Velvet
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 1294; -- Arachne Thread
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2148; -- Puk Wing
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1769; -- Galateia
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 1132; -- Raxa
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 1163; -- Manticore Hair
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 2166; -- Marid Hair
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 2337; -- Wamoura Hair
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 843; -- Giant Bird Plume
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 842; -- Giant Bird Feather
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 1313; -- Siren's Hair
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2825; -- Cambric
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 1764; -- Kejusu Satin
UPDATE item_basic SET BaseSell = 6400 WHERE itemid = 1712; -- Cashmere Wool
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 1713; -- Cashmere Thread
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 836; -- Damascene Cloth
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 831; -- Shining Cloth
UPDATE item_basic SET BaseSell = 24000 WHERE itemid = 2330; -- Yoichi's Sash
UPDATE item_basic SET BaseSell = 40000 WHERE itemid = 2498; -- Briareus's Sash
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 2655; -- Dark Ixion Tail
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2372; -- Khimaira Maine
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2506; -- Ladybug Wing
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 837; -- Malboro Fiber
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 3504; -- Peakpuk Wing
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 844; -- Phoenix Feather
UPDATE item_basic SET BaseSell = 6400 WHERE itemid = 2199; -- Sparkstrand Thread
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2200; -- Twill Damask
-- Leathercraft
UPDATE item_basic SET BaseSell = 5600 WHERE itemid = 1275; -- Amemet Skin
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2750; -- Amphiptere Hide
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 860; -- Behemoth Hide
UPDATE item_basic SET BaseSell = 24000 WHERE itemid = 2169; -- Cerberus Hide
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 854; -- Cockatrice Skin
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 863; -- Coeurl Hide
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2839; -- Coquecigrue Skin
UPDATE item_basic SET BaseSell = 6400 WHERE itemid = 1767; -- Eltoro Leather
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2189; -- Fiendish Skin
UPDATE item_basic SET BaseSell = 6400 WHERE itemid = 1516; -- Griffon Hide
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 1765; -- Habu Skin
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2828; -- Herensugue Skin
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1680; -- HQ Bugard Skin
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1591; -- HQ Coeurl Hide
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1741; -- HQ Eft Skin
UPDATE item_basic SET BaseSell = 40000 WHERE itemid = 2497; -- Kukulkan's Skin
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1869; -- Lamia Skin
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1277; -- Lindwurm Skin
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2512; -- Lynx Hide
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 876; -- Manta Skin
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 1116; -- Manticore Hide
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 2151; -- Marid Hide
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 1293; -- Narasimha Hide
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2121; -- Ovinnik Hide
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2523; -- Peiste Skin
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 2570; -- Pelt of Dawon
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2837; -- Ratatoskr Pelt
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1768; -- Rheiyoh Leather
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2755; -- Ruszor Hide
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2737; -- Silky Suede
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2518; -- Smilodon Hide
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1276; -- Tarasque Skin
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 861; -- Tiger Hide
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 849; -- Undead Skin
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2003; -- White Mouton
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2428; -- Wivre Hide
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2836; -- Woolly Pelage
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 1122; -- Wyvern Skin
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 2188; -- Wyvern Tailskin
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 1124; -- Wyvern Wing
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2125; -- Yellow Mouton
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1296; -- Yowie Skin
-- Bonecraft
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 908; -- Adamantoise Shell
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2753; -- Amphiptere Claw
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 2496; -- Ancient Beast Horn
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 1312; -- Angel Skin
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 883; -- Behemoth Horn
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 1615; -- Buffalo Horn
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 1622; -- Bugard Tusk
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2769; -- Buggane Horn
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 2168; -- Cerberus Claw
UPDATE item_basic SET BaseSell = 40000 WHERE itemid = 1518; -- Colossal Skull
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 887; -- Coral Fragment
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 2654; -- Dark Ixion Horn
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 886; -- Demon Skull
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 1771; -- Dragon Bone
UPDATE item_basic SET BaseSell = 2000 WHERE itemid = 867; -- Dragon Scales
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 903; -- Dragon Talon
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 902; -- Demon Horn
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2408; -- Flocon-de-mer
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 2747; -- Gargouille Horn
UPDATE item_basic SET BaseSell = 40000 WHERE itemid = 1517; -- Giant Frozen Head
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 2521; -- Gnole Claw
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 909; -- Guivre's Skull
UPDATE item_basic SET BaseSell = 8000 WHERE itemid = 1719; -- Harajnite Shell
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 1193; -- HQ Crab Shell
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 3270; -- HQ Pugil Scale
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 1473; -- HQ Scorpion Shell
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2158; -- Hydra Fang
UPDATE item_basic SET BaseSell = 2400 WHERE itemid = 2172; -- Hydra Scale
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2157; -- Imp Horn
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 2371; -- Khimaira Horn
UPDATE item_basic SET BaseSell = 1200 WHERE itemid = 1123; -- Manticore Fang
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2147; -- Marid Tusk
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 15000; -- Megalobugard Tusk
UPDATE item_basic SET BaseSell = 800 WHERE itemid = 2146; -- Merrow Scale
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 865; -- Nidhogg's Scales
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1311; -- Oxblood
UPDATE item_basic SET BaseSell = 20000 WHERE itemid = 2499; -- Regurgitated Wing
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2754; -- Ruszor Fang
UPDATE item_basic SET BaseSell = 2800 WHERE itemid = 1586; -- Titanictus Shell
UPDATE item_basic SET BaseSell = 3200 WHERE itemid = 2833; -- Thunder Coral
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 5466; -- Trumpet Shell
UPDATE item_basic SET BaseSell = 4000 WHERE itemid = 1841; -- Unicorn Horn
UPDATE item_basic SET BaseSell = 12000 WHERE itemid = 901; -- Venomous Claw
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 1715; -- Vivified Coral
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2426; -- Wivre Horn
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 2427; -- Wivre Maul
UPDATE item_basic SET BaseSell = 16000 WHERE itemid = 1816; -- Wyrm Horn
UPDATE item_basic SET BaseSell = 1600 WHERE itemid = 866; -- Wyvern Scales
-- Alchemy
UPDATE item_basic SET baseSell = 3200 WHERE itemid = 935; -- Ahriman Wing
UPDATE item_basic SET baseSell = 800 WHERE itemid = 957; -- Amaryllis
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 2361; -- Ameretat Vine
UPDATE item_basic SET baseSell = 2400 WHERE itemid = 2752; -- Amphiptere Whisker
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 1626; -- Avatar Blood
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 930; -- Beastman Blood
UPDATE item_basic SET baseSell = 3200 WHERE itemid = 1110; -- Beetle Blood
UPDATE item_basic SET baseSell = 800 WHERE itemid = 2014; -- Bird Blood
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 919; -- Boyahda Moss
UPDATE item_basic SET baseSell = 800 WHERE itemid = 916; -- Cactuar Needle
UPDATE item_basic SET baseSell = 2000 WHERE itemid = 1592; -- Cactur Root
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 2365; -- Demon Blood
UPDATE item_basic SET baseSell = 800 WHERE itemid = 1165; -- Doll Shard
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 923; -- Dryad Root
UPDATE item_basic SET baseSell = 32000 WHERE itemid = 2875; -- Ethereal Squama
UPDATE item_basic SET baseSell = 800 WHERE itemid = 924; -- Fiend Blood
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 1519; -- Fresh Orc Liver
UPDATE item_basic SET baseSell = 4000 WHERE itemid = 1445; -- Freyas Tear
UPDATE item_basic SET baseSell = 800 WHERE itemid = 1520; -- Goblin Grease
UPDATE item_basic SET baseSell = 800 WHERE itemid = 1309; -- Gold Leaf
UPDATE item_basic SET baseSell = 800 WHERE itemid = 955; -- Golem Shard
UPDATE item_basic SET baseSell = 2000 WHERE itemid = 1264; -- Great Boyahda Moss
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 2163; -- Imp Wing
UPDATE item_basic SET baseSell = 800 WHERE itemid = 2475; -- Kaolin
UPDATE item_basic SET baseSell = 3200 WHERE itemid = 2373; -- Khimaira Tail
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 2013; -- Lizard Blood
UPDATE item_basic SET baseSell = 800 WHERE itemid = 920; -- Malboro Vine
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 918; -- Mistletoe
UPDATE item_basic SET baseSell = 4000 WHERE itemid = 942; -- Philosopher’s Stone
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 1310; -- Platinum Leaf
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 2513; -- Rafflesia Vine
UPDATE item_basic SET baseSell = 800 WHERE itemid = 941; -- Red Rose
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 940; -- Revival Tree Root
UPDATE item_basic SET baseSell = 16000 WHERE itemid = 2465; -- Rubber Cap
UPDATE item_basic SET baseSell = 16000 WHERE itemid = 2466; -- Rubber Harness
UPDATE item_basic SET baseSell = 16000 WHERE itemid = 2467; -- Rubber Gloves
UPDATE item_basic SET baseSell = 16000 WHERE itemid = 2468; -- Rubber Chausses
UPDATE item_basic SET baseSell = 16000 WHERE itemid = 2469; -- Rubber Soles
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 1888; -- Silica
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 1521; -- Slime Juice
UPDATE item_basic SET baseSell = 800 WHERE itemid = 2335; -- Soulflayer Tentacle
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 1772; -- Super Cermet
UPDATE item_basic SET baseSell = 1600 WHERE itemid = 1621; -- Taurus Wing
UPDATE item_basic SET baseSell = 1200 WHERE itemid = 2338; -- Wamoura Scale
-- Cooking
UPDATE item_basic SET baseSell = 3200 WHERE itemid = 6416; -- Behemoth Meat
UPDATE item_basic SET baseSell = 3200 WHERE itemid = 5565; -- Cerberus Meat
UPDATE item_basic SET baseSell = 4800 WHERE itemid = 8753; -- Cehuetzi Ice Shard
UPDATE item_basic SET baseSell = 2400 WHERE itemid = 4486; -- Dragon Heart
UPDATE item_basic SET baseSell = 2400 WHERE itemid = 4272; -- Dragon Meat
UPDATE item_basic SET baseSell = 2400 WHERE itemid = 5564; -- Hydra Meat

-- --------------------------------------------------------------
-- ---------------------------ASSAULTS---------------------------
-- --------------------------------------------------------------
DELETE FROM item_basic WHERE itemid = 16728;
INSERT INTO `item_basic` VALUES (16728,0,'schwarz_axe','schwarz_axe',1,63572,0,1,0); -- Schwarz Axe
