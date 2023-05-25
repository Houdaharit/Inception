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

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

WORKDIR /var/www/html 

RUN curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xf wordpress.tar.gz -C /var/www/html && \
    rm wordpress.tar.gz

#RUN sed -i "s/password_here/$WP_PASSWORD/g" wp-config-sample.php
#RUN  sed -i "s/username_here/$WP_USERNAME/g" wp-config-sample.php
#RUN sed -i "s/localhost/$WP_DB_HOST/g" wp-config-sample.php
#RUN sed -i "s/database_name_here/$WP_DB/g" wp-config-sample.php
WORKDIR /var/www/html/wordpress

COPY ./tools/wp-config.php .

#COPY ./tools/script.sh .

#RUN ./script.sh

EXPOSE 9000

#CMD ["sh","./script.sh"]

CMD ["php-fpm7.3", "--nodaemonize"]
