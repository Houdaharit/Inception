FROM debian:buster

RUN apt-get update && apt-get install -y \
    php php-fpm \
    php-mysql \
    php-gd \
    php-xml \
    php-mbstring \
    php-curl \
    php-zip \
	unzip \
    php-intl \
    php-bcmath \
	wget \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php

WORKDIR "/var/www/html"

RUN wget https://wordpress.org/latest.zip

RUN unzip latest.zip

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/

RUN rm -rf latest.zip

EXPOSE 9000

CMD ["php-fpm7.3", "--nodaemonize"]
