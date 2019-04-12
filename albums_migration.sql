USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(50) NOT NULL,
  name VARCHAR(100) NOT NULL,
  -- release_date INT
  release_date INT,
  -- sales DECIMAL(9,5)  --1234.56789  this is like scientific notation
  sales float,
  genre VARCHAR(100),
  PRIMARY KEY (id)
);

ALTER TABLE albums
ADD UNIQUE (artist, name);

DESCRIBE albums;