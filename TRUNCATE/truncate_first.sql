-- 1. Create the database
CREATE DATABASE IF NOT EXISTS shop
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- 2. Select it
USE shop;

-- 3. Parent tables first (no foreign keys)
CREATE TABLE customers (
  id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name       VARCHAR(100) NOT NULL,
  email      VARCHAR(150) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
  id    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name  VARCHAR(150) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock INT UNSIGNED NOT NULL DEFAULT 0
);

-- 4. Child tables (reference the parents)
CREATE TABLE orders (
  id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  customer_id INT UNSIGNED NOT NULL,
  order_date  DATETIME DEFAULT CURRENT_TIMESTAMP,
  status      ENUM('pending','paid','shipped','cancelled') DEFAULT 'pending',
  FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON DELETE CASCADE
);

CREATE TABLE order_items (
  id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  order_id   INT UNSIGNED NOT NULL,
  product_id INT UNSIGNED NOT NULL,
  quantity   INT UNSIGNED NOT NULL,
  unit_price DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (order_id)   REFERENCES orders(id)   ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id)
);


CREATE TABLE rajan(
id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(19)
);


INSERT INTO customers (name, email) VALUES ('Asha', 'asha@example.com');
INSERT INTO customers (name, email) VALUES ('Ashok', 'ashok@example.com');
INSERT INTO customers (name, email) VALUES ('Sasin', 'sasin@example.com');

INSERT INTO products (name, price, stock) VALUES ('Notebook', 4.50, 100);
INSERT INTO products (name, price, stock) VALUES ('Advanced Java Programming Books', 4.50, 100);
INSERT INTO products (name, price, stock) VALUES ('Mobile Programming', 4.50, 100);


INSERT INTO orders (customer_id) VALUES (1);
INSERT INTO orders (customer_id) VALUES (2);
INSERT INTO orders (customer_id) VALUES (3);

-- order_items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES (1, 1, 3, 4.50);
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES (2, 2, 4, 5.50);
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES (3, 3, 5, 6.60);