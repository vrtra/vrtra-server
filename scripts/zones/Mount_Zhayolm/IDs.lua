-----------------------------------
-- Area: Mount_Zhayolm
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.MOUNT_ZHAYOLM] =
{
    text =
    {
        NOTHING_HAPPENS         = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED = 6383, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6389, -- Obtained: <item>.
        GIL_OBTAINED            = 6390, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6392, -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET   = 6418, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS     = 7000, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7001, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7002, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        FISHING_MESSAGE_OFFSET  = 7053, -- You can't fish here.
        STAGING_GATE_CLOSER     = 7313, -- You must move closer.
        STAGING_GATE_INTERACT   = 7314, -- This gate guards an area under Imperial control.
        STAGING_GATE_HALVUNG    = 7317, -- Halvung Staging Point.
        CANNOT_LEAVE            = 7324, -- You cannot leave this area while in the possession of <keyitem>.
        RESPONSE                = 7333, -- There is no response...
        ORDINARY                = 7369, -- There is nothing out of the ordinary here.
        GATES_OF_HALVUNG        = 7370, -- There is a large keyhole here.
        CAST_METAL_PLATE        = 7371, -- Obtained key item: <key item>. You think it may fit the large keyhole.
        OPEN_GATES              = 7372, -- You insert the <key item> into the keyhole.≺Prompt≻
        HAND_OVER_TO_IMMORTAL   = 7420, -- You hand over the % to the Immortal.
        YOUR_IMPERIAL_STANDING  = 7421, -- Your Imperial Standing has increased!
        MINING_IS_POSSIBLE_HERE = 7422, -- Mining is possible here if you have <item>.
        CANNOT_ENTER            = 7481, -- You cannot enter at this time. Please wait a while before trying again.
        AREA_FULL               = 7482, -- This area is fully occupied. You were unable to enter.
        MEMBER_NO_REQS          = 7486, -- Not all of your party members meet the requirements for this objective. Unable to enter area.
        MEMBER_TOO_FAR          = 7490, -- One or more party members are too far away from the entrance. Unable to enter area.
        SHED_LEAVES             = 7552, -- The ground is strewn with shed leaves...
        SICKLY_SWEET            = 7557, -- A sickly sweet fragrance pervades the air...
        DRAWS_NEAR              = 7579, -- Something draws near!
        HOMEPOINT_SET           = 8728, -- Home point set!
        ITEM_CANNOT_BE_OBTAINED = 6384, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6390, -- Obtained: <item>.
        GIL_OBTAINED            = 6391, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6393, -- Obtained key item: <keyitem>.
        FELLOW_MESSAGE_OFFSET   = 6419, -- I'm ready. I suppose.
        CARRIED_OVER_POINTS     = 7001, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7002, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7003, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        FISHING_MESSAGE_OFFSET  = 7054, -- You can't fish here.
        STAGING_GATE_CLOSER     = 7314, -- You must move closer.
        STAGING_GATE_INTERACT   = 7315, -- This gate guards an area under Imperial control.
        STAGING_GATE_HALVUNG    = 7318, -- Halvung Staging Point.
        CANNOT_LEAVE            = 7325, -- You cannot leave this area while in the possession of <keyitem>.
        RESPONSE                = 7334, -- There is no response...
        HAND_OVER_TO_IMMORTAL   = 7421, -- You hand over the % to the Immortal.
        YOUR_IMPERIAL_STANDING  = 7422, -- Your Imperial Standing has increased!
        MINING_IS_POSSIBLE_HERE = 7423, -- Mining is possible here if you have <item>.
        CANNOT_ENTER            = 7482, -- You cannot enter at this time. Please wait a while before trying again.
        AREA_FULL               = 7483, -- This area is fully occupied. You were unable to enter.
        MEMBER_NO_REQS          = 7487, -- Not all of your party members meet the requirements for this objective. Unable to enter area.
        MEMBER_TOO_FAR          = 7491, -- One or more party members are too far away from the entrance. Unable to enter area.
        SHED_LEAVES             = 7553, -- The ground is strewn with shed leaves...
        SICKLY_SWEET            = 7558, -- A sickly sweet fragrance pervades the air...
        ACIDIC_ODOR             = 7559, -- An acidic odor pervades the air...
        PUTRID_ODOR             = 7560, -- A putrid odor threatens to overwhelm you...
        STIFLING_STENCH         = 7564, -- A stifling stench pervades the air...
        DRAWS_NEAR              = 7580, -- Something draws near!
        HOMEPOINT_SET           = 8729, -- Home point set!
    },
    mob =
    {
        ENERGETIC_ERUCA_PH    =
        {
            [17027146] = 17027466, -- 175.315 -14.444 -173.589
            [17027145] = 17027466, -- 181.601 -14.120 -166.218
        },
        IGNAMOTH_PH =
        {
            [17027421] = 17027423, -- -567.6 -15.35 252.201
            [17027422] = 17027423, -- -544.3 -14.8 262.992
        },
        CERBERUS              = 17027458,
        BRASS_BORER           = 17027471,
        CLARET                = 17027472,
        ANANTABOGA            = 17027473,
        KHROMASOUL_BHURBORLOR = 17027474,
        SARAMEYA              = 17027485,
    },
    npc =
    {
        MINING =
        {
            17027561,
            17027562,
            17027563,
            17027564,
            17027565,
            17027566,
        },
    },
}

return zones[xi.zone.MOUNT_ZHAYOLM]
