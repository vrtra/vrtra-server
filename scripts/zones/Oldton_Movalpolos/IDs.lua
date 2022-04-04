-----------------------------------
-- Area: Oldton_Movalpolos
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.OLDTON_MOVALPOLOS] =
{
    text =
    {
        ITEM_CANNOT_BE_OBTAINED = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6390, -- Obtained: <item>.
        GIL_OBTAINED            = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6393, -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET   = 6419, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS     = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        CONQUEST_BASE           = 7057, -- Tallying conquest results...
        FISHING_MESSAGE_OFFSET  = 7576, -- You can't fish here.
        MINING_IS_POSSIBLE_HERE = 7707, -- Mining is possible here if you have <item>.
        RAKOROK_DIALOGUE        = 7731, -- Nsy pipul. Gattohre! I bisynw!
        CHEST_UNLOCKED          = 7755, -- You unlock the chest!
        COMMON_SENSE_SURVIVAL   = 8113, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        BUGBEAR_STRONGMAN_PH  =
        {
            [16822421] = 16822423, -- -81.31 31.493 210.675 (west)
            [16822426] = 16822427, -- 58.013, 15.5, -121.928 (east)
        },
        GOBLIN_WOLFMAN        = 16822459,
    },
    npc =
    {
        SCRAWLED_WRITING = 16822469,
        OVERSEER_BASE    = 16822509, -- first Conquest_Banner in npc_list
        TREASURE_CHEST   = 16822531,
        MINING =
        {
            16822525,
            16822526,
            16822527,
            16822528,
            16822529,
            16822530,
        },
    },
}

return zones[xi.zone.OLDTON_MOVALPOLOS]
