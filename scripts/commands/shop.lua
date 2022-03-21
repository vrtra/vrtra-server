--------------------------------------------------------------
-- func: Vrtra Server Shop
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

-- Notes:
-- ALWAYS comment your additions!

function onTrigger(player,page)
    player:PrintToPlayer("Welcome to Vrtra's shop of wares to aid you on your adventure!", 21);

    if (page == 0 or page == nil) then
		player:PrintToPlayer(".....", 21);
		player:PrintToPlayer("Use the following format to access the below listed shops:  !shop <page#>", 21);
		player:PrintToPlayer(".....", 21);
        player:PrintToPlayer("1: Ranged  2: Food  3: Medicines  4: Misc. gear", 21);
        player:PrintToPlayer("5: Tools    6: Dice   7: Fireworks  8: BST jugs", 21);
		player:PrintToPlayer("9: Augmenting stones(must complete a Relic/Mythic/Empyrean weapon to access.)", 21);
        -- Edit and uncomment next line if you want more pages.
        -- player:PrintToPlayer("5: ??, 6: ??, 7: ??, 8: ??");
    elseif (page == 1) then
        local stock_1 =
        {
            0x107B,100, --Stone Quiver
            0x107C,100, --Bone Quiver
            0x107D,100, --Beetle Quiver
            0x107E,100, --Horn Quiver
            0x107F,100, --Scorpion Quiver
            0x1080,100, --Demon Quiver
            0x14D4,100, --Kabura Quiver
            0x1083,100, --Bronze Bolt Quiver
            0x14D6,100, --Blind Bolt Quiver
            0x14D7,100, --Acid Bolt Quiver
            0x14DA,100, --Venom Bolt Quiver
            0x14D9,100, --Sleep Bolt Quiver
            0x14DB,100, --Bloody Bolt Quiver
            0x14D8,100, --Holy Bolt Quiver
            0x14EF,100, --Bronze Bullet Pouch
            0x1084,100, --Mythril Bolt Quiver
            0x1085,100, --Darksteel Bolt Quiver
            0x14DD,100, --Spartan Bullet Pouch
            0x14E9,100, --Iron Bullet Pouch
            0x14DC,100, --Silver Bullet Pouch
            0x1528,100, --Steel Bullet Pouch
			5819,100,
        };
         xi.shop.general(player, stock_1);
        player:PrintToPlayer("   All the ranged ammunition you'll ever need!", 21);

    elseif (page == 2) then
        local stock_2 =
        {
            -- Non Custom "for low lv noobs in exp party" food, same price as AH so non exploitable.
            4376,   108,  -- Meat Jerky
            5721,   500,  -- Crab Sushi
            4271,   2000,  -- Rice Dumpling
            4536,   3133,  -- Blackened Frog
			4523,   1000, --Melon Pie +1
			4339,   1000, -- roloyolo pie
            4381,   1000, --Meat Mithkabob
            5149,   5000, --Sole Sushi
            5932,   5000, -- kitron juice

        };
         xi.shop.general(player, stock_2);
        player:PrintToPlayer("   Basic food for basic needs!", 21);

    elseif (page == 3) then
        local stock_3 =
        {
            4148,   100,    -- Antidote
            4150,   100,   -- Eye Drops
            4151,   100,    -- Echo drops
            4112,   100,    -- Potion
            4128,   100,   -- Ether
            4153,   100,    -- Antacid
            4165,   100,   -- Silent Oil
            4164,   100,   -- Prism Powder
			4173,   100,   -- hi reraiser
            4155,   100,   -- remedy
			4154,   100

        };
         xi.shop.general(player, stock_3);
        player:PrintToPlayer("   Whatever your illness, we've got the cure!", 21);

    elseif (page == 4) then
        local stock_4 =
        {
            15793,  75000, -- Anniversary Ring
            15761,  15000, -- Chariot Band
            15762,  15000, -- Empress Band
            15763,  35000, -- Emperor Band
			11811,  10000, -- destri helm
            10293,  10000, -- chocobo shirt
			16607,  10000, --Chaosbringer
            17809,  10000, --Memeito
            15533,  100000, -- chocobo whistle 

        };
         xi.shop.general(player, stock_4);
        player:PrintToPlayer("   EXP boosting rings, starter gear, and more!", 21);

    elseif (page == 5) then
        local stock_5 =
        {

		5869, 100, -- Toolbag Chonofuda
		2973, 100, -- Chonofuda
		5867, 100, -- Toolbag Inoshishinofuda
		2971, 100, -- Inoshishinofuda
		5417, 100, -- Toolbag Sanjaku-Tenugui
		2553, 100, --Sanjaku-Tenugui
		5314, 100, -- Toolbag Shihei
		1179, 100, --Shihei
		5868, 100, -- Toolbag Shikanofuda
		2972, 100, --Shikanofuda
		5319, 100, -- Toolbag Shinobi-Tabi
		1194, 100, --Shinobi-Tabi
        };
        xi.shop.general(player, stock_5);
        player:PrintToPlayer("   All the ninja Tools you need for your adventures!", 21);

    elseif (page == 6) then
        local stock_6 =
        {
            -- Die's
            5486,   100,    -- Bard Die
            5485,   100,    -- Beastmaster Die
            5480,   100,    -- Black Mage Die
            5492,   100,    -- Blue Mage Die
            5497,   100,    -- Bolter's Die
            5498,   100,    -- Caster's Die
            5493,   100,    -- Corsair Die
            5495,   100,    -- Dancer Die
            5484,   100,    -- Dark Knight Die
            5490,   100,    -- Dragoon Die
            6368,   100,    -- Geomancer Die
            5478,   100,    -- Monk Die
            5489,   100,    -- Ninja Die
            5483,   100,    -- Paladin Die
            5494,   100,    -- Puppetmaster Die
            5487,   100,    -- Ranger Die
            5481,   100,    -- Red Mage Die
            5488,   100,    -- Samurai Die
            5496,   100,    -- Scholar Die
            5491,   100,    -- Summoner Die
            5482,   100,    -- Thief Die
            5477,   100,    -- Warrior Die
            5479,   100     -- White Mage Die
        };
        xi.shop.general(player, stock_6);
        player:PrintToPlayer("   Your one stop shop for Corsair dice!", 21);

    elseif (page == 7) then
        local stock_7 =
        {
            4186,   100,    -- Airborne
            5441,   100,    -- Angelwing
            4216,   100,    -- Brilliant Snow
            4167,   100,    -- Cracker
            4250,   100,    -- Crackler
            5361,   100,    -- Datechochin
            -- 5883, 100     -- Falling Star (Not Working)
            4251,   100,    -- Festive Fan
            5725,   100,    -- Goshikitenge
            4184,   100,    -- Kongou Inaho
            4183,   100,    -- Konron Hassen
            4169,   100,    -- Little Comet
            -- 5882, 100,   -- Marine Bliss (Not Working)
            4185,   100,    -- Meifu Goma
            5360,   100,    -- Muteppo
            4256,   100,    -- Ouka Ranman
            4257,   100,    -- Papillion
            5769,   100,    -- Popper (Congrats!)
            -- 4215, 100,   -- Popstar (Not Working)
            -- 5881, 100,   -- Shisai Kaboku (Not Working)
            4217,   100,    -- Sparkling Hand
            4253,   100,    -- Spirit Masque
            4252,   100,    -- Summer Fan
            4168,   100     -- Twinkle Shower
        };
        xi.shop.general(player, stock_7);
        player:PrintToPlayer("   Browse my list of explosive Fireworks, but be careful to not blow your hands off!", 21);

    elseif (page == 8) then
        local stock_8 =
        {
 	  17021,500, -- Pet Food Zeta
	  17020,500, -- Pet Food Epsilon
	  17019,500, -- Pet Food Delta
	  17018,500, -- Pet Food Gamma
	  17017,500, -- Pet Food Beta
	  17016,500, -- Pet Food Alpha
	  17881,500, -- Deepbed Soil
	  17904,500, -- Briny Broth
	  17894,500, -- Vermihumus
	  17893,500, -- Wool Grease
	  17878,500, -- Lucky Carrot Broth
	  17874,500, -- Cunning Brain Broth
	  17895,500, -- Dancing Herbal Broth
	  17906,500, -- Auroral Broth
	  17884,500, -- Sun Water
	  17892,500, -- Fragrant Antica Broth
	  17890,500, -- Clear Blood Broth
	  17873,500, -- Scarlet Sap
	  17888,500, -- Lively Mole Broth
	  17886,500, -- Noisy Grasshopper Broth
	  17867,500, -- Cold Carrion Broth
	  17863,500, -- Quadav Bug Broth
	  17871,500, -- Warm Meat Broth
	  17869,500, -- Rich Humus
	  17865,500, -- Singing Herbal Broth
	  17861,500, -- Famous Carrot Broth
	  17868,500, -- Humus
	  17905,500, -- Wormy Broth
	  17877,500, -- Fish Oil Broth
	  17882,500, -- Alchemist Water
	  18731,500, -- Automaton Oil
	  18732,500, -- Automaton Oil +1
	  18733,500, -- Automaton Oil +2
	  
        };

        xi.shop.general(player, stock_8);
        player:PrintToPlayer("   Jug pets and pet food for all you Beastmaster connoisseurs!", 21);
    elseif (page == 9) and player:getVar("empy_augment") == 1 
	or player:getVar("mythic_augment") == 1 
	or player:getVar("relic_augment") == 1
	or player:getVar("empy_augment") == 1
	or player:getVar("salvage_augment") == 1 
	or player:getVar("sea_augment") == 1
	or player:getVar("dynamis_augment") == 1
	or player:getVar("abj_augment") == 1
	then
        local stock_9 =
        {
       8933,5000, -- Idle Augments
       8942,5000, -- Mage Augments
       8951,5000, -- SMN Pet Augments
       8960,5000,-- Healer Augments
       8936,5000, -- Ranged Augments 
       8945,5000, -- Tank Augments 
	   8954,5000, -- DEX Melee Augments
	   8963,5000, -- STR Melee Augments
       8948,5000, -- BST Pet Augments
	   8939,5000, -- BRD AUGMENTS	
        };

        xi.shop.general(player, stock_9);
        player:PrintToPlayer("   Stones for Augmenting. The augment stats correlate to the following stones:", 21);
		player:PrintToPlayer("   Leafslit Stone - Idle augments (applicable for all jobs)", 21);
		player:PrintToPlayer("   Leaftip Stone - Offensive Mage augments", 21);
		player:PrintToPlayer("   Leafdim Stone - Summoner Avatar-related augments", 21);
		player:PrintToPlayer("   Leaforb Stone - Defensive Mage augments", 21);
		player:PrintToPlayer("   Duskslit Stone - Ranged DPS augments", 21);
		player:PrintToPlayer("   Dusktip Stone - Tanking augments", 21);
		player:PrintToPlayer("   Duskdim Stone - One-handed weapon DPS augments", 21);
		player:PrintToPlayer("   Duskorb Stone - Two-handed weapon DPS augments", 21);
		player:PrintToPlayer("   Snowdim Stone - Beastmaster pet-related augments", 21);
		player:PrintToPlayer("   Snowtip Stone - Bard augments", 21);
    
    else
        player:PrintToPlayer( string.format( "You do not have access to augmenting.", page ) );
    end
end