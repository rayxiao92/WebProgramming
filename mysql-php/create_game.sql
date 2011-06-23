-- A script to create a new database and tables for a simple MMORPG
-- Format: MySQL

CREATE DATABASE game;

USE game;

CREATE TABLE players
(
  player_id INT(9) NOT NULL AUTO_INCREMENT,
  handle VARCHAR(30) NOT NULL,
  email_address VARCHAR(60) NOT NULL,
  gold_amount INT(9) NOT NULL DEFAULT 0,
  karma SMALLINT(5) NOT NULL DEFAULT 0,
  hp SMALLINT(4) NOT NULL DEFAULT 100,
  mp SMALLINT(3) NOT NULL DEFAULT 10,
  skill_level SMALLINT(2) NOT NULL DEFAULT 1,
  added_on DATETIME NOT NULL,
  updated_on DATETIME,
  active SMALLINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY(player_id),
  UNIQUE KEY(handle)
);

CREATE TABLE items
(
  item_id INT(9) NOT NULL AUTO_INCREMENT,
  item_name VARCHAR(100) NOT NULL,
  item_descr TEXT,
  item_type ENUM('WEAPON', 'ARMOR', 'SINGLEUSE') NOT NULL DEFAULT 'SINGLEUSE',
  damage_inflict MEDIUMINT(4) NOT NULL,
  added_on DATETIME NOT NULL,
  updated_on DATETIME,
  active SMALLINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY(item_id)  
);

CREATE TABLE item_inventory
(
  player_id INT(9) NOT NULL,
  item_id INT(9) NOT NULL,
  added_on DATETIME NOT NULL,
  updated_on DATETIME,
  active SMALLINT(1) NOT NULL DEFAULT 1,
  -- Why do you think I left out a primary key here?
  FOREIGN KEY(player_id) REFERENCES players(player_id),
  FOREIGN KEY(item_id) REFERENCES items(item_id)
);

CREATE TABLE abilities
(
  ability_id INT(9) NOT NULL AUTO_INCREMENT,
  ability_name VARCHAR(100) NOT NULL,
  ability_descr TEXT,
  ability_type ENUM('DARK MAGIC', 'WHITE MAGIC') NOT NULL DEFAULT 'DARK MAGIC',
  damage_inflict MEDIUMINT(4) NOT NULL,
  mp_required SMALLINT(3) NOT NULL,
  added_on DATETIME NOT NULL,
  updated_on DATETIME,
  active SMALLINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY(ability_id)  
);

CREATE TABLE ability_inventory
(
  player_id INT(9) NOT NULL,
  ability_id INT(9) NOT NULL,
  added_on DATETIME NOT NULL,
  updated_on DATETIME,
  active SMALLINT(1) NOT NULL DEFAULT 1,
  FOREIGN KEY(player_id) REFERENCES players(player_id),
  FOREIGN KEY(ability_id) REFERENCES abilities(ability_id)
);
