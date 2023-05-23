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
	curl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php

WORKDIR "/var/www/html"

RUN curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf wordpress.tar.gz && \
    rm wordpress.tar.gz && \
    chown -R www-data:www-data /var/www/

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/

EXPOSE 9000

CMD ["php-fpm7.3", "--nodaemonize"]
