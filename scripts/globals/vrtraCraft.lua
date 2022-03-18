-----------------------------------
-- Required Files
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
require("scripts/settings/main")
require("scripts/globals/shop")
require("scripts/settings/main")
require("scripts/globals/status")
require("scripts/globals/keyitems")

xi = xi or {}
xi.vrtraCraft = xi.vrtraCraft or {}

local vrtraNPC =
{
    [17416463] = "guild_woodworking",  --Woodworking
    [17416458] = "guild_weaving",      --Clothcraft
    [17416459] = "guild_leathercraft", --Leathercraft
    [17416460] = "guild_bonecraft",    --Bonecraft
    [17416456] = "guild_smithing",     --Smithing
    [17416457] = "guild_goldsmithing", --Goldsmithing
    [17416462] = "guild_cooking",      --Cooking
    [17416461] = "guild_alchemy"       --Alchemy
}

local npcNames =
{
    [17416463] = "Vrtra Woodworker",     --Woodworking
    [17416458] = "Vrtra Weaver",         --Clothcraft
    [17416459] = "Vrtra Leathercrafter", --Leathercraft
    [17416460] = "Vrtra Bonecrafter",    --Bonecraft
    [17416456] = "Vrtra Smithy",         --Smithing
    [17416457] = "Vrtra Goldsmith",      --Goldsmithing
    [17416462] = "Vrtra Chef",           --Cooking
    [17416461] = "Vrtra Alchemist",      --Alchemy
	[17416464] = "Cid"                   --Cid
}


local vrtraStock =
{ --||NPCID||--
    [17416463] = {--|ITEMID||COST|--
					  688,   500, --Arrowwood Log
					  698,   500, --Ash Log
					  692,  2500, --Beech Log
					  729,  5000, --Bloodwood Log
					 1657,   500, --Bundling Twine
					  694,   500, --Chestnut Log
					  722, 25000, --Divine Log
                      702,  1000, --Ebony Log
					  690,   500, --Elm Log
					 2761,  1000, --Feyweald Log
					  697,   500, --Holly Log
                     2534,  5000, --Jacaranda Log
                     1446,  5000, --Lacquer Tree Log
					 1464,  5000, --Lancewood Log
					  689,   500, --Lauan Log
                      700,   500, --Mahogany Log
					  691,   500, --Maple Log
					  699,   500, --Oak Log
                      703,  2500, --Petrified Log
					  701,   500, --Rosewood Log
					 2532,  2500, --Teak Log
					  693,   500, --Walnut Log
					  695,   500, --Willow Log
					 1414, 10000, --Wisteria Lumber
					  696,   500  --Yew Log
				 },				
	[17416458] = {
					 2149,  1000, --Apkallu Feather
					 1294,  2000, --Arachne Thread
					  847,   500, --Bird Feather
					  845,  2000, --Black Chocobo Feather
					 1700,   500, --Bloodthread
					 2498, 50000, --Briareus's Sash
					 2825,  5000, --Cambric
					 1712,  8000, --Cashmere Wool
					 1713, 20000, --Cashmere Thread
					 1281,  2500, --Cheviot Cloth
					  840,   500, --Chocobo Feather
					 2150,  1500, --Colibri Feather
					  818,   500, --Cotton Thread
					  825,   500, --Cotton Cloth
					  836, 10000, --Damascene Cloth
					 2655, 15000, --Dark Ixion Tail
					  835,   500, --Flax Flower
					 1769,  5000, --Galateia
					  842,  1000, --Giant Bird Feather
					  843,  2500, --Giant Bird Plume
					 2522,   500, --Gnat Wing
					  823,   500, --Gold Thread
					  817,   500, --Grass Thread
					  824,   500, --Grass Cloth
					 2340,   500, --Imperial Silk Cloth
					  846,   500, --Insect Wing
					 2287,   500, --Karakul Thread
					 2288,   500, --Karakul Cloth
					 1764,  2500, --Kejusu Satin
					 2372,  5000, --Khimaira Mane
					 2506,  1000, --Ladybug Wing
					  819,   500, --Linen Thread
					  826,   500, --Linen Cloth
					  837,  3000, --Malboro Fiber
					 1163,  2500, --Manticore Hair
                     2166,  2500, --Marid Hair
					 1651,   500, --Moblin Thread
					 1636,   500, --Moblinweave
					 2296,   500, --Mohbwa Thread
					 2274,   500, --Mohbwa Cloth
					 3504,  1500, --Peapuk Wing
					  844,  5000, --Phoenix Feather
					 2148,  1000, --Puk Wing
					  821,  2000, --Rainbow Thread
					 1996,  5000, --Rainbow Velvet
					 1132, 10000, --Raxa
					 1828,   500, --Red Grass Thread
					 1829,   500, --Red Grass Cloth
					 1997,  1000, --Sailcloth
					  834,   500, --Saruta Cotton
					 2878,  5000, --Scarlet Kadife
					  831, 25000, --Shining Cloth
					  816,   500, --Silk Thread
					  829,   500, --Silk Cloth
					  822,   500, --Silver Thread
					 1313, 10000, --Siren's Hair
					 2199,  8000, --Sparkstrand Thread
					  838,  1000, --Spider Web
                     2128,   500, --Spindle
					 2200,  5000, --Twill Damask
					 1278,   500, --Twinthread
					  828,   500, --Velvet Cloth
					 2304,  2000, --Wamoura Silk
					 2337,  2500, --Wamoura Hair
					  820,   500, --Wool Thread
					  827,   500, --Wool Cloth
					  841,   500, --Yagudo Feather
					 2330, 30000, --Yoichi's Sash
					 2145,   500  --Zephyr Thread
				 },
	[17416459] = {
                     1275,  7000, --Amemet Skin
					 2750,  5000, --Amphiptere Hide
					  860, 15000, --Behemoth Hide
					 1628,   500, --Buffalo Hide
					 1629,   500, --Buffalo Leather
					 1640,   500, --Bugard Skin
					 1637,   500, --Bugard Leather
					 2123,   500, --Catoblepas Hide
					 2124,   500, --Catoblepas Leather
					 2169, 30000, --Cerberus Hide
					  854,  1000, --Cockatrice Skin
					  863,  2000, --Coeurl Hide
					 2839,  5000, --Coquecigrue Skin
					  857,   500, --Dhalmel Hide
					  848,   500, --Dhalmel Leather
		 			 4509,   500, --Distilled Water
					 1623,   500, --Eft Skin
					 1767,  8000, --Eltoro Leather
					 2189,  5000, --Fiendish Skin
					 1516,  8000, --Griffon Hide
					 1765,  2000, --Habu Skin
					 2828,  5000, --Herensugue Skin
					 1680,  4000, --H.Q. Bugard Skin
					 1591,  4000, --H.Q. Coeurl Hide
					 1741,  4000, --H.Q. Eft Skin
					 2156,   500, --Imperial Tea Leaves
					  878,   500, --Karakul Skin
					  879,   500, --Karakul Leather
					 2497, 50000, --Kukulkan's Skin
					 1869,  5000, --Lamia Skin
					 1277,  4000, --Lindwurm Skin
					  852,   500, --Lizard Skin
					 2512,  2000, --Lynx Hide
			          876,  2000, --Manta Skin
					 1116,  3000, --Manticore Hide
					 2151,  3000, --Marid Hide
					 1293,  1000, --Narasimha Hide
                     2121,  2000, --Ovinnik Hide
                     2523,  4000, --Peiste Skin
					 2570, 10000, --Pelt of Dawon
					  856,   500, --Rabbit Hide
					  859,   500, --Ram Skin
					  851,   500, --Ram Leather
					  853,   500, --Raptor Skin
					 2837,  5000, --Ratatoskr Pelt
					 1768,  5000, --Rheiyoh Leather
					 2755,  4000, --Ruszor Hide
					  505,   500, --Sheepskin
					  850,   500, --Sheep Leather
					 2737,  4000, --Silky Suede
                     2518,  1000, --Smilodon Hide
					 2129,   500, --Tanning Vat
					 1276,  5000, --Tarasque Skin
					  861,  1000, --Tiger Hide
					  849,  2500, --Undead Skin
					 2003,  4000, --White Mouton
					  635,   500, --Windurstian Tea Leaves
					 2428,  4000, --Wivre Hide
					  858,   500, --Wolf Hide
					 2836,  5000, --Woolly Pelage
					 1122,  2500, --Wyvern Skin
					 2188,  3000, --Wyvern Tailskin
					 1124,  1000, --Wyvern Wing
					 2125,  4000, --Yellow Mouton
					 1296,  5000  --Yowie Skin
				 },
	[17416460] = {
					  908,  5000, --Adamantoise Shell
					 2753,  4000, --Amphiptere Claw
					 2496,  3000, --Ancient Beast Horn
					 1312, 10000, --Angel Skin
					  891,   500, --Bat Fang
					  894,   500, --Beetle Jaw
					  889,   500, --Beetle Shell
					  883,  4000, --Behemoth Horn
					  884,   500, --Black Tiger Fang
					  880,   500, --Bone Chip
					 1615,  3000, --Buffalo Horn
					 1622,  1000, --Bugard Tusk
					 2769,  2000, --Buggane Horn
					  898,   500, --Chicken Bone
					 2168,  3000, --Cerberus Claw
					 2171,   500, --Colibri Beak
					 1518, 50000, --Colossal Skull
					  887,  2000, --Coral Fragment
					  881,   500, --Crab Shell
					 2654, 10000, --Dark Ixion Horn
					  886,  2000, --Demon Skull
					 1771,  4000, --Dragon Bone
					  867,  2500, --Dragon Scales
					  903, 10000, --Dragon Talon
					  902,  1000, --Demon Horn
					  864,   500, --Fish Scales
					 2408,  2000, --Flocon-de-mer
					 2747,  1500, --Gargouille Horn
					  893,   500, --Giant Femur
					 1517, 50000, --Giant Frozen Head
					 2521,  1500, --Gnole Claw
					  909,  4000, --Guivre's Skull
					 1719, 10000, --Harajnite Shell
					 1193,  1000, --HQ Crab Shell
					 3270,  1500, --HQ Pugil Scale
					 1473,  2000, --HQ Scorpion Shell
					 2158,  5000, --Hydra Fang
					 2172,  3000, --Hydra Scale
					 2157,  2000, --Imp Horn
					 2371,  5000, --Khimaira Horn
					 1123,  1500, --Manticore Fang
					 2147,  1000, --Marid Tusk
					 1718, 15000, --Megalobugard Tusk
					 2146,  1000, --Merrow Scale
					  865,  5000, --Nidhogg's Scales
					 1311,  5000, --Oxblood
					  868,   500, --Pugil Scales
					  895,   500, --Ram Horn
					 2499, 25000, --Regurgitated Wing
					 2754,  2000, --Ruszor Fang
					  897,   500, --Scorpion Claw
					  896,   500, --Scorpion Shell
					  888,   500, --Seashell
					 2130,   500, --Shagreen File
					  882,   500, --Sheep Tooth
					 1620,   500, --Taurus Horn
					 1586,  3500, --Titanictus Shell
					 2833,  4000, --Thunder Coral
					 5466,  5000, --Trumpet Shell
					  885,   500, --Turtle Shell
					 1841,  5000, --Unicorn Horn
					 1618,   500, --Uragnite Shell
					  901, 15000, --Venomous Claw
					 1715,  2000, --Vivified Coral
					 2426,  2000, --Wivre Horn
					 2427,  2000, --Wivre Maul
					 1816, 20000, --Wyrm Horn
					  866,  2000 --Wyvern Scales
				 },
	[17416456] = {
					  646,  3000, --Adaman Ore
					 1229,  1500, --Adaman Nugget
					 1232,   500, --Bronze Nugget
					  649,   500, --Bronze Ingot
					  640,   500, --Copper Ore
					  648,   500, --Copper Ingot
					 1230,   500, --Copper Nugget
					  658, 25000, --Damascus Ingot
					  645,   500, --Darksteel Ore
					 1228,   500, --Darksteel Nugget
					  654,   500, --Darksteel Ingot
					  756,  1000, --Durium Ore
					  757,  2500, --Durium Ingot
					 2823,  5000, --Iridium Ingot
					  643,   500, --Iron Ore
					 1234,   500, --Iron Nugget
					  651,   500, --Iron Ingot
					  685,  5000, --Khroma Ore
					 2711,  2000, --Khroma Nugget
					 1650,   500, --Kopparnickel Ore
					 1703, 25000, --Kunwu Ore
					 2143,   500, --Mandrel
					  647,  5000, --Molybdenum Ore
					 1635,   500, --Paktong Ingot
					 1466, 50000, --Relic Iron
					  652,   500, --Steel Ingot
					 1235,   500, --Steel Nugget
					 2763,  1000, --Swamp Ore
					  657,  2000, --Tama-Hagane
					  641,   500, --Tin Ore
					  659,   500, --Tin Ingot
					 2302,  2500, --Troll Bronze Ingot
					 1469,  8000  --Wootz Ore
				 },
	[17416457] = {
					 2417,   500, --Aht Urghan Brass
					 2418,   500, --Aht Urghan Brass Ingot
                      678,   500, --Aluminum Ore
					  679,   500, --Aluminum Ingot
					  779, 15000, --Aventurine
					 2877, 25000, --Befouled Silver
					 1231,   500, --Brass Nugget
					  650,   500, --Brass Ingot
                     2305,   500, --Auric Sand
					  767, 15000, --Carnelian
                      780, 15000, --Clarite
					  640,   500, --Copper Ore
					 1230,   500, --Copper Nugget
					  648,   500, --Copper Ingot
                     1262,  4000, --Dark Ore
                     1258,  4000, --Earth Ore
					 2536,   500, --Electrum Ingot
					 1255,  4000, --Fire Ore
					  768,   500, --Flint Stone
					 2765,  1000, --Fool's Gold Ore
					  777, 15000, --Fulmenite
					  748,   500, --Gold Beastcoin
					  737,   500, --Gold Ore
					 1225,   500, --Gold Nugget
					  745,   500, --Gold Ingot
				      778, 15000, --Heliodor
                     1256,  4000, --Ice Ore
					 2880, 10000, --Kidney Stone
					 1460, 25000, --Koh-I-Noor
                      781, 15000, --Larimar
                     1261,  4000, --Light Ore
                     1259,  4000, --Lightning Ore
					 2228,  5000, --Luminium Ore
					 2143,   500, --Mandrel
					 1858,  2000, --Moblumin Ingot
					 2876, 25000, --Muculent Ingot
					  749,   500, --Mythril Beastcoin
					  644,   500, --Mythril Ore
					  653,   500, --Mythril Ingot
					 2470, 20000, --Nethereye Chain
                     2471, 20000, --Netherfield Chain
                     2472, 20000, --Netherspirit Chain
                     2473, 20000, --Nethercant Chain
                     2474, 20000, --Netherpact Chain
					  739,  5000, --Orichalcum Ore
					  740,  3000, --Phrygian Ore
					  751,  1000, --Platinum Beastcoin					 
					  738,  1000, --Platinum Ore
					 1227,  1000, --Platinum Nugget
					  746,  2500, --Platinum Ingot
					 2850,  5000, --Sahagin Gold
                      782, 15000, --Selenite
					  750,   500, --Silver Beastcoin
					  736,   500, --Silver Ore
					  744,   500, --Silver Ingot
                      783, 15000, --Tenebrite
                     1260,  4000, --Water Ore
                     1257,  4000, --Wind Ore
					  642,   500  --Zinc Ore
				 },
	[17416462] = {
					 5680,   500, --Agaricus
					 5568,   500, --Apkallu Egg
					 8800,   500, --Azuki Bean
					  704,  1000, --Bamboo Stick
					 4367,   500, --Batagreens
					 6416,  4000, --Behemoth Meat
					 4318,  1500, --Bibiki Urchin
					 4570,   500, --Bird Egg
					  626,   500, --Black Pepper
					 4503,   500, --Buburimu Grape
					 5152,  1000, --Buffalo Meat
					 8753,  6000, --Cehuetzi Ice Shard
					 5565,  4000, --Cerberus Meat
					  636,   500, --Chamomile
					  639,   500, --Ronfaure Chestnut
					  628,   500, --Cinnamon
					 4450,   500, --Coral Fungus
					 1555,   500, --Coriander
					  621,   500, --Crying Mustard
					 1475,  1000, --Curry Powder
					 4359,   500, --Dhalmel Meat
					 4486,  3000, --Dragon Heart
					 4272,  3000, --Dragon Meat
					  622,   500, --Dried Marjoram
					 4363,   500, --Faerie Apple
					 1524,   500, --Fresh Mugwort
					 1111,   500, --Gelatin
					 5164,   560, --Ground Wasabi
					 4480,  1500, --Gugru Tuna
					 4370,   500, --Honey
					 5564,  4000, --Hydra Meat
					  612,   500, --Kazham Peppers
					 4273,   500, --Kitron
					 4362,   500, --Lizard Egg
					  627,   500, --Maple Sugar
					 4390,   500, --Mithran Tomato
					 4361,  1000, --Nebimonite
					 5650,   500, --Nopales
					  633,   500, --Olive Oil
					 4468,   500, --Pamamas
					 4274,   500, --Persikos
					  619,   500, --Popoto
					 4365,   500, --Rolanberry
					  611,   500, --Rye Flour
					  638,   500, --Sage
					 4389,   500, --San d'Orian Carrot
					  610,   500, --San d'Orian Flour
					 4431,   500, --San d'Orian Grapes
					 4392,   500, --Saruta Orange
					 4378,   500, --Selbina Milk
					 4484,   500, --Shall Shell
					 1471,   500, --Sticky Rice
					  620,   500, --Tarutaru Rice
					 1554,   500, --Turmeric
					 5703,   500, --Uleguerand Milk
					 5661,   500, --Walnut
					 9200,   500, --Wasabi
					 4387,   500, --Wild Onion
					 5907,   500, --Winterflower
					 4445,   500 --Yagudo Cherry
				 },
	[17416461] = {
					   921,   500, --Ahriman Tears
					   935,  4000, --Ahriman Wing
					   957,  1000, --Amaryllis
					  2361,  2000, --Ameretat Vine
					  2752,  3000, --Amphiptere Whisker
					   937,   500, --Animal Glue
					  1626,  2000, --Avatar Blood
					   922,   500, --Bat Wing
					  2015,   500, --Beast Blood
					   930,  2000, --Beastman Blood
					   912,   500, --Beehive Chip
					   913,   500, --Beeswax
					  1110,  4000, --Beetle Blood
					  2014,  1000, --Bird Blood
					   928,   500, --Bomb Ash
					   919,  1500, --Boyahda Moss
					   916,  1000, --Cactuar Needle
					  1592,  2500, --Cactur Root
					  2464,   500, --Carbon Dioxide
					   932,   500, --Carbon Fiber
					   948,   500, --Carnation
					  1120,   500, --Casablanca
					  1630,   500, --Cluster Ash
					   959,   500, --Dahlia
					  2365,  2000, --Demon Blood
					  4509,   500, --Distilled Water
					  2549,   500, --Djinn Ash
					  1165,  1000, --Doll Shard
					   923,  1500, --Dryad Root
					  2875, 40000, --Ethereal Squama
					   924,  1000, --Fiend Blood
					   947,   500, --Firesand
					  1519,  2000, --Fresh Orc Liver
					  1445,  5000, --Freya's Tear
					   925,   500, --Giant Stinger
					   933,   500, --Glass Fiber
					  1520,  1000, --Goblin Grease
					  1309,  1000, --Gold Leaf
					   955,  1000, --Golem Shard
					  1264,  2500, --Great Boyahda Moss
					   939,   500, --Hecteyes Eye
					  2163,  2000, --Imp Wing
					  2475,  1000, --Kaolin
					  2373,  4000, --Khimaira Tail
					  2155,   500, --Lesser Chigoe
					   956,   500, --Lilac
					  2013,  1500, --Lizard Blood
					   954,   500, --Magic Pot Shard
					   920,  1000, --Malboro Vine
					   958,   500, --Marguerite
					   914,   500, --Mercury
					   918,  2000, --Mistletoe
					  5165,   500, --Movalpolos Water
					  1308,	  500, --Mythril Leaf
					   942,  5000, --Philosopher’s Stone
					  2310,   500, --Plasma Oil
					  1310,  1500, --Platinum Leaf
					   952,   500, --Poison Flour
					  2513,  1500, --Rafflesia Vine
					   949,   500, --Rain Lily
					   941,  1000, --Red Rose
					   940,  2000, --Revival Tree Root
					   936,   500, --Rock Salt
					  2465, 20000, --Rubber Cap
                      2466, 20000, --Rubber Harness
                      2467, 20000, --Rubber Gloves
                      2468, 20000, --Rubber Chausses
                      2469, 20000, --Rubber Soles
					  1888,  1500, --Silica
					  1307,   500, --Silver Leaf
					  1521,  2000, --Slime Juice
					   637,   500, --Slime Oil
					  2335,  1000, --Soulflayer Tentacle
					  1108,   500, --Sulfur
					  1772,  2000, --Super Cermet
					  1621,  2000, --Taurus Wing
					   953,   500, --Treant Bulb
					  2131,   500, --Triturator
					  2338,  1500, --Wamoura Scale
					   951,   500 --Wijnruit
				 },
	[17416464] = {
                      4111,   500, --Dark Crystal
				      4107,   500, --Earth Cluster
				      4104,   500, --Fire Cluster
				      4105,   500, --Ice Cluster
					  4110,   500, --Light Cluster
					  4108,   500, --Lightning Cluster
					  4109,   500, --Water Cluster
					  4106,   500, --Wind Cluster
					  4244,  2000, --Aurora Crystal
					  4240,  2000, --Cyclone Crystal
					  4239,  2000, --Glacier Crystal
					  4238,  2000, --Inferno Crystal
					  4242,  2000, --Plasma Crystal
					  4241,  2000, --Terra Crystal
					  4243,  2000, --Torrent Crystal
					  4245,  2000  --Twilight Crystal

				 }	
				   
}

local synthesisTable =
{            
    [4240] = xi.effect.WOODWORKING_IMAGERY,
	[4244] = xi.effect.CLOTHCRAFT_IMAGERY,
	[4242] = xi.effect.LEATHERCRAFT_IMAGERY,
	[4239] = xi.effect.BONECRAFT_IMAGERY,
	[4241] = xi.effect.SMITHING_IMAGERY,
	[4238] = xi.effect.GOLDSMITHING_IMAGERY,
	[4243] = xi.effect.COOKING_IMAGERY,
	[4245] = xi.effect.ALCHEMY_IMAGERY				
}

local guildName =
{
    [4240] = "Woodworking",
	[4244] = "Clothcrafting",
	[4242] = "Leathercrafting",
	[4239] = "Bonecrafting",
	[4241] = "Smithing",
	[4238] = "Goldsmithing",
	[4243] = "Cooking",
	[4245] = "Alchemy"
}

xi.vrtraCraft.craftShop = function(player,npc)
	local charName  = player:getName()
    local craftNpc  = npc:getID()
	local guildName = npc:getName(craftNpc)
	local stock     = vrtraStock[craftNpc]
	local npcName   = npcNames[craftNpc]
	
    if stock then
        if craftNpc > 17416455 and craftNpc < 17416464 then
            local guildString = vrtraNPC[craftNpc]
            local balance     = player:getCurrency(guildString)

            player:PrintToPlayer(string.format(npcName.." : Welcome "..charName.."!  All your %s needs in one place!",guildName), 21)
            player:PrintToPlayer(string.format("   You have "..balance.." %s Guild Points!",guildName), 21)
            xi.shop.general(player, stock)
        elseif craftNpc == 17416464 then
            player:PrintToPlayer(string.format(npcName.." : Greetings %s, I serve as Vrtra's custom crystal vendor!",player:getName()), 21)
            player:PrintToPlayer(string.format("   I can also assist you in your crafting needs by providing synthesis support."), 21)
            player:PrintToPlayer(string.format("   Trade me the corresponding HQ crafting crystal from the list below to receive synthesis support!"), 21)
            player:PrintToPlayer(string.format("     Alchemy - Twilight Crystal"), 21)
            player:PrintToPlayer(string.format("     Bonecraft - Glacier Crystal"), 21)
            player:PrintToPlayer(string.format("     Clothcraft - Aurora Crystal"), 21)
            player:PrintToPlayer(string.format("     Cooking - Torrent Crystal"), 21)
            player:PrintToPlayer(string.format("     Goldsmithing - Inferno Crystal"), 21)
            player:PrintToPlayer(string.format("     Leathercraft - Plasma Crystal"), 21)
            player:PrintToPlayer(string.format("     Smithing - Terra Crystal"), 21)
            player:PrintToPlayer(string.format("     Woodworking - Cyclone Crystal"), 21)
            xi.shop.general(player, stock)
        end
	end
end

xi.vrtraCraft.craftTrade = function (player,npc,trade)
    local tradedItem  = trade:getItemId()
	local synthEffect = synthesisTable[tradedItem]
	local gName       = guildName[tradedItem]
	
	if synthEffect then 
		if trade:getItemCount() == 1 then
    		player:addStatusEffect(synthEffect,3,0,480)
			player:tradeComplete()
			player:PrintToPlayer(string.format("Cid : You are now recieving "..gName.." Synthesis Support."), 21)
	    end
	else
		player:PrintToPlayer(string.format("Cid : What can I do with this? Please trade me the appropriate HQ crystal for support."), 21)
    end
end
