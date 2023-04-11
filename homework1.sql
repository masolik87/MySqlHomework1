CREATE DATABASE IF NOT EXISTS phone;
USE phone;
CREATE TABLE IF NOT EXISTS mobile
(
id INT PRIMARY KEY AUTO_INCREMENT,
manufacturer VARCHAR(15),
model VARCHAR(15),
pieces INT(3),
price INT(7)
);
INSERT mobile (manufacturer, model, pieces, price)
VALUE
	("Apple", "iPhone X", "5", "86000"),
    ("Apple", "iPhone 8", "1", "75000"),
    ("Apple", "iPhone XR", "2", "86000"),
    ("Samsung", "Galaxy A13", "4", "35000"),
    ("Samsung", "Galaxy Z", "7", "15000"),
    ("Samsung", "Galaxy S23", "6", "55000"),
    ("Xiaomi", "Redmi 10", "1", "10000"),
    ("Xiaomi", "Redmi 8", "3", "17000"),
    ("Xiaomi", "Redmi Note", "1", "18000");
SELECT * 
FROM mobile;
SELECT model, price
FROM mobile
WHERE pieces > "2";
SELECT *
FROM mobile
WHERE manufacturer = "Samsung";
SELECT *
FROM mobile
WHERE pieces * price > 100000 AND
	  pieces * price < 145000;
SELECT *
FROM mobile
WHERE model LIKE "%iPhone%";
SELECT *
FROM mobile
WHERE model LIKE "%Galaxy%";
SELECT *
FROM mobile
WHERE model RLIKE "[0-9]";
SELECT *
FROM mobile
WHERE model RLIKE "[8]";