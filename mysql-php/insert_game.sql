-- Script to insert a base set of data into our game database
-- Format: MySQL

-- Creating new items...
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Wooden Sword', 'A simple sword', 'WEAPON', 10, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Broad Sword', 'A sword forged for the knight', 'WEAPON', 30, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Orge''s Sword', 'A sword with magical powers', 'WEAPON', 55, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Alucard''s Sword', 'A heirloom', 'WEAPON', 55, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Leather Shield', 'A poor man''s shield', 'WEAPON', -5, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Spartan Shield', 'Deflects away many projectiles', 'WEAPON', -15, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Alucard''s Shield', 'A heirloom', 'WEAPON', -30, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Chicken', 'Food', 'SINGLEUSE', -5, NOW());
INSERT INTO items (item_name, item_descr, item_type, damage_inflict, added_on) VALUES ('Elixir', 'Food', 'SINGLEUSE', -999, NOW());

-- Creating new abilities...
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Ice', 'Ice spell', 'DARK MAGIC', 10, 5, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Wind', 'Wind spell', 'DARK MAGIC', 15, 5, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Fire', 'Fire spell', 'DARK MAGIC', 20, 5, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Earth', 'Earth spell', 'DARK MAGIC', 25, 5, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Bolt', 'Lightning spell', 'DARK MAGIC', 30, 10, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Blizzaga', 'Ice spell', 'DARK MAGIC', 75, 15, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Cure 1', 'Recovery', 'WHITE MAGIC', -250, 25, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Cure 2', 'Recovery', 'WHITE MAGIC', -500, 50, NOW());
INSERT INTO abilities (ability_name, ability_descr, ability_type, damage_inflict, mp_required, added_on) VALUES ('Cure 3', 'Recovery', 'WHITE MAGIC', -750, 75, NOW());

-- Creating new players
INSERT INTO players (handle, email_address, gold_amount, karma, hp, mp, skill_level, added_on) VALUES ('therock', 'therock@knowyourrole.com', 10000, 300, 1024, 300, 55, NOW());
INSERT INTO players (handle, email_address, gold_amount, karma, hp, mp, skill_level, added_on) VALUES ('hoj', 'hsimpson@fox.com', 50, -1, 200, 500, 40, NOW());
INSERT INTO players (handle, email_address, gold_amount, karma, hp, mp, skill_level, added_on) VALUES ('brickleb21', 'brickleb21@bc.edu', 200, -850, 100, 50, 10, NOW());
INSERT INTO players (handle, email_address, gold_amount, karma, hp, mp, skill_level, added_on) VALUES ('wbonney', 'billythekid@yahoo.com', 9999999, -9999, 20, 800, 70, NOW());
INSERT INTO players (handle, email_address, gold_amount, karma, hp, mp, skill_level, added_on) VALUES ('blinky_the_wonder_chimp', 'cweis@nd.edu', 5000, -750, 4000, 300, 57, NOW());

-- Equipping players with items
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (2, 1, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (2, 5, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (2, 8, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (2, 8, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (2, 8, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (1, 4, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (1, 7, NOW());
INSERT INTO item_inventory (player_id, item_id, added_on) VALUES (1, 9, NOW());

-- Equipping players with abilities
INSERT INTO ability_inventory (player_id, ability_id, added_on) VALUES (5, 6, NOW());
INSERT INTO ability_inventory (player_id, ability_id, added_on) VALUES (5, 7, NOW());
INSERT INTO ability_inventory (player_id, ability_id, added_on) VALUES (5, 8, NOW());
