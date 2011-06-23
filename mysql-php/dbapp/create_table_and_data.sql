CREATE TABLE users
(
  user_id INT(9) NOT NULL AUTO_INCREMENT,
  login VARCHAR(15) NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  password TEXT NOT NULL,
  PRIMARY KEY(user_id),
  UNIQUE(login));

INSERT INTO users (login, first_name, last_name, password) VALUES ('hoj', 'Homer', 'Simpson', 'wh@t3ver');

