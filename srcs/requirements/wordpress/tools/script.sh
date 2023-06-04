sed -i "s/WP_DB_PASSWORD/"$MYSQL_PASSWORD"/" wp-config.php
sed -i "s/WP_DB_USERNAME/"$MYSQL_USER"/" wp-config.php
sed -i "s/WP_DB_HOST/"$WP_DB_HOST"/" wp-config.php
sed -i "s/WP_DB/"$WP_DB"/" wp-config.php

cd /var/www/html/wordpress
wp core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$ADMIN --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root
wp user create $SECOND_USER $SECOND_USER_EMAIL --role=author --user_pass=$SECOND_USER_PASSWORD --allow-root

php-fpm7.3 -F -R
