-- MASS FIX ISSUE WHERE GUILD POINTS WERE INFLATED
UPDATE guild_item_points SET max_points = max_points * 0.3333;
