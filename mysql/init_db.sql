CREATE DATABASE IF NOT EXISTS csc468;
USE csc468;

CREATE USER 'root'@'10.42.0.%' IDENTIFIED BY 'my_root_password';
CREATE USER 'root'@'%' IDENTIFIED BY 'my_root_password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'10.42.0.%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS cattle (
    name VARCHAR(255),
    breed VARCHAR(255),
    age INT
);

LOAD DATA INFILE '/var/lib/mysql-files/cattle.csv'
INTO TABLE cattle
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
