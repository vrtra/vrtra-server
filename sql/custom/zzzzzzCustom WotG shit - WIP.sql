select * from mob_spawn_points where mobname = 'ocythoe'
select * from mob_groups where groupid = 7317;
select * from mob_pools where name = 'kaliya'

-- Custom Tojil in WoTG (Fort Karugo-Narugo [S])
UPDATE mob_spawn_points SET pos_x = -623, pos_y =  -28, pos_z = -417, pos_rot = 5 WHERE mobid = 17171004; -- Kalasutrax
UPDATE mob_groups SET poolid = 4677, dropid = 0, HP = 90000, MP = 20000, minLevel = 92, maxLevel = 94 WHERE groupid = 13750; -- Kalasutrax
UPDATE mob_pools set name = 'Kalasutrax', packet_name = 'Kalasutrax', sJob = 4, aggro = 1, true_detection = 1, mobType = 2, name_prefix = 32, entityFlags = 135 WHERE poolid = 4677; -- Kalasutrax

-- Custom Dakuwaqa in WoTG (Vunkerl Inlet [S])
UPDATE mob_spawn_points SET pos_x = -190, pos_y = -32, pos_z = 61, pos_rot = 70 WHERE mobid = 17117893; -- Gaunab
UPDATE mob_groups SET poolid = 4925, dropid = 0, HP = 90000, MP = 0, minLevel = 92, maxLevel = 94 WHERE groupid = 13814; -- Gaunab
UPDATE mob_pools set name = 'Gaunab', packet_name = 'Gaunab', aggro = 1, true_detection = 1, mobType = 2, name_prefix = 32, entityFlags = 135 WHERE poolid = 4925; -- Gaunab

-- Custom Cailimh in WoTG (Grauberg [S])
UPDATE mob_spawn_points SET pos_x = -501, pos_y = -168, pos_z = 222, pos_rot = 110 WHERE mobid = 17142449; -- Ocythoe
UPDATE mob_groups SET poolid = 4678, dropid = 0, HP = 90000, MP = 0, minLevel = 92, maxLevel = 94 WHERE groupid = 13724; -- Ocythoe
UPDATE mob_pools set name = 'Ocythoe', packet_name = 'Ocythoe', aggro = 1, true_detection = 1, mobType = 2, name_prefix = 32, entityFlags = 135 WHERE poolid = 4678; -- Ocythoe

-- Custom Fleetstalker in WoTG (Beaucedine Glacier [S])
UPDATE mob_spawn_points SET pos_x = -262, pos_y = -39, pos_z = -366, pos_rot = 190 WHERE mobid = 17334547; -- Kaliya
UPDATE mob_groups SET poolid = 5720, respawntime = 0, spawnType = 128, dropid = 0, HP = 90000, MP = 0, minLevel = 92, maxLevel = 94 WHERE groupid = 7317; -- Kaliya
UPDATE mob_pools set name = 'Kaliya', packet_name = 'Kaliya', mobType = 2, name_prefix = 32 WHERE poolid = 5720; -- Kaliya

-- Custom Kumau in WoTG (Xarcabard [S])
UPDATE mob_spawn_points SET groupid = 7505, pos_x = -120, pos_y = -18, pos_z = 140, pos_rot = 120 WHERE mobid = 17338817; -- Shadowfang
UPDATE mob_groups SET poolid = 4799, respawntime = 0, spawnType = 128, dropid = 0, HP = 90000, MP = 0, minLevel = 92, maxLevel = 94 WHERE groupid = 7505; -- Shadowfang
UPDATE mob_pools set name = 'Shadowfang', packet_name = 'Shadowfang', true_detection = 1, name_prefix = 32 WHERE poolid = 4799; -- Shadowfang
