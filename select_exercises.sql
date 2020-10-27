USE codeup_test_db;

SELECT 'all albums by Pink Floyd' AS 'Info 1';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'year "Sgt. Pepper''s Lonely Hearts Club Band" was released' AS 'Info 2';
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'genre of "Nevermind"' AS 'Info 3';
SELECT genre
FROM albums
WHERE name = "Nevermind";

SELECT 'albums released in the 1990s' AS 'Info 4';
SELECT *
FROM albums
WHERE release_date >= 1990 AND release_date < 2000;
-- WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'albums had less than 20 million certified sales' AS 'Info 5';
SELECT *
FROM albums
WHERE sales < 20;

SELECT 'albums with a genre of "Rock"' AS 'Info 6';
SELECT *
FROM albums
WHERE genre LIKE '%Rock%';

