sed -i "s/WP_DB_PASSWORD/"$WP_DB_PASSWORD"/" wp-config.php
sed -i "s/WP_DB_USERNAME/"$WP_DB_USERNAME"/" wp-config.php
sed -i "s/WP_DB_HOST/"$WP_DB_HOST"/" wp-config.php
sed -i "s/WP_DB/"$WP_DB"/" wp-config.php

cd /var/www/html/wordpress
wp core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$WP_USERNAME --admin_password=$WP_PASSWORD --admin_email=$WP_EMAIL --allow-root
wp user create $USER $USER_EMAIL --role=author --user_pass=$USER_PASSWORD --allow-root

php-fpm7.3 -F -R
