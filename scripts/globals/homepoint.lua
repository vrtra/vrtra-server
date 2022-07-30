require("scripts/globals/settings")
require("scripts/globals/teleports")
-----------------------------------

xi = xi or {}
xi.homepoint = xi.homepoint or {}

local homepointData =
{
    -- [Index]= [1]group(if to/from both same group, then no cost) [2]fee multiplier [3]dest{x, y, z, rot, zone}
    [  0] = {group = 1, fee = 1, dest = {  -84.468,       1, -65.454,  97, 230}}, -- Southern San d'Oria #1
    [  1] = {group = 1, fee = 1, dest = {       45,       2,     -34,  65, 230}}, -- Southern San d'Oria #2
    [  2] = {group = 1, fee = 1, dest = {      140,      -2,     124,  65, 230}}, -- Southern San d'Oria #3
    [  3] = {group = 1, fee = 1, dest = { -179.101,       4,  71.279,   0, 231}}, -- Northern San d'Oria #1
    [  4] = {group = 1, fee = 1, dest = {       10,  -0.199,      94, 195, 231}}, -- Northern San d'Oria #2
    [  5] = {group = 1, fee = 1, dest = {       69,  -0.199,       9, 227, 231}}, -- Northern San d'Oria #3
    [  6] = {group = 1, fee = 1, dest = {      -38,      -4,     -64, 195, 232}}, -- Port San d'Oria #1
    [  7] = {group = 1, fee = 1, dest = {       49,     -12,    -106, 165, 232}}, -- Port San d'Oria #2
    [  8] = {group = 1, fee = 1, dest = {       -6,     -13,    -151, 195, 232}}, -- Port San d'Oria #3
    [  9] = {group = 2, fee = 1, dest = {   38.189,       0, -42.618,   0, 234}}, -- Bastok Mines #1
    [ 10] = {group = 2, fee = 1, dest = {      117,   0.994,     -58,   0, 234}}, -- Bastok Mines #2
    [ 11] = {group = 2, fee = 1, dest = {     -343, -10.004,    -156, 165, 235}}, -- Bastok Markets #1
    [ 12] = {group = 2, fee = 1, dest = {     -329,     -12,     -33,   0, 235}}, -- Bastok Markets #2
    [ 13] = {group = 2, fee = 1, dest = {     -189,      -8,      27,  65, 235}}, -- Bastok Markets #3
    [ 14] = {group = 2, fee = 1, dest = {      125,     8.5,       7, 227, 236}}, -- Port Bastok #1
    [ 15] = {group = 2, fee = 1, dest = {       41,     8.5,    -238, 130, 236}}, -- Port Bastok #2
    [ 16] = {group = 2, fee = 1, dest = {       45,     -14,     -18,  65, 237}}, -- Metalworks #1
    [ 17] = {group = 3, fee = 1, dest = {  -33.022,      -5, 131.741,   0, 238}}, -- Windurst Waters #1
    [ 18] = {group = 3, fee = 1, dest = {      137,  -0.041,     -14,   0, 238}}, -- Windurst Waters #2
    [ 19] = {group = 3, fee = 1, dest = {  -73.070,  -5.134, 124.784,   0, 239}}, -- Windurst Walls #1
    [ 20] = {group = 3, fee = 1, dest = {     -212,       0,    -100, 195, 239}}, -- Windurst Walls #2
    [ 21] = {group = 3, fee = 1, dest = {       31,  -6.583,     -39,  65, 239}}, -- Windurst Walls #3
    [ 22] = {group = 3, fee = 1, dest = {     -188,  -4.012,     100, 195, 240}}, -- Port Windurst #1
    [ 23] = {group = 3, fee = 1, dest = {     -208,  -8.009,     209, 227, 240}}, -- Port Windurst #2
    [ 24] = {group = 3, fee = 1, dest = {      179,     -12,     226,   0, 240}}, -- Port Windurst #3
    [ 25] = {group = 3, fee = 1, dest = {   10.088,    -2.5,   0.617,  97, 241}}, -- Windurst Woods #1
    [ 26] = {group = 3, fee = 1, dest = {      108,      -5,     -56, 130, 241}}, -- Windurst Woods #2
    [ 27] = {group = 3, fee = 1, dest = {      -92,      -5,      63,  65, 241}}, -- Windurst Woods #3
    [ 28] = {group = 3, fee = 1, dest = {       75,  -7.545,    -139, 130, 241}}, -- Windurst Woods #4
    [ 29] = {group = 4, fee = 1, dest = {       -6,       3,      -1, 195, 243}}, -- Ru'Lude Gardens #1
    [ 30] = {group = 4, fee = 1, dest = {       53,       9,     -56,  65, 243}}, -- Ru'Lude Gardens #2
    [ 31] = {group = 4, fee = 1, dest = {      -67,       6,     -26, 195, 243}}, -- Ru'Lude Gardens #3
    [ 32] = {group = 4, fee = 1, dest = {  -99.981,      -0, 167.569,   0, 244}}, -- Upper Jeuno #1
    [ 33] = {group = 4, fee = 1, dest = {       31,      -1,     -44,   0, 244}}, -- Upper Jeuno #2
    [ 34] = {group = 4, fee = 1, dest = {      -52,       1,      15, 195, 244}}, -- Upper Jeuno #3
    [ 35] = {group = 4, fee = 1, dest = {  -99.588,      -0,-183.416,   0, 245}}, -- Lower Jeuno #1
    [ 36] = {group = 4, fee = 1, dest = {       19,      -1,      53, 165, 245}}, -- Lower Jeuno #2
    [ 37] = {group = 4, fee = 1, dest = {   36.076,       0,   8.831,   0, 246}}, -- Port Jeuno #1
    [ 38] = {group = 4, fee = 1, dest = {     -155,      -1,      -3,  65, 246}}, -- Port Jeuno #2
    [ 39] = {group = 0, fee = 1, dest = {   76.654,     -13, -94.457,   0, 250}}, -- Kazham #1
    [ 40] = {group = 0, fee = 1, dest = {   -12.75, -15.744,  86.286, 195, 249}}, -- Mhaura #1
    [ 41] = {group = 8, fee = 1, dest = {  -25.910,   0.359, -46.164,  97, 252}}, -- Norg #1
    [ 42] = {group = 9, fee = 1, dest = {  -29.276,       0, -77.585, 195, 247}}, -- Rabao #1
    [ 43] = {group = 0, fee = 1, dest = {   35.117, -10.648,  33.635, 227, 248}}, -- Selbina #1
    [ 44] = {group = 5, fee = 1, dest = {  -85.435,       4, -31.303,  32, 256}}, -- Western Adoulin #1
    [ 45] = {group = 5, fee = 1, dest = {  -52.857,  -0.150,  58.877, 227, 257}}, -- Eastern Adoulin #1
    [ 46] = {group = 0, fee = 2, dest = {     -106,   3.216,     295, 130, 261}}, -- Ceizak Battlegrounds #1
    [ 47] = {group = 0, fee = 2, dest = {     -192,  -0.429,    -252, 130, 262}}, -- Foret de Hennetiel #1
    [ 48] = {group = 0, fee = 2, dest = {     -414, -63.396,     408, 165, 265}}, -- Morimar Basalt Fields #1
    [ 49] = {group = 0, fee = 2, dest = {     -420,   0.961,     -61,  65, 263}}, -- Yorcia Weald #1
    [ 50] = {group = 0, fee = 2, dest = {      -24,  -0.287,     174,   0, 266}}, -- Marjami Ravine #1
    [ 51] = {group = 0, fee = 2, dest = {      210,  20.278,     314, 195, 267}}, -- Kamihr Drifts #1
    [ 52] = {group = 0, fee = 2, dest = {      434, -40.191,     170, 195, 142}}, -- Yughott Grotto #1
    [ 53] = {group = 0, fee = 2, dest = {      108, -38.472,    -147,   0, 143}}, -- Palborough Mines #1
    [ 54] = {group = 0, fee = 2, dest = {     -131,  -2.948,    -303, 130, 145}}, -- Giddeus #1
    [ 55] = {group = 0, fee = 2, dest = {      242, -24.425,      62,   0, 204}}, -- Fei'Yin #1
    [ 56] = {group = 0, fee = 2, dest = {     -984,  17.131,    -290, 195, 208}}, -- Quicksand Caves #1
    [ 57] = {group = 0, fee = 2, dest = {      -79,  45.976,      62, 130, 160}}, -- Den of Rancor #1
    [ 58] = {group = 0, fee = 2, dest = {     -553,     -70,      66, 130, 162}}, -- Castle Zvahl Keep #1
    [ 59] = {group = 0, fee = 2, dest = {        5, -42.013,     525, 195, 130}}, -- Ru'Aun Gardens #1
    [ 60] = {group = 0, fee = 2, dest = {     -498, -42.014,     167, 130, 130}}, -- Ru'Aun Gardens #2
    [ 61] = {group = 0, fee = 2, dest = {     -311, -42.004,    -421,  97, 130}}, -- Ru'Aun Gardens #3
    [ 62] = {group = 0, fee = 2, dest = {      499, -42.005,     158,   0, 130}}, -- Ru'Aun Gardens #4
    [ 63] = {group = 0, fee = 2, dest = {      304, -42.004,    -426,  32, 130}}, -- Ru'Aun Gardens #5
    [ 64] = {group = 6, fee = 1, dest = {    -2.25, -27.932, 106.425, 227,  26}}, -- Tavnazian Safehold #1
    [ 65] = {group = 7, fee = 1, dest = {   -20.13,       0, -19.944,  97,  50}}, -- Aht Urhgan Whitegate #1
    [ 66] = {group = 0, fee = 1, dest = {   -18.86,       0, -26.441, 165,  53}}, -- Nashmau #1
    [ 67] = {group = 0, fee = 1, dest = {        0,       0,       0,   0,  48}}, -- Al Zahbi #1 (DOESN'T CURRENTLY EXIST)
    [ 68] = {group = 0, fee = 1, dest = {  -85.468,       1, -65.454,  65,  80}}, -- Southern San d'Oria [ S] #1
    [ 69] = {group = 0, fee = 1, dest = { -292.048,     -10,-102.558, 130,  87}}, -- Bastok Markets [S] #1
    [ 70] = {group = 0, fee = 1, dest = {  -32.022,      -5, 130.741, 195,  94}}, -- Windurst Waters [S] #1
    [ 71] = {group = 0, fee = 2, dest = {     -365,-175.625,     -35,  65, 158}}, -- Upper Delkfutt's Tower #1
    [ 72] = {group = 0, fee = 2, dest = {      -14,      48,      61,   0, 178}}, -- The Shrine of Ru'Avitau #1
    [ 73] = {group = 0, fee = 2, dest = {     -519, -18.926,     506,  97,  29}}, -- Riverne - Site #B01 #1
    [ 74] = {group = 0, fee = 2, dest = {      -98,  -9.901,    -494, 195,  52}}, -- Bhaflau Thickets #1
    [ 75] = {group = 0, fee = 2, dest = {     -450,  13.614,    -497,   0,  79}}, -- Caedarva Mire #1
    [ 76] = {group = 0, fee = 2, dest = {       64,  -196.5,     181,   0,   5}}, -- Uleguerand Range #1
    [ 77] = {group = 0, fee = 2, dest = {      380,  23.209,   -62.6, 130,   5}}, -- Uleguerand Range #2
    [ 78] = {group = 0, fee = 2, dest = {      424,   -32.5,     221,  65,   5}}, -- Uleguerand Range #3
    [ 79] = {group = 0, fee = 2, dest = {       64,   -96.5,     461,  65,   5}}, -- Uleguerand Range #4
    [ 80] = {group = 0, fee = 2, dest = {     -220,  -1.017,     -62,   0,   5}}, -- Uleguerand Range #5
    [ 81] = {group = 0, fee = 2, dest = {     -201, -10.019,     342,   0,   7}}, -- Attohwa Chasm #1
    [ 82] = {group = 0, fee = 2, dest = {      -58,  40.009,      15,  65,   9}}, -- Pso'Xja #1
    [ 83] = {group = 0, fee = 2, dest = {      439,  27.923,     -18,   0,  12}}, -- Newton Movalpolos #1
    [ 84] = {group = 0, fee = 2, dest = {      187,   0.999,     362,  65,  30}}, -- Riverne - Site #A01 #1
    [ 85] = {group = 0, fee = 2, dest = {        7,       0,     708, 195,  33}}, -- Al'Taieu #1
    [ 86] = {group = 0, fee = 2, dest = {     -531,       0,     447, 130,  33}}, -- Al'Taieu #2
    [ 87] = {group = 0, fee = 2, dest = {      569,       0,     409, 195,  33}}, -- Al'Taieu #3
    [ 88] = {group = 0, fee = 2, dest = {      -12,     0.5,    -289, 195,  34}}, -- Grand Palace of Hu'Xzoi #1
    [ 89] = {group = 0, fee = 2, dest = {     -427,       0,     367, 227,  35}}, -- The Garden of Ru'Hmet #1
    [ 90] = {group = 0, fee = 2, dest = {     -534,  -4.125,    56.5,   0,  61}}, -- Mount Zhayolm #1
    [ 91] = {group = 0, fee = 2, dest = {     -303,  -8.108,     525, 195, 113}}, -- Cape Teriggan #1
    [ 92] = {group = 0, fee = 2, dest = {       87, -15.679,    -217,   0, 153}}, -- The Boyahda Tree #1
    [ 93] = {group = 0, fee = 2, dest = {      182,  34.561,     -62, 227, 160}}, -- Den of Rancor #2
    [ 94] = {group = 0, fee = 2, dest = {  102.344,       0, 269.362, 195, 204}}, -- Fei'Yin #2
    [ 95] = {group = 0, fee = 2, dest = {      -63,  49.740,      80, 195, 205}}, -- Ifrit's Cauldron #1
    [ 96] = {group = 0, fee = 2, dest = {      573,   9.027,    -500, 195, 208}}, -- Quicksand Caves #2
    [ 97] = {group = 1, fee = 1, dest = {     -164,      -1,      11, 130, 230}}, -- Southern San d'Oria #4
    [ 98] = {group = 1, fee = 1, dest = {     -134,      12,     195,   0, 231}}, -- Northern San d'Oria #4
    [ 99] = {group = 2, fee = 1, dest = {       86,       7,       1,   0, 234}}, -- Bastok Mines #3
    [100] = {group = 2, fee = 1, dest = {     -190,      -6,     -68,  97, 235}}, -- Bastok Markets #4
    [101] = {group = 2, fee = 1, dest = {     -126,      -6,      11,  97, 236}}, -- Port Bastok #3
    [102] = {group = 2, fee = 1, dest = {      -77,       2,       3, 130, 237}}, -- Metalworks #2
    [103] = {group = 3, fee = 1, dest = {        4,      -4,    -175,   0, 238}}, -- Windurst Waters #3
    [104] = {group = 8, fee = 1, dest = {      -65,  -5.299,      54, 130, 252}}, -- Norg #2
    [105] = {group = 9, fee = 1, dest = {      -21,   8.148,     111,  65, 247}}, -- Rabao #2
    [106] = {group = 7, fee = 1, dest = {      129,       0,     -16,   0,  50}}, -- Aht Urhgan Whitegate #2
    [107] = {group = 7, fee = 1, dest = {     -107,      -6,     108, 130,  50}}, -- Aht Urhgan Whitegate #3
    [108] = {group = 7, fee = 1, dest = {      -98,       0,     -68, 130,  50}}, -- Aht Urhgan Whitegate #4
    [109] = {group = 5, fee = 1, dest = {   30.950,       0,    -163,  32, 256}}, -- Western Adoulin #2
    [110] = {group = 5, fee = 1, dest = {    -50.5,   -0.15,   -95.5,  97, 257}}, -- Eastern Adoulin #2
    [111] = {group = 0, fee = 2, dest = {  224.333, -13.218,-253.167,  97, 137}}, -- Xarcabard [S] #1
    [112] = {group = 0, fee = 2, dest = {        3,  -0.188,     8.5,   0, 281}}, -- Leafallia #1
    [113] = {group = 0, fee = 2, dest = {     -553,     -70,      66, 130, 155}}, -- Castle Zvahl Keep [S] #1
    [114] = {group = 0, fee = 1, dest = {     -212, -20.961,      94,  65, 126}}, -- Qufim Island #1
    [115] = {group = 0, fee = 1, dest = {   -257.5,      24,      81, 195, 169}}, -- Toraimorai Canal #1
    [116] = {group = 0, fee = 2, dest = {      755, 119.998,    17.5,   0, 276}}, -- Ra'Kaznar Inner Court #1
    [117] = {group = 0, fee = 2, dest = {      -66, -17.288,     562, 227,  25}}, -- Misareaux Coast #1
    [118] = {group = 3, fee = 1, dest = {      -92,      -2,      53, 195, 238}}, -- Windurst Waters #4
    [119] = {group = 3, fee = 1, dest = {    -44.5,       0,    -145,   0, 241}}, -- Windurst Woods #5
    [120] = {group = 6, fee = 1, dest = {       13,  -9.975,      -5,   0,  26}}, -- Tavnazian Safehold #2
    [121] = {group = 6, fee = 1, dest = {    74.59, -36.121,   38.87, 130,  26}}  -- Tavnazian Safehold #3
}

local selection =
{
    SET_HOMEPOINT    = 1,
    TELEPORT         = 2,
    SAME_ZONE        = 3,
    SET_LAYOUT       = 4,
    ADD_FAVORITE     = 5,
    REM_FAVORITE     = 6,
    REP_FAVORITE     = 7,
    SHOW_MENU        = 8
}

local travelType = xi.teleport.type.HOMEPOINT

local function getCost (from, to, key)

    if homepointData[from].group == homepointData[to].group and homepointData[to].group ~= 0 then
        return 0
    else
        return (500 * homepointData[to].fee) / (key and 5 or 1)
    end

end

local function goToHP(player, choice, index)

    local origin = player:getLocalVar("originIndex")
    local hasKI  = player:hasKeyItem(xi.ki.RHAPSODY_IN_WHITE)

    if choice == selection.SAME_ZONE then
        -- For zones like Sky and Uleguerand Range, this will force gil deletion
        -- Positioning within same zone handled by client, no need to setPos
        player:delGil(getCost(origin, origin, hasKI))
    elseif choice == selection.TELEPORT then
        player:delGil(getCost(origin, index, hasKI))
        player:setPos(unpack(homepointData[index].dest))
    end

end

xi.homepoint.onTrigger = function(player, csid, index)
    if xi.settings.main.HOMEPOINT_TELEPORT ~= 1 then -- Settings.lua Homepoints disabled
        player:startEvent(csid, 0, 0, 0, 0, 0, player:getGil(), 4095, index)
        return
    end

    local hpBit  = index % 32
    local hpSet  = math.floor(index / 32)
    local menu   = player:getTeleportMenu(travelType)
    local params = bit.bor(index, bit.lshift(menu[10] < 1 and 0 or 1, 18)) -- Include menu layout

    if not player:hasTeleport(travelType, hpBit, hpSet) then
        player:addTeleport(travelType, hpBit, hpSet)
        params = bit.bor(params, 0x10000) -- OR in New HP Bit Flag
    end

    if player:hasKeyItem(xi.ki.RHAPSODY_IN_WHITE) then
        -- "Rhapsody in White" key item reduces teleport fee by 80%
        params = bit.bor(params, 0x20000)
    end

    player:setLocalVar("originIndex", index)
    local g1, g2, g3, g4 = unpack(player:getTeleportTable(travelType))
    player:startEvent(csid, 1, g1, g2, g3, g4, player:getGil(), 4095, params)

end

xi.homepoint.onEventUpdate = function(player, csid, option)

    local choice = bit.band(option, 0xFF)
    local favs = player:getTeleportMenu(travelType)

    if xi.settings.main.HOMEPOINT_TELEPORT == 1 then
        if choice >= selection.SET_LAYOUT and choice <= selection.REP_FAVORITE then

            local index = bit.rshift(bit.lshift(option, 8), 24) -- Ret HP #

            if choice == selection.ADD_FAVORITE then
                local temp = 0
                for x = 1, 9 do
                    temp = favs[x]
                    favs[x] = index
                    index = temp
                end
            elseif choice == selection.REM_FAVORITE then
                for x = 1, 9 do
                    if favs[x] == index then
                        for y = x, 8 do
                            favs[y] = favs[y+1]
                        end
                        favs[9] = -1
                        break
                    end
                end
            elseif choice == selection.REP_FAVORITE then
                favs[bit.rshift(option, 24) + 1] = index
            elseif choice == selection.SET_LAYOUT then
                -- 1 = Sort by content/expansion else sort by region
                favs[10] = bit.rshift(option, 16) == 1 and 1 or 0
            end

            player:setTeleportMenu(travelType, favs)

        end

        for x = 1, 3 do -- Condense arrays for event params
            favs[1] = favs[1] + favs[x+1] * 256^x
            favs[5] = favs[5] + favs[x+5] * 256^x
        end

        favs[9] = favs[9] + favs[10] * 256
        player:updateEvent(favs[1], favs[5], favs[9])
    else
        player:updateEvent(-1, -1, -1)
    end
end

xi.homepoint.onEventFinish = function(player, csid, option, event)

    if csid == event then
        local choice = bit.band(option, 0xFF)
        if choice == selection.SET_HOMEPOINT then
            player:setHomePoint()
            if zones[player:getZoneID()].text.HOMEPOINT_SET then
                player:messageSpecial(zones[player:getZoneID()].text.HOMEPOINT_SET)
            else
                print(string.format("ERROR: missing ID.text.HOMEPOINT_SET in zone %s.", player:getZoneName()))
            end
        elseif (choice == selection.TELEPORT or choice == selection.SAME_ZONE) and xi.settings.main.HOMEPOINT_TELEPORT == 1 then
            goToHP(player, choice, bit.rshift(option, 16))
        end
    end

end
