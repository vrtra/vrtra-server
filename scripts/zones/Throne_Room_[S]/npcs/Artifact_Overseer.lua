-----------------------------------
--  Area: Throne Room [S]
--  NPC:  Artifact armour vendor
--  Type: Vendor
-----------------------------------
local ID = require("scripts/zones/Throne_Room_[S]/IDs")
local entity = {}


entity.onTrigger = function(player)
    player:PrintToPlayer(string.format("Artifact Vendor : Hello there! I am the Vrtra Custom AF armour Vendor!"), 21)
	player:PrintToPlayer(string.format("   Doing AF quests is rather boring, I think, and I'm sure you'd agree."), 21)
	player:PrintToPlayer(string.format("   As a result, I am here to help relieve you of this burden and make your leveling process smoother!"), 21)
	player:PrintToPlayer(string.format("   All you need is some gil and the AF armour is yours forever!"), 21)
	
    if(player:getMainJob() == 1) then -- WAR
        local stock =
        {
			-- AF1
			16678,35000, -- Razor Axe
			12511,45000, -- Fighter's Mask
			12638,45000, -- Fighter's Lorica
			13961,45000, -- Fighter's Mufflers
			14214,45000, -- Fighter's Cuisses
			14089,45000, -- Fighter's Calligae
		}
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 2) then -- MNK
        local stock =
        {
			-- AF1
			17478,35000, -- Beat Cesti
			12512,45000, -- Temple Crown
			12639,45000, -- Temple Cyclas
			13962,45000, -- Temple Gloves
			14215,45000, -- Temple Hose
			14090,45000, -- Temple Gaiters
		}
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 3) then -- WHM
        local stock =
        {
			-- AF1
			17422,35000, -- Blessed Hammer
			13855,45000, -- Healer's Cap
			12640,45000, -- Healer's Briault
			13963,45000, -- Healer's Mitts
			14216,45000, -- Healer's Pantaloons
			14091,45000, -- Healer's Duckbills
		}
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 4) then -- BLM
        local stock =
        {
			-- AF1
			17423,35000, -- Casting Wand
			13856,45000, -- Wizard's Petasos
			12641,45000, -- Wizard's Coat
			13964,45000, -- Wizard's Gloves
			14217,45000, -- Wizard's Tonban
			14092,45000, -- Wizard's Sabots
		}
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 5) then -- RDM
        local stock =
        {
			-- AF1
			16829,35000, -- Fencing Degen
			12513,45000, -- Warlock Chapeau
			12642,45000, -- Warlock Tabard
			13965,45000, -- Warlock Gloves
			14218,45000, -- Warlock Tights
			14093,45000, -- Warlock Boots
		}
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 6) then -- THF
        local stock =
        {
			-- AF1
			16764,35000, -- Marauder's Knife
			12514,45000, -- Rogue's Bonnet
			12643,45000, -- Rogue's Vest
			13966,45000, -- Rogue's Armlets
			14219,45000, -- Rogue's Culottes
			14094,45000, -- Rogue's Poulaines
		}
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 7) then -- PLD
        local stock =
        {
			-- AF1
			17643,35000, -- War Hoop
			12515,45000, -- Gallant Coronet
			12644,45000, -- Gallant Surcoat
			13967,45000, -- Gallant Gauntlets
			14220,45000, -- Gallant Breeches
			14095,45000, -- Gallant Leggings
        }
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 8) then -- DRK
        local stock =
        {
			-- AF1
			16798,35000, -- Raven Scythe
			12516,45000, -- Chaos Burgeonet
			12645,45000, -- Chaos Cuirass
			13968,45000, -- Chaos Gauntlets
			14221,45000, -- Chaos Flanchard
			14096,45000, -- Chaos Sollerets
        }
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 9) then -- BST
        local stock =
        {
			-- AF1
			16680,35000, -- Barbaroi Axe
			12517,45000, -- Beast Helm
			12646,45000, -- Beast Jackcoat
			13969,45000, -- Beast Gloves
			14222,45000, -- Beast Trousers
			14097,45000, -- Beast Gaiters
        }
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 10) then -- BRD
        local stock =
        {
			-- AF1
			16766,35000, -- Paper Knife
			13857,45000, -- Choral Roundlet
			12647,45000, -- Choral Justaucorps
			13970,45000, -- Choral Cuffs
			14223,45000, -- Choral Cannions
			14098,45000, -- Choral Slippers
        }
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 11) then -- RNG
        local stock =
        {
			-- AF1
			17188,35000, -- Sniping Bow
			12518,45000, -- Hunter's Beret
			12648,45000, -- Hunter's Jerkin
			13971,45000, -- Hunter's Bracers
			14224,45000, -- Hunter's Braccae
			14099,45000, -- Hunter's Socks	
        }
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 12) then -- SAM
        local stock =
        {
			17812,35000, -- Magoroku
			13868,45000, -- Myochin Kabuto
			13781,45000, -- Myochin Domaru
			13972,45000, -- Myochin Kote
			14225,45000, -- Myochin Haidate
			14100,45000, -- Myochin Sune-Ate
        }
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 13) then -- NIN
        local stock =
        {
			-- AF1
			17771,35000, -- Anju
			17772,35000, -- Zushio
			13869,45000, -- Ninja Hatsuburi
			13782,45000, -- Ninja Chainmail
			13973,45000, -- Ninja Tekko
			14226,45000, -- Ninja Hakama
			14101,45000, -- Ninja Kyahan
         }
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 14) then -- DRG
        local stock =
        {
			-- AF1
			16887,35000, -- Peregrine
			12519,45000, -- Drachen Armet
			12649,45000, -- Drachen Mail
			13974,45000, -- Drachen Finger Gauntlets
			14227,45000, -- Drachen Brais
			14102,45000, -- Drachen Greaves	
        }
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 15) then -- SMN
        local stock =
        {
			-- AF1
			17532,35000, -- Kukulcan's Staff
			12520,45000, -- Evoker's Horn
			12650,45000, -- Evoker's Doublet
			13975,45000, -- Evoker's Bracers
			14228,45000, -- Evoker's Spats
			14103,45000, -- Evoker's Pigaches
		}
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 16) then -- BLU
        local stock =
        {
			-- AF1
			17717,35000, -- Immortal's Scimitar
			15265,45000, -- Magus Keffiyeh
			14521,45000, -- Magus Jubbah
			14928,45000, -- Magus Bazubands
			15600,45000, -- Magus Shalwar
			15684,45000, -- Magus Charuqs
		}
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 17) then -- COR
        local stock =
        {	
		
			18702,35000, -- Trump Gun
			15266,45000, -- Corsair's Tricorne
			14522,45000, -- Corsair's Frac
			14929,45000, -- Corsair's Gants
			15601,45000, -- Corsair's Culottes
			15685,45000, -- Corsair's Bottes
		}
		xi.shop.general(player, stock)
    elseif(player:getMainJob() == 19) then -- DNC
        local stock =
        {
			-- AF1 Male
		19203,35000, -- War Hoop
		16138,45000, -- Dancer's Tiara
		14578,45000, -- Dancer's Casaque
		15002,45000, -- Dancer's Bangles
		15659,45000, -- Dancer's Tights
		15746,45000, -- Dancer's Shoes
		16139,45000, -- Dancer's Tiara
		14579,45000, -- Dancer's Casaque
		15003,45000, -- Dancer's Bangles
		15660,45000, -- Dancer's Tights
		15747,45000, -- Dancer's Shoes	
		}
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 20) then -- SCH
        local stock =
        {
			-- AF1
		6058,35000, -- Klimaform
		16140,45000, -- Scholar's Mortarboard
		14580,45000, -- Scholar's Gown
		15004,45000, -- Scholar's Bracers
		16311,45000, -- Scholar's Pants
		15748,45000, -- Scholar's Loafers
		}
		xi.shop.general(player, stock)
	elseif(player:getMainJob() == 18) then -- PUP
        local stock =
        {
			-- AF1
		17858,35000, -- Turbo Animator
		15267,45000, -- Puppetry Taj
		14523,45000, -- Puppetry Tobe
		14930,45000, -- Puppetry Dastanas
		15602,45000, -- Puppetry Churidars
		15686,45000, -- Puppetry Babouches
		}
		xi.shop.general(player, stock)
	end

end

entity.onTrade = function(player,npc,trade)
	
end
return entity