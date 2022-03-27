-----------------------------------
-- Area: Carpenters_Landing
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.CARPENTERS_LANDING] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED    = 6383, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE = 6387, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED              = 6389, -- Obtained: <item>.
        GIL_OBTAINED               = 6390, -- Obtained <number> gil.
        KEYITEM_OBTAINED           = 6392, -- Obtained key item: <keyitem>.
        ITEMS_OBTAINED             = 6398, -- You obtain <number> <item>!
        NOTHING_OUT_OF_ORDINARY    = 6403, -- There is nothing out of the ordinary here.
        FELLOW_MESSAGE_OFFSET      = 6418, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS        = 7000, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY    = 7001, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER               = 7002, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE              = 7056, -- Tallying conquest results...
        BEGONE_TRESPASSER          = 7251, -- Begone, trespasser! This land belongs to the Knights Mi- This land belongs to Count Teulomme!
        CRYPTONBERRY_FALLEN_TREE   = 7253, -- A tree has fallen here...
        CRYPTONBERRY_EXECUTOR_POP  = 7254, -- You feel a wave of hatred wash over you!
        FISHING_MESSAGE_OFFSET     = 7277, -- You can't fish here.
        YOU_WISH_TO_KNOW_MISTALLE  = 7231, -- You wish to know of the Knights Mistalle?
        SQUASH_ANOTHER_WORM        = 7232, -- You're just like everyone else! A maggot looking for a scandal! Well, it's time for me to squash another worm!
        LOGGING_IS_POSSIBLE_HERE   = 7394, -- Logging is possible here if you have <item>.
        BEUGUNGEL_SHOP_DIALOG      = 7426, -- Hello, [sir/ma'am]! I'm selling goods direct from the Carpenters' Guild.
        CRYPTONBERRY_EXECUTOR_DIE  = 7478, -- ...Cleave our foesss with barren hate.
        CRYPTONBERRY_ASSASSIN_2HR  = 7479, -- ..Take up thy lanternsss. The truth we shall illuminate.
        CRYPTONBERRY_EXECUTOR_2HR  = 7480, -- Through this we ssseek our just reward...
        MYCOPHILE_MUSHROOM         = 7497, -- There is a rotten mushroom here. There are 3 openings in its cap.
        HERCULES_TREE_NOTHING_YET  = 7499, -- There is nothing here yet. Check again in the morning.
        COMMON_SENSE_SURVIVAL      = 7564, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        ORCTRAP_PH            =
        {
            [16785675] = 16785676, -- 181.819 -5.887 -524.872
        },
        TEMPEST_TIGON         = 16785593,
        OVERGROWN_IVY         = 16785709,
        CRYPTONBERRY_EXECUTOR = 16785710,
        MYCOPHILE             = 16785722,
        HERCULES_BEETLE       = 16785723,
    },
    npc =
    {
        HERCULES_BEETLE_TREES =
        {
            16785730,
            16785731,
            16785732,
            16785733,
            16785734,
            16785735,
        },
        LOGGING =
        {
            16785773,
            16785774,
            16785775,
            16785776,
        },
    },
}

return zones[xi.zone.CARPENTERS_LANDING]
