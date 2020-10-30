CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE IF NOT EXISTS roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

TRUNCATE users;

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null),
       ('zoe', 'zoe@example.com', null),
       ('lisa', 'lisa@example.com', 2),
       ('lucy', 'lucy@example.com', 2),
       ('tom', 'tom@example.com', 2);

SELECT *
FROM users u
JOIN roles r ON u.role_id = r.id;

SELECT *
FROM users u
LEFT JOIN roles r ON r.id = u.role_id;

SELECT *
FROM users u
RIGHT JOIN roles r ON r.id = u.role_id;

SELECT r.name, COUNT(u.role_id) AS count
FROM roles r
LEFT JOIN users u ON r.id = u.role_id
GROUP BY r.name;
