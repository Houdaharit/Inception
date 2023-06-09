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
        sendmail \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html 

RUN curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xf wordpress.tar.gz -C /var/www/html && \
    rm wordpress.tar.gz

WORKDIR /var/www/html/wordpress

COPY ./conf/wp-config.php .

COPY ./tools/script.sh .

EXPOSE 9000

ENTRYPOINT ["sh","./script.sh"]

CMD ["php-fpm7.3" , "-F" ,"-R"]

