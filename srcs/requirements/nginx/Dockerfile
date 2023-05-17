FROM debian:buster
RUN apt-get update && apt-get install nginx -y
RUN apt-get install openssl
COPY index.html /usr/share/nginx/html
COPY conf/default.conf /etc/nginx/conf.d
COPY conf/private.key /etc/ssl
COPY conf/certificate.crt /etc/ssl
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]

#FROM nginx:latest
#COPY ./index.html /usr/share/nginx/html/index.html
