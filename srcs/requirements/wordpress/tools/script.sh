mysql
CREATE DATABASE wordpressdb;
CREATE USER IF NOT EXISTS 'hharit'@'hharit.42.fr' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON testdb.* TO 'hharit'@'hharit.42.fr';
FLUSH PRIVILEGES;
