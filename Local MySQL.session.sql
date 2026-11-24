DROP DATABASE IF EXISTS billing_demo;
CREATE DATABASE billing_demo;
USE billing_demo;

CREATE TABLE products(
    product_name VARCHAR(60) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(8,2) NOT NULL,
    stock INT          NOT NULL DEFAULT 0
);

CREATE TABLE bills(
    bill_id   INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(60)   NOT NULL,
    phone      VARCHAR(15),
    payment_mode ENUM('Cash','')
)