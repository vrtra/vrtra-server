-----------------------------------
-- Area: Bostaunieux_Oubliette
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.BOSTAUNIEUX_OUBLIETTE] =
{
    text =
    {
        CONQUEST_BASE            = 0,     -- Tallying conquest results...
        ITEM_CANNOT_BE_OBTAINED  = 6543,  -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED            = 6549,  -- Obtained: <item>.
        GIL_OBTAINED             = 6550,  -- Obtained <number> gil.
        KEYITEM_OBTAINED         = 6552,  -- Obtained key item: <keyitem>.
        NOTHING_OUT_OF_ORDINARY  = 6563,  -- There is nothing out of the ordinary here.
        FELLOW_MESSAGE_OFFSET    = 6578,  -- I'm ready. I suppose.
        CARRIED_OVER_POINTS      = 7160,  -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY  = 7161,  -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER             = 7162,  -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        FISHING_MESSAGE_OFFSET   = 7216,  -- You can't fish here.
        CHUMIA_DIALOG            = 7316,  -- Welcome to Bostaunieux Oubliette...
        SEEMS_LOCKED             = 7318,  -- It seems to be locked.
        SPIRAL_HELL_LEARNED      = 7425,  -- You have learned the weapon skill Spiral Hell!
        SENSE_OMINOUS_PRESENCE   = 7426,  -- You sense an ominous presence...
        ITEMS_ITEMS_LA_LA        = 7429,  -- You can hear a strange voice... Items, items, la la la la la
        GOBLIN_SLIPPED_AWAY      = 7435,  -- The Goblin slipped away when you were not looking...
        REGIME_REGISTERED        = 9540,  -- New training regime registered!
        PLAYER_OBTAINS_ITEM      = 10592, -- <name> obtains <item>!
        UNABLE_TO_OBTAIN_ITEM    = 10593, -- You were unable to obtain the item.
        PLAYER_OBTAINS_TEMP_ITEM = 10594, -- <name> obtains the temporary item: <item>!
        ALREADY_POSSESS_TEMP     = 10595, -- You already possess that temporary item.
        NO_COMBINATION           = 10600, -- You were unable to enter a combination.
        COMMON_SENSE_SURVIVAL    = 10633, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        SEWER_SYRUP_PH          =
        {
            [17461305] = 17461307, -- -19.000 1.000 -173.000
            [17461306] = 17461307, -- -20.000 1.000 -148.000
        },
        SHII_PH                 =
        {
            [17461311] = 17461315, -- -59.000 0.941 -149.000
            [17461334] = 17461315, -- -64.000 -0.500 -144.000
            [17461277] = 17461315, -- -65.000 -1.000 -137.000
            [17461309] = 17461315, -- -64.000 0.950 -132.000
            [17461312] = 17461315, -- -53.000 -0.500 -137.000
            [17461308] = 17461315, -- -57.000 0.998 -135.000
        },
        ARIOCH_PH               =
        {
            [17461322] = 17461433, -- -259 0.489 -188
        },
        MANES_PH                =
        {
            [17461469] = 17461471,
            [17461470] = 17461471,
            [17461476] = 17461471,
            [17461477] = 17461471,
        },
        DREXERION_THE_CONDEMNED = 17461338,
        PHANDURON_THE_CONDEMNED = 17461343,
        BLOODSUCKER             = 17461478,
        BODACH                  = 17461479,
    },
    npc =
    {
        CASKET_BASE = 17461488,
    },
}

return zones[xi.zone.BOSTAUNIEUX_OUBLIETTE]
