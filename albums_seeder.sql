USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop, Post-disco, Funk, Rock'),
       ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, Glam rock, Progressive rock'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B, Soul, Pop, Soundtrack'),
       ('Eagles', 'Their Greatest Hits(1971-1975)', 1976, 41.2, 'Country rock, Soft rock, Folk rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, Pop'),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 14.4, 'Rock and roll'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard rock, Heavy metal, Folk rock'),
       ('Michael Jackson', 'Bad', 1987, 22.2, 'Pop, R&B, Funk, Rock'),
       ('Alanis Morrissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.3, 'New jack swing, R&B, Pop'),
       ('Celine Dion', 'Falling into You', 1996, 20.2, 'Pop, Soft rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Various artists', 'Dirty Dancing', 1987, 17.9, 'Pop, Rock, R&B'),
       ('Adele', '21', 2011, 25.3, 'Pop, Soul'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop, Dance'),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Pop, Soft rock'),
       ('The Beatles', '1', 2000, 23.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, Disco'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Heartland rock'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, Blues rock, Soft rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Film score'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, Alternative rock'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock'),
       ('Guns N'' Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock');

SHOW TABLES;

DESCRIBE albums;

SELECT *
FROM albums;