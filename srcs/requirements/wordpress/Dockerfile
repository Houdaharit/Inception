FROM debian:buster

RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    php-gd \
    php-xml \
    php-mbstring \
    php-curl \
    php-zip \
    php-intl \
    php-bcmath \
	wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -qO /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
 
#COPY ./script.sh .

#RUN chmod +x script.sh && ./script.sh
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir /run/php

WORKDIR /var/www/html

RUN tar -xzvf /tmp/wordpress.tar.gz

RUN rm /tmp/wordpress.tar.gz

EXPOSE 9000

CMD ["php-fpm7.3", "--nodaemonize"]
