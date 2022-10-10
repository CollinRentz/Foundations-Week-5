INSERT INTO artist(artist_id, name)
VALUES (276, 'Imagine Dragons'),
(277, 'nobigdyl.'),
(278, 'Lecrae');

SELECT *
FROM artist
ORDER BY name
DESC LIMIT 10;

SELECT *
FROM artist
ORDER BY name
ASC LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE 'Black%';

SELECT *
FROM artist
WHERE name LIKE '%Black%';