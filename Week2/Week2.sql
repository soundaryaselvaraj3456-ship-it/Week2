CREATE DATABASE product_category_db;

USE product_category_db;

CREATE TABLE category(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE product(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES category(category_id)
);

INSERT INTO category(category_name) VALUES
('Stationery'),
('Furniture'),
('Snacks'),
('Footwear');

INSERT INTO product(product_name, price, category_id) VALUES
('Notebook', 80.00, 1),
('Pen', 20.00, 1),
('Pencil Box', 120.00, 1),
('Highlighter', 50.00, 1),
('Eraser', 10.00, 1),
('Stapler', 150.00, 1),
('Sticky Notes', 60.00, 1),
('Study Desk', 4500.00, 2),
('Office Chair', 3200.00, 2),
('Bookshelf', 2800.00, 2),
('Lamp', 900.00, 2),
('Potato Chips', 40.00, 3),
('Biscuits', 30.00, 3),
('Chocolate Bar', 70.00, 3),
('Sandals', 800.00, 4),
('Sneakers', 2200.00, 4),
('Slippers', 400.00, 4);

SELECT * FROM category;

SELECT * FROM product;

SELECT p.product_id, p.product_name, p.price, c.category_name
FROM product p
JOIN category c
ON p.category_id = c.category_id;

SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM category c
LEFT JOIN product p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;

SELECT c.category_name, p.product_name, p.price
FROM category c
JOIN product p
ON c.category_id = p.category_id
WHERE p.price = (
    SELECT MAX(p2.price)
    FROM product p2
    WHERE p2.category_id = p.category_id
);

SELECT c.category_name, COUNT(p.product_id) AS product_count
FROM category c
JOIN product p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name
HAVING COUNT(p.product_id) > 5;

SELECT c.category_name, AVG(p.price) AS average_price
FROM category c
JOIN product p
ON c.category_id = p.category_id
GROUP BY c.category_id, c.category_name;

INSERT INTO product(product_name, price, category_id)
VALUES('Correction Tape', 45.00, 1);

SELECT * FROM product
WHERE product_id = 18;

UPDATE product
SET price = 40.00
WHERE product_id = 18;

SELECT * FROM product
WHERE product_id = 18;

DELETE FROM product
WHERE product_id = 18;

SELECT * FROM product;