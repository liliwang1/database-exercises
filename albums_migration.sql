USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL,
    release_date SMALLINT,
    sales DOUBLE,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);
DESCRIBE albums;