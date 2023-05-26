CREATE DATABASE wordpressdb default character set utf8 collate utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'hharit'@'%' IDENTIFIED BY 'qwerty1234';
GRANT ALL PRIVILEGES ON wordpressdb.* TO 'hharit'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'secret';
FLUSH PRIVILEGES;
