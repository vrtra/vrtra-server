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
    local menu =
    {
        title = "Vrtra Custom Teleports - Where to?",
        onStart = function(playerArg)
            -- NOTE: This could be used to lock the player in place
            -- playerArg:PrintToPlayer("Teleport Menu", xi.msg.channel.NS_SAY)
        end,
        options =
        {
		    {
                "My Home Point",
                function(playerArg)
                    playerArg:PrintToPlayer("Teleport to your Home Point processing", xi.msg.channel.NS_SAY)
                    playerArg:warp()
                end,
            },	
				
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
        }
		};
         xi.shop.general(player, stock_1);
        player:PrintToPlayer("   All the ranged ammunition you'll ever need!", 21);

    end
end