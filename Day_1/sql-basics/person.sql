CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(30) NOT NULL,
    favorite_color VARCHAR(20) NOT NULL
);

INSERT INTO person ( name, age, height, city, favorite_color )
VALUES ('Collin', 22, 178, 'West Jordan', 'Maroon'),
('Madelyn', 24, 176, 'West Jordan', 'Light Blue');

SELECT name
FROM person
ORDER BY height DESC;

SELECT name
FROM person
ORDER BY height ASC;

SELECT name
FROM person
ORDER BY age DESC;

SELECT name
FROM person
WHERE age > 20;

SELECT name
FROM person
WHERE age = 18;

SELECT name
FROM person 
WHERE age < 20 OR age > 30;

SELECT name
FROM person 
WHERE age != 27;

SELECT name
FROM person 
WHERE favorite_color != 'red';

SELECT name
FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT name
FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT name
FROM person
WHERE favorite_color IN ( 'orange', 'green', 'blue' );

SELECT name
FROM person
WHERE favorite_color IN ( 'yellow', 'purple' )