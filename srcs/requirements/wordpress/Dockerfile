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
    && rm -rf /var/lib/apt/lists/*

EXPOSE 9000
CMD ["php-fpm7.3", "--nodaemonize"]
