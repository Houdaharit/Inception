cd /var/www/html/wordpress
sed -i "s/WP_PASSWORD/$WP_PASSWORD/g" wp-config.php
sed -i "s/WP_USERNAME/$WP_USERNAME/g" wp-config.php
sed -i "s/WP_DB_HOST/$WP_DB_HOST/g" wp-config.php
sed -i "s/WP_DB/$WP_DB/g" wp-config.php
