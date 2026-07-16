DROP DATABASE IF EXISTS shopping_db;

CREATE DATABASE IF NOT EXISTS shopping_db;

USE shopping_db;

CREATE TABLE IF NOT EXISTS products
(
    product_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    stock TINYINT CHECK ((stock >= 1) && (stock <= 99)),
    price DOUBLE UNSIGNED,
    final_price DECIMAL(10,2)
) AUTO_INCREMENT = 1001;

DESC products;

INSERT INTO products
VALUES (DEFAULT, 'coke', 10, 20, 18);

INSERT INTO products
VALUES (DEFAULT, 'chips', 5, 50, 35);

INSERT INTO products
VALUES (DEFAULT, 'chocolates', 20, 40, 35);

SELECT * FROM products;