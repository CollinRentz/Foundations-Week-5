
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id SERIAL,
    product_name VARCHAR(200) NOT NULL,
    product_price NUMERIC NOT NULL,
    quantity INTEGER NOT NULL
);


INSERT INTO orders(product_name, product_price, quantity)
VALUES ('Cheeseburger', 10, 3),
('Large Fry', 3, 2);

SELECT product_name
FROM orders
GROUP BY product_name
ORDER BY COUNT(*);

SELECT SUM(quantity)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;