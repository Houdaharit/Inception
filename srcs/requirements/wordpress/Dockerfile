FROM debian:stable
RUN apt-get update
RUN install apache2
RUN install mariadb-server mariadb-client
RUN mysql_secure_installation
RUN apt-get install php8.1-fpm -y
CMD ["php-fpm", "-F"] 
