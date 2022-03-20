-- --------------------------------------------------------------
-- ---------------------WEAPON SKILL FIXES-----------------------
-- --------------------------------------------------------------
-- Removes Cloudsplitter from level 300 Axe skill
UPDATE weapon_skills SET skilllevel = 0 WHERE weaponskillid = 76; -- Cloudsplitter
-- Delete random WS that was given to a bunch of jobs mistakenly
DELETE FROM weapon_skills WHERE name = 'final_paradise'; -- Final Paradise
-- Set WSNM to auto-unlock with combat skill value
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 9; -- Asuran Fists
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 25; -- Evisceration
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 42; -- Savage Blade
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 56; -- Ground Strike
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 72; -- Decimation
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 88; -- Steel Cyclone
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 104; -- Spiral Hell
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 120; -- Impulse Drive
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 136; -- Blade: Ku
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 152; -- Tachi: Kasha
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 169; -- Black Halo
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 184; -- Retribution
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 199; -- Empyreal Arrow
UPDATE weapon_skills SET unlock_id = 0 WHERE weaponskillid = 215; -- Detonator
-- Fix up Tartarus Torpor for Samudra
UPDATE weapon_skills SET skilllevel = 0, unlock_id = 49 WHERE weaponskillid = 240; -- Tartarus Torpor
-- Add SC properties to Tachi:Rana
UPDATE weapon_skills SET primary_sc = 14, secondary_sc = 10, tertiary_sc = 0 WHERE name = 'tachi_rana'; -- Tachi: Rana
