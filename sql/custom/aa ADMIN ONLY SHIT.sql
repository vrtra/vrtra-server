-- char points are weird
SELECT charid, legion_point FROM char_points
WHERE legion_point > 0
ORDER BY legion_point DESC;
-- find how much gil people have
SELECT DISTINCT c.charid, c.charname, civ.quantity
FROM char_inventory civ
JOIN chars c ON (c.charid = civ.charid)
WHERE civ.itemid = 65535
AND civ.quantity > 1000000
AND c.charid NOT IN (22498,21845,22050,22567)
ORDER BY quantity DESC
-- More gil count shit
SELECT SUM(quantity) FROM char_inventory WHERE itemid = 65535 AND charid NOT IN (22498,21845,22050,22567)
-- Last value: (11/08/2019) - 1,116,868,554
SELECT AVG(quantity) FROM char_inventory WHERE itemid = 65535 AND charid NOT IN (22498,21845,22050,22567)
-- Last value: (11/08/2019) - 1637637.1760
-- find mob_skills used by a particular mob
SELECT mp.name AS 'mob_name', mg.groupid, mg.poolid, mp.skill_list_id, m.mob_skill_name, m.mob_skill_id
FROM mob_skill_lists sl
JOIN mob_skills m ON (m.mob_skill_id = sl.mob_skill_id)
JOIN mob_pools mp ON (mp.skill_list_id = sl.skill_list_id)
JOIN mob_groups mg ON (mg.poolid = mp.poolid)
WHERE mp.name = 'Turul'

-- find groupid and hp and add more hp to mobs
SELECT DISTINCT mg.groupid, mp.name, mg.hp
FROM mob_groups mg
JOIN mob_spawn_points sp ON (sp.groupid = mg.groupid)
JOIN mob_pools mp ON (mp.poolid = mg.poolid)
WHERE mg.zoneid = 74
ORDER BY groupid ASC

-- Random Guild Point Items query
SELECT g.points_name as "guild", i.name as "item_name", points, max_points
FROM guild_item_points gp
JOIN guilds g ON (g.id = gp.guildid)
JOIN item_basic i ON (i.itemid = gp.itemid)
WHERE gp.itemid IN (16594,4166,16973,4151,12379,4150)


UPDATE mob_groups SET HP = HP +1500 WHERE groupid > 2412 AND groupid < 2438;

-- Custom mob query based on mobid
SELECT mobname, mg.groupid, mg.poolid, zoneid, respawntime, spawntype, dropid, mg.HP, mg.MP, minLevel, maxLevel, 
               mJob, sJob, behavior, mobType, mobsize, 
               STR, DEX, VIT, AGI, `INT`, MND, CHR, EVA, DEF 
        FROM mob_spawn_points msp
        LEFT JOIN mob_groups mg ON mg.groupid = msp.groupid 
        LEFT JOIN mob_pools mp ON mp.poolid = mg.poolid 
        LEFT JOIN mob_family_system mfs ON mfs.familyid = mp.familyid 
        WHERE msp.mobid = "17318448"
-- Custom mob query based on zone name
SELECT DISTINCT mobname, msp.mobid, mg.groupid, mg.poolid, z.name as 'zone_name', respawntime, spawntype, dropid, mg.HP, mg.MP, minLevel, maxLevel, mp.entityFlags, mp.skill_list_id
        FROM mob_spawn_points msp
        JOIN mob_groups mg ON mg.groupid = msp.groupid 
        JOIN mob_pools mp ON mp.poolid = mg.poolid 
        JOIN mob_family_system mfs ON mfs.familyid = mp.familyid
				JOIN zone_settings z ON (z.zoneid = mg.zoneid)
        WHERE z.name = 'arrapago_remnants'
				ORDER BY msp.mobid DESC
-- Custom mob query based on mob name
SELECT DISTINCT mobname, mg.groupid, mg.poolid, z.name as 'zone_name', mg.dropid, d.itemid, i.name, d.itemrate
        FROM mob_spawn_points msp
        JOIN mob_groups mg ON mg.groupid = msp.groupid 
        JOIN mob_pools mp ON mp.poolid = mg.poolid 
        JOIN mob_family_system mfs ON mfs.familyid = mp.familyid
				JOIN zone_settings z ON (z.zoneid = mg.zoneid)
				JOIN mob_droplist d ON (d.dropid = mg.dropid)
				JOIN item_basic i ON (i.itemid = d.itemid)
       -- WHERE z.name = 'arrapago_remnants'
				WHERE mobname = 'staggering_sapling'
				ORDER BY mg.poolid ASC

-- Custom tell-all of drops for item id
SELECT i.name AS 'item_name', mp.name AS 'mob_name', z.name AS 'zone_name', mg.groupid, mg.poolid, mg.dropid, md.itemRate
FROM mob_groups mg
JOIN mob_pools mp ON (mp.poolid = mg.poolid)
JOIN mob_droplist md ON (md.dropid = mg.dropid)
JOIN zone_settings z ON (z.zoneid = mg.zoneid)
JOIN item_basic i ON (i.itemid = md.itemid)
WHERE md.itemid = 16087
-- find hp of non nm's level 70+ not dynamis
SELECT DISTINCT mg.groupid, mg.poolid, mp.name AS 'mob_name', z.name AS 'zone_name', mg.HP, mg.MP, mg.minLevel, mg.maxLevel
FROM mob_groups mg
JOIN mob_pools mp ON (mp.poolid = mg.poolid)
JOIN mob_droplist md ON (md.dropid = mg.dropid)
JOIN zone_settings z ON (z.zoneid = mg.zoneid)
WHERE mp.mobType = 0 AND mg.zoneid NOT IN (15,39,40,41,42,45,132,134,135,185,186,187,188,215,216,217,218,253,254,39,40,41,42,134,135,185,186,187,188) AND mg.zoneid < 256 AND mg.minLevel > 70 AND mg.maxLevel < 105
ORDER BY zone_name ASC
-- find hp of nm's level 70 + (not dynamis)
SELECT DISTINCT mg.groupid, mg.poolid, mp.name AS 'mob_name', z.name AS 'zone_name', mg.HP, mg.MP, mg.minLevel, mg.maxLevel
FROM mob_groups mg
JOIN mob_pools mp ON (mp.poolid = mg.poolid)
JOIN mob_droplist md ON (md.dropid = mg.dropid)
JOIN zone_settings z ON (z.zoneid = mg.zoneid)
WHERE mp.mobType > 0 AND mg.zoneid NOT IN (15,39,40,41,42,45,132,134,135,185,186,187,188,215,216,217,218,253,254,39,40,41,42,134,135,185,186,187,188) AND mg.zoneid < 256 AND mg.minLevel > 70 AND mg.maxLevel < 105
ORDER BY zone_name ASC
-- Open Mog Locker for all characters
update char_storage set locker = 80
-- RME analysis of individual characters by charid
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18264,18265,18992,19061,19008,19077,19397,18270,18271,18996,19065,19000,19069,18989,19078,19398,18276,18277,18997,19066,18995,19064,19006,19075,19399,
		18282,18283,19400,18288,18289,18999,19068,19401,18294,18295,18991,19060,19402,18306,18307,18998,19067,19403,18300,18301,19004,19073,19404,18312,18313,19003,19072,
		19405,18318,18319,19002,19071,19406,18324,18325,18993,19062,19407,18330,18331,18994,19063,19005,19074,18990,19079,19408,18336,18337,18348,18349,19001,19070,19007,
		19076,19409,19410,18342,18577,18574,15070,16195,16192)
AND ch.charid IN (21853,21855,22139,21879,22500,22521)
-- These queries show the character names who possess the Relic/Mythic/Empyrean weapons of each weapon type
-- This query filters out Admin characters
-- H2H Weapons (includes PUP)
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18264,18265,18992,19061,19008,19077,19397)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Daggers
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18270,18271,18996,19065,19000,19069,18989,19078,19398)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Swords
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18276,18277,18997,19066,18995,19064,19006,19075,19399)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Great Swords
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18282,18283,19400)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Axes
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18288,18289,18999,19068,19401)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Great Axes
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18294,18295,18991,19060,19402)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Scythes
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18306,18307,18998,19067,19403)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Polearms
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18300,18301,19004,19073,19404)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Katanas
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18312,18313,19003,19072,19405)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Great Katanas
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18318,18319,19002,19071,19406)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Clubs
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18324,18325,18993,19062,19407)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Staves
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18330,18331,18994,19063,19005,19074,18990,19079,19408)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Ranged Weapons
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18336,18337,18348,18349,19001,19070,19007,19076,19409,19410)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Instruments
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (18342,18577,18574)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC
-- Shields
SELECT c.charname AS 'Char Name', i.name AS 'Item Name'
FROM char_inventory ch
JOIN chars c ON (c.charid = ch.charid)
JOIN item_basic i ON (i.itemid = ch.itemid)
WHERE ch.itemid IN (15070,16195,16192)
AND ch.charid NOT IN (21845,21846,21857,21865,22519,21912,21959,22498,22050,22115)
ORDER BY ch.itemid ASC

-- Delete an account from the database
DELETE FROM accounts where id = 1755;
DELETE FROM account_ip_record where accid = 1755;

-- Delete a character from all tables
delete from char_effects where charid = 22139;
delete from char_equip where charid = 22139;
delete from char_exp where charid = 22139;
delete from char_inventory where charid = 22139;
delete from char_jobs where charid = 22139;
delete from char_look where charid = 22139;
delete from char_merit where charid = 22139;
delete from char_pet where charid = 22139;
delete from char_points where charid = 22139;
delete from char_profile where charid = 22139;
delete from char_recast where charid = 22139;
delete from char_skills where charid = 22139;
delete from char_spells where charid = 22139;
delete from char_stats where charid = 22139;
delete from char_storage where charid = 22139;
delete from char_style where charid = 22139;
delete from char_vars where charid = 22139;
delete from chars where charid = 22139;

-- Playtime: Last 10 days
select avg(playtime/60/60/24)
from chars
where playtime > 864118

-- Playtime: Last 5 days
select avg(playtime/60/60/24)
from chars
where playtime > 432624

-- Top 50 Players Logged In
select charname, round (playtime/60/60/24, 2)
from chars
order by playtime
desc limit 50

-- IP Address Check
select distinct chars.charname, CHARs.charid, chars.accid, accounts.login, account_ip_record.client_ip, accounts.timelastmodify, accounts.timecreate
from chars, accounts, account_ip_record
where account_ip_record.accid = chars.accid
and account_ip_record.accid = accounts.id
and chars.charname = ''

-- Alter table queries
alter table chars add column `moghancement` smallint(4) unsigned NOT NULL DEFAULT '0';
alter table char_effects add column `flags` int(8) unsigned NOT NULL DEFAULT '0';
alter table chars_effects add column `timestamp` int(10) unsigned NOT NULL DEFAULT '0';
update char_effects set PRIMARY KEY `charid`;
alter table bcnm_battlefield add PRIMARY KEY `bcnmId`;

-- char login alter column
ALTER TABLE char_points
ADD column `login_points` int(10) unsigned NOT NULL DEFAULT '0';

-- Char unlocks
INSERT INTO char_unlocks (SELECT charid,sandoria_supply,bastok_supply,windurst_supply,0,runic_portal,maw,
past_sandoria_tp,past_bastok_tp,past_windurst_tp,0 FROM char_points);

-- Mounts
update char_mounts set unlocked = 524287;
update char_mounts set canMount = 1;

-- Mass item delete for server transfers
delete from items where itemid IN (515,1449,12562,1452,14674,1455,1456,1450,16337,11281,11364,1453,1451,1454,18276,1457,1345,1347,15194,1349,1351,1353,1355,1357,1359,1361,1363,1365,1367,1369,1371,1373,1375,1377,1379,1381,1383,1385,1387,1389,1391,1393,1395,1397,1399,1401,1403,2440,2442,2444,2446,2448,2450,2452,2454,2456,2458,12388,16181,12360,15156,13921,15175,13951,13923,13937,13944,16074,13930,13943,15154,15191,13888,13864,13863,13886,13859,16275,13130,13145,14470,14390,11289,14421,14441,14417,13747,14538,14381,13766,13765,14415,11287,11286,11288,13761,14438,14383,14540,13793,13774,13802,13741,13735,13734,14824,14825,14849,14829,13990,13995,13994,14950,14079,14847,14881,14011,14877,14021,15950,15302,15917,15918,13249,13250,13189,16344,14306,14322,14302,14313,15616,14316,14318,15397,14235,14230,14234,15401,15393,15346,14187,15310,14188,14183,14194,15704,15304,15335,15340,15331,15322,11379,11380,14080,15306,14111,14106,14110,16216,27598,27599,16241,11543,16242,13657,13627,13652,13646,16002,14715,15992,14716,14718,14719,14712,14714,14717,14713,13406,14728,13418,13402,15781,14627,14620,15806,14621,14623,14624,14617,14619,14622,14618,13556,13504,15789,15812,13552,15814,13281,13553,18749,17481,17480,17472,19107,18015,18033,17620,17629,17992,16480,17996,18020,17751,17728,17736,17734,17656,16605,17714,18377,16942,16955,19152,16598,17928,17939,17935,17946,17938,17953,18197,16791,18059,16850,18116,18124,18111,18106,18130,16895,17790,17789,18414,18424,16904,17829,17440,18046,17073,18849,18874,17528,17108,17558,17548,18633,17550,17554,17556,17560,17552,17546,17187,17201,17264,17206,17165,17246,18143,18147,17214,18682,18701,19213,19212,17277,19048,19049,19051,19030,13056,11285,16178,11578,16084,14546,14961,15625,15711,16088,14550,14965,15629,15715,16092,14554,14969,15633,15719,16096,14973,15637,15723,16100,14562,14977,15641,15727,16228,15911,15990,16229,15799,16268,16269,15800,16267,17745,16117,14577,18121,11354,11501,19163,11578,11543,18991,18992,18993,18994,18995,18996,18997,18998,18999,19000,19001,19002,19003,19004,19005,19006,19007,19008,18989,18990,15965,15963,15962,15964,17598,18061,15264,15599,18264,18270,18282,18288,18295,18306,18300,18312,18318,18324,18330,18348,18336,18342,15070,19060,19061,19062,19063,19064,19065,19066,19067,19068,19069,19070,19071,19072,19073,19074,19075,19076,19077,19078,19079,18265,18271,18277,18283,18289,18295,18301,18307,18313,18319,18325,18331,18337,18349,18577,16195,2488,1875,18429,18753,18851,18589,17742,18003,17744,19944,17956,18034,18719,18443,18426,18120,18590,17743,18720,18754,19102,18592,18971,18972,18973,18974,18975,18976,18977,18978,18979,18980,18981,18982,18983,18984,18985,18986,18987,18988,18969,18970,19397,19398,19399,19400,19401,19402,19403,19404,19405,19406,19407,19408,19410,19409,18262,18263,18268,18269,18274,18275,18280,18281,18286,18287,18292,18293,18294,18304,18305,18298,18299,18310,18311,18316,18317,18322,18323,18328,18329,18334,18335,18346,18347,18340,18341,15608,15609,1589,1556,1571,1557,1572,1558,1573,1559,1574,1560,1575,1561,1576,1562,1577,1563,1578,1564,1579,1565,1580,1566,1581,1567,1582,1570,1585,1568,1583,1569,1584,1821,1822,15626,15630,15634,15638,15642,15712,15716,15720,15724,15728,14547,14551,14555,14559,14563,16085,16089,16093,16097,16101,14962,14966,14970,14974,14978,15713,15717,15721,15725,15729,14963,14967,14971,14975,14979,15627,15631,15635,15639,15643,16086,16090,16094,16098,16102,14548,14552,14556,14560,14564,14964,14968,14972,14976,14980,15714,15718,15722,15726,15730,15628,15632,15636,15640,15644,14549,14553,14557,14561,14565,16087,16091,16095,16099,16103,11635,15859,11632,11634,11631,11629,11633,11630,11628,15954,15948,19245,16054,14558,16307,11502,15953,14162,15056,27556,28528,10796,14671,11666,15840,15793,15763,15762,15761,28562,28569,2859,2858,17765,19159,19118,18603,19304,27597,15949,18624,18632,15212,26046,14022,16163,16164,16173,12410,12489,11526,11778,11779,26712,26695,11527,11503,11505,12493,11782,11783,11525,11780,11781,15210,13941,15160,13938,15158,16150,13574,15187,15193,12486,11611,11606,11613,11614,11612,11610,11609,11608,11607,13146,11579,11580,11583,11584,15540,13729,12620,14336,12622,14364,12623,11828,11829,13760,13759,13778,11832,11833,11830,11831,14449,13746,14391,14419,14545,14567,14439,13758,14366,13780,13749,19250,19270,19242,18707,11878,11879,15062,12746,15065,12745,15061,12747,11882,11883,15063,11880,11881,15064,14056,14828,14853,14851,14982,14878,14883,14057,13952,11745,11742,11744,11743,11746,11740,11749,11748,11747,11741,15922,15952,15429,12846,11928,11929,16381,16382,14257,14210,14258,11932,11933,11930,11931,16344,16319,15407,14312,14307,14320,15646,15394,15399,14279,11424,11425,11414,11422,11419,11413,11420,11415,11428,22429,11421,11418,11423,11426,11427,14192,15349,14193,15308,15732,15332,15338,14159,13054,13014,11570,11571,11561,11567,11569,11563,11556,11566,11568,11557,11562,11558,11565,11560,13619,11564,11559,11541,15456,13648,16216,16059,11692,11683,11690,11689,11681,11685,11678,11687,11684,11691,11693,11682,11680,11688,11679,11686,16052,16053,16031,16022,14643,14641,11644,11645,14637,11639,14639,14633,14645,14635,14631,11640,11642,11641,11643,14675,10954,10952,10949,10953,10925,10948,10950,10951,10955,15458,18245,17810,15548,15548,15550,18398,11281,18447,18549,18759,17758,16158,16356,16004,15831,18501,16159,15034,16005,15832,18598,16160,11392,16006,15833,28425,28271,28272,28529,28488,28349,21347,17597,11519,16379,2498,2929,3226,3228,16428,11512,15247,3227,3229,2930,11549,11599,2936,12920,15474,14060,11736,15060,11732,11515,16540,2941,11602,12999,11638,11554,2935,11738,18961,2942,11600,16488,11728,11734,14365,11601,12320,19324,14085,11552,19282,11510,15020,2938,16654,11593,2943,13000,11591,12921,13001,11516,12997,14887,11513,3210,3213,11522,11518,17808,2931,11524,11598,11416,19247,11506,11603,11731,2932,2497,11520,3212,3211,11555,11553,2937,11550,11739,2944,14337,11730,13573,11417,14041,15426,15430,11735,11594,2949,11735,11594,2947,3225,3223,11509,14888,12741,11595,17185,17626,11592,2948,3222,2927,2499,11508,11523,12488,2945,13791,11637,11733,3224,11729,11507,11521,11604,11737,15019,11597,18510,11596,17113,11548,11517,11551,11605,2950,2946,19050,14042,11511,16380,15428,28420,27510,28586,28587,13853,13852,13053,15527,14369,14868,14282,16012,16250,11483,16283,15928,16011,11484,15839,16582,16427,17759,16756,19164,17964,19113,18504,19273,19158,18131,18865);
