FROM debian:buster
RUN apt-get update && apt-get install php7.3-fpm -y && \
    rm -rf /var/lib/apt/lists/*

COPY php-fpm.conf /etc/php/7.3/fpm/pool.d/www.conf
EXPOSE 9000
CMD ["php-fpm7.3", "--nodaemonize"]
