sed -i "s|CERTIFICATE|"$CRT"|" /etc/nginx/conf.d/default.conf
sed -i "s|PRIVATE_KEY|"$KEY"|" /etc/nginx/conf.d/default.conf
exec "$@"
