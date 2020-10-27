USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(75) NOT NULL DEFAULT 'Untitled',
    release_date SMALLINT UNSIGNED,
    sales DOUBLE UNSIGNED,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

DESCRIBE albums;