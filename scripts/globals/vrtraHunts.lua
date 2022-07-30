------------------------------------------------------
--               Hunt Table Rewards                 --
--         Called by Hunt NPCs for rewards          --
--               To save space in LUA               --
------------------------------------------------------

-- Daily Hunt TargetS --
 weekhunt 	= 	{	
        17297440,      -- Behemoth
        17596720,      -- Serket            
        17301537,      -- Adamantoise
        17277127,      -- Shikigami Weapon
        17408018,      -- Fafnir
        17404331,      -- Voluptuous Vivian
        17228242,      -- Simurgh
        17269106,      -- Roc
        17207308,      -- Lumberjack
        17203216,      -- King Arthro
        17613130,      -- Capricious Cassie
        17645578,      -- Bune
        17617130,      -- Vouivre
        17244539,      -- Cactrot Rapido
        17490234,      -- Guivre
        17498522,      -- Charybdis
        16806215,      -- Xolotl
        17424480,      -- Alkyoneus
		16798056,      -- Bonnacon
        17645755,      -- Ungur
		-- wave 2
		16806117,      -- Sargas
		17424488,      -- Autarch
		17396134,      -- Yagudo Avatar
		17383442,      -- Diamond Quadav
		17391802,      -- Orcish Overlord
		17387945,      -- Dirtyhanded Gochakzuk
		17031481,      -- Farlarder the Shrewd
		17043626,      -- Dragonscaled Bugaal Ja
		17072170,      -- Oupire
		17240180,      -- Killer Jonny
		17338585,      -- Zirnitra
		17117422,      -- Judgmental Julika
		16998481,      -- Lamie No 8
						};

-- WEEKLY REWARDS --
 reward_table_weekly = {           	 

                                     15736,        -- Trotter Boots
                                     17108,        -- Healing Staff
                                     18018,        -- Sirocco Kukri
                                     16885,        -- Gae Bolg
                                     16555,        -- Ridill
                                     17652,        -- Joyeuse
                                     17653,        -- Hrotti
                                     18019,        -- X's Knife
                                     14168,        -- Dune Boots
									 

                                     17793,        -- Senjuinrikio
                                     17451,        -- Morgenstern
                                     17699,        -- Dissector
                                     17827,        -- Michishiba
                                     17944,        -- Retributor
                                     18097,        -- Gondo-Shizunori
                                     18217,        -- Rampager
                                     17509,        -- Destroyers
                                     17589,        -- Thyrsusstab
                                     18053,        -- Gravedigger
                                     18005,        -- Heart Snatcher
                                     17207,        -- Expunger
                                     17275,        -- Coffinmaker

                                     18425,        -- Perdu Blade
                                     18717,        -- Perdu Bow
                                     18718,        -- Perdu Crossbow
                                     17741,        -- Perdu Hanger
                                     18943,        -- Perdu Sickle
                                     18588,        -- Perdu Staff
                                     16602,        -- Perdu Sword
                                     18491,        -- Perdu Voulge
                                     18850,        -- Perdu Wand
                                     15828,        -- Blood Ring
                                     15827,        -- Insect Ring							
									 15979,		   -- Fowling Earring
									 17829,        -- Hagun
									 17790,        -- Unji
									 -- wave 2
									 18624,        -- Numen Staff

									 -- rare gear that doesnt drop from nm's
			                         17472, -- cross counters
                                     17187, -- ebow 					 
									 13189, -- speed belt	
                                      5736, -- Linen coin purse									 
                                };
								
	-- DAILY HUNT TARGETS --
dailyhunt 	= 	{
	    17568127,      -- Morbolger
	    17268851,      -- Deadly Dodo
	    17231971,      -- Nue
	    17199438,      -- VE
	    17461307,      -- Sewer Syrup
	    17588674,      -- argus
	    17215868,      -- Leaping Lizzy	
		17395800,      -- mee deggi the punisher
		17395870,      -- quu domi the gallant
		17272978,      -- keeper of halidom
		17379626,      -- GaBhu_Unvanquished
		17244372,      -- Centurio_XII-I
		16805962,      -- Sekhmet
        17629238,      -- Centurio_X-I
        17498269,	   -- Fyuu_the_Seabellow
        17498445,	   -- Novv_the_Whitehearted
		17649822,      -- Ose
		-- wave 2
		17486171,      -- Thoon
		17371399,      -- Quu Xijo the Illusory
		17363305,      -- No'Mho Crimsonarmor
		17354922,      -- Kegpaunch Doshgnosh
		17293640,      -- Dosetsu Tree
		17248588,      -- Numbing Norman
		17236204,      -- Boreal Tiger
		17236203,      -- Boreal Coeurl
		17236202,      -- Boreal Hound
		17236059,      -- Ereshkigal
		17215778,      -- Tococo
		17207410,      -- Skirling Liger
		17203447,      -- Fraelissa
		17195221,      -- Slumbering Samwell
		17191044,      -- Rambukk
		17186927,      -- Amanita
		17166441,      -- Belladonna
		17149986,      -- Lamina
		17121610,      -- Chaneque
		17178885,      -- Hyakinthos
		};
	-- DAILY HUNT REWARDS --
reward_table_daily = 
        { 	
        12486, -- emperor hairpin
        13056, -- peacock charm
        13952, -- okotes
        13054, -- fuma kyahan
		15786, -- divisor ring
		16990, -- daihannya
		13841, -- valkyries-mask
		14806, -- intruder-earring
		16374, -- layqa-seraweels
		13803, -- shaman's cloak
		1130,  -- moon orb
		15547, -- vilma's ring
		14286, -- frog trousers
		14466, -- fomor-tunic
		15457, -- swift-belt
		13804, -- minstrels-coat
		13805, -- assault jerkin
        13077, -- star pendant
        15506, -- parade gorget	
        13136, -- star necklace	
        -- wave 2
		15790, -- Multiple Ring
		11677, -- Prouesse Ring
		16284, -- Caract Choker
		16251, -- Casaba Melon Tank
		19114, -- Galkan Dagger
		18451, -- Mokusa
		16280, -- Haraldr's Muffler
		18599, -- Pestle
		17965, -- Sirocco Axe
		11312, -- Rambler's Cloak
		15926, -- Bronze Bandolier
		15927, -- Pinwheel Belt
		19223, -- Attar of Roses
		15835, -- Desperado Ring
		18503, -- Mammut
		19222, -- Wurger
		18762, -- Custodes
		11401, -- Rambler's Gaiters
		11486, -- Diana Corona
		19157, -- Surviver
		18075, -- Rossignol
		16279, -- Pile Chain
		19221, -- Firefly
		16368, -- Herder's Subligar
		16367, -- Phlegethon's Trousers
		18953, -- Beluga
		17760, -- Buccaneer's Scimitar
		16007, -- Protect Earring
		18867, -- Daedalus Hammer
		11402, -- Gothic Sabatons
		15042, -- Gothic Gauntlets
		 5735, -- Cotton Coin Purse
        }
