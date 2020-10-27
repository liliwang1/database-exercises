USE codeup_test_db;

SELECT 'albums released after 1991' AS 'a';

DELETE
FROM albums
WHERE release_date > 1991;


SELECT 'albums with genre "disco"' AS 'b';

DELETE
FROM albums
WHERE genre Like '%disco%';


SELECT 'albums by The Beatles' AS 'c';

DELETE
FROM albums
WHERE artist = "The Beatles";


SELECT 'all albums' AS 'info';
SELECT *
FROM albums;