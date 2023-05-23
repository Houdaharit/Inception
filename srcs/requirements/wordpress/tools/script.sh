sed -i 's/^listen = .*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
sed -i 's/^;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php/7.3/fpm/php.ini

