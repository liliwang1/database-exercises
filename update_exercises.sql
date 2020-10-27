USE codeup_test_db;

SELECT 'all albums' AS 'a1';
SELECT *
FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT 'all albums after increase sales by 10 times' AS 'a1';
SELECT *
FROM albums;


SELECT 'all albums released before 1980' AS 'b1';
SELECT *
FROM albums
WHERE release_date < 1980;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

SELECT 'all albums released before 1980 date changed to 1800' AS 'b1';
SELECT *
FROM albums
WHERE release_date < 1900;


SELECT 'all albums by Michael Jackson' AS 'c1';
SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT 'all albums by Peter Jackson' AS 'c1';
SELECT *
FROM albums
WHERE artist = 'Peter Jackson';